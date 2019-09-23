if not radiation then radiation = {} end
if not radiation.remote then radiation.remote = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function get_config()
    apm_nuclear_radiation = settings.global['apm_lib_radiation_dmg'].value
end

-- Remote Function ------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function radiation.remote.add_item(item_name, level)
    if not level then
        level = 2 
    end
    if not global.items_radioactive_01774 then
        global.items_radioactive_01774 = {}
    end
    if not global.items_radioactive_01774[item_name] then
        if game.item_prototypes[item_name] then
            global.items_radioactive_01774[item_name] = level
            log('Info: radiation.remote.add_item(): add item: "' .. tostring(item_name) .. '" to the radioactive list.')
        else
            log('Warning: radiation.remote.add_item(): item: "' .. tostring(item_name) .. '" does not exist.')
        end
    else
        log('Warning: radiation.remote.add_item(): item: "' .. tostring(item_name) .. '" is already on the list.')
    end
end

-- Remote Function ------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function radiation.remote.remove_item(item_name)
    if not global.items_radioactive_01774 then return end
    if not global.items_radioactive_01774[item_name] then return end
    global.items_radioactive_01774[item_name] = nil
    log('Info: radiation.remote.remove_item(): remove item: "' .. tostring(item_name) .. '" from the radioactive list.')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function radiation.on_init()
    get_config()
    generate_radioactive_table()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function radiation.on_load()
    get_config()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function convert_table()
    if global.items_radioactive then
        global.items_radioactive = nil
        log('Info: radiation.convert_table(): removed old table after update')
    end
    if not global.items_radioactive_01774 then
        global.items_radioactive_01774 = {}
        log('Info: radiation.convert_table(): create new table after update')
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function radiation.on_update()
    get_config()
    convert_table()
    generate_radioactive_table()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function damage_to_character_from_item(player, character, item_name)
    local item_rtype = global.items_radioactive_01774[item_name]
    local rnd_min = item_rtype*2
    local rnd_max = item_rtype*4
    local damage = math.random(rnd_min, rnd_max)
    character.damage(damage, game.forces.neutral)
    local msg = {"apm_msg_radiation_dmg", damage, item_name}
    apm_game.core.send_dmg_msg_to_player(player, msg)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_inventory(player, character, dmg)
    for item_name, radiation_level in spairs(global.items_radioactive_01774, function(t,a,b) return t[b] < t[a] end) do

        if character.get_item_count(item_name) > 0 then
            local radioactive_type = 'radioactive_b_'
            if radiation_level <= 1 then
                radioactive_type = 'radioactive_a_'
            elseif radiation_level == 2 then
                radioactive_type = 'radioactive_b_'
            elseif radiation_level >= 3 then
                radioactive_type = 'radioactive_c_'
            end

            apm_game.sound.create_on_character_position(radioactive_type .. tostring(math.random(3)), character)
            if dmg == true then
                damage_to_character_from_item(player, character, item_name)
            end
            break
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function generate_radioactive_table()
    radiation.remote.add_item('uranium-ore', 1)
    radiation.remote.add_item('uranium-fuel-cell', 3)
    radiation.remote.add_item('used-up-uranium-fuel-cell', 3)
    radiation.remote.add_item('uranium-235', 2)
    radiation.remote.add_item('uranium-238', 1)
end

-- Function -------------------------------------------------------------------
-- This check runs once every game start
--
-------------------------------------------------------------------------------
function check_item_list()
    if not checked_item_list then
        for item_name, _ in pairs(global.items_radioactive_01774) do
            if not game.item_prototypes[item_name] then
                global.items_radioactive_01774[item_name] = nil
                log('Info: check_item_list(): item: "' .. tostring(item_name) .. '" does not exist, removed from list.')
            end
        end
        checked_item_list = true
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function radiation.on_tick()
    if not apm_nuclear_radiation then return end
    check_item_list()

    if game.tick % 240 == 37 then
        local players = apm_game.core.get_valid_players()
        if not players then return end
        for _, t_object in pairs(players) do
            check_inventory(t_object.player, t_object.character, true)
        end
        return
    end

    if game.tick % 60 == 37 then
        local players = apm_game.core.get_valid_players()
        if not players then return end
        for _, t_object in pairs(players) do
            check_inventory(t_object.player, t_object.character, false)
        end
    end
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
return radiation