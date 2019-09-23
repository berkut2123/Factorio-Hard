local struct_types = require("structure_types")
local composite_suffix = "-_-" -- used to filter out sub-units (i.e. "-" would break most units)
local version = 000502 -- 0.5.2

local util = require("util") -- keep seperate for sharing

-- locals
-- unit properties
local signal_for_speed = {type = "virtual", name = "signal-speed"} -- * 1000
local signal_for_angle = {type = "virtual", name = "signal-angle"} -- * 360 degrees
local signal_for_position_x_tiles = {type = "virtual", name = "signal-x-tile"} -- x tiles
local signal_for_position_y_tiles = {type = "virtual", name = "signal-y-tile"} -- y tiles
local signal_for_position_x_sub = {type = "virtual", name = "signal-x-sub"} -- * 100 x tiles
local signal_for_position_y_sub = {type = "virtual", name = "signal-y-sub"} -- * 100 y tiles
local signal_for_health = {type = "virtual", name = "signal-health"}
local signal_for_time_target = {type = "virtual", name = "signal-time-target"}
local signal_for_time_move = {type = "virtual", name = "signal-time-move"}
local signal_for_time_command = {type = "virtual", name = "signal-time-command"}
local signal_for_energy = {type = "virtual", name = "signal-energy"}
local signal_for_id = {type = "virtual", name = "signal-id"}
local signal_for_battery = {type = "virtual", name = "signal-battery-percent"}
local signal_for_surface = {type = "virtual", name = "signal-surface"}

-- other signals
local signal_for_player = {type = "virtual", name = "signal-player"}
local signal_for_player_cursor = {type = "virtual", name = "signal-player-cursor"}
local signal_for_enemy_unit = {type = "virtual", name = "signal-enemy-unit"}
local signal_for_enemy_unit_spawner = {type = "virtual", name = "signal-enemy-unit-spawner"}
local signal_for_enemy_turret = {type = "virtual", name = "signal-enemy-turret"}
local signal_for_land = {type = "virtual", name = "signal-land"}
local signal_for_water = {type = "virtual", name = "signal-water"}
local signal_for_void = {type = "virtual", name = "signal-void"}
local signal_for_cliff = {type = "virtual", name = "signal-cliff"}
local signal_for_count = {type = "virtual", name = "signal-count"}
local signal_for_range = {type = "virtual", name = "signal-range"}
local signal_for_inventory = {type = "virtual", name = "signal-inventory-slot"}
local signal_for_follow_id = {type = "virtual", name = "signal-follow-id"}
local signal_for_follow_player = {type = "virtual", name = "signal-follow-player"}
local signal_for_pathfinding = {type = "virtual", name = "signal-pathfinding"}

local signal_for_path = {type = "virtual", name = "signal-path"}
local signal_for_path_count = {type = "virtual", name = "signal-path-count"}
local signal_for_waypoint = {type = "virtual", name = "signal-waypoint"}
local signal_for_waypoint_count = {type = "virtual", name = "signal-waypoint-count"}
local signal_for_position_beacon_id = {type = "virtual", name = "signal-position-beacon-id"}
local signal_for_vehicle_depot_id = {type = "virtual", name = "signal-vehicle-depot-id"}
local signal_for_loop = {type = "virtual", name = "signal-l"}
local signal_for_show_start = {type = "virtual", name = "signal-s"}

-- save settings in the combinator

--type = "input-output" has a combinator in and out (both optional)

--[[
CUSTOM EVENTS SENT


]]--
local function raise_event(event_name, event_data)
    local responses = {}
    for interface_name, interface_functions in pairs(remote.interfaces) do
        if interface_functions[event_name] then
            responses[interface_name] = remote.call(interface_name, event_name, event_data)
        end
    end
    return responses
end

local function struct_on_destroy_entity(entity)
    if(entity.unit_number) then
        global.struct.unit_numbers[entity.unit_number] = nil
    end
end

local function destroy_entity(entity)
    if entity.valid then
        struct_on_destroy_entity(entity)
        entity.destroy()
    end
    return nil
end

local function struct_find_from_entity(entity)
    if entity.valid and global.struct then
        local struct_id = global.struct.unit_numbers[entity.unit_number]
        if struct_id then
            return global.struct.structs[struct_id]
        end
    end
end

local function struct_from_struct_id(struct_id)
    return global.struct.structs[struct_id]
end

local function struct_get_type(struct)
    if struct then
        return struct_types[struct.struct_type]
    end
end

local function struct_complete_settings(struct)
    -- make sure all struct settings are populated with defaults if missing
    struct.settings = struct.settings or {}
    local struct_type = struct_get_type(struct)
    if struct_type and struct_type.settings_by_name then
        for setting_name, setting in pairs(struct_type.settings_by_name) do
            if struct.settings[setting_name] == nil and setting.default_value ~= nil then
                struct.settings[setting_name] = setting.default_value
            end
        end
    end
end

local function struct_create_or_revive(entity_type, surface, area, position, force)
    -- live are ones build in creative mod (sigh)
    -- position MUST be in area for revive return to work
    local found = false
    local lives = surface.find_entities_filtered{
        area=area,
        name=entity_type,
        force=force}
    for _, each_live in pairs(lives) do
        if each_live.valid then
            if found then
                -- can't have two of the same type
                each_live.destroy()
            else
              found = true
            end
        end
    end

    -- position MUST be in area for revive return to work
    local ghosts = surface.find_entities_filtered{
        area=area,
        name="entity-ghost",
        force=force}

    for _, each_ghost in pairs(ghosts) do
        if each_ghost.valid and each_ghost.ghost_name == entity_type then
            if found then
                -- can't have two of the same type
                each_ghost.destroy()
            else
                each_ghost.revive()
                if not each_ghost.valid then
                    -- revive was successful
                    found = true
                else
                    -- revive failed
                    each_ghost.destroy()
                end
            end
        end
    end

    if found then
        local entity = surface.find_entities_filtered{
            area = area,
            name = entity_type,
            force = force,
            limit = 1
        }[1]
        if entity then
            entity.direction = defines.direction.south
            entity.teleport(position)
            return entity
        else
        end
    else
        return surface.create_entity{
            name = entity_type,
            position = position,
            force = force,
            fast_replace = true}
    end
end

local function struct_sub_search_area_input_output(position)
    return {{position.x - 1.5, position.y - 1.5}, {position.x + 1.5, position.y + 1.5}}
end

local function struct_populate_settings_from_signals(struct)
    local struct_type = struct_get_type(struct)
    struct.settings = {}
    if struct.struct_settings and struct_type.settings_by_name then
        -- get straight from combinator
        local cb = struct.struct_settings.get_or_create_control_behavior()
        if cb and cb.parameters and cb.parameters.parameters then
            local parameters = cb.parameters.parameters
            for _, param in pairs(parameters) do
                if param.signal.name then
                    for _, setting in pairs(struct_type.settings_by_name) do
                        if param.signal.name == setting.signal_name and param.signal.type == (setting.signal_type or "virtual") then
                            struct.settings[setting.name] = param.count
                        end
                    end
                end
            end
        end
    end
    struct_complete_settings(struct)
end

