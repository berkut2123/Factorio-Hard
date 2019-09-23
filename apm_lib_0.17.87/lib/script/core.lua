local core = {}

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function send_msg_to_dict(dict, msg)
    for _, player in pairs (dict) do
        core.send_msg_to_player(player, msg)
    end    
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function core.get_valid_players()
    local players = {}
    
    for _, player in pairs(game.players) do
        if player.connected then
            local character = player.character
            if character ~= nil then
                table.insert(players, {player=player, character=character})
            end
        end
    end
    
    return players
end

-- Function -------------------------------------------------------------------
-- Insert item to player with a check if the player allready has a item with 
-- the defined amount ore more, then do nothing
--
-------------------------------------------------------------------------------
function core.player_insert_items_safe(entity, item_dict)
    if not (entity and entity.valid and item_dict) then return end
    local items = game.item_prototypes

    for name, count in pairs (item_dict) do
        if items[name] then
            local has_count = entity.get_item_count(name)
            count = count - has_count
            if count > 0 then
                entity.insert{name = name, count = count}
                log('Info: core.player_insert_items_safe() insert item: "' .. tostring(name) .. '" amount: "' .. tostring(count) .. '"')
            end
        else
            log('Warning: core.player_insert_items_safe() item: "' .. tostring(name) .. '" does not exist.')
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function core.msg_to_all_players(msg)
    send_msg_to_dict(game.players, msg)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function core.send_msg_to_player(player, msg)
    player.print(msg)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function core.send_dmg_msg_to_player(player, msg)
    player.print(msg, {r = 255})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function core.send_msg_to_force(force, msg)
    force.print(msg, {g = 255})
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

return core