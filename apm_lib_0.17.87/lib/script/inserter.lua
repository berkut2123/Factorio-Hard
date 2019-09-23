if not inserter then inserter = {} end
if not inserter.all then inserter.all = {} end

-- Local -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local valid_targets = {['assembling-machine'] = true, ['furnace'] = true, ['lab'] = true, ['mining-drill'] = true}
local valid_targets_string = {'assembling-machine', 'furnace', 'lab', 'mining-drill'}
local special_drop_targets = {['transport-belt'] = true, ['underground-belt'] = true, ['splitter'] = true}
local inserter_table = {}
local inserter_ids = {}
local inserter_size = 0
local apm_inserter_functions = false

-- Function -------------------------------------------------------------------
-- check the state of the filter mode
-- return: true for withlist, return false for blacklist
-------------------------------------------------------------------------------
local function return_value(entity)
    if entity.inserter_filter_mode == 'blacklist' then 
        return false 
    else 
        return true
    end
end

-- Function -------------------------------------------------------------------
-- This function checks filter state
--
-------------------------------------------------------------------------------
local function check_filter(entity, item_name)
    filter_slot_count = entity.filter_slot_count
    if filter_slot_count == 0 then return true end
    
    local return_value = return_value(entity)
    for i = 1, filter_slot_count do
        if entity.get_filter(i) == item_name then
            return return_value
        end
    end

    return not return_value
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function calc_item_count(want_pickup_item_count, t_object)
    if want_pickup_item_count == 1 then return 1 end

    local inserter_stack_bonus = 0
    if t_object.stack then
        -- is stack inserter
        inserter_stack_bonus = t_object.entity.force.stack_inserter_capacity_bonus
    else
        -- is normal inserter
        inserter_stack_bonus = t_object.entity.force.inserter_stack_size_bonus
    end

    local possible_stack_size = 1 + inserter_stack_bonus
    local stack_size_override = t_object.entity.inserter_stack_size_override
    if stack_size_override > 0 then
        possible_stack_size = stack_size_override
    end

    if want_pickup_item_count > possible_stack_size then
        -- pickup target more items then the possible stack size
        return possible_stack_size
    end

    return want_pickup_item_count
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_drop_target(drop_target, item_stack)
    if drop_target ~= nil then
        return drop_target.can_insert(item_stack)
    end
    return true -- we can allway lay down an item on ground
end

-- Function -------------------------------------------------------------------
-- transfer the item stack on leeching or fuel chaining
-- it decisions which method we need (filter inserter need a bypass methode, otherwise he can not pickup fuel for them self)
-------------------------------------------------------------------------------
local function transfer_leeching(inserter, inventory, item_stack)
    local held_stack = inserter.held_stack
    if not held_stack.valid_for_read then
        if inserter.filter_slot_count == 0 then
            if held_stack.transfer_stack(item_stack) then
                inventory.remove(item_stack)
                return true
            end
        else
            held_stack.set_stack(item_stack)
            inventory.remove(item_stack)
            return true
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function return_fuel_inventory(pickup_target, drop_target)
    if pickup_target ~= nil then
        local pickup_inventory = pickup_target.get_fuel_inventory()
        if pickup_inventory ~= nil then
            return pickup_inventory
        end
    end
    if drop_target ~= nil then
        local drop_inventory = drop_target.get_fuel_inventory()
        return drop_inventory
    end
    return nil
end

-- Function -------------------------------------------------------------------
-- can pickup 'fuel' for it self from pickup_target or drop_target
-- Todo: checked only in order if pickup_target has a fuel_inventory drop_inventory will be ignored at this time
-------------------------------------------------------------------------------
local function burner_inserter_leech(t_object, pickup_target, drop_target)   
    local target_inventory = return_fuel_inventory(pickup_target, drop_target)
    if not target_inventory then return false end
   
    local target_inventory_contents = target_inventory.get_contents()
    for item_name, item_count in pairs(target_inventory_contents) do
        if item_count >= 2 then
            local item_stack = {name = item_name, count = 1}
            return transfer_leeching(t_object.entity, target_inventory, item_stack)
        end
        return false
    end