local function struct_manage_new(entity)
    if entity.backer_name then
        entity.backer_name = ""
    end

    for _, struct_type in pairs(struct_types) do
        if entity.name == struct_type.struct_main then
            local struct_id = global.struct.next_struct_id
            --send_message("unit_manage_new [" .. entity.name .. "]: " .. struct_id)
            local struct = {
                struct_id = struct_id,
                struct_type = struct_type.name,
                struct_main = entity,
                settings = {},
                --struct_input = nil, -- input-output
                --struct_output = nil, -- input-output
                --struct_overlay = nil, -- vehicle-deployer
                --struct_chest = nil, -- vehicle-deployer
                --struct_belt = nil, -- vehicle-deployer
                --deploy_entity = nil, -- vehicle-deployer
            }
            entity.energy = 0
            if(struct_type.type == "input-output") then
                --struct.struct_main.operable = false -- means cannot be repaired.
                global.struct.unit_numbers[entity.unit_number] = struct_id
                -- should scan for ghost entities in the placement zone and fast-replace on those to preserve connections if rotated
                if struct_type.struct_input then
                    struct.struct_input = struct_create_or_revive(
                        struct_type.struct_input,
                        entity.surface,
                        struct_sub_search_area_input_output(entity.position),
                        {entity.position.x - 1.2,entity.position.y + 0.2},
                        entity.force)
                    struct.struct_input.destructible = false
                    global.struct.unit_numbers[struct.struct_input.unit_number] = struct_id
                end
                if struct_type.struct_output then
                    struct.struct_output = struct_create_or_revive(
                        struct_type.struct_output,
                        entity.surface,
                        struct_sub_search_area_input_output(entity.position),
                        {entity.position.x+1.2, entity.position.y+0.2},
                        entity.force)
                    struct.struct_output.destructible = false
                    global.struct.unit_numbers[struct.struct_output.unit_number] = struct_id
                end
                if struct_type.struct_settings then
                    struct.struct_settings = struct_create_or_revive(
                        struct_type.struct_settings,
                        entity.surface,
                        struct_sub_search_area_input_output(entity.position),
                        {entity.position.x, entity.position.y},
                        entity.force)
                    struct.struct_settings.destructible = false
                    global.struct.unit_numbers[struct.struct_settings.unit_number] = struct_id
                    -- check struct settings signals
                    -- if they are set then this is a resurrected or blueprinted entity
                    -- populate settings based on signals
                    struct_populate_settings_from_signals(struct)
                end
                global.struct.next_struct_id = global.struct.next_struct_id + 1
                global.struct.structs[struct_id] = struct
                if struct.struct_main.type == "roboport" then
                    local control = struct.struct_main.get_or_create_control_behavior()
                    control.mode_of_operations = defines.control_behavior.roboport.circuit_mode_of_operation.read_robot_stats
                end
            end
            struct_complete_settings(struct)
        end
    end
end

local function struct_on_built_entity(event)

    local entity = event.created_entity or event.entity
    if entity then
      for _,struct_type in pairs(struct_types) do
          if entity.name == struct_type.struct_main then
              struct_manage_new(entity)
          elseif entity.name == "entity-ghost" and entity.ghost_name == struct_type.struct_main then
              global.struct.ghosts[entity.unit_number] = {
                  struct_type = _,
                  entity = entity,
                  position = {x = entity.position.x, y = entity.position.y},
                  surface = entity.surface,
                  force = entity.force
              }
          end
      end
  end
end

local function struct_unmanage(struct)
    -- this unit is dead
    if struct then
        if struct.struct_main then
            struct.struct_main = destroy_entity(struct.struct_main)
        end
        if struct.struct_input then
            struct.struct_input = destroy_entity(struct.struct_input)
        end
        if struct.struct_output then
            struct.struct_output = destroy_entity(struct.struct_output)
        end
        if struct.struct_settings then
            struct.struct_settings = destroy_entity(struct.struct_settings)
        end
        if struct.struct_overlay then
            struct.struct_overlay = destroy_entity(struct.struct_overlay)
        end
        if struct.struct_belt then
            struct.struct_belt = destroy_entity(struct.struct_belt)
        end
        if struct.struct_combinator then
            struct.struct_combinator = destroy_entity(struct.struct_combinator)
        end
        global.struct.structs[struct.struct_id] = nil
    else
    end
end

local function struct_unmanage_by_entity(entity)
    -- this structure is dead
    local struct = struct_find_from_entity(entity)
    struct_unmanage(struct)
end

local function struct_on_entity_removed(event)
    struct_unmanage_by_entity(event.entity)
end

local function struct_add_inventory_to_signal_container(container, entity, inventory)
    util.signal_container_add_inventory(container, entity, inventory)
end

local function struct_add_to_signal_container(output, signal, count)
    if count == nil then
        count = 1
    end
    util.signal_container_add(output, signal, count)
end

local function struct_get_circuit_inputs(struct)
    local entity = struct.struct_main
    if(struct.struct_input) then
        entity = struct.struct_input
    end
    if entity and entity.valid then
        local inputs = {}
        local network = entity.get_circuit_network(defines.wire_type.red)
        if network and network.signals then
            for _, signal_count in pairs(network.signals) do
                util.signal_container_add(inputs, signal_count.signal, signal_count.count)
            end
        end
        network = entity.get_circuit_network(defines.wire_type.green)
        if network and network.signals then
            for _, signal_count in pairs(network.signals) do
                util.signal_container_add(inputs, signal_count.signal, signal_count.count)
            end
        end
        return inputs
    end
end

local function struct_get_circuit_inputs_or_constants(entity)
    if entity then
        local combinator = entity
        local inputs = {}
        local network = combinator.get_circuit_network(defines.wire_type.red)
        local network_found = false
        if network and network.signals then
            network_found = true
            for _, signal_count in pairs(network.signals) do
                util.signal_container_add(inputs, signal_count.signal, signal_count.count)
            end
        end
        network = combinator.get_circuit_network(defines.wire_type.green)
        if network and network.signals then
            network_found = true
            for _, signal_count in pairs(network.signals) do
                util.signal_container_add(inputs, signal_count.signal, signal_count.count)
            end
        end
        if not network_found then
            -- get straight from combinator
            local parameters = combinator.get_or_create_control_behavior().parameters.parameters
            for _, param in pairs(parameters) do
                if param.signal.name then
                    util.signal_container_add(inputs, param.signal, param.count)
                end
            end
        end
        return inputs
    end
end

local function struct_find_unit_from_signals(struct, signal_container)
  if signal_container["virtual"] and remote.interfaces["aai-programmable-vehicles"] then
    local surface_index = struct.struct_main.surface.index
    if signal_container["virtual"][signal_for_surface.name] then
      surface_index = signal_container["virtual"][signal_for_surface.name].count
    end
    for _, signal_count in pairs(signal_container["virtual"]) do
      local unit = remote.call("aai-programmable-vehicles", "get_unit_by_signal", {
        signal_count = {
              signal = signal_count.signal,
              count = signal_count.count
        },
        surface_index = surface_index,
      })
      if unit then
          return {unit = unit, signal = signal_count.signal, count = signal_count.count, surface_index = surface_index}
      end
    end
  end
end

local function struct_export_outputs_to_constants(entity, signal_container)
    -- NOTE: this NEEDs to be able to write 0-count signals for settings saving
    if entity and signal_container then
        local parameters = {}
        local index = 1;
        for _, signals in pairs(signal_container) do
            for _, signal_count in pairs(signals) do
                parameters[index] = {index=index, signal=signal_count.signal, count= math.floor(signal_count.count or 1)}
                index = index + 1
            end
        end
        entity.get_control_behavior().parameters = {parameters = parameters}
    end
end

