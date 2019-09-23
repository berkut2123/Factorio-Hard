--[[
TODO:
fix 5s path timeout on miners
fix pathing flying units
unit.path_indicator changed to unit.navpath_indicator, need migration


]]--

function debug_print(message)
  --game.print(game.tick .. " " .. message)
end

require("stdlib/table")
require("stdlib/string")

version = 000507 -- 0.5.7

Util = require("scripts/util") -- keep seperate for sharing
Event = require("scripts/event") -- keep seperate for sharing

-- constants
turret_y_offset = 0.1
programmable_identifier = "programmable"
composite_suffix = "-_-" -- used to filter out sub-units (i.e. "-" would break most units)

starting_items = {{name = "unit-remote-control", count = 1}}
unit_target_search_interval = 60
hauler_transfer_interval = 60
hauler_transfer_range = 6
warden_transfer_range = 25
depot_transfer_interval = 60
depot_transfer_range = 7
vehicle_acceleration_multiplier = math.sqrt(10/3)/600 -- 0.003042903097
navigator_minimum_range = 4.5
move_to_acceptable_range = 0.1
construction_denial_range = 50 -- bobs sniper turret is 35
default_follow_distance = 5
follow_max_selection_box = 4


high_fuel_item = {}
--Consume fuel from a list of fuels generated on init and changed
fuel, trunk = defines.inventory.fuel, defines.inventory.car_trunk
inv_nums = {fuel, trunk}
pathfind_flags = {
  allow_destroy_friendly_entities = false,
  cache = false,
  prefer_straight_paths = true,
  low_priority = false
}

signal_for_surface = {type = "virtual", name = "signal-surface"}
signal_for_follow_id = {type = "virtual", name = "signal-follow-id"}
signal_for_follow_player = {type = "virtual", name = "signal-follow-player"}
signal_for_position_beacon_id = {type = "virtual", name = "signal-position-beacon-id"}
signal_for_vehicle_depot_id = {type = "virtual", name = "signal-vehicle-depot-id"}
signal_for_position_x_tiles = {type = "virtual", name = "signal-x-tile"} -- x tiles
signal_for_position_y_tiles = {type = "virtual", name = "signal-y-tile"} -- y tiles
signal_for_position_x_sub = {type = "virtual", name = "signal-x-sub"} -- * 100 x tiles
signal_for_position_y_sub = {type = "virtual", name = "signal-y-sub"} -- * 100 y tiles

vehicle_deployer_type = {
    name = "vehicle-deployer",
    struct_main = "vehicle-deployer",
    struct_overlay = "vehicle-deployer-overlay",
    struct_belt = "vehicle-deployer-belt",
    struct_reserved = "vehicle-deployer-reserved",
    struct_combinator = "vehicle-deployer-combinator",
    deploy_start_offset = 0,
    deploy_end_offset = 6,
    deploy_time = 3 * 60, -- 2 seconds
    deployer_overlay_offset = 3.9,
    deployer_chest_offset = 0,
    deployer_belt_offset = -2,
    deployer_combinator_offset = {x = 3.7, y = 4.3},
}

Path = require("scripts/path")
Navpath = require("scripts/navpath")
PathRemote = require("scripts/path-remote")
UnitRemote = require("scripts/unit-remote")


