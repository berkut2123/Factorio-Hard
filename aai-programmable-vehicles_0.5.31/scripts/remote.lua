local Remote = {}

remote.add_interface(
    "aai-programmable-vehicles",
    {
        write_global = function() game.write_file("AAI/vehicles.global.lua", serpent.block(global, {comment=false, sparse=true, nocode=true}), false) end,
        write_unit = function(data)
          local unit = unit_find_from_entity(data.entity)
          game.write_file("AAI/vehicles."..data.entity.unit_number..".lua", serpent.block(unit, {comment=false, sparse=true, nocode=true}), false)
        end,
        get_units = function() return global.unit.units end, -- returns table of units by unit id
        get_unit_count_by_type = function(data) -- requires surface_index and unit_type
          if data.unit_type then
            return unit_get_count_by_surface_and_type(data.surface_index or 1, data.unit_type)
          end
          return 0
        end,
        get_unit_by_signal = unit_find_from_signal, -- data.signal_count {signal = SignalID, count = count} returns unit data.surface_index used for finding unit by type
        get_unit_by_entity = unit_find_from_entity,
        on_entity_deployed = on_entity_deployed,
        --data.unit_id or data.unit
        --data.target_speed
        --data.target_angle(0-1)
        --data.target_position
        -- returns bool of unit found
        set_unit_command = unit_set_command,
        set_unit_data = unit_set_data,
        set_path_waypoint = Path.set_path_waypoint_data, -- {force_name, surface_index, path_id, waypoint_id, position_x, position_y, goto_player_id, goto_position_beacon_id, goto_unit_id, vehicle_depot_id, speed_limit, allow_pathfinding}
        get_surface_paths = function (data)
          if data.force_name and data.surface_index then
            return Path.get_surface_paths(data.force_name, data.surface_index)
          end
        end, -- {force_name}
    }
)

return Remote