local function struct_process_input_output(struct)
    -- return false if skipped

    if struct.struct_main.energy < 10 then
        return false
    end

    if struct.settings["tick_limit"] == 0 then
        -- this is switched off
        struct.struct_main.active = false
        return false
    else
        if struct.settings["tick_limit"] > 1 and game.tick - (struct.last_tick or 0) < struct.settings["tick_limit"] then
          -- or this is cannot run yet
          return false
        end
    end

    struct.struct_main.active = true
    struct.last_tick = game.tick

    -- get unit data based on unidt type and index based on unit number
    -- inputs are signal containers : [type][name]
    local inputs = struct_get_circuit_inputs(struct)
    local outputs = {} -- outputs["copper-plate"] = 5
    --send_message("struct " .. struct.struct_type.name)
    local struct_type = struct_get_type(struct)
    ----------------------------------------------------------------------------------
    -- UNIT SCAN ---------------------------------------------------------------------
    if struct_type.name == "unit_scan" then
        --struct_debug_signals(inputs)
        --outputs = inputs
        local player_signal = util.signal_container_get(inputs, signal_for_player_cursor)
        local use_cursor = false
        if player_signal then
            use_cursor = true
        else
            player_signal = util.signal_container_get(inputs, signal_for_player)
        end

        if player_signal then
            -- return players count
            if struct.settings["quantity"] >= 0 then
                struct_add_to_signal_container(outputs, signal_for_count, #game.players)
            end

            -- look for player
            local player_index = player_signal.count

            local player = game.players[player_index] and game.players[player_index].connected and game.players[player_index]

            if player and player.valid and player.character and player.character.valid then

                local position = player.position
                if use_cursor and player.selected then
                    position = player.selected.position
                end

                if struct.settings["surface"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_surface, player.surface.index)
                end

                if struct.settings["type_id"] >= 0 then
                    struct_add_to_signal_container(outputs, player_signal.signal, player_signal.count)
                end

                if struct.settings["stat"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_health, player.character.health)
                    local items = player.get_inventory(defines.inventory.character_armor)[1]
                    if items.valid_for_read and items.grid and items.grid.battery_capacity > 0 then
                        local battery_percent = (items.grid.available_in_batteries / items.grid.battery_capacity) * 100
                        struct_add_to_signal_container(outputs, signal_for_battery, battery_percent)
                    end
                end

                if struct.settings["xy_subtile"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_position_x_sub, position.x * 100)
                    struct_add_to_signal_container(outputs, signal_for_position_y_sub, position.y * 100)
                end

                if struct.settings["xy_tile"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_position_x_tiles, position.x)
                    struct_add_to_signal_container(outputs, signal_for_position_y_tiles, position.y)
                end

                if struct.settings["inventory"] >= 0 then
                    --struct_add_inventory_to_signal_container(outputs, player, defines.inventory.player_quickbar)
                    struct_add_inventory_to_signal_container(outputs, player, defines.inventory.character_main)
                    struct_add_inventory_to_signal_container(outputs, player, defines.inventory.character_guns)
                    struct_add_inventory_to_signal_container(outputs, player, defines.inventory.character_ammo)
                    struct_add_inventory_to_signal_container(outputs, player, defines.inventory.character_armor)
                    --struct_add_inventory_to_signal_container(outputs, player, defines.inventory.player_tools)
                end

                if struct.settings["inventory_space"] >= 0 then
                    local inv_main = player.get_inventory(defines.inventory.character_main)
                    local empty_slots = 0
                    if inv_main and inv_main.valid then
                        for i = 1, #inv_main do
                            local stack = inv_main[i]
                            if not(stack and stack.valid and stack.valid_for_read) then
                                empty_slots = empty_slots + 1
                            end
                        end
                    end
                    struct_add_to_signal_container(outputs, signal_for_inventory, empty_slots)
                end

                if struct.settings["zone"] >= 0 then
                    if remote.interfaces["aai-zones"]["get_zonedata_for_position"] then
                        local zonedata = remote.call("aai-zones", "get_zonedata_for_position", {
                                force = struct.struct_main.force,
                                surface_index = player.surface.index,
                                position = position
                            })
                        if zonedata and zonedata.type and zonedata.index then
                            struct_add_to_signal_container(outputs, {type="virtual", name=zonedata.type}, zonedata.index)
                        end
                    end
                end

            end
        elseif remote.interfaces["aai-programmable-vehicles"] then -- cannot get player so get unit
            local result = struct_find_unit_from_signals(struct, inputs)
            if result then
                -- get unit data
                local unit = result.unit
                local vehicle = unit.vehicle
                local surface = util.signal_container_get(inputs, signal_for_surface)
                local surface_index = surface and surface.count or struct.struct_main.surface.index

                if struct.settings["quantity"] >= 0 then
                    local type_count = remote.call("aai-programmable-vehicles", "get_unit_count_by_type",
                      {unit_type = unit.unit_type, surface_index = surface_index} )
                    struct_add_to_signal_container(outputs, signal_for_count, type_count) -- send back unit type count for easy looping
                end

                if struct.settings["surface"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_surface, vehicle.surface.index)
                end

                if struct.settings["type_id"] >= 0 then
                    local unit_type = unit.unit_type_snapshot
                    struct_add_to_signal_container(outputs, unit_type.signal, unit.unit_type_id) -- send unit type id back for easy connecting
                end

                if struct.settings["unit_id"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_id, unit.unit_id) -- send unit id back for advanced connecting
                end

                if struct.settings["physical"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_speed, vehicle.speed * 1000)
                    struct_add_to_signal_container(outputs, signal_for_angle, ((vehicle.orientation * 360 + 359) % 360) +1) -- 1-360
                    local target_position = unit.safe_target_position or unit.target_position
                    if target_position then
                      struct_add_to_signal_container(outputs, signal_for_range, util.vectors_delta_length(vehicle.position, target_position))
                    end
                end

                if struct.settings["stat"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_health, vehicle.health)
                    struct_add_to_signal_container(outputs, signal_for_energy, unit.energy)
                    if vehicle.grid and vehicle.grid.battery_capacity > 0 then
                        local battery_percent = (vehicle.grid.available_in_batteries / vehicle.grid.battery_capacity) * 100
                        struct_add_to_signal_container(outputs, signal_for_battery, battery_percent)
                    end
                end

                if struct.settings["xy_subtile"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_position_x_sub, vehicle.position.x * 100)
                    struct_add_to_signal_container(outputs, signal_for_position_y_sub, vehicle.position.y * 100)
                end

                if struct.settings["xy_tile"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_position_x_tiles, vehicle.position.x)
                    struct_add_to_signal_container(outputs, signal_for_position_y_tiles, vehicle.position.y)
                end

                if struct.settings["timer"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_time_target, 1 + game.tick - unit.target_last_tick)
                    struct_add_to_signal_container(outputs, signal_for_time_move, 1 + game.tick - unit.move_last_tick)
                    struct_add_to_signal_container(outputs, signal_for_time_command, 1 + game.tick - unit.order_last_tick)
                end

                if struct.settings["inventory"] >= 0 then
                    struct_add_inventory_to_signal_container(outputs, vehicle, defines.inventory.fuel)
                    struct_add_inventory_to_signal_container(outputs, vehicle, defines.inventory.car_trunk)
                    struct_add_inventory_to_signal_container(outputs, vehicle, defines.inventory.car_ammo)
                end

                if struct.settings["inventory_space"] >= 0 then
                    local inv_main = vehicle.get_inventory(defines.inventory.car_trunk)
                    local empty_slots = 0
                    if inv_main and inv_main.valid then
                        for i = 1, #inv_main do
                            local stack = inv_main[i]
                            if not(stack and stack.valid and stack.valid_for_read) then
                                empty_slots = empty_slots + 1
                            end
                        end
                    end
                    struct_add_to_signal_container(outputs, signal_for_inventory, empty_slots)
                end

                if struct.settings["zone"] >= 0 then
                    if remote.interfaces["aai-zones"]["get_zonedata_for_position"] then
                        local zonedata = remote.call("aai-zones", "get_zonedata_for_position", {
                                force = struct.struct_main.force,
                                surface_index = surface_index,
                                position = {x = vehicle.position.x, y = vehicle.position.y}
                            })
                        if zonedata and zonedata.type and zonedata.index then
                            struct_add_to_signal_container(outputs, {type="virtual", name=zonedata.type}, zonedata.index)
                        end
                    end
                end

                if struct.settings["path_id"] >= 0 and unit.path then
                    struct_add_to_signal_container(outputs, signal_for_path, unit.path.path_id or 0)
                end

                if struct.settings["waypoint_id"] >= 0 and unit.path then
                    struct_add_to_signal_container(outputs, signal_for_waypoint, unit.path.waypoint_id or 0)
                end

            end
        end

        ----------------------------------------------------------------------------------
        -- UNIT CONTROL ------------------------------------------------------------------
    elseif struct_type.name == "unit_control" and remote.interfaces["aai-programmable-vehicles"] then
        local result = struct_find_unit_from_signals(struct, inputs)
        if result then
            local unit = result.unit
            if unit and unit.mode ~= "drive" then -- can't affect in drive mode

                -- do orders
                local angle = util.signal_container_get(inputs, signal_for_angle)
                local speed = util.signal_container_get(inputs, signal_for_speed)
                local range = util.signal_container_get(inputs, signal_for_range)
                local position_x_sub = util.signal_container_get(inputs, signal_for_position_x_sub)
                local position_y_sub = util.signal_container_get(inputs, signal_for_position_y_sub)
                local position_x_tiles = util.signal_container_get(inputs, signal_for_position_x_tiles)
                local position_y_tiles = util.signal_container_get(inputs, signal_for_position_y_tiles)

                local follow_player = util.signal_container_get(inputs, signal_for_follow_player)
                local follow_id = util.signal_container_get(inputs, signal_for_follow_id)

                local path_id = util.signal_container_get(inputs, signal_for_path)
                local waypoint_id = util.signal_container_get(inputs, signal_for_waypoint)
                local beacon_id = util.signal_container_get(inputs, signal_for_position_beacon_id)
                local depot_id = util.signal_container_get(inputs, signal_for_vehicle_depot_id)

                local surface = util.signal_container_get(inputs, signal_for_surface)
                local surface_index = surface and surface.count or unit.vehicle.surface.index

                local command_data = {
                  unit_id = unit.unit_id,
                  surface_index = surface_index
                }
                if path_id or waypoint_id then
                  if path_id then
                    command_data.path_id = path_id.count
                  end
                  if waypoint_id then
                    command_data.waypoint_id = waypoint_id.count
                  end
                  remote.call("aai-programmable-vehicles", "set_unit_command", command_data)
                elseif depot_id then
                    command_data.goto_target_type = "vehicle-depot"
                    command_data.goto_target_id = depot_id.count
                    command_data.goto_target_force_name = struct.struct_main.force.name
                    remote.call("aai-programmable-vehicles", "set_unit_command", command_data)
                elseif beacon_id then
                    command_data.goto_target_type = "position-beacon"
                    command_data.goto_target_id = beacon_id.count
                    command_data.goto_target_force_name = struct.struct_main.force.name
                    remote.call("aai-programmable-vehicles", "set_unit_command", command_data)
                elseif follow_player or follow_id then
                    -- follow a target
                    if follow_player then
                      if game.players[follow_player.count] and game.players[follow_player.count].connected then
                        command_data.follow_target_type = "player"
                        command_data.follow_target_player = game.players[follow_player.count]
                      end
                    elseif follow_id then
                      local follow_unit = remote.call("aai-programmable-vehicles", "get_unit_by_signal", { signal_count = {
                          signal = signal_for_id,
                          count = follow_id.count}})
                      if follow_unit then
                        command_data.follow_target_type = "unit"
                        command_data.follow_target_unit_id = follow_unit.unit_id
                      end
                    end
                    if command_data.follow_target_type then
                      if position_x_sub or position_y_sub then
                        command_data.follow_target_offset_rotated = {
                          x = position_x_sub and (position_x_sub.count / 100) or 0,
                          y = position_y_sub and (position_y_sub.count / 100) or 0
                        }
                      elseif position_x_tiles or position_y_tiles then
                        command_data.follow_target_offset_absolute= {
                          x = position_x_tiles and position_x_tiles.count or 0,
                          y = position_y_tiles and position_y_tiles.count or 0
                        }
                      else
                        if range then command_data.follow_target_range = range.count end
                        if angle then command_data.follow_target_orientation = (angle.count / 360) % 1 end
                      end

                      remote.call("aai-programmable-vehicles", "set_unit_command", command_data)
                    end
                else
                    -- simple movement
                    if angle or speed then -- look for angle and speed -- mode to vehicle modes
                        command_data.target_angle = angle and (angle.count / 360) % 1 or nil
                        command_data.target_speed = speed and speed.count / 1000 or 0
                        remote.call("aai-programmable-vehicles", "set_unit_command", command_data)
                    elseif position_x_sub or position_y_sub then
                        local dx = position_x_sub and (position_x_sub.count / 100) or 0
                        local dy = position_y_sub and (position_y_sub.count / 100) or 0
                        command_data.target_position_direct = {x= unit.vehicle.position.x + dx, y=unit.vehicle.position.y + dy}
                        remote.call("aai-programmable-vehicles", "set_unit_command", command_data)
                    elseif position_x_tiles or position_y_tiles then
                        -- pathfinding movement
                        -- look for x and y mode to unit mode
                        local new_position = { -- +0.5 to center on tile
                            x = position_x_tiles and (position_x_tiles.count + 0.5) or 0.5,
                            y = position_y_tiles and (position_y_tiles.count + 0.5) or 0.5
                        }
                        command_data.target_position = new_position
                        remote.call("aai-programmable-vehicles", "set_unit_command", command_data)
                    end
                end
            end
        end

        ----------------------------------------------------------------------------------
        -- UNITDATA SCAN -----------------------------------------------------------------
    elseif struct_type.name == "unitdata_scan" then
        local result = struct_find_unit_from_signals(struct, inputs)
        if result then
            local unit = result.unit
            if unit and unit.vehicle and unit.vehicle.valid then

                local surface = util.signal_container_get(inputs, signal_for_surface)
                local surface_index = surface and surface.count or struct.struct_main.surface.index

                if struct.settings["quantity"] >= 0 then
                    local type_count = remote.call("aai-programmable-vehicles", "get_unit_count_by_type",
                      {unit_type = unit.unit_type, surface_index = surface_index} )
                    struct_add_to_signal_container(outputs, signal_for_count, type_count) -- send back unit type count for easy looping
                end

                if struct.settings["surface"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_surface, unit.vehicle.surface.index)
                end

                if struct.settings["type_id"] >= 0 then
                    local unit_type = unit.unit_type_snapshot
                    struct_add_to_signal_container(outputs, unit_type.signal, unit.unit_type_id) -- send unit type id back for easy connecting
                end

                if struct.settings["unit_id"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_id, unit.unit_id) -- send unit id back for advanced connecting
                end

                if struct.settings["unitdata"] >= 0 then
                    for _, signals in pairs(unit.data) do
                        for signal_name, signal_count in pairs(signals) do
                            if signal_name ~= signal_for_count.name and signal_name ~= signal_for_id.name then
                                struct_add_to_signal_container(outputs, signal_count.signal, signal_count.count)
                            end
                        end
                    end
                end
            end
        end

        ----------------------------------------------------------------------------------
        -- UNITDATA CONTROL --------------------------------------------------------------
    elseif struct_type.name == "unitdata_control" then
        local result = struct_find_unit_from_signals(struct, inputs)
        if result then
            local unit = result.unit
            if unit then
                unit.data = {} -- clear data
                for _, signals in pairs(inputs) do
                    for signal_name, signal_count in pairs(signals) do
                        if (not string.find(signal_name, composite_suffix.."signal", 1, true))
                        and signal_name ~= signal_for_count.name
                        and signal_name ~= signal_for_id.name
                        and signal_name ~= signal_for_surface.name then
                            -- don't add the generic count or a unit virtual signal
                            util.signal_container_add(unit.data, signal_count.signal, signal_count.count)
                        end
                    end
                end
                remote.call("aai-programmable-vehicles", "set_unit_data", {unit_id = unit.unit_id, data = unit.data})
            end
        end

          ----------------------------------------------------------------------------------
          -- PATH SCAN -----------------------------------------------------------------
      elseif struct_type.name == "path_scan" then


          local surface = util.signal_container_get(inputs, signal_for_surface)
          local surface_index = surface and surface.count or struct.struct_main.surface.index

          local path_id = util.signal_container_get(inputs, signal_for_path)
          path_id = path_id and path_id.count or nil

          local waypoint_id = util.signal_container_get(inputs, signal_for_waypoint)
          waypoint_id = waypoint_id and waypoint_id.count or nil

          if path_id and remote.interfaces["aai-programmable-vehicles"] and remote.interfaces["aai-programmable-vehicles"]["get_surface_paths"] then

              local paths = remote.call("aai-programmable-vehicles", "get_surface_paths",  {surface_index = surface_index, force_name = struct.struct_main.force.name}) or {}

              if struct.settings["path_quantity"] >= 0 then
                local count = 0
                for _, p in pairs(paths) do
                  count = count + 1
                end
                struct_add_to_signal_container(outputs, signal_for_path_count, count)
              end

              if struct.settings["surface"] >= 0 then
                struct_add_to_signal_container(outputs, signal_for_surface, surface_index)
              end

              if struct.settings["path_id"] >= 0 then
                struct_add_to_signal_container(outputs, signal_for_path, path_id)
              end

              local path = paths[path_id]
              if path then

                if struct.settings["waypoint_quantity"] >= 0 then
                  local count = 0
                  for _, w in pairs(path.waypoints) do
                    count = count + 1
                  end
                  struct_add_to_signal_container(outputs, signal_for_waypoint_count, count)
                end

                if waypoint_id then

                  if struct.settings["waypoint_id"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_waypoint, waypoint_id)
                  end
                  local waypoint = path.waypoints[waypoint_id]
                  if waypoint then

                    if waypoint.type == 'position' then
                      if struct.settings["xy_subtile"] >= 0 then
                          struct_add_to_signal_container(outputs, signal_for_position_x_sub, waypoint.position.x * 100)
                          struct_add_to_signal_container(outputs, signal_for_position_y_sub, waypoint.position.y * 100)
                      end
                      if struct.settings["xy_tile"] >= 0 then
                          struct_add_to_signal_container(outputs, signal_for_position_x_tiles, waypoint.position.x)
                          struct_add_to_signal_container(outputs, signal_for_position_y_tiles, waypoint.position.y)
                      end
                    elseif struct.settings["target"] >= 0 then
                      if waypoint.type == 'goto_unit_id' then
                          struct_add_to_signal_container(outputs, signal_for_follow_id, waypoint.target_id)
                      elseif waypoint.type == 'goto_player_id' then
                          struct_add_to_signal_container(outputs, signal_for_follow_player, waypoint.target_id)
                      elseif waypoint.type == 'goto_position_beacon_id' then
                          struct_add_to_signal_container(outputs, signal_for_position_beacon_id, waypoint.target_id)
                      elseif waypoint.type == 'goto_vehicle_depot_id' then
                          struct_add_to_signal_container(outputs, signal_for_vehicle_depot_id, waypoint.target_id)
                      end
                    end
                    if struct.settings["misc"] >= 0 then
                      if waypoint.loop then
                          struct_add_to_signal_container(outputs, signal_for_loop, 1)
                      end
                      if waypoint.start_marker then
                          struct_add_to_signal_container(outputs, signal_for_show_start, 1)
                      end
                      if waypoint.allow_pathfinding == "always" or waypoint.allow_pathfinding == true then
                          struct_add_to_signal_container(outputs, signal_for_pathfinding, 2)
                      end
                      if waypoint.allow_pathfinding == "auto" then
                          struct_add_to_signal_container(outputs, signal_for_pathfinding, 1)
                      end
                      if waypoint.allow_pathfinding == "never" then
                          struct_add_to_signal_container(outputs, signal_for_pathfinding, -1)
                      end
                    end
                  end
                end
              end
          end

          ----------------------------------------------------------------------------------
          -- PATH CONTROL --------------------------------------------------------------
      elseif struct_type.name == "path_control" then

          local surface = util.signal_container_get(inputs, signal_for_surface)
          local surface_index = surface and surface.count or struct.struct_main.surface.index

          local path_id = util.signal_container_get(inputs, signal_for_path)
          path_id = path_id and path_id.count or nil

          local waypoint_id = util.signal_container_get(inputs, signal_for_waypoint)
          waypoint_id = waypoint_id and waypoint_id.count or 1

          if path_id and remote.interfaces["aai-programmable-vehicles"] and remote.interfaces["aai-programmable-vehicles"]["set_path_waypoint"] then
            remote.call("aai-programmable-vehicles", "set_path_waypoint", {
              surface_index = surface_index,
              force_name = struct.struct_main.force.name,
              path_id = path_id,
              waypoint_id = waypoint_id,
              position_x = util.signal_container_get_count(inputs, signal_for_position_x_tiles)
                        or ((util.signal_container_get_count(inputs, signal_for_position_x_sub) or 0) / 100),
              position_y = util.signal_container_get_count(inputs, signal_for_position_y_tiles)
                        or ((util.signal_container_get_count(inputs, signal_for_position_y_sub) or 0) / 100),
              goto_player_id = util.signal_container_get_count(inputs, signal_for_follow_player),
              goto_position_beacon_id = util.signal_container_get_count(inputs, signal_for_position_beacon_id),
              goto_unit_id = util.signal_container_get_count(inputs, signal_for_follow_id),
              vehicle_depot_id = util.signal_container_get_count(inputs, signal_for_vehicle_depot_id),
              speed_limit = (util.signal_container_get_count(inputs, signal_for_speed) or 0) / 1000,
              allow_pathfinding = util.signal_container_get_count(inputs, signal_for_pathfinding),
            })
          end

        ----------------------------------------------------------------------------------
        -- ZONE SCAN ---------------------------------------------------------------------
    elseif struct_type.name == "zone_scan" then
        if remote.interfaces["aai-zones"]["get_zone_types"] and inputs.virtual then

            for signal_name, signal_count in pairs(inputs.virtual) do
                if remote.call("aai-zones", "is_zone_type", signal_name) then

                    local surface = util.signal_container_get(inputs, signal_for_surface)
                    local surface_index = surface and surface.count or struct.struct_main.surface.index

                    if struct.settings["quantity"] >= 0 then
                        struct_add_to_signal_container(outputs, signal_for_count,
                            remote.call("aai-zones", "get_zone_count_of_type", {
                                    force = struct.struct_main.force,
                                    surface_index = surface_index,
                                    type = signal_name })) -- send back count of type
                    end

                    if struct.settings["surface"] >= 0 then
                      struct_add_to_signal_container(outputs, signal_for_surface, surface_index)
                    end
                    -- get the zone
                    --local zone = zone_by_type_and_index(zone.name, zone_signal.count)
                    if struct.settings["zone"] >= 0 or struct.settings["xy_tile"] >= 0 or struct.settings["xy_tile"] >= 0 then
                        local zone_tile = remote.call("aai-zones", "get_zone_by_index", {
                                force=struct.struct_main.force,
                                surface_index = surface_index,
                                type=signal_name,
                                index=signal_count.count})

                        if zone_tile then


                            if struct.settings["zone"] >= 0 then
                                struct_add_to_signal_container(outputs, {type="virtual", name=signal_name}, zone_tile.index) -- send type
                            end

                            if struct.settings["xy_subtile"] >= 0 then
                                struct_add_to_signal_container(outputs, signal_for_position_x_sub, (zone_tile.x + 0.5) * 100)
                                struct_add_to_signal_container(outputs, signal_for_position_y_sub, (zone_tile.y + 0.5) * 100)
                            end
                            if struct.settings["xy_tile"] >= 0 then
                                struct_add_to_signal_container(outputs, signal_for_position_x_tiles, zone_tile.x)
                                struct_add_to_signal_container(outputs, signal_for_position_y_tiles, zone_tile.y)
                            end
                        end
                    end
                    break
                end
            end
        end

        ----------------------------------------------------------------------------------
        -- ZONE CONTROL ------------------------------------------------------------------
    elseif struct_type.name == "zone_control" then
        if remote.interfaces["aai-zones"]["get_zone_types"] then

            local position_x_tiles = util.signal_container_get(inputs, signal_for_position_x_tiles)
            local position_y_tiles = util.signal_container_get(inputs, signal_for_position_y_tiles)

            if position_x_tiles or position_y_tiles then

                local apply_zone = nil -- can be nil to remove
                local x = position_x_tiles and position_x_tiles.count or 0
                local y = position_y_tiles and position_y_tiles.count or 0

                local surface = util.signal_container_get(inputs, signal_for_surface)
                local surface_index = surface and surface.count or struct.struct_main.surface.index

                local zone_options = remote.call("aai-zones", "get_zone_types")
                for _,zone_option in pairs(zone_options) do
                    local zone_signal = util.signal_container_get(inputs, {type="virtual", name=zone_option.name})
                    if zone_signal then
                        apply_zone = zone_option.name
                        break
                    end
                end

                -- apply the zone to the tile or remove if no zone
                -- surface, force, area, zone_type
                remote.call("aai-zones", "apply_zone_to_area", {
                        force = struct.struct_main.force,
                        type = apply_zone, -- can be nil to remove
                        surface_index = surface_index,
                        area = {left_top={x=x,y=y},right_bottom={x=x,y=y}}
                    })
            end
        end

        ----------------------------------------------------------------------------------
        -- TILE SCAN ---------------------------------------------------------------------
    elseif struct_type.name == "tile_scan" then

        local position_x_tiles = util.signal_container_get(inputs, signal_for_position_x_tiles)
        local position_y_tiles = util.signal_container_get(inputs, signal_for_position_y_tiles)
        local range_signal = util.signal_container_get(inputs, signal_for_range)

        if position_x_tiles or position_y_tiles or range_signal then

            local surface_signal = util.signal_container_get(inputs, signal_for_surface)
            local surface_index = surface_signal and surface_signal.count or struct.struct_main.surface.index
            local surface = game.surfaces[surface_index]

            if surface then

                local x = struct.struct_main.position.x
                local y = struct.struct_main.position.y

                if position_x_tiles or position_y_tiles then
                    x = position_x_tiles and position_x_tiles.count or 0
                    y = position_y_tiles and position_y_tiles.count or 0
                end

                local tile_scanner_random_range = range_signal and range_signal.count or 0
                if tile_scanner_random_range > 0 then
                    x = math.floor(x + (math.random() - 0.5) * 2 * math.random() * tile_scanner_random_range)
                    y = math.floor(y + (math.random() - 0.5) * 2 * math.random() * tile_scanner_random_range)
                end

                if struct.settings["surface"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_surface, surface_index)
                end

                -- send position back to verify
                if struct.settings["xy_tile"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_position_x_tiles, x)
                    struct_add_to_signal_container(outputs, signal_for_position_y_tiles, y)
                end

                if struct.settings["xy_subtile"] >= 0 then
                    struct_add_to_signal_container(outputs, signal_for_position_x_sub, x * 100 + 50)
                    struct_add_to_signal_container(outputs, signal_for_position_y_sub, y * 100 + 50)
                end

                local tile = surface.get_tile(x,y)
                if tile and tile.valid then -- require a tile, otherwise this is outside the created world

                    if struct.settings["terrain"] >= 0 then
                        if not tile.collides_with("player-layer") then
                          if tile.collides_with("ground-tile") then
                              struct_add_to_signal_container(outputs, signal_for_land, 1)
                          elseif tile.collides_with("ground-tile") then
                              struct_add_to_signal_container(outputs, signal_for_water, 1)
                          end
                        else
                          -- void
                          struct_add_to_signal_container(outputs, signal_for_void, 1)
                        end
                        if tile.prototype.mineable_properties and tile.prototype.mineable_properties.mineable and tile.prototype.mineable_properties.products then
                            for _, product in pairs(tile.prototype.mineable_properties.products) do
                                struct_add_to_signal_container(outputs, {type=product.type, name=product.name}, product.amount_max and product.amount_max or product.amount)
                            end
                        end
                    end

                    -- scan this tile for entities
                    local entities = {}
                    if struct.settings["entity"] >= 0 then
                        entities = surface.find_entities({{x,y},{x + 0.99,y + 0.99}});
                    elseif struct.settings["resource"] >= 0 then
                        entities = surface.find_entities_filtered{type="resource", area={{x,y},{x + 0.99,y + 0.99}}};
                    end
                    local sent_unit_id = false
                    for _, entity in pairs(entities) do
                        local has_item = false

                        if struct.settings["entity"] >= 0 then
                            -- use item to palce as signal
                            if(entity.prototype.items_to_place_this) then
                                for _, item in pairs(entity.prototype.items_to_place_this) do
                                    has_item = true
                                    struct_add_to_signal_container(outputs, {type = "item", name = item.name}, 1)
                                end
                            elseif entity.type == "cliff" then
                              struct_add_to_signal_container(outputs, signal_for_cliff, 1)
                            end
                        end

                        if struct.settings["unit_id"] >= 0 then
                            if (not sent_unit_id) and entity.type == "car" and remote.interfaces["aai-programmable-vehicles"] and remote.interfaces["aai-programmable-vehicles"]["get_unit_by_entity"] then
                                local unit = remote.call("aai-programmable-vehicles", "get_unit_by_entity", entity)
                                if unit and unit.vehicle.valid then
                                    struct_add_to_signal_container(outputs, signal_for_id, unit.unit_id) -- send unit id back for advanced connecting
                                    sent_unit_id = true
                                end
                            end
                        end

                        -- use mineable result(s) as signal(s)
                        if has_item == false and entity.prototype.mineable_properties and
                          entity.prototype.mineable_properties and entity.prototype.mineable_properties.products then
                            local amount = entity.type == "resource" and entity.amount or 1
                            for _, product in pairs(entity.prototype.mineable_properties.products) do
                                struct_add_to_signal_container(outputs, {type=product.type, name=product.name}, amount * (product.amount_max and product.amount_max or product.amount))
                                has_item = true
                            end
                        end

                        -- use preset signal, ignore composite_suffix unit entities (navigator, attack target, etc)
                        if has_item == false then
                            if entity.type == "unit" then
                                if (not string.find(entity.name, composite_suffix, 1, true)) then
                                    struct_add_to_signal_container(outputs, signal_for_enemy_unit, 1)
                                end
                            elseif entity.type == "unit-spawner" then
                                struct_add_to_signal_container(outputs, signal_for_enemy_unit_spawner, 1)
                            elseif entity.type == "turret" then
                                struct_add_to_signal_container(outputs, signal_for_enemy_turret, 1)
                            elseif entity.name == "item-on-ground" then
                                struct_add_to_signal_container(outputs, {type="item", name=entity.stack.name}, entity.stack.count)
                            end
                        end
                    end

                    if struct.settings["zone"] >= 0 then
                        if remote.interfaces["aai-zones"]["get_zonedata_for_position"] then
                            local zonedata = remote.call("aai-zones", "get_zonedata_for_position", {
                                    force = struct.struct_main.force,
                                    surface_index = surface_index,
                                    position = {x = x, y = y}
                                })
                            if zonedata and zonedata.type and zonedata.index then
                                struct_add_to_signal_container(outputs, {type="virtual", name=zonedata.type}, zonedata.index)
                            end
                        end
                    end
                    
                end
            end
        end
    end

    ----------------------------------------------------------------------------------
    -- OUTPUTS -----------------------------------------------------------------------
    if struct_type.name ~= "zone_control" and
    struct_type.name ~= "unit_control" and
    struct_type.name ~= "unitdata_control"and
    struct_type.name ~= "path_control" then
        struct_export_outputs_to_constants(struct.struct_output, outputs)
    end

    return true
end

local function struct_update_state(struct)
    -- delete if invalid
    local struct_type = struct_get_type(struct)
    if(struct_type.type == "input-output")then
        if not struct.struct_main or not struct.struct_main.valid then
            struct_unmanage(struct)
            return
        end
    elseif (struct_type.type == "vehicle-deployer") then
        if not struct.struct_main or not struct.struct_main.valid then
            struct_unmanage(struct)
            return
        end
    end

    if(struct_type.type == "input-output") then
        struct_process_input_output(struct)
    elseif(struct_type.type == "vehicle-deployer") then
        struct_process_vehicle_deployer(struct)
    end

end

local function add_tick_task(task)
    -- add a function to tick tasks
    -- task must return true or be removed
    if not global.tick_tasks then
      global.tick_tasks = {}
      global.tick_tasks_next_id = 1
    end
    task.task_id = global.tick_tasks_next_id or 1
    global.tick_tasks_next_id = (global.tick_tasks_next_id or 1) + 1
    global.tick_tasks[task.task_id] = task
end

local function struct_gui_add_setting(parent, setting, current_settings)
    if setting.type and setting.name then
        if setting.type == "int-setting" then
            local flow = parent.add{
                type = "flow",
                name = "setting_"..setting.name,
                direction = "vertical"
            }
            local label = flow.add{
                type="label",
                name="label",
                style="aai_struct_settings_label",
                caption= {"aai-structure-settings."..(setting.caption or setting.name)}
                --caption= (setting.caption or setting.name)
            }
            label.tooltip = {"aai-structure-settings."..setting.name.."-tooltip"}
            local textfield = flow.add{
                type="textfield",
                name="textfield",
                style="aai_struct_settings_textfield"
            }
            textfield.tooltip = {"aai-structure-settings."..setting.name.."-tooltip"}
            if current_settings and current_settings[setting.name] ~= nil then
                textfield.text = current_settings[setting.name]
            elseif setting.default_value ~= nil then
                textfield.text = setting.default_value
            end
        elseif setting.type == "bool-setting" then
            local state = 1
            if setting.default ~= nil then
                state = setting.default
            end
            if current_settings and current_settings[setting.name] ~= nil then
                state = current_settings[setting.name]
            end
            local flow = parent.add{
                type = "flow",
                name = "setting_"..setting.name,
                direction = "horizontal"
            }
            flow.add{
                type="checkbox",
                name="checkbox",
                state= state >= 0 and "true" or "false",
                style="checkbox"
            }
            local label = flow.add{
                type="label",
                name="label",
                style="aai_struct_settings_label",
                caption= {"aai-structure-settings."..(setting.caption or setting.name)}
            }
            label.tooltip = {"aai-structure-settings."..setting.name.."-tooltip"}
        end
    end
end

local function struct_gui_add_settings_recursive(parent, settings, current_settings)
    if settings[1] then
        -- array
        for _, setting in ipairs(settings) do
            struct_gui_add_settings_recursive(parent, setting, current_settings)
        end
    elseif settings.type == "fieldset" then
        -- fieldset
        if settings.name and settings.settings then
            local fieldset = parent.add{
                type = "frame",
                name = "setting_"..settings.name,
                style="aai_struct_settings_fieldset",
                direction = "vertical",
                caption= {"aai-structure-settings."..(settings.caption or settings.name)},
            }
            struct_gui_add_settings_recursive(fieldset, settings.settings, current_settings)
        end
    elseif settings.type then
        -- some other setting
        struct_gui_add_setting(parent, settings, current_settings)
    end
end

local function struct_add_settings_gui(player_index, struct_id)
    local struct = global.struct.structs[struct_id]
    local struct_type = struct_get_type(struct)
    local player = game.players[player_index]
    local current_settings = struct.settings or {} -- TODO read settings
    player.opened = nil
    player.gui.center.clear()
    local frame = player.gui.center.add{
        type="frame",
        name="struct_settings",
        style="aai_struct_settings_container",
        caption= {"aai-structure-settings.structure_settings", {"entity-name."..struct_type.struct_main}},
        direction = "vertical",
    }
    local struct_id_safe = frame.add{
        type = "flow",
        name = "struct_id",
        direction = "horizontal"
    }
    struct_id_safe.add{
        type = "flow",
        name = struct.struct_id,
        direction = "horizontal"
    }
    if struct_type.settings then
        struct_gui_add_settings_recursive(frame, struct_type.settings, current_settings)
    end
    frame.add{
        type="button",
        name="aai_struct_save_settings",
        style="aai_struct_settings_button",
        caption={"aai-structure-settings.save"}
    }
end

local function struct_gui_setting_from_element_recursive(struct_type, settings, gui_element)
    local force_close = false
    if gui_element.type == "flow" then
        -- could be a setting, check for checkbox or textfield
        local setting_name = nil
        if string.find(gui_element.name,"setting_") then
             setting_name = util.replace(gui_element.name, "setting_", "")
        end
        if setting_name and struct_type.settings_by_name and struct_type.settings_by_name[setting_name] then
            if gui_element.checkbox then
                settings[setting_name] = gui_element.checkbox.state == true and 1 or -1
            elseif gui_element.textfield then
                settings[setting_name] = tonumber( gui_element.textfield.text )
                if settings[setting_name] == nil then
                    if string.len(gui_element.textfield.text) > 1 then
                        -- the user probably put "e" in the field to exit, so exit
                        settings[setting_name] = util.string_to_number(gui_element.textfield.text, false)
                        gui_element.textfield.text = settings[setting_name]
                        force_close = true
                    else
                        settings[setting_name] = 0
                    end
                end
                settings[setting_name] = math.ceil(settings[setting_name] )
                local type_setting = struct_type.settings_by_name[setting_name]
                if type_setting.minimum_value ~= nil then
                    settings[setting_name] = math.max(settings[setting_name], type_setting.minimum_value)
                end
                if type_setting.maximum_value ~= nil then
                    settings[setting_name] = math.min(settings[setting_name], type_setting.maximum_value)
                end
                gui_element.textfield.text = settings[setting_name]
            end
        end
    elseif gui_element.type == "frame" then
        -- probably a frameset
        for _, child in pairs(gui_element.children) do
              local close = struct_gui_setting_from_element_recursive(struct_type, settings, child)
              force_close = force_close or close
        end
    end
    return force_close
end

local function struct_gui_save(player_index)
    local force_close = false
    local player = game.players[player_index]
    -- don't assume the ui is open, check first
    if player.gui.center.struct_settings then

        -- get struct id
        local struct_id = tonumber(player.gui.center.struct_settings.struct_id.children[1].name)
        local struct = struct_from_struct_id(struct_id)
        if struct then
            local struct_type = struct_get_type(struct)
            if struct_type and struct_type.settings_by_name and struct.struct_settings then
                -- gather settings
                local settings_combinator = struct.struct_settings
                local settings = {} -- the lua storage (named) settings
                for _, gui_element in pairs(player.gui.center.struct_settings.children) do
                    local close = struct_gui_setting_from_element_recursive(struct_type, settings, gui_element)
                    force_close = force_close or close
                end
                struct.settings = settings
                struct_complete_settings(struct)

                local outputs = {} -- the signal container for combinator (signal) settings for blueprints
                for _, setting in pairs(struct.settings) do
                    if struct_type.settings_by_name[_] and struct_type.settings_by_name[_].signal_name then
                        local signal_type = struct_type.settings_by_name[_].signal_type or "virtual"
                        struct_add_to_signal_container(outputs, {type=signal_type, name=struct_type.settings_by_name[_].signal_name}, setting)
                    end
                end
                struct_export_outputs_to_constants(settings_combinator, outputs)
            end
        else
            player.print("Error: GUI disconnected from Structure")
        end
    end
    if force_close then player.gui.center.clear() end
end

local function struct_gui_save_and_close(player_index)
    local player = game.players[player_index]
    -- don't assume the ui is open, check first
    if player.gui.center.struct_settings then
        -- TODO: raise on_pre_gui_clear event, listen for the event clearing center, move this code there

        struct_gui_save(player_index)
        player.gui.center.clear()
    end
end

local function struct_on_tick()

    -- run temporary tasks, must be valid or die
    if global.tick_tasks then
        for _, task in pairs(global.tick_tasks) do

            local valid = false
            if task.name == "detect-opened-entity" then
                -- this task should stay valid as long as a struct entity is still selected
                -- to detect the struct opening
                -- or a struct UI is open, to detect a different entity ui opening
                local player = game.players[task.player_index]
                if player and player.connected then
                    valid = true
                    if player.opened and player.opened_gui_type and player.opened_gui_type == defines.gui_type.entity then
                        local struct = struct_find_from_entity(player.opened)
                        if struct and struct.struct_type ~= "vehicle_deployer" then
                            struct_add_settings_gui(task.player_index, struct.struct_id)
                        else
                            struct_gui_save_and_close(task.player_index)
                        end
                    elseif player.opened_gui_type and player.opened_gui_type ~= defines.gui_type.none then
                        if player.gui.center.struct_settings then
                            player.opened = nil
                            struct_gui_save_and_close(task.player_index)
                        end
                    end
                end

            end
            if not valid then global.tick_tasks[task.task_id] = nil end
        end
    end

    for unit_number, entity in pairs(global.struct.entities_pending_manage) do
        struct_manage_new(entity)
        global.struct.entities_pending_manage[unit_number] = nil
    end

    local max_structs_per_tick = settings.global["aai-max-structs-per-tick"] and settings.global["aai-max-structs-per-tick"].value or 0

    if max_structs_per_tick > 0 then
        -- only process X structs per frame for performance reasons
        local last_struct_id_processed = global.last_struct_id_processed or 0
        local continue = true
        local count = 0
        for _,struct in pairs(global.struct.structs) do
            if struct.struct_main and struct.struct_main.valid then
              local struct_type = struct_get_type(struct)
              if struct_type.type == "input-output" and struct.settings["output_pulse"] == 1 then
                struct.struct_output.get_control_behavior().parameters = {parameters = {}} -- clear
              end
              if struct.struct_type == "vehicle_deployer" then
                  struct_update_state(struct)
              elseif continue and struct.struct_id > last_struct_id_processed then
                  global.last_struct_id_processed = struct.struct_id
                  local did_process = struct_update_state(struct)
                  if did_process ~= false then
                      count = count + 1
                  end
                  if count >= max_structs_per_tick then
                      continue = false
                  end
              end
          else
            struct_unmanage(struct)
          end
        end
        if continue then
            global.last_struct_id_processed = 0
        end
    else
        for _,struct in pairs(global.struct.structs) do
            if struct.struct_main and struct.struct_main.valid then
                local struct_type = struct_get_type(struct)
                if struct_type.type == "input-output" and struct.settings["output_pulse"] == 1 then
                  struct.struct_output.get_control_behavior().parameters = {parameters = {}} -- clear
                end
                struct_update_state(struct)
            else
                struct_unmanage(struct)
            end
        end
    end

    -- cleanup orphaned ghosts
    for _, ghostset in pairs(global.struct.ghosts) do
        if not ghostset.entity.valid then
            local ghosts = ghostset.surface.find_entities_filtered{
                area=struct_sub_search_area_input_output(ghostset.position),
                name="entity-ghost",
                ghostset.force}
            for _, each_ghost in pairs(ghosts) do
                if each_ghost.ghost_name == struct_types[ghostset.struct_type].struct_input or
                each_ghost.ghost_name == struct_types[ghostset.struct_type].struct_output then
                    each_ghost.destroy()
                end
            end
            global.struct.ghosts[_] = nil
        end
    end
end

local function struct_on_selected_entity_changed (event)
    local player = game.players[event.player_index]
    if player then
        --game.print("selected " .. (player.selected and player.selected.name or "nil") .. " was " .. (event.last_entity and event.last_entity.name or "nil"))
        local struct
        if player.selected then
            struct = struct_find_from_entity(player.selected)
        end

        if struct then
            --struct selected
            if global.tick_tasks then
                for _, task in pairs(global.tick_tasks) do
                    if task.name == "detect-opened-entity" and task.player_index == event.player_index then
                        -- there's already a task for this
                        return
                    end
                end
            end
            add_tick_task({
                name = "detect-opened-entity",
                player_index = event.player_index
            })
        else
            -- no struct selected
            if not player.gui.center.struct_settings then
                -- remove the tick_task, but only if the gui is not open
                for _, task in pairs(global.tick_tasks) do
                    if task.name == "detect-opened-entity" and task.player_index == event.player_index then
                      -- remove task
                        global.tick_tasks[task.task_id] = nil
                        return
                    end
                end
            end

        end
    end
end

local function struct_on_gui_click(event)
    if event.element and event.element.name and event.element.name == "aai_struct_save_settings" then
        struct_gui_save_and_close(event.player_index)
    end
end

local function struct_on_gui_text_changed(event)
    local player = game.players[event.player_index]
    if player.gui.center.struct_settings and util.element_is_part_of(event.element, "struct_settings") then
        -- text changed in struct settings
        struct_gui_save(event.player_index)
    end
end

local function struct_on_gui_checked_state_changed(event)
    local player = game.players[event.player_index]
    if player.gui.center.struct_settings and util.element_is_part_of(event.element, "struct_settings") then
        -- text changed in struct settings
        struct_gui_save(event.player_index)
    end
end

script.on_event(defines.events.on_gui_click, struct_on_gui_click)
script.on_event(defines.events.on_gui_text_changed, struct_on_gui_text_changed)
script.on_event(defines.events.on_gui_checked_state_changed, struct_on_gui_checked_state_changed)

script.on_event(defines.events.on_selected_entity_changed, struct_on_selected_entity_changed)
script.on_event(defines.events.on_tick, struct_on_tick)
script.on_event(defines.events.on_built_entity, struct_on_built_entity)
script.on_event(defines.events.on_robot_built_entity, struct_on_built_entity)
script.on_event(defines.events.script_raised_built, struct_on_built_entity)
script.on_event(defines.events.script_raised_revive, struct_on_built_entity)

script.on_event(defines.events.on_entity_died, struct_on_entity_removed)
script.on_event(defines.events.on_player_mined_entity, struct_on_entity_removed)
script.on_event(defines.events.on_robot_mined_entity, struct_on_entity_removed)
-------------------------------------------------------------------------------
--[[INIT]]--
-------------------------------------------------------------------------------

local function on_configuration_changed()
    -- migrations
    if global.version ~= version then
        global.version = global.version or 0
        if global.version < 000105 then
            for _,struct in pairs(global.struct.structs) do
                if struct.struct_main and struct.struct_main.valid and struct.struct_main.type == "roboport" then
                    local control = struct.struct_main.get_or_create_control_behavior()
                    control.mode_of_operations = defines.control_behavior.roboport.circuit_mode_of_operation.read_robot_stats
                end
            end
        end
        if global.version < 000302 then
            global.tick_tasks = global.tick_tasks or {}
            for _,struct in pairs(global.struct.structs) do
                struct.last_tick = 0
                if struct.struct_type and struct.struct_type.name then
                    struct.struct_type = struct.struct_type.name
                    local struct_type = struct_get_type(struct)
                    if struct_type and struct_type.struct_settings and not struct.struct_settings then
                          local entity = struct.struct_main
                          struct.struct_settings = struct_create_or_revive(
                              struct_type.struct_settings,
                              entity.surface,
                              struct_sub_search_area_input_output(entity.position),
                              {entity.position.x, entity.position.y},
                              entity.force)
                          struct.struct_settings.destructible = false
                          global.struct.unit_numbers[struct.struct_settings.unit_number] = struct.struct_id
                    end
                end
            end
        end
        if global.version < 000306 then
            -- remove all traces of vehicle deployers
            for _,struct in pairs(global.struct.structs) do
                if struct.struct_type == "vehicle-deployer" or struct.struct_type == "vehicle_deployer" then
                    -- finish deployment and stop tracking. The vehicles mod can take it from there
                    global.struct.structs[_] = nil
                    if struct.struct_main then global.struct.unit_numbers[struct.struct_main] = nil end
                    if struct.struct_overlay then global.struct.unit_numbers[struct.struct_overlay] = nil end
                    if struct.struct_combinator then global.struct.unit_numbers[struct.struct_combinator] = nil end
                    if struct.struct_belt then global.struct.unit_numbers[struct.struct_belt] = nil end
                    if struct.reserved_entity and struct.reserved_entity.valid then struct.reserved_entity.destroy() end

                    if struct.deploy_entity and struct.deploy_entity.valid then
                      struct.deploy_entity.teleport({struct.struct_main.position.x, struct.struct_main.position.y + 6})
                      raise_event("on_entity_deployed", {entity = struct.deploy_entity, signals=struct.deployment_signals})
                    end
                end
            end
        end
        global.version = version
    end
    for _,struct in pairs(global.struct.structs) do
        struct_complete_settings(struct)
    end
end

local function on_init()
    global.tick_tasks = global.tick_tasks or {}
    global.struct = global.struct or {}
    -- delayed buffer of on_built_entity so that the script can handle assignment if responsible for creation
    global.struct.entities_pending_manage = global.struct.entities_pending_manage or {}
    -- convert a unit_number to a unit_id
    global.struct.unit_numbers = global.struct.unit_numbers or {}
    global.struct.next_struct_id = global.struct.next_struct_id or 1
    global.struct.structs = global.struct.structs or {}
    global.struct.ghosts = global.struct.ghosts or {}

    global.version = version
end
script.on_init(on_init)
script.on_configuration_changed(on_configuration_changed)

-------------------------------------------------------------------------------
--[[REMOTE]]--
-------------------------------------------------------------------------------
--Interfaces
remote.add_interface(
    "aai-programmable-structures", {
        write_global = function() game.write_file("AAI/structures.global.lua", serpent.block(global, {comment=false, sparse=true, nocode=true}), false) end,
        get_structs = function() return global.struct.structs end,
    }
)