--[[
CUSTOM EVENTS SENT

on_entity_replaced
raise_event implementation: raise_event('on_entity_revived', {new_entity = LuaEntity, new_entity_unit_number = uint, old_entity = LuaEntity?, old_entity_unit_number = uint})
on_event implementation: remote.add_interface("mymod", { on_entity_replaced = function(data) return myfunction(data.new_entity, data.new_entity_unit_number, ...) end})

on_entity_deployed
raise_event implementation: raise_event('on_entity_deployed', {entity = LuaEntity, signals = {signaltype={signalname={signal="", count=#}}}})
on_event implementation: remote.add_interface("mymod", { on_entity_deployed = function(data) return myfunction(data.entity, data.signals) end})

on_unit_given_order
raise_event implementation: raise_event('on_unit_given_order', {unit = AAIUnit table, order=AAIOrder table})
on_event implementation: remote.add_interface("mymod", { on_unit_given_order = function(data) return myfunction(data.unit, data.order) end})

on_unit_change_state
raise_event implementation: raise_event('on_unit_change_mode', {unit = AAIUnit table, new_mode=String, old_mode=String})
on_event implementation: remote.add_interface("mymod", { on_unit_change_mode = function(data) return myfunction(data.unit, data.new_mode, data.old_mode) end})

Data Alter hooks

hauler_types implementation: remote.add_interface("mymod", { hauler_types = function(data) return {'hauler-entity-name-1', 'hauler-entity-name-2', ...} end})

]]--

function raise_event(event_name, event_data)
    local responses = {}
    for interface_name, interface_functions in pairs(remote.interfaces) do
        if interface_functions[event_name] then
            responses[interface_name] = remote.call(interface_name, event_name, event_data)
        end
    end
    return responses
end
-- Regedit2000 edit start

local function fuel_w (item)
local kf = {}
kf["J"]=""
kf["K"]=""
kf["M"]="000"
kf["G"]="000000"
kf["T"]="000000000"
if item and item.valid and item.fuel_value then
  return string.gsub (item.fuel_value, "%a", kf ) +0
else
  return nil
end
end
--[[
fuel_category: = {"chemical" -> by default, "nuclear", "liquid-fuel"} >> example mod - https://mods.factorio.com/mod/HeavyTank
--]]

get_fuel = {

    --Build a table of fuel items, index as fuel name, value as table with name, fuel_value
  -- Regedit2000 edit start
    build = function () --get/create a list fuel and ammo only when initializing or updating so as not to iterate over the entire data array
      local ammo_lst ={}
      local fuel_lst ={}

      local pt ={}
      high_fuel_item={}
      --log ("start listening")
      for _,item in pairs(game.item_prototypes) do

        if item and item.valid then
          if item.fuel_value and fuel_w (item)>0 then
            --[[
                fuel_category: = {"chemical" -> by default, "nuclear", "liquid-fuel"} >> example mod - https://mods.factorio.com/mod/HeavyTank
            --]]
            if fuel_lst[item.fuel_category] then
              fuel_lst[item.fuel_category][item.name]=item
            else
            fuel_lst[item.fuel_category]={[item.name]=item}
            end
            if high_fuel_item[item.fuel_category] then
              if fuel_w(game.item_prototypes[high_fuel_item[item.fuel_category]]) < fuel_w(item) then
                high_fuel_item[item.fuel_category]=item.name
              end

            else
              high_fuel_item[item.fuel_category]=item.name
              --log ("create category:"..item.fuel_category)
            end

          end
          if item.type=="ammo" then

            local ammo_type = item.get_ammo_type("vehicle")
            if ammo_type and ammo_type.category then
                if ammo_lst[ammo_type.category] then
                  ammo_lst[ammo_type.category][item.name]=item
                else
                  ammo_lst[ammo_type.category]={[item.name]=item}
                end

            end
          end

        end -->>if item and item.valid
      end

      --log("result best fuel:: "..serpent.block(high_fuel_item) )
      --log("result list fuel:: "..serpent.block(fuel_lst) )
      --log("result list ammo:: "..serpent.block(ammo_lst) )
      global.ammo_items = ammo_lst
      return fuel_lst
    end,

    --Return a fuel item table if a fuel item is in the contents.
    item_from_contents = function(contents,fuel_categories)
       local fuel_items = global.fuel_items
       for name in pairs(contents) do
          for cat, enabled in pairs (fuel_categories) do
              if enabled and name and fuel_items[cat] and fuel_items[cat][name] then
                return fuel_items[cat][name]
              end
          end
       end
    end,

    --Return a fuel item table if the item is fuel of the right category
    item = function(item_name, fuel_categories)
        local fuel_items = global.fuel_items
        for cat, enabled in pairs (fuel_categories) do
            if enabled and item_name and fuel_items[cat] and fuel_items[cat][item_name] then
              return fuel_items[cat][item_name]
            end
        end
    end,
-- Regedit2000 end

    total_fuel_value_from_contents = function(contents, fuel_categories)
      local total = 0
       local fuel_items = global.fuel_items
       for name, count in pairs(contents) do
          for cat, enabled in pairs (fuel_categories) do
              if enabled and name and fuel_items[cat] and fuel_items[cat][name] then
                total = total + fuel_items[cat][name].fuel_value * count
              end
          end
       end
       return total
    end,

    total_fuel_value_from_inventories = function(inventories, fuel_categories)
      local total = 0
      local fuel_items = global.fuel_items
      for _, inventory in pairs(inventories) do
        total = total + get_fuel.total_fuel_value_from_contents(inventory.get_contents(), fuel_categories)
      end
      return total
    end
}

-- make_dropdown("waypoint_type", waypoint_type_options, "none")
function make_dropdown(name, options, selected)
    local items = {}
    local selected_index = nil
    for _, option in pairs(options) do
      local option_name = option.name or option[1]
      local option_display = option.display or option[2]
      items[_] = option_display
      if option_name == selected then
        selected_index = _
      end
    end
    return {
      type = "drop-down",
      name = name,
      items = items,
      selected_index = selected_index,
    }
end

-- get_dropdown_value(waypoint_type_options, 1) -- returns "none"
function get_dropdown_value(options, index)
  if options[index] then return options[index].name or options[index][1] end
end

-- control-unit-unit_type

function unit_template()
    return {
        unit_id = 0, -- Uint, static
        unit_type = "type-name", -- String
        unit_type_id = 0, -- index within unit_type array, dynamic
        mode = "passive", -- String: drive, vehicle, unit
        vehicle_whole = nil, -- Entity
        vehicle_solid = nil, -- Entity
        vehicle_ghost = nil, -- Entity
        navigator = nil, -- Entity (Unit)
        driver = nil, -- Entity (Player)
        position_last = nil, -- Position
        position = nil, -- Position
        speed = 0, -- Float
        health = 0, -- Float
        -- internal energy stored after consuming a unit of fuel or being charged. burn from fuel can exceed capacity.
        -- use vehicles actual energy as a buffer. try to prevent the actual vehicle from consuming fuel
        weapon = nil, -- see unit_load_ammo()
        -- a loaded packaged weapon with ammo type, attacks stats, multipliers, rounds left, etc.
        -- updated on fire and loading new ammo
        data = {}, -- counts for various types of signal data stores as [type][name] = {signal = signal, count = count}
        -- use signal_container_add and signal_container_get
        -- should be the same format as structure inputs and outputs
        target_angle = nil, -- Float
        target_speed = 0, -- Float
        target_position = nil, -- Position (as ints for tile) -- used for move_to, prevents constant commands to same tile
        attack_target = nil, -- Entity
        attack_last_tick = 0, -- Uint
        target_last_tick = 0, -- Uint
        order_last_tick = 0, -- Uint
        move_last_tick = 0, -- Uint
        move_to_last_tick = 0, -- Uint
        active_state = "auto_active", -- "active", "inactive", "auto_active", "auto_inactive"
        stunned_until = nil,
    }
end

function unit_type_tree_damage(vehiclePrototype)
    local damage_multiplier = 0.5 -- / vehiclePrototype.energy_per_hit_point
    local weight = vehiclePrototype.weight
    if string.find(vehiclePrototype.name, "tank", 1, true) then
        damage_multiplier = 2
    end
    if string.find(vehiclePrototype.name, "tumbler", 1, true) then
        damage_multiplier = 50
        weight = weight + 1000
    end
    local tree_damage = math.max(0.25, weight * damage_multiplier / 200)
    return tree_damage
end

function unit_setup_vehicle(vp) -- vehicle prototype
    -- not data-raw consumtion of 180k is prototype.consumtion of 3000
    local unit_type = {
        name = vp.name,
        vehicle_whole = vp.name,
        vehicle_whole_prototype = vp,
        vehicle_solid = vp.name .. composite_suffix .. "solid",
        vehicle_ghost = vp.name .. composite_suffix .. "ghost",
        navigator = vp.name .. composite_suffix .. "navigator",
        driver = vp.name .. composite_suffix .. "driver",
        buffer = vp.name .. composite_suffix .. "buffer",
        signal = {type = "virtual", name = vp.name .. composite_suffix .. "signal"},
        effectivity = vp.effectivity or 1,
        acceleration = math.sqrt(vp.consumption * 60 * vp.effectivity / vp.weight) * vehicle_acceleration_multiplier, -- boost vehicle speed a bit
        friction = vp.friction_force, --friction = vehicle.friction,
        weight = vp.weight,
        -- TODO: energy_per_hit_point = vehicle.energy_per_hit_point or 1, -- not ready yet
        tree_damage = unit_type_tree_damage(vp),
        rotation_speed = vp.rotation_speed,
        collides_with_ground = false, -- is_boat
        is_flying = false,
        is_hauler = false,
        is_miner = false,
        radius = math.max(
          -vp.collision_box.left_top.x,
          -vp.collision_box.left_top.y,
          vp.collision_box.right_bottom.x,
          vp.collision_box.right_bottom.y),
        ai_driving_modifier = 1,
    }

    if vp.name == "vehicle-chaingunner" then
      unit_type.ai_driving_modifier = 1.25
      unit_type.acceleration = unit_type.acceleration * 1.25
    end
    if vp.name == "vehicle-warden" then
      unit_type.ai_driving_modifier = 0.8
      unit_type.acceleration = unit_type.acceleration * 0.8
    end

    -- note: effectivity does not affect brake, only consumption
    unit_type.brake = math.max(unit_type.acceleration, math.sqrt(Util.string_to_number(vp.braking_force) / vp.weight) * vehicle_acceleration_multiplier)
    unit_type.brake = math.max(120000, unit_type.brake)

    if vp.collision_mask then
        if vp.collision_mask['ground-tile'] then
            unit_type.collides_with_ground = true
        end
        if ( not vp.collision_mask['object-layer'] )
          and ( not vp.collision_mask['player-layer'] )
          then
             unit_type.is_flying = true
        end
    else
       unit_type.is_flying = true
    end
    if not (vp.tank_driving and vp.tank_driving == true) then
        unit_type.rotation_speed = unit_type.rotation_speed / 2
    end

    -- prompt any required ammo categories for inflation
    if vp.guns then
      for _, gun in pairs(vp.guns) do
        unit_type.gun = gun
        break
      end
    end

    if global.hauler_types[vp.name] then
        unit_type.is_hauler = true
        --send_message(vehicle.name .. " is hauler")
    end

    if string.find(unit_type.name, "vehicle-miner", 1, true) then
        unit_type.is_miner = true
    end

    global.unit_types[unit_type.name] = unit_type
    global.unit_types_by_signal[Util.signal_to_string(unit_type.signal)] = unit_type
end

function unit_is_active(unit)
  if unit.active_state == "inactive" or unit.active_state == "auto_inactive" then
    return false
  elseif unit.active_state == "active" or unit.active_state == "auto_active" then
    return true
  else
    unit.active_state = "auto_active"
    return true
  end
end

function unit_set_active_state_auto(unit)
  if unit and unit.vehicle then
    local driver = unit.vehicle.get_driver()
    if driver and (driver.is_player() or driver.player) then
      unit.active_state = "auto_inactive"
      return
    end
  else
  end
  unit.active_state = "auto_active"
end

function struct_find_from_entity(entity)
  if global.structure_unit_numbers and global.structure_unit_numbers[entity.unit_number] then
    return global.structures[global.structure_unit_numbers[entity.unit_number]]
  end
end

function unit_load_prototypes()

    -- prototypes are loadable, clear old data
    global.unit_types = {}
    global.unit_types_by_signal = {}
    global.unit_mineable_resources = {}
    global.hauler_types = {}
    global.hauler_types["vehicle-hauler"] = "vehicle-hauler"
    global.hauler_types["vehicle-warden"] = "vehicle-warden"
    global.hauler_types["cargo-plane"] = "cargo-plane"
    global.hauler_types["compicar"] = "compicar"
    global.hauler_types["hovercraft-entity"] = "hovercraft-entity"
    global.hauler_types["hcraft-entity"] = "hcraft-entity"

    for _, response_types in pairs(raise_event('hauler_types', nil)) do
        for _, response_type in pairs(response_types) do
            global.hauler_types[response_type] = response_type
        end
    end

    for _, prototype in pairs(game.entity_prototypes) do
        -- only cars, exclude attachments, exclude non-programmable
        if prototype.type == "car" and not string.find(prototype.name, composite_suffix, 1, true)
          and prototype.order and string.find(prototype.order, programmable_identifier, 1, true) then
            unit_setup_vehicle(prototype)
        end

        if prototype.type == "resource" and prototype.mineable_properties and prototype.mineable_properties.products then
          for _, product in pairs(prototype.mineable_properties.products) do
            if product.type == "item" then
                global.unit_mineable_resources[product.name] = product.name
            end
          end
        end
    end

end

function unit_get_type(unit)
    return global.unit_types[unit.unit_type]
end

function unit_get_energy(unit)
    if unit.vehicle and unit.vehicle.valid and unit.vehicle.burner then
      return unit.vehicle.burner.remaining_burning_fuel
    end
    return 0
end

function unit_has_energy(unit)
    if unit.vehicle and unit.vehicle.valid then
      if unit.vehicle.burner and unit.vehicle.burner.remaining_burning_fuel > 0 then
        return true
      end
      --[[if unit.vehicle.grid and unit.vehicle.grid.available_in_batteries > 0 and
        return true
      end
      local inv = unit.vehicle.get_inventory(defines.inventory.fuel)
      if inv and not inv.is_empty() then
        return true
      end]]--
    end
    return false
end

function unit_on_destroy_entity(entity)
    if entity.valid and entity.unit_number then
        global.unit.unit_numbers[entity.unit_number] = nil
    end
end

function destroy_entity(entity)
    if entity.valid then
        unit_on_destroy_entity(entity)
        entity.destroy()
    end
    return nil
end

function unit_find_from_entity(entity)
    local unit_id = global.unit.unit_numbers[entity.unit_number]
    if unit_id then
        return global.unit.units[unit_id]
    end
    return nil
end

function unit_by_surface_type_index(surface_index, unit_type, index)
    if global.unit.surface_units_by_type[surface_index] and global.unit.surface_units_by_type[surface_index][unit_type] and #global.unit.surface_units_by_type[surface_index][unit_type] > 0 then
        --index = unit_loop_index(unit_type, index)
        if index > 0 and index <= #global.unit.surface_units_by_type[surface_index][unit_type] then
            return global.unit.surface_units_by_type[surface_index][unit_type][index]
        elseif index < 0 and -index <= #global.unit.surface_units_by_type[surface_index][unit_type] then
            return global.unit.surface_units_by_type[surface_index][unit_type][#global.unit.surface_units_by_type[surface_index][unit_type] + index + 1]
        end
    end
end

function unit_by_unit_id(unit_id)
    return global.unit.units[unit_id]
end

function unit_by_unit_number(unit_number)
    return global.unit.unit_numbers[unit_number]
end

function unit_find_from_signal(data)
    -- data.signal = {signal = SignalID, count = count} returns unit
    -- data.surface_index used for unit type
    local signal_count = data.signal_count
    if signal_count and signal_count.signal and signal_count.count then
        if signal_count.signal.name == "signal-id" then
            local unit = unit_by_unit_id(signal_count.count)
            if unit and unit.vehicle and unit.vehicle.valid then
                unit.unit_type_snapshot = unit_get_type(unit)
                return unit
            end
        else
            surface_index = data.surface_index or 1
            local unit_type = global.unit_types_by_signal[Util.signal_to_string(signal_count.signal)]
            if unit_type then
                local unit = unit_by_surface_type_index(surface_index, unit_type.name, signal_count.count)
                if unit and unit.vehicle and unit.vehicle.valid then
                    unit.unit_type_snapshot = unit_get_type(unit)
                    return unit
                end
            end
        end
    end
end

function unit_set_data(data)
    local unit_id = data.unit_id
    local signal_data = data.data or {}
    if unit_id and global.unit.units[unit_id] and global.unit.units[unit_id].vehicle
    and global.unit.units[unit_id].vehicle.valid then
        global.unit.units[unit_id].data = signal_data
    end
end

function unit_check_navigator_stop(unit, target_position, distance_to_target)
    return (not unit_has_energy(unit)) or target_position == nil or distance_to_target < navigator_minimum_range or (unit.navigator and unit.navigator.valid and unit.navigator.has_command() == false)
end

function unit_stuck_time(unit)
  return game.tick - (unit.stuck_last_tick or 0)
end

function unit_reset_stuck(unit)
  unit.stuck_last_tick = game.tick
end

function unit_nudge(unit)
    local move_amount = 0.05
    if unit.vehicle and unit.vehicle.valid then
      if unit.navigator and unit.navigator.valid then
        -- removed
      else
        local save_pos_vehicle = unit.vehicle.position
        unit.vehicle.teleport({x = save_pos_vehicle.x, y = save_pos_vehicle.y + 10}) -- move out of the way
        local safe_vehicle = unit.vehicle.surface.find_non_colliding_position(unit_get_type(unit).buffer, save_pos_vehicle, 3, 0.1)
        if safe_vehicle then
            unit.vehicle.teleport(Util.move_to(save_pos_vehicle, safe_vehicle, move_amount))
        else
            unit.vehicle.teleport(save_pos_vehicle)
        end
      end
    end
    unit.safe_target_position = nil
end

-- can now use driver.riding_state, but this might be better for small changes
function unit_rotate_to_angle(target, angle, rotation_speed, turn_slows)
    if not rotation_speed then return end
    local da = angle - target.orientation
    if da < -0.5 then
        da = da + 1
    elseif da > 0.5 then
        da = da - 1
    end
    da = Util.max(Util.min(da, rotation_speed), - rotation_speed)
    target.orientation = target.orientation + da
    if(turn_slows) then
        target.speed = target.speed * (1 - Util.abs(da)*5)
    end
end

--[[
function unit_delta_angle(angle, target_angle)
    local da = target_angle - angle
    if da < -0.5 then
        da = da + 1
    elseif da > 0.5 then
        da = da - 1
    end
    return da
end
--]]

function unit_delta_angle_abs(angle, target_angle)
    local da = target_angle - angle
    if da < -0.5 then
        da = da + 1
    elseif da > 0.5 then
        da = da - 1
    end
    return Util.abs(da)
end

function unit_rotate_to_target_angle(unit)
    if unit.target_angle ~= nil then
        local da = unit.target_angle - unit.vehicle.orientation
        if da < -0.5 then
            da = da + 1
        elseif da > 0.5 then
            da = da - 1
        end
        da = math.max(math.min(da, unit_get_type(unit).rotation_speed * 1.25), - unit_get_type(unit).rotation_speed * 1.25)
        unit.vehicle.orientation = unit.vehicle.orientation + da
        unit.vehicle.speed = unit.vehicle.speed * (1 - math.abs(da)*2)
    end
end

function unit_force_for_speed(base_force, speed)
    -- forces are reduced at high speed
    return (((speed / base_force)^2+1)^0.5-(speed / base_force)) * base_force
end

-- can now use driver.riding_state
function unit_speed_to(unit, target_speed)
    -- the new drive method actually controls the vehicle
    local target_speed_change = target_speed - unit.vehicle.speed

    if (unit.vehicle.speed / target_speed) > 0.99 and (unit.vehicle.speed / target_speed) < 1.1 then
      unit.vehicle.riding_state = {acceleration = defines.riding.acceleration.nothing, direction = defines.riding.direction.straight} -- nearly at the right speed so coast
      return
    end

    if target_speed_change > 0 and unit.vehicle.speed < 0 then
        unit.vehicle.riding_state = {acceleration = defines.riding.acceleration.braking, direction = defines.riding.direction.straight}
        unit.vehicle.speed = unit.vehicle.speed * 0.99
    elseif target_speed_change > 0 then
        unit.vehicle.riding_state = {acceleration = defines.riding.acceleration.accelerating, direction = defines.riding.direction.straight}
    elseif target_speed_change < 0 and unit.vehicle.speed > 0 then
        unit.vehicle.riding_state = {acceleration = defines.riding.acceleration.braking, direction = defines.riding.direction.straight}
        unit.vehicle.speed = unit.vehicle.speed * 0.99
    elseif target_speed_change < 0 then
        unit.vehicle.riding_state = {acceleration = defines.riding.acceleration.reversing, direction = defines.riding.direction.straight}
    else
        unit.vehicle.riding_state = {acceleration = defines.riding.acceleration.braking, direction = defines.riding.direction.straight}
        unit.vehicle.speed = unit.vehicle.speed * 0.99
    end
    return
    --[[
     -- the old method calculates the force based on the speed and then modifies the speed
    local unit_type = unit_get_type(unit)
    local force
    if target_speed_change > 0 and unit.vehicle.speed < 0 then
        force = unit_force_for_speed(unit_type.brake, math.abs(unit.vehicle.speed))
        force = math.min(target_speed_change, force, 0.1) -- cap acceleration
        unit.vehicle.speed = unit.vehicle.speed + force
    elseif target_speed_change > 0 then
        force = unit_force_for_speed(unit_type.acceleration, math.abs(unit.vehicle.speed))
        force = math.min(target_speed_change, force, 0.01) -- cap acceleration
        unit.vehicle.speed = unit.vehicle.speed + force
    elseif target_speed_change < 0 and unit.vehicle.speed > 0 then
        force = unit_force_for_speed(unit_type.brake, math.abs(unit.vehicle.speed))
        force = math.min(-target_speed_change, force, 0.1) -- cap acceleration
        force = math.min(-target_speed_change, force, 0.1) -- cap acceleration
        unit.vehicle.speed = unit.vehicle.speed - force
    elseif target_speed_change < 0 then
        force = unit_force_for_speed(unit_type.acceleration, math.abs(unit.vehicle.speed))
        force = math.min(-target_speed_change, force, 0.01) -- cap acceleration
        unit.vehicle.speed = unit.vehicle.speed - force
    end
    ]]--
end

function unit_speed_to_target_speed(unit)
  if unit.target_speed ~= nil then
    unit_speed_to(unit, unit.target_speed)
  end
end

function update_surface_unit_type_ids(surface_index, unit_type)
  if global.unit.surface_units_by_type and global.unit.surface_units_by_type[surface_index] and global.unit.surface_units_by_type[surface_index][unit_type] then
    for i, unit in ipairs(global.unit.surface_units_by_type[surface_index][unit_type]) do
      unit.unit_type_id = i
    end
  end
end

function update_all_surfaces_unit_type_ids(unit_type)
  for _, surface_units_by_type in pairs(global.unit.surface_units_by_type) do
    if surface_units_by_type[unit_type] then
      for i, unit in ipairs(surface_units_by_type[unit_type]) do
        unit.unit_type_id = i
      end
    end
  end
end

function update_all_unit_type_ids()
  for _, surface_units_by_type in pairs(global.unit.surface_units_by_type) do
    for unit_type_name, unit_types in pairs(surface_units_by_type) do
      for i, unit in ipairs(unit_types) do
        unit.unit_type_id = i
      end
    end
  end
end

function unit_get_count_by_surface_and_type(surface_index, unit_type)
  if global.unit.surface_units_by_type and global.unit.surface_units_by_type[surface_index] and global.unit.surface_units_by_type[surface_index][unit_type] then
    return #global.unit.surface_units_by_type[surface_index][unit_type]
  end
  return 0
end

function unit_manage_new(entity, event, signals)
    local existing_unit = unit_find_from_entity(entity)
    if existing_unit then return end -- unit already is managed
    for _, unit_type in pairs(global.unit_types) do
        if entity.name == unit_type.vehicle_whole or entity.name == unit_type.vehicle_solid or entity.name == unit_type.vehicle_ghost then
            local unit_id = global.unit.next_unit_id
            global.unit.next_unit_id = global.unit.next_unit_id + 1

            local surface_index = entity.surface.index

            -- make new unit from template
            local unit = unit_template()
            unit.unit_id = unit_id
            unit.surface_index = surface_index
            unit.unit_type = unit_type.name
            unit.position_last = entity.position
            unit.position = entity.position
            unit.vehicle = entity

            unit.attack_last_tick = game.tick
            unit.target_last_tick = game.tick
            unit.order_last_tick = game.tick
            unit.move_last_tick = game.tick
            unit.move_to_last_tick = game.tick

            if event and event.player_index then
              local player = game.players[event.player_index]
              if player and player.connected then
                local setting_value = settings.get_player_settings(player)["hand-deploy-vehicle-ai-default"].value
                if setting_value == "On" then
                  unit.active_state = "active"
                elseif setting_value == "Off" then
                  unit.active_state = "inactive"
                end
              end
            end

            local data = unit.data
            if unit_type.is_miner then
                for _, resource in pairs(global.unit_mineable_resources) do
                    if resource ~= "wood" and resource ~= "coal" then
                        Util.signal_container_add(data, {type = "item", name=resource}, -1)
                    end
                end
                Util.signal_container_add(data, {type = "item", name="wood"}, 50)
                Util.signal_container_add(data, {type = "item", name="coal"}, 100)
                Util.signal_container_add(data, {type = "item", name="solid-fuel"}, 50)
            elseif unit.unit_type == "vehicle-warden" then
                Util.signal_container_add(data, {type = "item", name="repair-pack"}, 100)
                Util.signal_container_add(data, {type = "item", name="coal"}, 50)
                Util.signal_container_add(data, {type = "item", name="solid-fuel"}, 50)
                Util.signal_container_add(data, {type = "virtual", name="signal-minimum-fuel"}, 800)
            elseif unit_type.is_hauler then
                for _, resource in pairs(global.unit_mineable_resources) do
                    Util.signal_container_add(data, {type = "item", name=resource}, 12000)
                end
                Util.signal_container_add(data, {type = "item", name="wood"}, 12000)
                Util.signal_container_add(data, {type = "item", name="solid-fuel"}, 12000)
                Util.signal_container_add(data, {type = "virtual", name="signal-minimum-fuel"}, 800)
            else
                Util.signal_container_add(data, {type = "item", name="coal"}, 50)
                Util.signal_container_add(data, {type = "item", name="solid-fuel"}, 50)
            end
            if game.item_prototypes["vehicle-fuel"] then
                Util.signal_container_add(data, {type = "item", name="vehicle-fuel"}, 100)
            end

            -- dynamic ammo
            if unit_type.gun and unit_type.gun.attack_parameters and unit_type.gun.attack_parameters.ammo_category then
                local ammo_category = unit_type.gun.attack_parameters.ammo_category
                for _, item in pairs(game.item_prototypes) do
                    if item.type == "ammo" then
                        local ammo_type = item.get_ammo_type("vehicle")
                        if ammo_type and ammo_type.category == ammo_category then
                            Util.signal_container_add(data, {type = "item", name=item.name}, 50)
                        end
                    end
                end
            end

            if signals then
                local signals_valid = false

                for _, signals_list in pairs(unit.data) do
                    for signal_name in pairs(signals_list) do
                        if signal_name ~= unit_type.name then
                            signals_valid = true
                            break
                        end
                    end
                end
                -- it is at least not nil not empty and no only containing deployer contents
                if signals_valid then
                    unit.data = signals
                end
            end

            global.unit.units[unit_id] = unit
            global.unit.unit_numbers[entity.unit_number] = unit_id
            if not global.unit.surface_units_by_type[surface_index] then global.unit.surface_units_by_type[surface_index] = {} end
            if not global.unit.surface_units_by_type[surface_index][unit.unit_type] then global.unit.surface_units_by_type[surface_index][unit.unit_type] = {} end
            table.insert(global.unit.surface_units_by_type[surface_index][unit.unit_type], unit)
            update_surface_unit_type_ids(surface_index, unit.unit_type)
            global.unit.entities_pending_manage[entity.unit_number] = nil
        end
    end
end


function unit_unmanage(unit)
    if unit then
        if unit.vehicle and unit.vehicle.valid then
            unit_on_destroy_entity(unit.vehicle)
            unit.vehicle.die()
            unit.vehicle = nil
        end
        if unit.navigator then
            unit.navigator = destroy_entity(unit.navigator)
        end
        if unit.turret then
            unit.turret = destroy_entity(unit.turret)
        end
        if unit.attachment then
            unit.attachment = destroy_entity(unit.attachment)
        end
        if unit.driver then
            unit.driver = destroy_entity(unit.driver)
        end
        if unit.selection_graphic and rendering.is_valid(unit.selection_graphic) then
          rendering.destroy(unit.selection_graphic)
        end
        if unit.selection_graphic and rendering.is_valid(unit.selection_graphic) then
          rendering.destroy(unit.selection_graphic)
        end
        Navpath.indicator_clear(unit)
        global.unit.units[unit.unit_id] = nil
        -- remove from unit type index
        local remove_index = 0
        for i, comp_unit in ipairs(global.unit.surface_units_by_type[unit.surface_index][unit.unit_type]) do
            if comp_unit == unit then
                remove_index = i
                break
            end
        end
        if remove_index > 0 then
            table.remove(global.unit.surface_units_by_type[unit.surface_index][unit.unit_type], remove_index)
            update_surface_unit_type_ids(unit.surface_index, unit.unit_type)
        end
        unit.mode = "removed"
    end
end

function unit_unmanage_by_entity(entity)
    local unit = unit_find_from_entity(entity)
    unit_unmanage(unit)
end

function unit_on_entity_died(event)
    unit_unmanage_by_entity(event.entity)
end

function unit_create_entity(unit, entity_type, surface, position, force)
    local entity = surface.create_entity{name=entity_type, position=position, force=force}
    if unit and entity.unit_number then
        global.unit.unit_numbers[entity.unit_number] = unit.unit_id
    end
    return entity
end

function unit_create_entity_from_entity(unit, entity_type, source_entity, replace)
    --local source_entity_number = source_entity.unit_number
    local driver
    local passenger
    if source_entity.type == "car" and replace then
      driver = source_entity.get_driver()
      source_entity.set_driver(nil)
      passenger = source_entity.get_passenger()
      source_entity.set_passenger(nil)
      source_entity.active = false
    end
    local entity = unit_create_entity(unit, entity_type, source_entity.surface, source_entity.position, source_entity.force, replace)
    if source_entity.valid then
        entity.orientation = source_entity.orientation
        if replace then
            source_entity.teleport({0,0}) -- move away to allow driver swap
            if driver and driver.valid then entity.set_driver(driver) end
            if passenger and passenger.valid then entity.set_passenger(passenger) end
            source_entity.teleport(entity.position)
            entity.health = source_entity.health
            entity.speed = source_entity.speed
            entity.energy = source_entity.energy
            Util.transfer_burner(source_entity, entity)
            Util.transfer_inventory_filters(source_entity, entity, defines.inventory.car_trunk)
            --transfer_inventory(source_entity, entity, defines.inventory.fuel) -- doubls ammo if turret_ammo is also called?
            Util.transfer_inventory(source_entity, entity, defines.inventory.car_trunk)
            Util.transfer_inventory(source_entity, entity, defines.inventory.car_ammo)
            Util.transfer_inventory(source_entity, entity, defines.inventory.turret_ammo)
            Util.transfer_equipment_grid(source_entity, entity)
            raise_event("on_entity_replaced",
                { new_entity = entity,
                    new_entity_unit_number = entity.unit_number,
                    old_entity = source_entity,
                    old_entity_unit_number = source_entity.unit_number})
            destroy_entity(source_entity)
        end
    else
        global.unit.unit_numbers[entity.unit_number] = nil
    end
    return entity
end

function unit_kill_surrounding_trees(unit)
    local tree_destroyed = false
    if unit.vehicle and unit.vehicle.valid then
        local unit_type = unit_get_type(unit)
        local range = unit_type.radius * 2
        local position = unit.position
        local trees = unit.vehicle.surface.find_entities_filtered{
            type="tree",
            area={{
                    x = position.x - range,
                    y = position.y - range},{
                    x = position.x + range,
                    y = position.y + range}},
        }
        for _, tree in pairs(trees) do
            if tree.health < 1000 then
                tree.die()
                tree_destroyed = true
            end
        end
    end
    return tree_destroyed
end



function struct_get_position_beacon_id(force_name, beacon_id)
  if global.forces
    and global.forces[force_name]
    and global.forces[force_name].position_beacons
    and global.forces[force_name].position_beacons[beacon_id]
    and global.forces[force_name].position_beacons[beacon_id].structs then
      for _, struct in pairs(global.forces[force_name].position_beacons[beacon_id].structs) do
        return struct -- return first
      end
  end
end

function struct_remove_from_position_beacon_id(force_name, struct_id, beacon_id)
  if global.forces
    and global.forces[force_name]
    and global.forces[force_name].position_beacons
    and global.forces[force_name].position_beacons[beacon_id]
    and global.forces[force_name].position_beacons[beacon_id].structs then
      global.forces[force_name].position_beacons[beacon_id].structs[struct_id] = nil
      if table_size(global.forces[force_name].position_beacons[beacon_id].structs) == 0 then
        -- remove position beacon id if empty
        global.forces[force_name].position_beacons[beacon_id] = nil
      end
  end
end

function update_position_beacon_from_entity (entity)
  local force_name = entity.force.name
  local struct = struct_find_from_entity(entity)
  if not struct then return end -- ?

  global.forces = global.forces or {}
  global.forces[force_name] = global.forces[force_name] or {}
  global.forces[force_name].position_beacons = global.forces[force_name].position_beacons or {}
  -- get beacon id
  local beacon_id = nil
  local control = entity.get_or_create_control_behavior() -- LuaConstantCombinatorControlBehavior
  local signal = control.get_signal(1)
  if signal and signal.signal and signal.signal.name == signal_for_position_beacon_id.name and signal.count then
    beacon_id = signal.count
  end
  if not beacon_id then
    local max_id = 0
    for _, beacon_set in pairs(global.forces[force_name].position_beacons) do
      if _ > max_id then
        max_id = _
      end
    end
    beacon_id = max_id + 1
  end

  if struct.beacon_id and struct.beacon_id ~= beacon_id then
    -- remove from old
    struct_remove_from_position_beacon_id(force_name, struct.struct_id, struct.beacon_id)
  end
  if struct.beacon_id ~= beacon_id then
    -- update to new
    struct.beacon_id = beacon_id
    global.forces[force_name].position_beacons[struct.beacon_id] =
        global.forces[force_name].position_beacons[struct.beacon_id] or {
          beacon_id = struct.beacon_id,
          structs = {}
        }
    global.forces[force_name].position_beacons[struct.beacon_id].structs[struct.struct_id] = struct
  end -- else already correct

  control.set_signal(1, {signal = signal_for_position_beacon_id, count = beacon_id})
  control.set_signal(2, {signal = signal_for_position_x_tiles, count = math.floor(entity.position.x)})
  control.set_signal(3, {signal = signal_for_position_y_tiles, count = math.floor(entity.position.y)})
  control.set_signal(4, {signal = signal_for_position_x_sub, count = math.floor(entity.position.x * 100)})
  control.set_signal(5, {signal = signal_for_position_y_sub, count = math.floor(entity.position.y * 100)})

end


function struct_get_vehicle_depot_id(force_name, depot_id)
  if global.forces
    and global.forces[force_name]
    and global.forces[force_name].vehicle_depots
    and global.forces[force_name].vehicle_depots[depot_id]
    and global.forces[force_name].vehicle_depots[depot_id].structs then
      for _, struct in pairs(global.forces[force_name].vehicle_depots[depot_id].structs) do
        return struct -- return first
      end
  end
end

function struct_remove_from_vehicle_depot_id(force_name, struct_id, depot_id)
  if global.forces
    and global.forces[force_name]
    and global.forces[force_name].vehicle_depots
    and global.forces[force_name].vehicle_depots[depot_id]
    and global.forces[force_name].vehicle_depots[depot_id].structs then
      global.forces[force_name].vehicle_depots[depot_id].structs[struct_id] = nil
      if table_size(global.forces[force_name].vehicle_depots[depot_id].structs) == 0 then
        -- remove vehicle depot id if empty
        global.forces[force_name].vehicle_depots[depot_id] = nil
      end
  end
end

function update_vehicle_depot_from_entity (entity)
  local force_name = entity.force.name
  local struct = struct_find_from_entity(entity)
  if not struct then return end -- ?

  global.forces = global.forces or {}
  global.forces[force_name] = global.forces[force_name] or {}
  global.forces[force_name].vehicle_depots = global.forces[force_name].vehicle_depots or {}

  -- get depot id
  local depot_id = nil
  local control = struct.sub.combinator.get_or_create_control_behavior() -- LuaConstantCombinatorControlBehavior
  local signal = control.get_signal(1)
  if signal and signal.signal and signal.signal.name == signal_for_vehicle_depot_id.name and signal.count then
    depot_id = signal.count
  end
  if not depot_id then
    local max_id = 0
    for _, depot_set in pairs(global.forces[force_name].vehicle_depots) do
      if _ > max_id then
        max_id = _
      end
    end
    depot_id = max_id + 1
  end

  if struct.depot_id and struct.depot_id ~= depot_id then
    -- remove from old
    struct_remove_from_vehicle_depot_id(force_name, struct.struct_id, struct.depot_id)
  end
  if struct.depot_id ~= depot_id then
    -- update to new
    struct.depot_id = depot_id
    global.forces[force_name].vehicle_depots[struct.depot_id] =
        global.forces[force_name].vehicle_depots[struct.depot_id] or {
          depot_id = struct.depot_id,
          structs = {}
        }
    global.forces[force_name].vehicle_depots[struct.depot_id].structs[struct.depot_id] = struct
  end -- else already correct

  control.set_signal(1, {signal = signal_for_vehicle_depot_id, count = depot_id})
  control.set_signal(2, {signal = signal_for_position_x_tiles, count = math.floor(entity.position.x)})
  control.set_signal(3, {signal = signal_for_position_y_tiles, count = math.floor(entity.position.y)})
  control.set_signal(4, {signal = signal_for_position_x_sub, count = math.floor(entity.position.x * 100)})
  control.set_signal(5, {signal = signal_for_position_y_sub, count = math.floor(entity.position.y * 100)})

end

function unit_update_mode(unit)
    --[[
    mode:
    passive = idle (can coast or be driven by player, when player is in manual mode), no ai 'driver' when not active_state
    vehicle = AI Direct Drive, optional direction, optional speed. Used for parking (speed = 0), has ai 'driver'
    vehicle_move_to = AI Direct Drive but to s specific location, has ai 'driver'
    vehicle_move_to_temp = vehicle_move_to but on a timer before attempting to switch to "unit", has ai 'driver'
    unit = guided by the navigator unit (biter pathfinding), has ai 'driver'

    stunned_until = if not inactive or drive: acts under vehicle mode (speed = 0) and has ai 'driver'
    ]]--


    -- this will complete any mode changes, it will not update things like last position
    local unit_type = unit_get_type(unit)
    if not (unit_type and unit.vehicle and unit.vehicle.valid) then -- cannot return from loss of vehicle
        unit_unmanage(unit)
        return
    end
    if (unit_type.collides_with_ground or unit_type.is_flying) and (unit.mode == "unit" or unit.mode == "vehicle_move_to_temp") then
        unit.mode = "vehicle_move_to" -- navigator won't work in water
        unit.stuck = 0
        unit_reset_stuck(unit)
    end

    if unit.active_state == "auto_inactive" then
      if unit.vehicle.get_driver() == nil and unit.vehicle.get_passenger() == nil then
        unit.active_state = "auto_active"
      end
    end

    if unit_is_active(unit) == false then
        unit.mode = "passive"
    end

    if unit.mode == "passive" then
        if unit.vehicle.name ~= unit_type.vehicle_whole then
            unit.vehicle = unit_create_entity_from_entity(unit, unit_type.vehicle_whole, unit.vehicle, true)
            unit_update_selection_graphics(unit)
        end
        if unit.navigator then
            unit.navigator = destroy_entity(unit.navigator)
        end
        if unit_is_active(unit) == false then
          if unit.driver then
              unit.driver = destroy_entity(unit.driver)
              if unit.vehicle.get_passenger() then
                 unit.vehicle.set_driver(unit.vehicle.get_passenger())
              end
          end
        else
          if not (unit.driver and unit.driver.valid) then
              unit.driver = unit_create_entity_from_entity(unit, unit_type.driver, unit.vehicle, false )
              if unit.vehicle.get_driver() then unit.vehicle.set_passenger(unit.vehicle.get_driver()) end
              unit.vehicle.set_driver(unit.driver)
          end
        end
        if unit.turret then
            unit.turret = destroy_entity(unit.turret)
        end
    elseif unit.mode == "vehicle" or unit.mode == "vehicle_move_to" or unit.mode == "vehicle_move_to_temp" then
        if unit.vehicle.name ~= unit_type.vehicle_solid then
            unit.vehicle = unit_create_entity_from_entity(unit, unit_type.vehicle_solid, unit.vehicle, true)
            unit_update_selection_graphics(unit)
        end
        if unit.navigator then
            unit.navigator = destroy_entity(unit.navigator)
        end
        if not (unit.driver and unit.driver.valid) then
            unit.driver = unit_create_entity_from_entity(unit, unit_type.driver, unit.vehicle, false )
            if unit.vehicle.get_driver() then unit.vehicle.set_passenger(unit.vehicle.get_driver()) end
            unit.vehicle.set_driver(unit.driver)
        end
    elseif unit.mode == "unit" then
        local vehicle_type = unit_type.vehicle_ghost
        --[[local vehicle_type = unit_type.vehicle_solid
        -- only use the ghost when it would overlap the navigator
        if (not unit.navpath)
          or (unit.navpath and unit.navpath.path_complete == false and (not unit.navigator))
          or (unit.navigator and unit.navigator.valid and Util.vectors_delta_length(unit.vehicle.position, unit.navigator.position) < 4) then
            vehicle_type = unit_type.vehicle_ghost
        end]]--
        if unit.vehicle.name ~= vehicle_type then
            unit.vehicle = unit_create_entity_from_entity(unit, vehicle_type, unit.vehicle, true)
            unit_update_selection_graphics(unit)
        end
        if not (unit.driver and unit.driver.valid) then
            unit.driver = unit_create_entity_from_entity(unit, unit_type.driver, unit.vehicle, false )
            if unit.vehicle.get_driver() then unit.vehicle.set_passenger(unit.vehicle.get_driver()) end
            unit.vehicle.set_driver(unit.driver)
        end
    end
end

function unit_set_mode(unit, new_mode)
  if new_mode == "unit" and (not unit_get_energy(unit)) then
    new_mode = "vehicle_move_to_temp"
  end
  if unit.mode ~= new_mode then
    debug_print("unit_set_mode: " .. unit.mode .. " to " .. new_mode)
    local old_mode = unit.mode
    unit.mode = new_mode
    unit_update_mode(unit)
    raise_event('on_unit_change_mode', {unit = unit, new_mode=new_mode, old_mode=old_mode})
  end
end

function unit_set_target_position(unit, position, mode)
    debug_print("unit_set_target_position: ")
    if mode == true then
      mode = "move_to"
    end
    --debug_print("unit_set_target_position " .. unit.unit_type .. " to x " .. position.x .. " y " .. position.y .. mode)
    unit.follow_target = nil
    unit.target_angle = nil
    unit.target_speed = 0

    local unit_type = unit_get_type(unit)
    if mode == "move_to" or unit_type.is_flying then
        unit.target_position = position
        unit.safe_target_position = position
        unit.stuck = 0
        unit_reset_stuck(unit)
        unit_set_mode(unit, "vehicle_move_to")
    elseif unit.target_position == nil
        or math.floor(unit.target_position.x) ~= math.floor(position.x)
        or math.floor(unit.target_position.y) ~= math.floor(position.y) then
        local distance = Util.vectors_delta_length(unit.vehicle.position, position)
        if distance > navigator_minimum_range and mode ~= "move_to_temp" then
            unit.target_position = position
            unit.safe_target_position = position
            unit.navpath = nil
            unit.stuck = 0
            unit_reset_stuck(unit)
            unit_set_mode(unit, "unit")
        else
            unit.target_position = position
            unit.safe_target_position = position
            unit.stuck = 0
            unit_reset_stuck(unit)
            unit_set_mode(unit, "vehicle_move_to_temp")
        end
    else
        -- will not affect pathfinding, just update subtile change if any
        unit.target_position = position
    end
end

function consume_fuel_or_equipment (unit)

    if unit.vehicle.grid and unit.vehicle.grid.available_in_batteries > 10000 and unit.vehicle.grid.available_in_batteries > unit.vehicle.grid.battery_capacity * 0.5 then
        --Added by Undarl; basic battery fueling logic courtesy of Sirenfal
        ---Modified by the Nexela
        -- Regedit2000 start
      if #high_fuel_item <1 then global.fuel_items = get_fuel.build() end

      local  fuel = ""
      for cat, enbl in pairs (unit.vehicle.burner.fuel_categories) do
        if enbl then
          local high = high_fuel_item[cat]
          if high then
            local proto = game.item_prototypes[high]
            if proto then
              if fuel == "" or proto.fuel_value > game.item_prototypes[fuel].fuel_value then
                fuel = high_fuel_item[cat]
              end
            end
          end
        end
      end

      if fuel == "" then return end

      unit.vehicle.burner.currently_burning = game.item_prototypes[fuel]
      local energy_deficit = game.item_prototypes[fuel].fuel_value - unit.vehicle.burner.remaining_burning_fuel
      -- Regedit2000 end
      local batteries = table.filter(unit.vehicle.grid.equipment, function(v) return v.type == "battery-equipment" end)
      local num_batteries = #batteries
      while num_batteries > 0 and energy_deficit > 0 do
          local battery = batteries[num_batteries]
          local energy_used = math.min(battery.energy, energy_deficit)
          battery.energy = battery.energy - energy_used
          unit.vehicle.burner.remaining_burning_fuel = unit.vehicle.burner.remaining_burning_fuel + energy_used
          energy_deficit = energy_deficit - energy_used
          num_batteries = num_batteries - 1
      end

    else
        for _, inv_num in pairs(inv_nums) do
            local inventory = unit.vehicle.get_inventory(inv_num)
            if inventory then
                local contents = inventory.get_contents()
        -- Regedit2000 start
                local fuel_item = get_fuel.item_from_contents(contents,unit.vehicle.burner.fuel_categories)
        -- Regedit2000 end
                if fuel_item then
                    if inv_num ~= defines.inventory.fuel then
                      if contents[fuel_item.name] > 1 then
                        -- move fuel to fuel inventory
                        unit.vehicle.burner.currently_burning = fuel_item.name
                        unit.vehicle.burner.remaining_burning_fuel = unit.vehicle.burner.remaining_burning_fuel + fuel_item.fuel_value
                        local fuel_inv = unit.vehicle.get_inventory(defines.inventory.fuel)
                        local inserted = fuel_inv.insert{name = fuel_item.name, count = contents[fuel_item.name] -1}
                        if inserted > 0 then
                          inventory.remove({name = fuel_item.name, count = inserted})
                        end
                      else
                        unit.vehicle.burner.currently_burning = fuel_item.name
                        unit.vehicle.burner.remaining_burning_fuel = unit.vehicle.burner.remaining_burning_fuel + fuel_item.fuel_value
                        inventory.remove({name=fuel_item.name, count=1})
                      end
                    else
                      -- burning from correct slot
                      unit.vehicle.burner.currently_burning = fuel_item.name
                      unit.vehicle.burner.remaining_burning_fuel = unit.vehicle.burner.remaining_burning_fuel + fuel_item.fuel_value
                      inventory.remove({name=fuel_item.name, count=1})
                      return true
                    end
                end
            end
        end
    end

end

--[[
replaced with on_entity_damaged
function unit_on_damage_taken(unit)
    if unit.vehicle and unit.vehicle.valid then
      if unit.mode == "unit" then
        unit.navpath = nil -- drop navpath if crashing
      else
        local tree_destroyed = unit_kill_surrounding_trees(unit)
        unit_nudge(unit)
        -- reduce tree slow caused by reduced weight
        if tree_destroyed and unit.vehicle_velocity_last ~= nil and unit.vehicle.speed < unit.vehicle_velocity_last then
            unit.vehicle.speed = unit.vehicle.speed * 0.25 + unit.vehicle_velocity_last * 0.75
        else
          -- not a tree
          local unit_type = unit_get_type(unit)
          if (not (unit_type.is_flying or unit_type.collides_with_ground))
          and (unit.mode == "vehicle_move_to" or unit.mode == "vehicle_move_to_temp")
          and (unit.safe_target_position or unit.target_position)
          and Util.vectors_delta_length((unit.safe_target_position or unit.target_position), unit.vehicle.position) > navigator_minimum_range then
              -- we may have crashed so direct might not be working
              -- go with pathfinder if possible
              unit.stuck = 0
              unit_reset_stuck(unit)
              unit_set_mode(unit, "unit")
          end
        end
      end
    end
end
]]--

--control-unit-combat
function unit_load_ammo (unit) -- return true for has ammo
    local inv_ammo = unit.vehicle.get_inventory(defines.inventory.car_ammo)
    if inv_ammo.is_empty() then
      -- ammo is empty, try to add from inventory
      local inv_trunk = unit.vehicle.get_inventory(defines.inventory.car_trunk)
      if inv_trunk then
        for item_name, count in pairs(inv_trunk.get_contents()) do
          local stack = {name = item_name, count=count}
          if inv_ammo.can_insert(stack) then
            local inserted = inv_ammo.insert(stack)
            inv_trunk.remove({name=item_name, count=inserted or 1})
            -- have inserted items so exit
            return true
          end
        end
      end
      return false
    end
    return true
end

function unit_has_ammo (unit)
  return not unit.vehicle.get_inventory(defines.inventory.car_ammo).is_empty()
end

function unit_fire(unit)
    unit.driver.shooting_state = {state = defines.shooting.shooting_enemies, position = unit.attack_target.position}
end

function unit_update_gun(unit)
    local unit_type = unit_get_type(unit)
    if (not unit_type.gun) or (not unit.driver) then return end -- no weapon
     -- handles already loaded state
    if unit_load_ammo(unit) then
      if (not (unit.attack_target and unit.attack_target.valid))
        or Util.vectors_delta_length(unit.vehicle.position, unit.attack_target.position) > unit_type.gun.attack_parameters.range then
          unit.attack_target = nil -- invalid or out of range target
      end
      if (not unit.attack_target) and (game.tick + unit.unit_id % unit_target_search_interval) then
          unit.attack_target = unit.vehicle.surface.find_nearest_enemy{
            position = unit.vehicle.position,
            max_distance = unit_type.gun.attack_parameters.range,
            force = unit.vehicle.force}
      end
      if unit.attack_target and unit.attack_target.valid then
          unit.target_last_tick = game.tick -- we have a valid target
          unit_fire(unit)
        else
          unit.driver.shooting_state = {state = defines.shooting.not_shooting}
      end
    end
end


function count_inventories_items(inventories, item_name)
    local count = 0
    for _, inv in pairs(inventories) do
        count = count + inv.get_item_count(item_name)
    end
    return count
end

function inventories_remove_items(inventories, item_Stack)
  --{name=item_name, count=inserted_count}
  for _, inv in pairs(inventories) do
    local removed = inv.remove(item_Stack)
    item_Stack.count = item_Stack.count - removed
    if item_Stack.count <= 0 then return end
  end
end

function exchange_inventory(data)
    --[[
    data = {
        a = {
            entity = LuaEntity,
            data = signal_container.item,
            min_fuel_value = 0,
            is_hauler = bool
        },
        b = {
            entity = LuaEntity,
            data = signal_container.item,
            min_fuel_value = 0,
            is_hauler = bool
        }
    }
    --]]
    local response = {
        did_transfer = false,
        transfers = {}
    }
    if not (data.a and data.a.entity
        and data.b and data.b.entity and data.b.data and data.b.data.item ) then return response end
    local inv_a = {}
    local inv_b = {}
    local inventories = { -- by removal priority
      defines.inventory.burnt_result,
      defines.inventory.chest,
      defines.inventory.car_trunk,
      defines.inventory.car_ammo,
      defines.inventory.fuel}
    for _, inv_name in pairs(inventories) do
      --if inv_name ~= defines.inventory.fuel or not (data.a.is_hauler == true) then
        local inv = data.a.entity.get_inventory(inv_name)
        if inv then inv_a[inv_name] = inv end
      --end
      --if inv_name ~= defines.inventory.fuel or not (data.b.is_hauler == true) then
        local inv = data.b.entity.get_inventory(inv_name)
        if inv then inv_b[inv_name] = inv end
      --end
    end
    local itemdata_a = {}
    local itemdata_b = {}
    if data.a.data and data.a.data.item then itemdata_a = data.a.data.item end
    if data.b.data and data.b.data.item then itemdata_b = data.b.data.item end

    local entity_a_total_fuel, entity_b_total_fuel

    for signal_name, _ in pairs(itemdata_b) do
        local item_name = signal_name

        local a_accepts = itemdata_a[item_name] and itemdata_a[item_name].count or 0
        local b_target = itemdata_b[item_name].count

        local a_items = count_inventories_items(inv_a, item_name)
        local b_items = count_inventories_items(inv_b, item_name)

        --send_message("unit a (" .. unit.unit_id .. ") accepts "..a_accepts.." has " .. a_items .. " to unit b (" .. other_unit.unit_id .. ") targets "..b_target.." has " .. b_items)

        local transfer_b_a = b_items - b_target
        -- negative is b asking for items
        -- positive is b pushing items (always positive if other_signal_count.count is negative)

        if data.b.is_hauler and transfer_b_a < 0 then
            -- hauler signal represents capacity, not target
            -- only transfer from other to self
            transfer_b_a = 0
        end

        transfer_b_a = math.min(transfer_b_a, b_items) -- can't push more than B has
        transfer_b_a = math.min(transfer_b_a, math.max(0, a_accepts - a_items)) -- can't push more than a will accept
        transfer_b_a = math.max(transfer_b_a, -a_items) -- can't pull more than A has

        if transfer_b_a > 0 and data.b.entity.type == "car" then
          -- b is pushing
          local cats = data.b.entity.burner.fuel_categories
          local fuel_item = get_fuel.item(item_name, cats)
          if fuel_item then
            local item_fuel_value = fuel_item.fuel_value
            if data.b.data.virtual and data.b.data.virtual["signal-minimum-fuel"]
              and data.b.data.virtual["signal-minimum-fuel"].count and data.b.data.virtual["signal-minimum-fuel"].count > 0 then
                local min_fuel_value = data.b.data.virtual["signal-minimum-fuel"].count * 1000000
                entity_b_total_fuel = get_fuel.total_fuel_value_from_inventories(inv_b, cats)
                local max_can_export = math.max(0, math.floor((entity_b_total_fuel - min_fuel_value) / item_fuel_value))
                transfer_b_a = math.min(transfer_b_a, max_can_export)
            end
          end
        elseif transfer_b_a < 0 and data.a.entity.type == "car" then
          -- a is pushing
          local cats = data.a.entity.burner.fuel_categories
          local fuel_item = get_fuel.item(item_name, cats)
          if fuel_item then
            local item_fuel_value = fuel_item.fuel_value
            if data.a.data.virtual and data.a.data.virtual["signal-minimum-fuel"]
              and data.a.data.virtual["signal-minimum-fuel"].count and data.a.data.virtual["signal-minimum-fuel"].count > 0 then
              local min_fuel_value = data.a.data.virtual["signal-minimum-fuel"].count * 1000000
              entity_a_total_fuel = get_fuel.total_fuel_value_from_inventories(inv_a, cats)
              local max_can_export = math.max(0, math.floor((entity_a_total_fuel - min_fuel_value) / item_fuel_value))
              transfer_b_a = math.max(transfer_b_a, -max_can_export)
            end
          end
        end


        local pusher, pusher_inv, puller --, puller_indv

        local items_to_transfer = transfer_b_a
        local direction = 1
        if transfer_b_a > 0 then
            puller = data.a.entity
            --puller_inv = data.a.inventory
            pusher = data.b.entity
            pusher_inv = inv_b
        elseif transfer_b_a < 0 then
            items_to_transfer = -transfer_b_a
            direction = -1
            puller = data.b.entity
            --puller_inv = data.b.inventory
            pusher = data.a.entity
            pusher_inv = inv_a
        end


        if pusher and puller and items_to_transfer > 0 then
            local inserted_count = puller.insert({name=item_name, count=items_to_transfer})
            -- insert to entity not directly to inventory
            -- puts fuel and ammo in the right place.
            if inserted_count > 0 then
                inventories_remove_items(pusher_inv, {name=item_name, count=inserted_count})
                response.did_transfer = true
                response.transfers[item_name] = {name=item_name, count=inserted_count * direction}
                local projectile_name = item_name .. composite_suffix .. "projectile"
                if not game.entity_prototypes[projectile_name] then
                    projectile_name = "default-item-projectile"
                end
                if puller and puller.valid then
                  pusher.surface.create_entity{
                      name = projectile_name,
                      position = pusher.position,
                      target = puller,
                      speed = math.random() * 0.2
                  }
                end
            end
        end
    end
    return response
end

function unit_vehicle_exchange_inventory(unit)
    if (game.tick + unit.unit_id) % hauler_transfer_interval == 0 then
        -- once per second
        if not (unit.data and unit.data.item) then return end

        local unit_type = unit_get_type(unit)
        local transfer_range = unit_type.name == "vehicle-warden" and warden_transfer_range or hauler_transfer_range

        local test_vehicles = unit.vehicle.surface.find_entities_filtered{
            type="car",
            area={
              {
                x=unit.vehicle.position.x - transfer_range,
                y=unit.vehicle.position.y - transfer_range
              },{
                  x=unit.vehicle.position.x + transfer_range,
                  y=unit.vehicle.position.y + transfer_range
              }
            },
            force=unit.vehicle.force
        }

        local other_units = {}
        for _, test_vehicle in pairs(test_vehicles) do
            local other_unit = unit_find_from_entity(test_vehicle)
            if other_unit and other_unit.unit_id ~= unit.unit_id then
                other_units[other_unit.unit_id] = other_unit
            end
        end

        for _, other_unit in pairs(other_units) do
            if other_unit.vehicle.valid and other_unit.data and other_unit.data.item then

                local unit_type_a = unit_get_type(unit)
                local unit_type_b = unit_get_type(other_unit)
                exchange_inventory({
                        a = {
                            entity = unit.vehicle,
                            inventory = inv_a,
                            data = unit.data or {},
                            is_hauler = unit_type_a.is_hauler
                        },
                        b = {
                            entity = other_unit.vehicle,
                            data = other_unit.data or {},
                            is_hauler = unit_type_b.is_hauler
                        },
                    })

            end
        end

    end
end


function unit_update_selection_graphics(unit)
  if not (unit and unit.vehicle and unit.vehicle.valid) then
    if (unit.selection_graphic and rendering.is_valid(unit.selection_graphic)) then
      rendering.destroy(unit.selection_graphic)
    end
    return
  end
  if unit.show_selection_to_players and table_size(unit.show_selection_to_players) > 0 then
    if not (unit.selection_graphic and rendering.is_valid(unit.selection_graphic)) then
      local unit_type = unit_get_type(unit)
      unit.selection_graphic = rendering.draw_animation{animation = "aai-unit-selection", target = unit.vehicle, surface = unit.vehicle.surface, players = unit.show_selection_to_players,
        x_scale = unit_type.radius * 0.3, y_scale = unit_type.radius * 0.3, tint = {r=0,g=255,b=0,a=1}}
    else
      rendering.set_players(unit.selection_graphic, unit.show_selection_to_players)
    end
  else
    if (unit.selection_graphic and rendering.is_valid(unit.selection_graphic)) then
      rendering.destroy(unit.selection_graphic)
    end
    unit.selection_graphic = nil
  end
  if unit.navpath and unit.navpath.waypoints then
    Navpath.indicator_draw_navpath(unit)
  else
    Navpath.indicator_draw_direct(unit)
  end
end

function unit_next_waypoint(unit)
    debug_print("unit_next_waypoint")
    unit.stuck = 0
    unit_reset_stuck(unit)
    unit.path.waypoint_id = unit.path.waypoint_id + 1
    unit_set_mode(unit, "vehicle_move_to_temp")
end

function unit_update_state(unit)
    -- this will update things like last position so should only be called once per tick
    local unit_type = unit_get_type(unit)
    if not unit_type then
      unit_unmanage(unit)
      return
    end

    if not unit.vehicle.valid then return end

    -- load fuel if required
    if (not unit.vehicle.burner.currently_burning) or (unit.vehicle.burner.remaining_burning_fuel < unit.vehicle.burner.currently_burning.fuel_value * 0.02 + 1) then
        consume_fuel_or_equipment(unit)
    end

    unit.position_last = unit.position
    unit.position = unit.vehicle.position

    -- fixing tree collisions
    if unit.tree_overkill then
      local speed_change = unit.vehicle.speed - unit.vehicle_velocity
      if speed_change < 0 then
          -- vehicle was slowed
          local tree_damage = unit_type.tree_damage -- 80 for tank
          local speed_loss = unit.tree_overkill / tree_damage
          unit.vehicle.speed = unit.vehicle.speed - speed_change * speed_loss
      end
      unit.tree_overkill = nil
    end

    unit.vehicle_velocity_last = unit.vehicle_velocity
    unit.vehicle_velocity = unit.vehicle.speed
    unit.speed = Util.vectors_delta_length(unit.position, unit.position_last)

    if math.floor(unit.position.x) ~= math.floor(unit.position_last.x) or
      math.floor(unit.position.y) ~= math.floor(unit.position_last.y)
    then --if unit.speed > 0.0001 then
        unit.move_last_tick = game.tick
        unit_reset_stuck(unit)
    end

    unit.health = unit.vehicle.health

    if not unit_is_active(unit) then
      Navpath.indicator_clear(unit)
      return
    end

    if unit.mode ~= "unit" and unit.navpath then
        unit.navpath = nil
    end

    if unit.path and unit.mode ~= "passive" and unit_has_energy(unit) and (game.tick + unit.unit_id) % 5 == 0 then
      -- Unit in path mode
      local surface_index = unit.vehicle.surface.index
      local path_id = unit.path.path_id or 1
      local waypoint_id = unit.path.waypoint_id or 1
      local force_name = unit.vehicle.force.name
      if global.forces and global.forces[force_name] and global.forces[force_name].surface_paths
       and global.forces[force_name].surface_paths[surface_index] and global.forces[force_name].surface_paths[surface_index].paths[path_id] then
         -- path can be found
        local path = global.forces[force_name].surface_paths[surface_index].paths[path_id]

        if path.waypoints and path.waypoints[waypoint_id] then
          local waypoint = path.waypoints[waypoint_id]
          if waypoint.type == "position" then
            unit.follow_target = nil
            unit.target_angle = nil
            unit.target_speed = nil
            unit.target_position = waypoint.position
            unit.safe_target_position = unit.target_position
            local distance = Util.vectors_delta_length(unit.vehicle.position, unit.target_position)
            if distance < move_to_acceptable_range then
              unit_next_waypoint(unit)
            else
              if waypoint.allow_pathfinding == "never" or waypoint.allow_pathfinding == false then
                if unit.mode ~= "vehicle_move_to" then
                  debug_print("waypoint.allow_pathfinding never")
                  unit_set_mode(unit, "vehicle_move_to")
                end
              elseif waypoint.allow_pathfinding == "auto" then
                if unit.mode ~= "unit" and  unit.mode ~= "vehicle_move_to_temp" then
                  debug_print("waypoint.allow_pathfinding auto")
                  unit_set_mode(unit, "vehicle_move_to_temp")
                end
              else --if waypoint.allow_pathfinding == "always" then
                if distance > 2 or unit.mode ~= "vehicle_move_to_temp" then
                  if unit.mode ~= "unit" and unit.mode ~= "vehicle_move_to_temp" then
                    debug_print("waypoint.allow_pathfinding always, current mode is " .. unit.mode)
                    unit_set_mode(unit, "unit")
                  end
                end
              end
            end
          elseif waypoint.type == "goto_unit_id" then
            local target_unit_id = waypoint.target_id
            local target_unit = unit_by_unit_id(target_unit_id)
            if target_unit then
              unit.follow_target = {
                lock_type = "unit",
                unit = target_unit,
              }
              if Util.vectors_delta_length(unit.vehicle.position, target_unit.vehicle.position) < default_follow_distance + move_to_acceptable_range + 0.5 then
                unit_next_waypoint(unit)
              end
            else
              unit_next_waypoint(unit)
            end
          elseif waypoint.type == "goto_player_id" then
            local target_player = game.players[waypoint.target_id]
            if target_player and target_player.connected then
              unit.follow_target = {
                lock_type = "player",
                player = target_player,
              }
              if Util.vectors_delta_length(unit.vehicle.position, target_player.position) < default_follow_distance + move_to_acceptable_range + 0.5 then
                unit_next_waypoint(unit)
              end
            else
              unit_next_waypoint(unit)
            end
          elseif waypoint.type == "goto_position_beacon_id" then
            local struct = struct_get_position_beacon_id(path.force_name, waypoint.target_id)
            if struct and struct.entity and struct.entity.valid then
              unit.follow_target = {
                lock_type = "struct",
                struct = struct,
              }
              if Util.vectors_delta_length(unit.vehicle.position, struct.entity.position) < move_to_acceptable_range then
                unit_next_waypoint(unit)
              end
            else
              unit_next_waypoint(unit)
            end
          elseif waypoint.type == "goto_vehicle_depot_id" then
            local struct = struct_get_vehicle_depot_id(path.force_name, waypoint.target_id)
            if struct and struct.entity and struct.entity.valid then
              unit.follow_target = {
                lock_type = "struct",
                struct = struct,
              }
              if Util.vectors_delta_length(unit.vehicle.position, struct.entity.position) < move_to_acceptable_range then
                unit_next_waypoint(unit)
              end
            else
              unit_next_waypoint(unit)
            end
          end
          if path.speed_limit and path.speed_limit > 0 then
            unit.target_speed = path.speed_limit
          end
        else
          unit_next_waypoint(unit)
          if unit.path.waypoint_id > Path.get_max_waypoint_id(path) then
            if path.loop then
              unit.path.waypoint_id = 1
            else
              unit.path = nil
            end
          end
        end
      end
    end

    -- if following a moving target, update the target posotion info
    if unit.follow_target and unit.mode ~= "passive" and unit_has_energy(unit) and (game.tick + unit.unit_id) % 5 == 0 then
        -- Note:
        -- unit.follow_target.lock_type must be "unit" or "player"
        -- unit.follow_target.unit must be an aai vehicle-unit object
        -- unit.follow_target.player must be an player reference
        -- unit.follow_target.offset_absolute is an optional vector
        -- unit.follow_target.offset_rotated is an optional vector that gets rotated based on target orientation
        -- unit.follow_target.offset_distance is an optional float for distance to maintain, defaults to default_follow_distance, with optional orientation
        -- unit.follow_target.offset_orientation is an optional float, orientation for offset_distance

        local locked_entity
        if unit.follow_target.lock_type == "unit" then
          if unit.follow_target.unit and unit.follow_target.unit.vehicle and unit.follow_target.unit.vehicle.valid
            and unit.follow_target.unit.unit_id ~= unit.unit_id then
            locked_entity = unit.follow_target.unit.vehicle
          end
        elseif unit.follow_target.lock_type == "player" then
          if unit.follow_target.player and unit.follow_target.player.valid and unit.follow_target.player.connected then
            locked_entity = unit.follow_target.player.character
          end
        elseif unit.follow_target.lock_type == "struct" then
          if unit.follow_target.struct and unit.follow_target.struct.entity and unit.follow_target.struct.entity.valid then
            locked_entity = unit.follow_target.struct.entity
          end
        end
        if locked_entity and locked_entity.valid then
            local position = locked_entity.position
            if unit.follow_target.offset_absolute then
                position = Util.vectors_add(position, unit.follow_target.offset_absolute)
            elseif unit.follow_target.offset_rotated then
                local orientation
                if unit.follow_target.lock_type == "unit" and locked_entity.type == "car" then
                  orientation = locked_entity.orientation
                elseif unit.follow_target.lock_type == "player" then
                  if unit.follow_target.player.vehicle then
                    orientation = unit.follow_target.player.vehicle.orientation
                  elseif locked_entity.walking_state then
                    orientation = Util.direction_to_orientation(locked_entity.walking_state.direction)
                  end
                else
                  orientation = Util.direction_to_orientation(locked_entity.direction)
                end
                position = Util.vectors_add(position, Util.rotate_vector(orientation, unit.follow_target.offset_rotated))
            else
                local offset_distance = unit.follow_target.offset_distance or (unit.follow_target.lock_type == "struct" and 0 or default_follow_distance)
                if unit.follow_target.offset_orientation then
                    position = Util.vectors_add(position, Util.orientation_to_vector(unit.follow_target.offset_orientation, offset_distance))
                else
                    position = Util.vectors_add(position, Util.vector_set_length(Util.vectors_delta(locked_entity.position, unit.vehicle.position), offset_distance))
                end
            end
            unit.target_position = position
            unit.safe_target_position = position
            if unit.mode == "vehicle" and Util.vectors_delta_length(unit.vehicle.position, unit.target_position) > move_to_acceptable_range then
              unit.stuck = 0
              unit_reset_stuck(unit)
              debug_print("unit.follow_target get moving")
              unit_set_mode(unit, "vehicle_move_to_temp")
            end
        else
          -- lost track of target
          -- continue to last destination or stop?
          unit.follow_target = nil
          unit.target_angle = nil
          unit.target_speed = 0
          unit.target_position = nil
          unit.safe_target_position = nil
          debug_print("unit.follow_target no target")
          unit_set_mode(unit, "vehicle")
        end
    end

    if unit.mode == "passive" then -- full manual control of base and turret
        --unit.target_angle = nil
        --unit.target_speed = 0
        --unit.target_position = nil
        --unit.safe_target_position = nil
        Navpath.indicator_clear(unit)
    elseif unit.mode == "vehicle" then -- move based on target speed and angle, or act as a turret
        unit.safe_target_position = nil
        if unit_has_energy(unit) then
            unit_rotate_to_target_angle(unit)
            unit_speed_to_target_speed(unit)
            if unit.vehicle.speed == 0  then
                -- allow miner animation to kick in
                unit.target_speed = nil
            end
        else
          unit_speed_to(unit, 0)
        end
        if unit.target_position and unit_has_energy(unit) then
            if Util.vectors_delta_length(unit.vehicle.position, unit.target_position) > navigator_minimum_range then
                unit.stuck = 0
                unit_reset_stuck(unit)
                debug_print("unit.vehicle mode, has target get moving")
                unit_set_mode(unit, "unit")
            end
        end
    elseif unit.mode == "vehicle_move_to" or unit.mode == "vehicle_move_to_temp" then -- head straight towards the target position

      if unit_has_energy(unit) then

        if not unit.target_position then
            unit.stuck = 0
            unit.target_speed = 0
            unit.vehicle.speed = 0
            unit_reset_stuck(unit)
            --unit_set_mode(unit, "vehicle")
            unit_speed_to_target_speed(unit)
        else

            if unit_stuck_time(unit) > 60 then
              if (game.tick + unit.unit_id) % 6 == 0 then
                unit_nudge(unit)
              end
              if unit_stuck_time(unit) > 120 and unit.mode == "vehicle_move_to_temp" then
                unit.stuck = 0
                unit_reset_stuck(unit)
                debug_print("unit.vehicle_move_to_temp mode, is stuck, switching to unit mode")
                unit_set_mode(unit, "unit")
              end
            end

            if not unit.safe_target_position then
                local save_pos = unit.vehicle.position
                unit.vehicle.teleport({x = save_pos.x, y = save_pos.y + 10}) -- move out of the way
                unit.safe_target_position = unit.vehicle.surface.find_non_colliding_position(
                    unit_get_type(unit).vehicle_whole, -- name of type
                    unit.target_position, -- position
                    10, -- radius
                    0.25 -- precision
                )
                unit.vehicle.teleport(save_pos) -- move back
                if not unit.safe_target_position then unit.safe_target_position = unit.target_position end -- fallback
            end

            if unit.safe_target_position then
              Navpath.indicator_draw_direct(unit)
              local distance = Util.vectors_delta_length(unit.vehicle.position, unit.safe_target_position)
              if distance < move_to_acceptable_range then
                  unit.target_angle = nil
                  unit.target_speed = 0
                  unit.target_position = nil
                  unit.stuck = 0
                  unit_reset_stuck(unit)
                  debug_print("unit.vehicle_move_to_temp mode, reached destination, switching to vehicle")
                  unit_set_mode(unit, "vehicle")
                  unit_speed_to_target_speed(unit)
              else
                if unit_has_energy(unit) then
                    local dx = unit.safe_target_position.x - unit.position.x
                    local dy = unit.safe_target_position.y - unit.position.y
                    unit.target_angle = Util.vector_to_orientation_xy(dx, dy)
                    unit_rotate_to_target_angle(unit)
                    local turn_still_required = unit_delta_angle_abs(unit.vehicle.orientation, unit.target_angle)*360
                    local target_speed = (0.01 + distance / 50)
                    if turn_still_required > 90 then
                        target_speed = -0.001
                    elseif turn_still_required > 45 or turn_still_required/5 > distance then
                        target_speed = -0.001
                    end
                    unit.target_speed = target_speed
                    local override = false
                    if unit.path then
                      path = Path.get_path(unit.vehicle.force.name, unit.vehicle.surface.index, unit.path.path_id)
                      if path and path.speed_limit and path.speed_limit > 0 then
                        --vehicle real acceleartion acn't be scaled
                        unit.target_speed = math.min(path.speed_limit, unit.target_speed)
                        override = true
                      end
                    end
                    if override and unit.vehicle.speed > unit.target_speed * 0.95 then
                      unit.vehicle.riding_state = {acceleration = defines.riding.acceleration.nothing, direction = defines.riding.direction.straight}
                      unit.vehicle.speed = unit.target_speed
                    else
                      unit_speed_to_target_speed(unit)
                    end
                  end
              end
            end

        end
      end
    elseif unit.mode == "unit" then -- use a unit navigator for pathfinding
      local continue = true

      if not unit_has_energy(unit) then -- no energy
          unit.mode = "passive"
          unit.stuck = 0
          unit_reset_stuck(unit)
          continue = false
      end

      if continue and not unit.target_position then -- nowhere to go
          unit.stuck = 0
          unit_reset_stuck(unit)
          debug_print("unit.unit mode, no unit.target_position, change to vehicle mode")
          unit_set_mode(unit, "vehicle")
          continue = false
      end

      local target_speed = 0
      local distance_to_target;
      if continue then
        distance_to_target = Util.vectors_delta_length(unit.vehicle.position, unit.safe_target_position or unit.target_position)
        if distance_to_target < 1 then
          unit_reset_stuck(unit)
          debug_print("unit.unit mode distnace to target < 1, switching to vehicle_move_to")
          unit_set_mode(unit, "vehicle_move_to_temp")
          continue = false
        end
      end

      if continue then
          -- find a path to unit.target_position
          -- get unit.safe_target_position
          -- make a path request
          -- if the path request fails then wait and try again
          -- if the request succeeds save the path as navpath
          if unit.searching_for_path then -- be patient

          elseif not unit.navpath then
            -- no path search yet

            unit.safe_target_position = unit.vehicle.surface.find_non_colliding_position(
                unit_type.buffer, -- name of type
                unit.target_position, -- position
                10, -- radius
                0.25 -- precision
            ) or unit.target_position

            local prototype = game.entity_prototypes[unit_type.vehicle_solid]
            local start_position = unit.vehicle.position
            start_position = unit.vehicle.surface.find_non_colliding_position(unit_type.vehicle_whole, start_position, unit_type.radius * 2 + 1, 0.1) or start_position
            local path_request_id = unit.vehicle.surface.request_path{
              bounding_box = prototype.collision_box,
              collision_mask = prototype.collision_mask,
              start = start_position,
              goal = unit.safe_target_position,
              force = unit.vehicle.force,
              radius = 1, -- acceptable distance to target
              pathfind_flags = pathfind_flags,
              can_open_gates = true,
              path_resolution_modifier = 0, -- default is 0
            }

            unit.searching_for_path = path_request_id
            global.unit_by_path_request_id = global.unit_by_path_request_id or {}
            global.unit_by_path_request_id[path_request_id] = unit

          else -- has navpath
            --{ waypoints = event.path, target_position = unit.safe_target_position, current_index }
            local navpath = unit.navpath
            if not navpath.waypoints then-- invalid path, display no path flying text for a while then try again
              if unit_stuck_time(unit) > 360 then
                unit.navpath = nil
                unit_reset_stuck(unit)
              end
            else -- valid path, follow it
              Navpath.indicator_draw_navpath(unit)
              if navpath.current_index < #navpath.waypoints then
                -- has next tile
                local next_tile = navpath.waypoints[navpath.current_index + 1]
                local waypoint_tolerance = 1.5;
                if next_tile then
                  local distance = Util.vectors_delta_length(unit.vehicle.position, next_tile.position)
                  if distance < waypoint_tolerance then
                    navpath.current_index = navpath.current_index + 1
                  end
                end
              end

              if navpath.current_index < #navpath.waypoints then
                target_speed = 0.01 + distance_to_target / 100
                -- can go forward
                local next_tile = navpath.waypoints[navpath.current_index + 1]
                local next_angle = Util.orientation_from_to(unit.vehicle.position, next_tile.position)
                unit_rotate_to_angle(unit.vehicle, next_angle, unit_type.rotation_speed, true)
                local turn_still_required = unit_delta_angle_abs(unit.vehicle.orientation, next_angle)

                local lookahead = 3 + unit.speed * 60
                local max_angle = turn_still_required
                if navpath.current_index + lookahead <= #navpath.waypoints then
                  for i = navpath.current_index + 2, math.min(#navpath.waypoints, navpath.current_index + lookahead) do
                    max_angle = unit_delta_angle_abs(unit.vehicle.orientation, Util.orientation_from_to( navpath.waypoints[i-1].position, navpath.waypoints[i].position ))
                  end
                end
                if math.abs(turn_still_required) > 90 / 360 then
                    target_speed = -0.01 -- reverse a tiny bit
                elseif math.abs(turn_still_required) > 45 / 360 then
                    target_speed = math.min(target_speed, 1 * unit_type.rotation_speed)
                elseif math.abs(turn_still_required) > 15 / 360 then
                    target_speed = math.min(target_speed, 10 * unit_type.rotation_speed)
                end
                if math.abs(max_angle) > 30 / 360 then
                    target_speed = math.min(target_speed, 20 * unit_type.rotation_speed)
                elseif math.abs(max_angle) > 15 / 360 then
                    target_speed = math.min(target_speed, 50 * unit_type.rotation_speed)
                elseif math.abs(max_angle) > 5 / 360 then
                    target_speed = math.min(target_speed, 100 * unit_type.rotation_speed)
                end

              else -- at the end
                unit_reset_stuck(unit)
                debug_print("unit.unit end of navpath, switch to vehicle_move_to: " ..navpath.current_index.." vs " .. #navpath.waypoints)
                unit_set_mode(unit, "vehicle_move_to_temp")
              end

            end
          end

        end

        unit_speed_to(unit, target_speed)
    end


    if unit_type.is_hauler then
        unit_vehicle_exchange_inventory(unit)
    end

    if unit.vehicle then -- update energy state, consume based on speed

        if math.abs(unit.vehicle.speed) > 0.01 then
            -- vehicles that slowly apporach a destination get stuck where the speed is non-0 but never progress to the next pixel.
            local energy_used = math.abs(unit.vehicle.speed) * unit_type.weight * 20 / (unit_type.effectivity or 1)-- * multiplier

            --if not unit.vehicle.passenger then -- this is disabled bcuase driver acceleration consumed fuel
              -- only consume fuel if there is no passenger, passenger acceleration already consumes fuel
            --  unit.vehicle.burner.remaining_burning_fuel = unit.vehicle.burner.remaining_burning_fuel - energy_used
            --end
            -- to do: alter based on electric vs burner power
            unit.vehicle.surface.pollute(unit.position, energy_used / 1500000 / 60)
        end

        -- turret, lamp, sound, pollution, scan, provoke
        if unit_has_energy(unit) then

            if unit.active_state ~= "inactive" then
              if unit_type.gun ~= nil then
                  unit_update_gun(unit)
              end
            end

            if (game.tick + unit.unit_id * 133) % 300 == 0 then
                -- chart and provoke every 5 seconds

                local chart_range = 32 -- not required with driver
                unit.vehicle.force.chart(unit.vehicle.surface,
                          {{x = unit.vehicle.position.x - chart_range, y = unit.vehicle.position.y - chart_range},
                          {x = unit.vehicle.position.x + chart_range, y = unit.vehicle.position.y + chart_range}})

                local provoke_range = 64
                local enemies = unit.vehicle.surface.find_entities_filtered{
                    area={{x = unit.vehicle.position.x - provoke_range, y = unit.vehicle.position.y - provoke_range},
                    {x = unit.vehicle.position.x + provoke_range, y = unit.vehicle.position.y + provoke_range}},
                    type="unit",force=game.forces["enemy"]}

                local group
                for _, enemy in pairs(enemies) do
                    if not enemy.unit_group then
                        if not group then
                            group = unit.vehicle.surface.create_unit_group{position = unit.vehicle.position, force = game.forces["enemy"]}
                        end
                        group.add_member(enemy)
                    end
                end
                if group then
                    group.set_command({
                            type = defines.command.attack_area,
                            destination = unit.vehicle.position,
                            radius = 8})
                    group.start_moving()
                end

            end

        end
    end

end

function unit_set_command(data)
    -- can be called remotely
    --data.unit_id or data.unit

    -- for paths
    --data.path_id (assumed current or 1 if only waypoint specified)
    --data.waypoint_id (assumed 1 if a new path)

    --data.target_speed
    --data.target_angle(0-1)
    --data.target_position (if sending to a tile try to send to the tile center (+0.5, +0.5)
    --data.target_position_direct: send to a subtile, igrnore pathfinding
    --data.follow_target_type = "player" or "unit"
    --data.follow_target_player = LuaPlayer
    --data.follow_target_unit_id = unit_id
    --data.follow_target_offset_rotated = position offset
    --data.follow_target_offset_absolute = position offset
    --data.follow_target_range = float
    --data.follow_target_orientation = float

    -- Note: for building goto target from command
    -- unit.goto_target_type must be "position-beacon" or "vehcile-depot"
    -- unit.goto_target_id the id
    -- unit.goto_target_force_name the force name

    -- Note: for building follow target from command
    -- unit.follow_target.lock_type must be "unit" or "player"
    -- unit.follow_target.unit must be an aai vehicle-unit object
    -- unit.follow_target.player must be an player reference
    -- unit.follow_target.offset_absolute is an optional vector
    -- unit.follow_target.offset_rotated is an optional vector that gets rotated based on target orientation
    -- unit.follow_target.offset_distance is an optional float for distance to maintain, defaults to default_follow_distance, with optional orientation
    -- unit.follow_target.offset_orientation is an optional float, orientation for offset_distance

    -- unit.path_id
    -- unit.waypoint_id
    local unit = data.unit

    if not unit and data.unit_id then
        unit = global.unit.units[data.unit_id]
    end

    if unit then

        if data.path_id then
          --[[
            unit.path structure is =
            {
              path_id,
              waypoint_id, -- going to this target
            }
          ]]--
          if unit.path and unit.path.path_id == data.path_id then
            -- already on this path
            if data.waypoint_id and unit.path.waypoint_id ~= data.waypoint_id then
              unit.path.waypoint_id = data.waypoint_id
              unit.follow_target = nil
              unit.order_last_tick = game.tick
              unit.target_position = nil
              unit.safe_target_position = nil
              unit.stuck = 0
              unit_reset_stuck(unit)
              unit_set_mode(unit, "vehicle_move_to_temp")
            else
              if data.waypoint_id then
                unit.path.waypoint_id = data.waypoint_id
                unit.follow_target = nil
                unit.order_last_tick = game.tick
                unit.target_position = nil
                unit.safe_target_position = nil
                unit.stuck = 0
                unit_reset_stuck(unit)
              end
              if unit.mode ~= 'vehicle_move_to_temp' then
                unit_set_mode(unit, "vehicle_move_to_temp")
              end
            end
          else -- no existing path
            local path_id = data.path_id or nil
            local waypoint_id = data.waypoint_id or nil
            if path_id == nil then
              if unit.path and unit.path.path_id then
                 path_id = unit.path.path_id or 1
              end
            end
            if waypoint_id == nil then
              if unit.path and unit.path.path_id and unit.path.path_id == path_id then
                -- asigned to the current path with no waypoint change
                waypoint_id = unit.path.waypoint_id or 1
              else
                waypoint_id = 1
              end
            end
            unit.path = {
              path_id = path_id,
              waypoint_id = waypoint_id,
            }
            unit.follow_target = nil
            unit.order_last_tick = game.tick
            unit.target_angle = nil
            unit.target_position = nil
            unit.safe_target_position = nil
            unit.stuck = 0
            unit_reset_stuck(unit)
            unit_set_mode(unit, "vehicle_move_to_temp")
          end
        elseif data.waypoint_id then -- follow a path
          if unit.path then
            unit.path.waypoint_id = data.waypoint_id
            unit.follow_target = nil
            unit.order_last_tick = game.tick
            unit.target_position = nil
            unit.safe_target_position = nil
            unit.stuck = 0
            unit_reset_stuck(unit)
            unit_set_mode(unit, "vehicle_move_to_temp")
          else
            unit.path = {
              path_id = 1,
              waypoint_id = data.waypoint_id,
            }
            unit.follow_target = nil
            unit.order_last_tick = game.tick
            unit.target_angle = nil
            unit.target_position = nil
            unit.safe_target_position = nil
            unit.stuck = 0
            unit_reset_stuck(unit)
            unit_set_mode(unit, "vehicle_move_to_temp")
          end
        elseif data.goto_target_type and data.goto_target_id and data.goto_target_force_name then -- following
            local struct
            if data.goto_target_type == "position-beacon" then
                struct = struct_get_position_beacon_id(data.goto_target_force_name, data.goto_target_id)
            elseif data.goto_target_type == "vehicle-depot" then
                struct = struct_get_vehicle_depot_id(data.goto_target_force_name, data.goto_target_id)
            end
            if struct and struct.entity and struct.entity.valid then
                -- go to position
                unit.order_last_tick = game.tick
                unit_set_target_position(unit, struct.entity.position , false)
            end
        elseif data.follow_target_type then -- following
            unit.path = nil
            local follow_target = {}
            if data.follow_target_type == "unit" and data.follow_target_unit_id then
                local follow_unit = unit_by_unit_id(data.follow_target_unit_id)
                if follow_unit and follow_unit.unit_id ~= unit.unit_id then
                    follow_target.lock_type = data.follow_target_type
                    follow_target.unit = follow_unit
                end
            end
            if data.follow_target_type == "player" and data.follow_target_player and data.follow_target_player.valid then
                follow_target.lock_type = data.follow_target_type
                follow_target.player = data.follow_target_player
            end
            if data.follow_target_type then

              if data.follow_target_offset_rotated then
                follow_target.offset_rotated = data.follow_target_offset_rotated
              elseif data.follow_target_offset_absolute then
                follow_target.offset_absolute = data.follow_target_offset_absolute
              else
                  follow_target.offset_distance = data.follow_target_range
                  follow_target.offset_orientation = data.follow_target_orientation
              end

              if unit.follow_target and unit.follow_target.entity == follow_target.entity
              and (unit.follow_target.unit and unit.follow_target.unit.unit_id or 0) == (follow_target.unit and follow_target.unit.unit_id or 0) then
                -- the same target as before, changing this will only change any offsets
                unit.follow_target = follow_target
              else
                unit.follow_target = follow_target
                unit.stuck = 0
                unit_reset_stuck(unit)
                unit.target_position = nil
                unit.safe_target_position = nil
                unit.target_speed = nil
                unit.target_angle = nil
                unit.nav = nil
                unit_set_mode(unit, "unit")
              end
            end
        else  -- to position or directional movement
            unit.path = nil
            if data.target_position_direct then
                unit.order_last_tick = game.tick
                unit_set_target_position(unit, data.target_position_direct, "move_to_temp")
            elseif data.target_position then
                unit.order_last_tick = game.tick
                unit_set_target_position(unit, data.target_position, false)
            else
                if data.target_speed then
                    unit.follow_target = nil
                    unit.order_last_tick = game.tick
                    unit.target_speed = data.target_speed
                    unit.target_position = nil
                    unit.safe_target_position = nil
                    unit.stuck = 0
                    unit_reset_stuck(unit)
                    unit_set_mode(unit, "vehicle")
                end
                if data.target_angle then
                    unit.follow_target = nil
                    unit.order_last_tick = game.tick
                    unit.target_angle = data.target_angle % 1
                    unit.target_position = nil
                    unit.safe_target_position = nil
                    unit.stuck = 0
                    unit_reset_stuck(unit)
                    unit_set_mode(unit, "vehicle")
                end
            end
        end
    end
    raise_event('on_unit_given_order', {unit = unit, order=data})
end

-- Structs: vehicle-depot and vehicle-deployer
-- global.structure_unit_numbers[unit_number] = struct_id-- includes sub entities
-- global.structures[struct_id] = {type="", entitiy=main_entity, sub={sub_entities}} -- only main entity
-- global.next_struct_id = global.next_struct_id + 1

function struct_create_or_revive(entity_type, surface, area, position, force) -- based on aai-programmable-structures
    -- position MUST be in area for revive return to work
    local found_ghost = false
    local ghosts = surface.find_entities_filtered{
        area=area,
        name="entity-ghost",
        force=force}
    for _, each_ghost in pairs(ghosts) do
        if each_ghost.valid and each_ghost.ghost_name == entity_type then
            if found_ghost then
                each_ghost.destroy()
            else
                each_ghost.revive()
                if not each_ghost.valid then
                    found_ghost = true
                else
                    each_ghost.destroy()
                end
            end
        end
    end

    if found_ghost then
        local entity = surface.find_entities_filtered{
            area=area,
            name=entity_type,
            force=force,
            limit=1
        }[1]
        if entity then
            entity.direction = defines.direction.south
            entity.teleport(position)
            return entity
        end
    else
        local reals = surface.find_entities_filtered{
            area=area,
            name=entity_type,
            limit=1
        }
        if #reals == 1 then
          return reals[1]
        end

        return surface.create_entity{
            name=entity_type,
            position=position,
            force=force,
            fast_replace = true
        }
    end
end

function struct_sub_search_area_vehicle_deployer(position)
    return {{position.x - 4, position.y - 4}, {position.x + 4, position.y + 4}}
end

function struct_construction_denial(entity, event)
    if not (entity and entity.valid) then return end
    -- check for illegal structure placement
    if entity.type ~= "entity-ghost" and entity.type ~= "car" then
        local area = {{
            entity.position.x - construction_denial_range,
            entity.position.y - construction_denial_range
        }, {
            entity.position.x + construction_denial_range,
            entity.position.y + construction_denial_range
        }}
        local enemies = entity.surface.find_entities_filtered{
          area= area,
          force="enemy"}
        for _, enemy in pairs(enemies) do
            if (enemy.type == "unit-spawner" or enemy.type == "turret") and Util.vectors_delta_length(entity.position, enemy.position) < construction_denial_range then
                -- deny construction
                if entity.prototype.mineable_properties
                  and entity.prototype.mineable_properties.products
                  and entity.prototype.mineable_properties.products[1]
                  and entity.prototype.mineable_properties.products[1].type == "item" then
                    local stack = {name=entity.prototype.mineable_properties.products[1].name, amount=1}
                    if event and event.name == "on_dolly_moved" and event.start_pos and event.player_index then
                        entity.teleport(event.start_pos)
                        game.players[event.player_index].print{"construction_denied_by_enemy"}
                        return
                    elseif event
                      and event.name == defines.events.on_built_entity
                      and event.player_index
                      and game.players[event.player_index]
                      and game.players[event.player_index].connected
                      and game.players[event.player_index].can_insert(stack) then
                        local player = game.players[event.player_index];
                        player.print{"construction_denied_by_enemy"}
                        player.insert(stack)
                        -- fix foa autofill adding items before removal
                        -- don't do other inventories, fuel includes turret ammo slots for some reason
                        Util.transfer_inventory_loose(entity, player, defines.inventory.fuel)
                    else
                        entity.surface.create_entity{
                          name = "item-on-ground",
                          position = entity.position,
                          stack = stack}
                    end
                end
                if math.random() < 0.05 then
                  local spawn_type = math.random() < 0.25 and "small-spitter" or "small-biter"
                  entity.surface.create_entity{
                    name = spawn_type,
                    position = entity.position,
                    force="enemy"}
                end
                entity.destroy()
                return
            end
        end
    end
end



function struct_manage_entity(entity, event)
  struct_construction_denial(entity, event)
  if not (entity and entity.valid) then return end

  if not global.structures then global.structures = {} end
  if not global.structure_unit_numbers then global.structure_unit_numbers = {} end
  if not global.next_struct_id then global.next_struct_id = 1 end

  if entity.name == "vehicle-depot-base" then
      local struct = {}
      struct.type = "vehicle-depot"
      struct.struct_id = global.next_struct_id
      global.next_struct_id = global.next_struct_id + 1
      global.structures[struct.struct_id] = struct

      struct.sub = {}

      struct.sub.base = entity
      entity.destructible = false
      global.structure_unit_numbers[entity.unit_number] = struct.struct_id
      --entity.active = false
      -- create chest
      local chest = struct_create_or_revive(
          "vehicle-depot-chest", -- name
          --"iron-chest", -- name
          entity.surface, -- surface
          {{entity.position.x - 1, entity.position.y - 1}, {entity.position.x + 1, entity.position.y + 1}}, -- ghost search area
          {x = entity.position.x, y = entity.position.y},-- position
          entity.force)
      struct.entity = chest
      global.structure_unit_numbers[chest.unit_number] = struct.struct_id

      -- create combinator
      local combinator = struct_create_or_revive(
          "vehicle-depot-combinator", -- name
          entity.surface, -- surface
          {{entity.position.x - 4.5, entity.position.y - 4.5}, {entity.position.x + 4.5, entity.position.y + 4.5}}, -- ghost search area
          {x = entity.position.x + 3, y = entity.position.y - 3.5},-- position
          entity.force) -- force
      combinator.destructible = false
      struct.sub.combinator = combinator
      global.structure_unit_numbers[combinator.unit_number] = struct.struct_id

      update_vehicle_depot_from_entity(entity)

  elseif entity.name == vehicle_deployer_type.struct_main then
      local struct = {}
      struct.type = "vehicle-deployer"
      struct.struct_id = global.next_struct_id
      global.next_struct_id = global.next_struct_id + 1
      global.structures[struct.struct_id] = struct

      struct.entity = entity
      struct.sub = {}

      global.structure_unit_numbers[entity.unit_number] = struct.struct_id

      local overlay_position = {x = entity.position.x, y = entity.position.y + vehicle_deployer_type.deployer_overlay_offset}
      struct.sub.overlay = struct_create_or_revive(
          vehicle_deployer_type.struct_overlay, -- name
          entity.surface, -- surface
          {{overlay_position.x - 1, overlay_position.y - 1}, {overlay_position.x + 1, overlay_position.y + 1}}, -- ghost search area
          overlay_position,-- position
          entity.force)
      struct.sub.overlay.destructible = false
      if(struct.sub.overlay.unit_number) then -- simple_entity
          global.structure_unit_numbers[struct.sub.overlay.unit_number] = struct.struct_id
      end

      if vehicle_deployer_type.struct_combinator then
        local place_position = {x = entity.position.x + vehicle_deployer_type.deployer_combinator_offset.x, y = entity.position.y + vehicle_deployer_type.deployer_combinator_offset.y}
          struct.sub.combinator = struct_create_or_revive(
              vehicle_deployer_type.struct_combinator,
              entity.surface,
              struct_sub_search_area_vehicle_deployer(place_position),
              place_position,
              entity.force)
          struct.sub.combinator.destructible = false
          global.structure_unit_numbers[struct.sub.combinator.unit_number] = struct.struct_id
      end

      if vehicle_deployer_type.struct_belt then
          struct.sub.belt = struct_create_or_revive(
              vehicle_deployer_type.struct_belt,
              entity.surface,
              struct_sub_search_area_vehicle_deployer(entity.position),
              {entity.position.x, entity.position.y + vehicle_deployer_type.deployer_belt_offset},
              entity.force)
          struct.sub.belt.destructible = false
          --global.structure_unit_numbers[struct.sub.belt.unit_number] = struct.struct_id
      end

    elseif entity.name == "position-beacon" then
        local struct = {}
        local force_name = entity.force.name
        struct.force_name = entity.force.name
        struct.type = "position-beacon"
        struct.struct_id = global.next_struct_id
        global.next_struct_id = global.next_struct_id + 1
        global.structure_unit_numbers[entity.unit_number] = struct.struct_id
        global.structures[struct.struct_id] = struct

        struct.entity = entity

        update_position_beacon_from_entity(entity)
    end
end

function struct_unmanage(struct)
    if not struct then return end
    if struct.sub then
        for _, subentity in pairs(struct.sub) do
            if subentity.valid then
                if global.structure_unit_numbers and subentity.unit_number then
                    global.structure_unit_numbers[subentity.unit_number] = nil
                end
                subentity.destroy()
            end
            struct.sub[_] = nil
        end
    end
    if struct.reserved_entity and struct.reserved_entity.valid then struct.reserved_entity.destroy() end
    if struct.entity and struct.entity.valid then
      if global.structure_unit_numbers then
          global.structure_unit_numbers[struct.entity.unit_number] = nil
      end
    end
    if global.structures then
        global.structures[struct.struct_id] = nil
    end
    if struct.type == "position-beacon" then
      struct_remove_from_position_beacon_id(struct.force_name, struct.struct_id, struct.beacon_id)
    end
    if struct.type == "vehicle-depot" then
      struct_remove_from_vehicle_depot_id(struct.force_name, struct.struct_id, struct.depot_id)
    end
end

function struct_unmanage_entity(entity)
    if not entity.valid then return end
    if global.structures then
      local struct_id = global.structure_unit_numbers[entity.unit_number]
      if struct_id then
        struct_unmanage(global.structures[struct_id])
      end
    end
end

function struct_get_circuit_inputs(combinator)
    if combinator and combinator.valid then
        local inputs = {}
        local network = combinator.get_circuit_network(defines.wire_type.red)
        local network_found = false
        if network and network.signals then
            network_found = true
            for _, signal_count in pairs(network.signals) do
                Util.signal_container_add(inputs, signal_count.signal, signal_count.count)
            end
        end
        network = combinator.get_circuit_network(defines.wire_type.green)
        if network and network.signals then
            network_found = true
            for _, signal_count in pairs(network.signals) do
                Util.signal_container_add(inputs, signal_count.signal, signal_count.count)
            end
        end
        if not network_found then
            -- get straight from combinator
            local parameters = combinator.get_or_create_control_behavior().parameters.parameters
            for _, param in pairs(parameters) do
                if param.signal.name then
                    Util.signal_container_add(inputs, param.signal, param.count)
                end
            end
        end
        return inputs
    end
end

function vehicle_depot_exchange_inventory(depot)
    if (game.tick + depot.struct_id) % depot_transfer_interval == 0 then
        -- once per second
        -- get the effective unit data from the attached combinator or circuits
        local test_vehicles = depot.entity.surface.find_entities_filtered{
            type="car",
            area={
              {
                x=depot.entity.position.x-depot_transfer_range,
                y=depot.entity.position.y-depot_transfer_range
              },{
                x=depot.entity.position.x+depot_transfer_range,
                y=depot.entity.position.y+depot_transfer_range
              }
            },
            force=depot.entity.force}
        -- compansate for weird offset
        local detected = false
        local other_units = {}
        for _, test_vehicle in pairs(test_vehicles) do
            local other_unit = unit_find_from_entity(test_vehicle)
            if other_unit then
                detected = true
                other_units[other_unit.unit_id] = other_unit
            end
        end

        if not detected then return end
        -- don't check settings if no vehicles are detected, getting settings is expensive
        local settings = struct_get_circuit_inputs(depot.sub.combinator)

        for _, other_unit in pairs(other_units) do
            if other_unit.vehicle.valid and other_unit.data and other_unit.data.item then

                local unit_type_b = unit_get_type(other_unit)
                if unit_type_b.is_hauler then
                    exchange_inventory({
                            b = {
                                entity = depot.entity,
                                data = settings,
                                is_hauler = false
                            },
                            a = {
                                entity = other_unit.vehicle,
                                data = other_unit.data or {},
                                is_hauler = true
                            },
                        })
                else
                    exchange_inventory({
                            a = {
                                entity = depot.entity,
                                data = settings,
                                is_hauler = true
                            },
                            b = {
                                entity = other_unit.vehicle,
                                data = other_unit.data or {},
                                is_hauler = false
                            },
                        })
                end

            end
        end
    end
end

function struct_process_vehicle_deployer(struct)
    if struct.entity and struct.entity.valid then
        local struct_type = vehicle_deployer_type
        if struct.deploy_entity then
            -- keep deploying the entity
            if(struct.deploy_entity.valid) then
                local y = struct.entity.position.y + struct_type.deploy_start_offset
                + (-struct_type.deploy_start_offset + struct_type.deploy_end_offset) * struct.deploy_time / struct_type.deploy_time
                struct.deploy_entity.teleport({struct.entity.position.x, y})
                struct.deploy_time = struct.deploy_time + 1
                if struct.deploy_time > struct_type.deploy_time then
                    raise_event("on_entity_deployed", {entity = struct.deploy_entity, signals=struct.deployment_signals})
                    struct.deploy_time = 0
                    struct.deploy_entity = nil
                    if(struct.reserved_entity) then
                        struct.reserved_entity.destroy()
                        struct.reserved_entity = nil
                    end
                end
            else
                struct.deploy_entity = nil
                struct.reserved_entity.destroy()
                struct.reserved_entity = nil
            end
        else
            -- deploy an entity if there is an item
            local inventory = struct.entity.get_inventory(defines.inventory.chest)
            for item_type in pairs(inventory.get_contents()) do
                local item_stack = inventory.find_item_stack(item_type)
                --send_message(item_stack.prototype.place_result.type)
                if(item_stack.prototype and item_stack.prototype.place_result and item_stack.prototype.place_result.type and item_stack.prototype.place_result.type == "car") then
                    if(struct.entity.surface.can_place_entity{
                            name=struct_type.struct_reserved,
                            position = {x= struct.entity.position.x, y= struct.entity.position.y+struct_type.deploy_end_offset},
                            direction=defines.direction.south
                        }) then
                        struct.reserved_entity = struct.entity.surface.create_entity{
                            name=struct_type.struct_reserved,
                            position = {x= struct.entity.position.x, y= struct.entity.position.y+struct_type.deploy_end_offset},
                            direction=defines.direction.south}
                        struct.reserved_entity.destructible = false
                        struct.deploy_entity = struct.entity.surface.create_entity{
                            name=item_stack.prototype.place_result.name,
                            position={x= struct.entity.position.x, y= struct.entity.position.y+struct_type.deploy_start_offset},
                            force=struct.entity.force,
                            direction=defines.direction.south}
                        struct.deployment_signals = struct_get_circuit_inputs(struct.sub.combinator) -- get signals
                        inventory.remove({name=item_type, count=1})
                        struct.deploy_time = 0
                        break
                    end--send_message("exit blocked")
                end--send_message("invalid item")
            end
        end
    end
end

function struct_tick()
    if not global.structures then return end
    for struct_id, struct in pairs(global.structures) do
        if struct.type == "vehicle-deployer" then
            -- run the deployer
            struct_process_vehicle_deployer(struct)
        elseif struct.type == "vehicle-depot" then
            if (game.tick + struct_id) % 60 == 0 then
                if struct.entity.valid then
                    vehicle_depot_exchange_inventory(struct)
                else
                    struct_unmanage(struct)
                end
            end
        end
    end
end


-------------------------------------------------------------------------------
--[[GUI]]--
-------------------------------------------------------------------------------

function add_tick_task(task)
    -- add a function to tick tasks
    -- task must return true or be removed
    if not global.tick_tasks then
      global.tick_tasks = {}
      global.tick_tasks_next_id = 1
    end
    task.task_id = global.tick_tasks_next_id
    global.tick_tasks_next_id = global.tick_tasks_next_id + 1
    global.tick_tasks[task.task_id] = task
end

function set_unit_data_from_combinator(unit_id, combinator)
    local unit = unit_by_unit_id(unit_id)
    if unit and combinator and combinator.valid then
        local inputs = {}
        local parameters = combinator.get_or_create_control_behavior().parameters.parameters
        for _, param in pairs(parameters) do
            if param.signal.name then
                Util.signal_container_add(inputs, param.signal, param.count)
            end
        end
        unit.data = inputs
    end
end

function set_unit_data_to_combinator(unit_id, combinator)
    local unit = unit_by_unit_id(unit_id)
    if unit and combinator and combinator.valid then
        local signal_container = unit.data
        local parameters = {}
        local index = 1;
        local control = combinator.get_control_behavior()
        for _, signals in pairs(signal_container) do
            for _, signal_count in pairs(signals) do
                if index <= control.signals_count then
                  parameters[index] = {index=index, signal=signal_count.signal, count= math.floor(signal_count.count)}
                  index = index + 1
                end
            end
        end
        combinator.get_control_behavior().parameters = {parameters = parameters}
  end
end

function gui_element_or_parent(element, name)
  if element.name == name then
    return element
  elseif element.parent then
    return gui_element_or_parent(element.parent, name)
  end
end

function remote_on_gui_click(event)
  if not (event.element and event.element.valid) then return end
  local player_index = event.player_index
  local player = game.players[player_index]
  local element = event.element
  local parent = event.element.parent

  if gui_element_or_parent(element, "remote_selected_units") then
    if element.name == "aai_swap_path_remote_control" then
      player.cursor_stack.set_stack({name="path-remote-control"})
      return
    end
    local is_unit_click = false
    while parent and not is_unit_click do
        if parent.name == "remote_selected_units" then
            is_unit_click = true
            break
        else
            parent = parent.parent
        end
    end
    if is_unit_click then
        local element = event.element
        if element.type ~= "sprite-button" then
            element = element.parent
        end
        local parent = element.parent

        local unit_id = tonumber(element.parent.name)
        local unit = unit_by_unit_id(unit_id)
        if unit then
          if element.name == "unit_type_id" then
              UnitRemote.deselect_unit(player, unit_id)
          elseif element.name == "unit_id" and unit then
              UnitRemote.select_units(player, {unit})
          elseif element.name == "unit_data" then
              UnitRemote.deselect_units(player)
              player.clean_cursor()
              local interface = player.surface.create_entity{
                name = "remote-unit-data",
                force = player.force,
                position = player.position }
              set_unit_data_to_combinator(unit_id, interface)
              player.opened = interface
              -- add task to contant poll list
              add_tick_task({
                name = "editing_unit_data",
                player_index = player_index,
                unit_id = unit_id,
                interface = interface
              })
          elseif element.name == "unit_state_on" then
              unit.active_state = "inactive"
              element.destroy()
              parent.add{
                  type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                  name = "unit_state_off",
                  sprite = "virtual-signal/active-state-off",
                  tooltip = {"aai-programmable-vehicles.ai-off"}
              }
          elseif element.name == "unit_state_off" then
              element.destroy()
              unit_set_active_state_auto(unit)
              if unit.active_state == "auto_active" then
                parent.add{
                    type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                    name = "unit_state_auto",
                    sprite = "virtual-signal/active-state-auto",
                    tooltip = {"aai-programmable-vehicles.ai-auto-on"}
                }
              else
                parent.add{
                    type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                    name = "unit_state_auto",
                    sprite = "virtual-signal/active-state-auto",
                    tooltip = {"aai-programmable-vehicles.ai-auto-off"}
                }
              end
          elseif element.name == "unit_state_auto" then
              unit.active_state = "active"
              element.destroy()
              parent.add{
                  type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                  name = "unit_state_on",
                  sprite = "virtual-signal/active-state-on",
                  tooltip = {"aai-programmable-vehicles.ai-on"}
              }
          end
        end
    end
  end
end


function remote_find_selected_area_target(player, area, exclude_units)
  -- exclude units is the selected_units format
  -- find the target location of unit from an area selection
  local follow_target = nil
  local follow_type = nil
  if math.abs(area.right_bottom.x - area.left_top.x) < follow_max_selection_box
    and math.abs(area.right_bottom.y - area.left_top.y) < follow_max_selection_box then
      -- this is a small selection, maybe a follow command?
      local middle = { -- middle position
          x = (area.left_top.x + area.right_bottom.x) / 2,
          y = (area.left_top.y + area.right_bottom.y) / 2
      }
      local target_entities = player.surface.find_entities_filtered{
        type="car",
        area={
          {middle.x -follow_max_selection_box/2, middle.y -follow_max_selection_box/2},
          {middle.x +follow_max_selection_box/2, middle.y +follow_max_selection_box/2}}, limit=1}
      if #target_entities == 1 then
        -- follow this vehicle
        local unit = unit_find_from_entity(target_entities[1])
        if unit then
          local in_group = false
          if exclude_units then
            for _, u in pairs(exclude_units) do
              if u.unit.unit_id == unit.unit_id then
                in_group = true
                break
              end
            end
          end
          if not in_group then
            follow_target = unit
            follow_type = "unit"
          end
        end
      end
      if not follow_target then
        local target_players = player.surface.find_entities_filtered{type="character",
          area={{middle.x -1, middle.y -1}, {middle.x +1, middle.y +1}}, limit=1}
        if #target_players == 1 then
          -- follow this player
          follow_target = target_players[1].player
          follow_type = "player"
        end
      end
  end
  return {follow_type = follow_type, follow_target = follow_target}
end


function unit_on_player_exit_vehicle(player)
  if (not (player and player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name == "unit-remote-control"))
    and not player.vehicle then -- there is no remote equipped
      UnitRemote.deselect_units(player)
  end
end

function unit_on_player_enter_vehicle(player)
    local vehicle = player.vehicle
    -- if entering a ghost or solid version then replace with a whole version
    local unit = unit_find_from_entity(vehicle)
    -- TODO: show vehicle UI
    if unit then
      if unit.active_state == "auto_active" then
        unit.active_state = "auto_inactive"
        unit.mode = "passsive"
        unit_update_mode(unit)
      else
        if unit.mode ~= "passsive" then
          -- tell player how to take control
          if unit.vehicle and unit.vehicle.valid and unit.vehicle.get_passenger() then
            local passenger = unit.vehicle.get_passenger()
            if passenger.is_player() then
              if settings.get_player_settings(passenger)["passenger-no-control-alert"].value then
                passenger.print({"aai-programmable-vehicles.enter-ai-vehicle"})
              end
            else -- is character
              if passenger.player and settings.get_player_settings(passenger.player)["passenger-no-control-alert"].value then
                passenger.player.print({"aai-programmable-vehicles.enter-ai-vehicle"})
              end
            end
          end
        end
      end
      if (not global.player_selected_units)
        or (not global.player_selected_units[player.index])
        or table_size(global.player_selected_units[player.index]) < 1 then
          UnitRemote.select_units(player, {unit})
      end
    end
end

function on_player_cursor_stack_changed(event)
  UnitRemote.on_player_cursor_stack_changed(event)
  local player = game.players[event.player_index]
  if player.vehicle then
    unit_on_player_enter_vehicle(player)
  end
end

function unit_manage_entity(entity, event, signals)
    for _, unit_type in pairs(global.unit_types) do
        if entity.name == unit_type.vehicle_whole then
            unit_manage_new(entity, event, signals)
        end
    end
end

function unit_tick()

    for _, entity in pairs(global.unit.entities_pending_manage) do
        unit_manage_new(entity)
    end

    for _,unit in pairs(global.unit.units) do
        if not unit.vehicle or (unit.vehicle and not unit.vehicle.valid) then
            unit_unmanage(unit)
        end
    end

    for _,unit in pairs(global.unit.units) do
        if unit.vehicle and unit.vehicle.valid then
            unit_update_mode(unit)
            unit_update_state(unit)
        end
    end
end

-- control main

function on_tick()

    -- run temporary tasks, must be valid or die
    if global.tick_tasks then
        for _, task in pairs(global.tick_tasks) do
            local valid = false
            if task.name == "editing_unit_data" then

                local player = game.players[task.player_index]
                local unit = unit_by_unit_id(task.unit_id)
                if player and player.connected and unit then
                    if task.interface and task.interface.valid then
                        set_unit_data_from_combinator(task.unit_id, task.interface)
                        if player.opened == task.interface then
                            valid = true
                        else
                            task.interface.destroy()
                        end
                    end
                else
                    if task.interface and task.interface.valid then
                        task.interface.destroy()
                    end
                end

            end
            if not valid then global.tick_tasks[task.task_id] = nil end
        end
    end

    unit_tick()
    struct_tick()

end

function on_built_entity (event)
    unit_manage_entity(event.created_entity, event)
    struct_manage_entity(event.created_entity, event)
end

function on_robot_built_entity (event)
    struct_manage_entity(event.created_entity, event)
end

function on_script_built_entity (event)
    struct_manage_entity(event.entity, event)
end

function on_entity_damaged (event)
  local vehicle = event.entity
  if event.entity.type ~= "car" then
    vehicle = nil
    if event.cause and event.cause.type == "car" then
      vehicle = event.cause
    end
  end
  if not vehicle then return end

  local unit = unit_find_from_entity(vehicle)

  if unit and unit.vehicle and unit.vehicle.valid then
    if unit.mode == "unit" then
      unit.navpath = nil -- drop navpath if crashing
    else
      local unit_type = unit_get_type(unit)
      if event.entity.type == "tree" then
        -- the vehicle will be slowed too much by hitting a tree
        -- can't modify speed here so record tree health and recover speed in stat update
        local tree_damage = unit_type.tree_damage
        local hp_remaining = event.entity.health - tree_damage
        if hp_remaining > 0 then
          event.entity.health = hp_remaining
        else
          unit.tree_overkill = -hp_remaining
          event.entity.die()
        end
      else
        -- not a tree
        unit_nudge(unit)

        if (not (unit_type.is_flying or unit_type.collides_with_ground))
        --and (unit.mode == "vehicle_move_to" or unit.mode == "vehicle_move_to_temp")
        and (unit.mode == "vehicle_move_to_temp")
        and (unit.safe_target_position or unit.target_position)
        and Util.vectors_delta_length((unit.safe_target_position or unit.target_position), unit.vehicle.position) > navigator_minimum_range then
            -- we may have crashed so direct might not be working
            -- go with pathfinder if possible
            unit.stuck = 0
            unit_reset_stuck(unit)
            unit_set_mode(unit, "unit")
        end
      end
    end
  end
end

function on_entity_died (event)
    unit_on_entity_died(event)
    struct_unmanage_entity(event.entity)
end

function on_player_driving_changed_state(event)
    if event.player_index then
        local player = game.players[event.player_index]
        if player then
          if player.vehicle then
              unit_on_player_enter_vehicle(player)
          else
              unit_on_player_exit_vehicle(player)
          end
        end
    end
end
function on_gui_click(event)
    remote_on_gui_click(event)
end


function on_preplayer_mined_item(event)
    struct_unmanage_entity(event.entity)
end

function on_robot_pre_mined(event)
    struct_unmanage_entity(event.entity)
end

function on_gui_closed(event)
    if event.entity and event.entity.valid then
      if event.entity.name == "position-beacon" then
        update_position_beacon_from_entity(event.entity)
      end
      if event.entity.name == "vehicle-depot-combinator" then
        update_vehicle_depot_from_entity(event.entity)
      end
      if event.entity.type == "car" then
        local player = game.players[event.player_index]
        -- deselect
        if (not (player and player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name == "unit-remote-control"))
          and not player.vehicle then
            UnitRemote.deselect_units(player)
        end
      end
    end
end

function on_gui_opened(event)
  if event.entity and event.entity.valid and event.entity.type == "car" then
    local player = game.players[event.player_index]
    local unit = unit_find_from_entity(event.entity)

    if unit then
      if (not global.player_selected_units)
        or (not global.player_selected_units[player.index])
        or #global.player_selected_units[player.index] < 1 then
          UnitRemote.select_units(player, {unit})
      end
    end

  end
end

-- implement custom events

function on_entity_deployed(data) -- from structures remote
    unit_manage_entity(data.entity, nil, data.signals)
end

function on_dolly_moved(event)
    if event.moved_entity and event.moved_entity.valid then
        -- prevent turret creep
        event.name = "on_dolly_moved"
        struct_construction_denial(event.moved_entity, event)
    end
end

--player object as optional, when not present loop through all players
--insert could still fail to insert because of a full inventory, but at this point the player should have
--enough raw resources to make them
function player_insert_items(event)
    local player = event and game.players[event.player_index]

    if player then
        if settings.startup["start-with-unit-remote-control"] and settings.startup["start-with-unit-remote-control"].value == true then
          for _, item in pairs(starting_items) do
              player.insert(item)
          end
        end
        if settings.startup["start-with-random-color"].value == true then
          player.color = {r=math.random()*255, g=math.random()*255, b=math.random()*255}
        end
    else
        for _, p in pairs(game.players) do
            if settings.startup["start-with-unit-remote-control"] and settings.startup["start-with-unit-remote-control"].value == true then
              for _, item in pairs(starting_items) do
                  p.insert(item)
              end
            end
            if p and settings.startup["start-with-random-color"].value == true then
              p.color = {r=math.random()*255, g=math.random()*255, b=math.random()*255}
            end
        end
    end
end


function on_save_unit_group(event, name)
  local player = game.players[event.player_index]
  UnitRemote.save_unit_group(player, name)
end

function on_load_unit_group(event, name)
  local player = game.players[event.player_index]

  -- Grab a controller if we can (for consistency, though select_units could do this instead)
  on_keypress_create_toggle_controller({player_index=event.player_index})
  if (player.cursor_stack.name ~= 'unit-remote-control') then
    -- Swap to the unit controller if its on the other one
    player.cursor_stack.set_stack({name="unit-remote-control"})
  end

  UnitRemote.load_unit_group(player, name)
end

-- Create the event callbacks for save/load unit group
for i = 0,9 do
  -- Closure for saving the i
  (function(i)
    Event.addListener("load-unit-group-" .. i, function(event) on_load_unit_group(event, i) end)
    Event.addListener("save-unit-group-" .. i, function(event) on_save_unit_group(event, i) end)
  end)(i)
end

function on_runtime_mod_setting_changed(event)
  if event.setting == "restrict-remote-actions-to-player-ids" then
    global.restrict_remote_actions_to_player_ids = nil
    if settings.global["restrict-remote-actions-to-player-ids"] and settings.global["restrict-remote-actions-to-player-ids"].value and
     settings.global["restrict-remote-actions-to-player-ids"].value ~= "" then
       local words = Util.just_words(settings.global["restrict-remote-actions-to-player-ids"].value)
       for _, word in pairs(words) do
         local number = Util.string_to_number(word)
         if number and number > 0 then
           global.restrict_remote_actions_to_player_ids = global.restrict_remote_actions_to_player_ids or {}
           global.restrict_remote_actions_to_player_ids[number] = number
         end
       end
    end

    if global.restrict_remote_actions_to_player_ids then
      local numbers_string = ""
      for _, number in pairs(global.restrict_remote_actions_to_player_ids) do
        numbers_string = numbers_string .. number .. " "
      end
      game.print("Remote actions restricted to player ids: " .. numbers_string)
    end
  end
end

function on_lua_shortcut (event)
  if event.player_index
    and game.players[event.player_index]
    and game.players[event.player_index].connected then
      if event.prototype_name == "unit-remote-control" then
        game.players[event.player_index].remove_item({name="unit-remote-control"})
        game.players[event.player_index].cursor_stack.set_stack({name="unit-remote-control"})
      end
  end
end


-------------------------------------------------------------------------------
--[[INIT]]--
-------------------------------------------------------------------------------
function on_configuration_changed(data)
    global.fuel_items = get_fuel.build()
    --global.prototypes_require_load = true
    global.unit_types = global.unit_types or {}
    global.unit_types_by_signal = global.unit_types_by_signal or {}
    global.unit_mineable_resources = global.unit_mineable_resources or {}
    unit_load_prototypes()

    if settings.startup["exclude-vehicles"] and settings.startup["exclude-vehicles"].value and
     settings.startup["exclude-vehicles"].value ~= "" then
      game.print("Non-programmagle vechicles: " .. settings.startup["exclude-vehicles"].value)
    end

    global.restrict_remote_actions_to_player_ids = nil
    if settings.global["restrict-remote-actions-to-player-ids"] and settings.global["restrict-remote-actions-to-player-ids"].value and
     settings.global["restrict-remote-actions-to-player-ids"].value ~= "" then
       local words = Util.just_words(settings.global["restrict-remote-actions-to-player-ids"].value)
       for _, word in pairs(words) do
         local number = Util.string_to_number(word)
         if number and number > 0 then
           global.restrict_remote_actions_to_player_ids = global.restrict_remote_actions_to_player_ids or {}
           global.restrict_remote_actions_to_player_ids[number] = number
         end
       end
    end

    if global.restrict_remote_actions_to_player_ids then
      local numbers_string = ""
      for _, number in pairs(global.restrict_remote_actions_to_player_ids) do
        numbers_string = numbers_string .. number .. " "
      end
      game.print("Remote actions restricted to player ids: " .. numbers_string)
    end

    global.version = global.version or 0
    if data.mod_changes and data.mod_changes["aai-programmable-vehicles"] then
        if global.version ~= version then
            if global.version < 000310 then
                -- depots are running 3 time more than required
                -- they are going per entity not per depot
                -- updated depots to new struct structure

                if global.vehicle_depot then
                  global.structures = global.structures or {}
                  global.structure_unit_numbers = global.structure_unit_numbers or {}
                  global.next_struct_id = global.next_struct_id or 1
                  for _, struct in pairs(global.vehicle_depot) do

                      struct.type = "vehicle-depot"
                      struct.struct_id = global.next_struct_id
                      global.next_struct_id = global.next_struct_id + 1
                      global.structures[struct.struct_id] = struct

                      if struct.entity and struct.entity.valid then
                        global.structure_unit_numbers[struct.entity.unit_number] = struct.struct_id
                      end

                      struct.sub = struct.sub or {}
                      if struct.sub.base and struct.sub.base.valid then
                        global.structure_unit_numbers[struct.sub.base.unit_number] = struct.struct_id
                      end
                      if struct.sub.base and struct.sub.base.valid then
                        global.structure_unit_numbers[struct.sub.base.unit_number] = struct.struct_id
                      end
                      if struct.sub.combinator and struct.sub.combinator.valid then
                        global.structure_unit_numbers[struct.sub.combinator.unit_number] = struct.struct_id
                      end

                  end
                  global.vehicle_depot = nil
                end


                -- find and manage deployers
                for _, surface in pairs(game.surfaces) do
                    for _, entity in pairs(surface.find_entities_filtered{name="vehicle-deployer"}) do
                        struct_manage_entity(entity)
                    end
                end
            end
            if global.version < 000324 then
                if global.unit and global.unit.units then
                    for _, unit in pairs(global.unit.units) do
                      if unit.data then
                        local unit_type = unit_get_type(unit)
                        if unit_type and unit_type.is_hauler then
                            Util.signal_container_add(unit.data, {type = "virtual", name="signal-minimum-fuel"}, 800)
                        end
                      end
                    end
                end
            end
            if global.version < 000507 then
                -- move all paths to specific surfaces
                global.forces = global.forces or {}
                for _, forcedata in pairs(global.forces) do
                  if forcedata.paths then
                    -- remove old visualisations
                    for _, path in pairs(forcedata.paths) do
                      if path.visualisation then
                        local vis = path.visualisation
                        if vis.lines then
                          for _, line in pairs(vis.lines) do
                            line.destroy()
                            vis.lines[_] = nil
                          end
                        end
                        if vis.markers then
                          for _, marker in pairs(vis.markers) do
                            marker.destroy()
                            vis.markers[_] = nil
                          end
                        end
                      end
                      path.visualisation = nil
                      path.surface_index = 1
                    end
                    -- move path data to surface-specific location
                    forcedata.surface_paths = {}
                    forcedata.surface_paths[1] = {-- Nauvis
                        surface_index = 1,
                        paths = forcedata.paths
                    }
                    forcedata.paths = nil
                  end
                end

                -- move all unit type tables to surface-specific tables
                if global.unit.unit_types then
                  global.unit.surface_units_by_type = global.unit.surface_units_by_type or {}
                  global.unit.surface_units_by_type[1] = global.unit.surface_units_by_type[1] or {}
                  for unit_type, unit_types in pairs(global.unit.unit_types) do
                    global.unit.surface_units_by_type[1][unit_type] = global.unit.surface_units_by_type[1][unit_type] or {}
                    for _, unit in pairs(unit_types) do
                      table.insert(global.unit.surface_units_by_type[1][unit_type], unit)
                      unit.surface_index = 1
                    end
                  end
                  global.unit.unit_types = nil
                end

                -- remove old indivators
                for _, unit in pairs(global.unit.units) do
                  if unit.navpath_indicator and not (unit.navpath_indicator.final and type(unit.navpath_indicator.final) == "number") then
                    local navpath_indicator = unit.navpath_indicator
                    if navpath_indicator.lines then
                      for _, line in pairs(navpath_indicator.lines) do
                        if line and line.valid then
                          line.destroy()
                        end
                      end
                    end
                    if navpath_indicator.waypoints then
                      for _, waypoint in pairs(navpath_indicator.waypoints) do
                        if waypoint and waypoint.valid then
                          waypoint.destroy()
                        end
                      end
                    end
                    if navpath_indicator.final then
                      if navpath_indicator.final and navpath_indicator.final.valid then
                        navpath_indicator.final.destroy()  navpath_indicator.final = nil
                      end
                    end
                    unit.navpath_indicator = nil
                  end
                end

            end
            --unit_cleanup_entities()
        end
    end

    -- enable any recipes that should be unlocked.
    -- mainly required for entity-update-externals as a migration file won't work
    for _, force in pairs(game.forces) do
      for _, tech in pairs(force.technologies) do
        if tech.researched then
          for _, effect in pairs(tech.effects) do
            if effect.type == "unlock-recipe" and force.recipes[effect.recipe] then
              force.recipes[effect.recipe].enabled = true
            end
          end
        end
      end
    end

    -- any mod could have removed an item or signal that is held in vehcile unit data
    for _, unit in pairs(global.unit.units) do
      if unit.data then
        -- unit.data = container[signal.type][signal.name] = {signal = signal, count = count}
        for signal_type, signals in pairs(unit.data) do
          for signal_name, signal in pairs(signals) do
            -- verify it is valid
            if signal_type == "virtual" then
              if not game.virtual_signal_prototypes [signal_name] then
                unit.data[signal_type][signal_name] = nil
              end
            elseif signal_type == "item" then
              if not game.item_prototypes[signal_name] then
                unit.data[signal_type][signal_name] = nil
              end
            elseif signal_type == "fluid" then
              if not game.fluid_prototypes[signal_name] then
                unit.data[signal_type][signal_name] = nil
              end
            end
          end
        end
      end
    end

    global.version = version

    update_all_unit_type_ids()
end

function on_init()
    if remote.interfaces["picker"] and remote.interfaces["picker"]["dolly_moved_entity_id"] then
        script.on_event(remote.call("picker", "dolly_moved_entity_id"), on_dolly_moved)
    end

    global.fuel_items = get_fuel.build()

    global.unit = global.unit or {}
    -- delayed buffer of on_built_entity so that the script can handle assignment if responsible for creation
    global.unit.entities_pending_manage = global.unit.entities_pending_manage or {}
    -- convert a unit_number to a unit_id
    global.unit.unit_numbers = global.unit.unit_numbers or {}
    global.unit.next_unit_id = global.unit.next_unit_id or 1
    -- this is units by type, not a list of unit types
    global.unit.surface_units_by_type = global.unit.surface_units_by_type or {}
    global.unit_types = global.unit_types or {}
    global.unit_types_by_signal = global.unit_types_by_signal or {}
    global.unit_mineable_resources = global.unit_mineable_resources or {}

    unit_load_prototypes()
    global.unit.units = global.unit.units or {} -- by unit_id

    player_insert_items()

    global.version = version
end

function on_load()
    if remote.interfaces["picker"] and remote.interfaces["picker"]["dolly_moved_entity_id"] then
        script.on_event(remote.call("picker", "dolly_moved_entity_id"), on_dolly_moved)
    end
end

function on_keypress_create_toggle_controller(event)
  if(event.player_index) then
    local player = game.players[event.player_index]
    if(player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name) then
      if(player.cursor_stack.name == 'unit-remote-control') then
        player.cursor_stack.set_stack({name="path-remote-control"})
      elseif(player.cursor_stack.name == 'path-remote-control') then
        player.cursor_stack.set_stack({name="unit-remote-control"})
      else
        player.clean_cursor()
        player.remove_item({name="path-remote-control"})
        player.remove_item({name="unit-remote-control"})
        player.cursor_stack.set_stack({name="unit-remote-control"})
      end
    else
      if player.cursor_stack then
        player.remove_item({name="path-remote-control"})
        player.remove_item({name="unit-remote-control"})
        player.cursor_stack.set_stack({name="unit-remote-control"})
      end
    end
  end
end

function on_script_path_request_finished(event)
  if global.unit_by_path_request_id and global.unit_by_path_request_id[event.id] then
    local unit = global.unit_by_path_request_id[event.id]
    global.unit_by_path_request_id[event.id] = nil

    if unit.vehicle and unit.vehicle.valid
      and unit.searching_for_path == event.id then -- make sure this is not a late path after another order was given
        unit.searching_for_path = nil -- allows immediate retry if path fails due to being busy
        if not event.try_again_later then
          unit.navpath = {
            waypoints = event.path, -- may still be nil if path failed, this causes a delay before trying again
            target_position = unit.safe_target_position or unit.target_position,
            current_index = 0
          }
          if event.path then
            unit.pathfind_fails = nil
          else
            unit.vehicle.surface.create_entity{
              name = "flying-text",
              text = "No path",
              position = unit.vehicle.position
            }
            unit.pathfind_fails = (unit.pathfind_fails or 0) + 1
          end
        end
    end
  end
end

function on_biter_base_built(event)
  if not(event.entity and event.entity.valid) then return end
  local entity = event.entity
  local area = {{
      entity.position.x - construction_denial_range,
      entity.position.y - construction_denial_range
  }, {
      entity.position.x + construction_denial_range,
      entity.position.y + construction_denial_range
  }}
  local blockers = entity.surface.count_entities_filtered{
    area= area,
    force = "player",
    type={"ammo-turret","electric-turret","fluid-turret","inserter"}}
  if blockers > 0 then
    --game.print("Enemy expansion halted by defences")
    entity.destroy()
  else
    --game.print("Enemy expansion")
  end
end


-------------------------------------------------------------------------------
--[[EVENTS]]--
-------------------------------------------------------------------------------

-- core events
Event.addListener("on_init", on_init, true)
Event.addListener("on_load", on_load, true)
Event.addListener("on_configuration_changed", on_configuration_changed, true)

-- standard events
Event.addListener(defines.events.on_tick, on_tick)

Event.addListener(defines.events.on_built_entity, on_built_entity)
Event.addListener(defines.events.on_robot_built_entity, on_robot_built_entity)
Event.addListener(defines.events.script_raised_built, on_script_built_entity)
Event.addListener(defines.events.script_raised_revive, on_script_built_entity)

Event.addListener(defines.events.on_entity_damaged, on_entity_damaged)
Event.addListener(defines.events.on_entity_died, on_entity_died)
Event.addListener(defines.events.on_player_driving_changed_state, on_player_driving_changed_state)

Event.addListener(defines.events.on_player_cursor_stack_changed, on_player_cursor_stack_changed)

Event.addListener(defines.events.on_pre_player_mined_item, on_preplayer_mined_item)
Event.addListener(defines.events.on_robot_pre_mined, on_robot_pre_mined)

Event.addListener(defines.events.on_player_created, player_insert_items)
Event.addListener(defines.events.on_gui_click, on_gui_click)
Event.addListener(defines.events.on_gui_closed, on_gui_closed)
Event.addListener(defines.events.on_gui_opened, on_gui_opened)

Event.addListener(defines.events.on_runtime_mod_setting_changed, on_runtime_mod_setting_changed)

Event.addListener(defines.events.on_lua_shortcut, on_lua_shortcut)

Event.addListener(defines.events.on_script_path_request_finished, on_script_path_request_finished)

Event.addListener(defines.events.on_biter_base_built, on_biter_base_built)

-- keypress events
Event.addListener("create-toggle-controller", on_keypress_create_toggle_controller)

-------------------------------------------------------------------------------
--[[REMOTE]]--
-------------------------------------------------------------------------------

Remote = require("scripts/remote")