end

-- Function -------------------------------------------------------------------
-- cahin fuel from pickup_target to drop_target
--
-------------------------------------------------------------------------------
local function inserter_chain_fuel(t_object, pickup_inventory, drop_target)
    local pickup_inventory_contents = pickup_inventory.get_contents()
    for item_name, item_count in pairs(pickup_inventory_contents) do
        local stack_size = calc_item_count((item_count), t_object)
        local item_stack = {name=item_name, count=stack_size}
        if drop_target.can_insert(item_stack) then
            return transfer_leeching(t_object.entity, pickup_inventory, item_stack)
        end
        return false
    end
end

-- Function -------------------------------------------------------------------
-- This function make it possible that a inserter can handle the 'burnt_result_inventory' on all machiens.
-- That burner inserter can also leech fuel from drop target.
-- That burner inserters are capable to chain fuel through all burner machines
-------------------------------------------------------------------------------
local function inserter_fix_check(t_object, pickup_target, drop_target)
    
    ----------------------------------------------------------------------------------------
    -- This part is for the fuel leeching
    ----------------------------------------------------------------------------------------
    if t_object.fuel_inventory and t_object.fuel_inventory.get_item_count() <= 0 then
        if burner_inserter_leech(t_object, pickup_target, drop_target) then
            return
        end
     end

    -- we can simply return here if there is no pickup_target
    if not pickup_target then return end

    ----------------------------------------------------------------------------------------
    -- This part is for the fuel chain
    ----------------------------------------------------------------------------------------
    if drop_target and pickup_target then
        local pickup_inventory = pickup_target.get_fuel_inventory()
        if pickup_inventory then
            local drop_inventory = drop_target.get_fuel_inventory()
            if drop_inventory then
                if pickup_inventory.get_item_count() >= 5 then
                    if drop_inventory.get_item_count() < 5 then
                        if inserter_chain_fuel(t_object, pickup_inventory, drop_target) then
                            return
                        end
                    end                
                end
            end
        end
    end

    ----------------------------------------------------------------------------------------
    -- This part is for clearing the burned fuel inventory
    ----------------------------------------------------------------------------------------
    local pickup_target_burnt_result_inventory = pickup_target.get_burnt_result_inventory()
    if not pickup_target_burnt_result_inventory then 
        return 
    end

    if pickup_target_burnt_result_inventory.is_empty() then
        return
    end

    ----------------------------------------------------------------
    -- On burner inserters the held_stack_position is not in 
    -- position after building unlike the non burner inserters... why?
    -- I need to fix this some how or write a bug report, after some more tests...
    if (t_object.entity.pickup_position.x ~= t_object.entity.held_stack_position.x) or (t_object.entity.pickup_position.y ~= t_object.entity.held_stack_position.y) then
        return
    end
    ----------------------------------------------------------------
    local pickup_target_inventory_contents = pickup_target_burnt_result_inventory.get_contents()
    for item_name, item_count in pairs(pickup_target_inventory_contents) do
        if item_count >= 1 and check_filter(t_object.entity, item_name) then
            -- -------------------------------------
            -- Workaround (lay on belts/ground doesn't work otherwise as expected,
            -- some strange inserter movements?, I give them a stack_wize 1+bonus, but they allways don't lay the last item on belt (?)
            if drop_target and special_drop_targets[drop_target.type] then
                item_count = 1
            elseif not drop_target then
                item_count = 1
            end
            -- -------------------------------------
            local stack_size = calc_item_count(item_count, t_object)
            local item_stack = {name = item_name, count = stack_size}
            if check_drop_target(drop_target, item_stack) then
                if t_object.entity.held_stack.transfer_stack(item_stack) then
                    pickup_target_burnt_result_inventory.remove(item_stack)
                end
            end
        end
        return
    end
end

-- Function -------------------------------------------------------------------
-- golbal.insert{entity, has_fuel_inventory, has_filter_slots}
-- to store a reference of the fuel_inventory saves this script 0.1-0.13ms per 100 iterrations/tick
-------------------------------------------------------------------------------
function add_inserter(inserter)
    if not inserter_ids[inserter.unit_number] then
        local fuel_inventory = inserter.get_fuel_inventory()
        local stack = inserter.prototype.stack
        local id = inserter.unit_number
        global.inserter_01746_ids[id] = true
        table.insert(global.inserter_01746, {id=id, entity=inserter, fuel_inventory=fuel_inventory, stack=stack})
        table.insert(inserter_table, {id=id, entity=inserter, fuel_inventory=fuel_inventory, stack=stack})
        inserter_size = #global.inserter_01746
        inserter_ids[inserter.unit_number] = true
    end
end

-- Function -------------------------------------------------------------------
-- 
--
-------------------------------------------------------------------------------
local function entity_condition(entity)
    if valid_targets[entity.type] then
        if entity.get_fuel_inventory() then -- this will only catch entities with a burner NOT fluids (thats good)
            return true
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
-- 
--
-------------------------------------------------------------------------------
local function inserter_condition(entity)
    local position = entity.position
    local surface = entity.surface
    local area = {{position.x-6, position.y-6}, {position.x+6, position.y+6}}
    local possible_entities = surface.find_entities_filtered{type=valid_targets_string, area=area}
    for _, possible_entity in pairs(possible_entities) do
        if entity_condition(possible_entity) then
            return true
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
-- 
--
-------------------------------------------------------------------------------
local function scan_area_for_inserter(entity)
    local position = entity.position
    local surface = entity.surface
    local area = {{position.x-6, position.y-6}, {position.x+6, position.y+6}}
    local inserters = surface.find_entities_filtered{type="inserter", area=area}
    return inserters
end

-- Function -------------------------------------------------------------------
-- if any inserter is build put the entity in the table
--
-------------------------------------------------------------------------------

-- Function -------------------------------------------------------------------
-- 
--
-------------------------------------------------------------------------------
function inserter.all.on_build(entity)
    if entity.valid == false then return end

    if not global.inserter_01746 then
        global.inserter_01746 = {}
        global.inserter_01746_ids = {}
     end

    if entity_condition(entity) then
        local inserters = scan_area_for_inserter(entity)
        for _, inserter in pairs(inserters) do
            add_inserter(inserter)
        end
    end

    if entity.type == "inserter" then
        if inserter_condition(entity) then
            add_inserter(entity)
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function get_config()
    if settings.global['apm_lib_inserter_functions'] then
        apm_inserter_functions = settings.global['apm_lib_inserter_functions'].value
    else
        apm_inserter_functions = true
    end

    apm_inserter_iterations = settings.global['apm_lib_inserter_iterations_01759'].value

    log('Info: settings.global.apm_inserter_iterations is: ' .. tostring(apm_inserter_iterations))
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function inserter.all.on_init()
    if not global.inserter_01746 then
        global.inserter_01746 = {}
        global.inserter_01746_ids = {}
        global.inserter_index = 1
        inserter_table = global.inserter_01746
        inserter_ids = global.inserter_01746_ids
        inserter_size = #global.inserter_01746
    end
    get_config()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function inserter.all.on_load()
    get_config()
    if global.inserter_01746 then
        inserter_table = global.inserter_01746
        inserter_ids = global.inserter_01746_ids
        inserter_size = #global.inserter_01746
    end
end

-- Function -------------------------------------------------------------------
-- This function converts all entities from the old table to a new table
-- This function purpose is to keep backward compatibility
-- version: 0.17.46
-------------------------------------------------------------------------------
function convert_table()
    if not global.inserter_index then global.inserter_index = 1 end
    if global.inserter_01746 then return end

    log('--- convert_table() ----------------------------------------------')
    global.inserter_01746 = {}
    global.inserter_01746_ids = {}
    log('- convert_table(): create new table')

    -- version 0.17.29
    if global.inserter_table ~= nil then
        log('- convert_table(): from version 0.17.29 and lower')
        log('- convert_table(): start converting ' .. tostring(#global.inserter_table) .. ' inserter into the new system')
        for _, inserter_entity in pairs(global.inserter_table) do
            if inserter_entity and inserter_entity.valid then
                inserter.all.on_build(inserter_entity)
            end
        end
        global.inserter_table = nil
        log('- convert_table(): converted ' .. tostring(inserter_size) .. ' inserter into the new system')
    end

    -- version 0.17.38
    if global.inserter ~= nil then
        log('- convert_table(): from version 0.17.38 and higer')
        log('- convert_table(): start converting ' .. tostring(#global.inserter) .. ' inserter into the new system')
        for _, t_object in pairs(global.inserter) do
            if t_object and t_object.entity and t_object.entity.valid then
                inserter.all.on_build(t_object.entity)
            end
        end
        global.inserter = nil
        log('- convert_table(): converted ' .. tostring(inserter_size) .. ' inserter into the new system')
    end

    -- version 0.17.46
    if global.inserter_01738  ~= nil then
        log('- convert_table(): to version 0.17.46')
        log('- convert_table(): start converting ' .. tostring(#global.inserter_01738) .. ' inserter into the new system')
        for _, t_object in pairs(global.inserter_01738) do
            if t_object and t_object.entity and t_object.entity.valid then
                inserter.all.on_build(t_object.entity)
            end
        end
    end

    inserter_table = global.inserter_01746
    inserter_ids = global.inserter_01746_ids
    inserter_size = #global.inserter_01746

    log('- convert_table(): finally: ' .. tostring(#global.inserter_01746) .. ' inserter converted to the new system')
    log('------------------------------------------------------------------')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function inserter.all.on_update()
    get_config()
    convert_table()
end

-- Function -------------------------------------------------------------------
-- return t_object{entity, fuel_inventory} or nil
--
-------------------------------------------------------------------------------
function remove_inserter_from_table(t_object)
    global.inserter_01746_ids[t_object.id] = nil
    inserter_ids[t_object.id] = nil
    table.remove(inserter_table, global.inserter_index)
    table.remove(global.inserter_01746, global.inserter_index)
    global.inserter_index = global.inserter_index -1
    inserter_size = #global.inserter_01746
end

-- Function -------------------------------------------------------------------
-- return t_object{entity, fuel_inventory} or nil
--
-------------------------------------------------------------------------------
function get_inserter_entity()
    if global.inserter_index > inserter_size or global.inserter_index <= 0 then
        global.inserter_index = 1
    end

    local t_object = inserter_table[global.inserter_index]

    if not t_object or not t_object.entity or not t_object.entity.valid then
        remove_inserter_from_table(t_object)
        return nil
    end

    local pickup_target = t_object.entity.pickup_target
    local drop_target = t_object.entity.drop_target

    if not pickup_target and not drop_target then return nil end
    if pickup_target and not valid_targets[pickup_target.type] then 
        if drop_target and not valid_targets[drop_target.type] then
            -- This condition for drop_target ~= 'inserter' is a workaround:
            -- Because if this script fires in a situation were the inserter is feeding himself from a belt, 
            -- the drop_target in this exat moment is the inserter himself and will be otherwise removed from the table.
            -- OH I HATE THIS ALL :D :D :D
            if drop_target.type ~= 'inserter' then
                remove_inserter_from_table(t_object)
            end
            return nil 
        end
    end

    return t_object, pickup_target, drop_target
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function inserter.all.on_tick()
    if inserter_size == 0 or not apm_inserter_functions then
        return
    end

    local func_get = get_inserter_entity -- its faster than a direct call in the loop? why?... dont care, it is.
    local func_fix = inserter_fix_check -- its faster than a direct call in the loop? why?... dont care, it is.

    for i=0, apm_inserter_iterations, 1 do -- apm_inserter_iterations default is 50, for testing 100
        local t_object, pickup_target, drop_target = func_get() -- t_object{entity, fuel_inventory} or nil
        if t_object then
            func_fix(t_object, pickup_target, drop_target)
        end

        global.inserter_index = global.inserter_index + 1
        if global.inserter_index >= inserter_size then
            return
        end
    end
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
return inserter