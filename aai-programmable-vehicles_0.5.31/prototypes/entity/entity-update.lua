local data_util = require("data-util")

local vehicle_impact_low = 0.01
local vehicle_impact_med = 0.25
local vehicle_impact_max = 1

local show_navigator = false

-- energy per hitpoint is the impact damage multiplier
for _,vehicle in pairs(data.raw.car) do
    local multiplier = vehicle_impact_low
    if string.find(vehicle.name, "tank", 1, true) then
        multiplier = vehicle_impact_med -- tanks should deal some impact damage
    end
    if string.find(vehicle.name, "tumbler", 1, true) then
        multiplier = vehicle_impact_max -- ramming specialist should deal high damage
    end
    -- higher means deals less damage
    vehicle.energy_per_hit_point = (vehicle.energy_per_hit_point or 1) / multiplier
end


-- make all walls more more durable
for _, wall in pairs(data.raw.wall) do
    wall.resistances = wall.resistances or {}

    local resistance_updated = false
    for _, resistance in ipairs(wall.resistances) do
        if resistance.type == "impact" then
            resistance_updated = true
            resistance.percent = 100 - ((100 - (resistance.percent or 0)) / 2)
            resistance.decrease = (resistance.decrease or 0) + 100
        end
    end
    if not resistance_updated then
        table.insert(wall.resistances, { type = "impact", percent = 50, decrease=100 })
    end
end

local function add_resistance(resistances, resistance)
    local resistance_updated = false
    for _, old_resistance in ipairs(resistances) do
        if old_resistance.type == resistance.type then
            resistance_updated = true
            local old_pdt = (100 - (old_resistance.percent or 0))/100
            local add_pdt = (100 - (resistance.percent or 0))/100
            local total_pdt = old_pdt * add_pdt

            old_resistance.percent = 100 - (total_pdt * 100)
            old_resistance.decrease = math.max((old_resistance.decrease or 0), (resistance.decrease or 0))
        end
    end
    if not resistance_updated then
        table.insert(resistances, resistance)
    end
end

local function replace_resistance(resistances, resistance)
    local resistance_updated = false
    for _, old_resistance in ipairs(resistances) do
        if old_resistance.type == resistance.type then
            resistance_updated = true
            old_resistance.percent = resistance.percent or 0
            old_resistance.decrease = resistance.decrease or 0
        end
    end
    if not resistance_updated then
        table.insert(resistances, resistance)
    end
end

local function make_composite_unit_from_vehicle(vehicle)

    local localised_name = vehicle.localised_name or { "entity-name.".. vehicle.name}
    vehicle.localised_name = localised_name

    -- do any required vehicle modifications
    if (not vehicle.weight) or vehicle.weight <= 0 or data_util.string_to_number(vehicle.consumption) <= 1 then return end
    vehicle.resistances = vehicle.resistances or {}
    vehicle.fast_replaceable_group = nil
    add_resistance(vehicle.resistances, {type = "impact", percent = 50, decrease = 200  }) -- take less damage

    -- only 1 gun per vehicle
    if vehicle.guns and #vehicle.guns > 1 then
        -- assume last gun is best?
        --vehicle.guns = {vehicle.guns[#vehicle.guns]}
        -- assume first gun is best?
        vehicle.guns = {vehicle.guns[1]}
    end

    -- collision_box should be square otherwise it will get stuck during rotation
    vehicle.collision_box = vehicle.collision_box or {{0,0},{0,0}}
    local extent_min = math.min(-vehicle.collision_box[1][1], -vehicle.collision_box[1][2], vehicle.collision_box[2][1], vehicle.collision_box[2][2])
    vehicle.collision_box = {{-extent_min,-extent_min},{extent_min,extent_min}}
    vehicle.order = "z["..data_util.programmable_identifier.."]" -- make sure it's picked up in control.lua
    vehicle.subgroup = "cars"

    -- solid used for auto-vehicle mode base
    local solid = table.deepcopy(vehicle)
    solid.name = solid.name .. data_util.composite_suffix.."solid"
    solid.order = "z-z"
    solid.flags = solid.flags or {}
    table.insert(solid.flags, "player-creation")
    solid.resistances = solid.resistances or {}
    solid.has_belt_immunity = true
    --add_resistance(solid.resistances, {type = "impact", decrease = 200 }) -- immune to small bumps
    -- immune to bumps breaks the nudge anti-stuck function
    --add_resistance(solid.resistances, {type = "impact", percent = 99.5 }) -- take less damage (but not 0)
    --replace_resistance(solid.resistances, {type = "impact", percent = 99.99 }) -- take less damage (but not 0)
    data:extend{solid}

    -- ghost used for unit-mode base
    local ghost = table.deepcopy(vehicle)
    ghost.name = ghost.name .. data_util.composite_suffix.."ghost"
    ghost.collision_box = {{-0.0, -0.0}, {0.0, 0.0}}
    ghost.collision_mask = { "not-colliding-with-itself" }
    ghost.order = "z-z"
    ghost.has_belt_immunity = true
    data:extend{ghost}

    -- this is the ai driver
    local driver = table.deepcopy(data.raw.character.character)
    driver.crafting_categories = nil
    driver.loot_pickup_distance = 0
    driver.icon = vehicle.icon
    driver.icons = vehicle.icons
    driver.alert_when_damaged = true
    driver.selectable_in_game = false
    driver.localised_name = localised_name
    driver.name = vehicle.name .. data_util.composite_suffix.."driver"
    driver.character_corpse  = nil
    driver.collision_mask = { "not-colliding-with-itself" }

    data:extend{ driver }

    -- navigator - an invisible unit to direct the vehicle while in unit (move_to) mode
    local navigator_size = math.min(extent_min, 0.49)
    data:extend{
        {
            type = "unit",
            name = vehicle.name.. data_util.composite_suffix.."navigator",
            icon = vehicle.icon,
            icons = vehicle.icons,
            icon_size = 32,
            flags = {"placeable-neutral", "placeable-off-grid"},
            selectable_in_game = false,
            order="z-z",
            max_health = 1000000,
            healing_per_tick = 1000000,
            alert_when_damaged = false,
            selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
            collision_box = {{-navigator_size,-navigator_size},{navigator_size,navigator_size}},
            --collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
            --collision_mask = { "item-layer", "object-layer", "water-tile"},
            vision_distance = 1,
            -- should be faster than vehicle speed. The vehicle holds it back
            movement_speed = 0.5,
            has_belt_immunity = true,
            distance_per_frame = 0.5,
            pollution_to_join_attack = 0.0,
            destroy_when_commands_fail = true,
            distraction_cooldown = 0,
            run_animation = (show_navigator and {
                    filename = "__aai-programmable-vehicles__/graphics/entity/debug-navigator.png",
                    width = 128,
                    height = 128,
                    frame_count = 1,
                    direction_count = 1,
                    } or {
                    filename = "__aai-programmable-vehicles__/graphics/blank.png",
                    width = 1,
                    height = 1,
                    frame_count = 1,
                    direction_count = 1,
                }),
            attack_parameters = {
                ammo_category = "melee",
                ammo_type = {
                    action = {
                        action_delivery = {
                            target_effects = {
                                damage = {
                                    amount = 10, -- the damage needs to be there to simulate drive-crushing damage otherwise unit gets stuck
                                    type = "laser"
                                },
                                type = "damage"
                            },
                            type = "instant"
                        },
                        type = "direct"
                    },
                    category = "melee",
                    target_type = "entity"
                },
                animation = {
                    filename = "__aai-programmable-vehicles__/graphics/blank.png",
                    width = 1,
                    height = 1 ,
                    frame_count = 1,
                    direction_count = 1,
                },
                cooldown = 30,
                range = 0.5,
                type = "projectile"
            },
            localised_name = localised_name
        }
    }

    -- buffer - an invisible object used to find open spaces and avoid getting stuck on things
    local buffer = extent_min * 1.5
    data:extend{
        {
            type = "simple-entity",
            name = vehicle.name.. data_util.composite_suffix.."buffer",
            icon = vehicle.icon,
            icons = vehicle.icons,
            icon_size = 32,
            flags = {"placeable-neutral", "placeable-off-grid"},
            subgroup = "grass",
            order = "z-z",
            collision_box = {{-buffer, -buffer}, {buffer, buffer}},
            collision_mask = vehicle.collision_mask or { "item-layer", "player-layer", "water-tile"},
            selection_box = {{-0.0, -0.0}, {0.0, 0.0}},
            selectable_in_game = false,
            render_layer = "resource",
            pictures = {{
                    filename = "__aai-programmable-vehicles__/graphics/blank.png",
                    width = 1,
                    height = 1
            }},
            localised_name = localised_name
        }
    }

    -- virtual signal: allows unit to be specified without confusion with inventory items (unit items)
    local original_icons = vehicle.icons or {{ icon = vehicle.icon }}
    local signal_icons = {}

    table.insert(signal_icons, { icon = "__aai-programmable-vehicles__/graphics/icons/ids/id_background.png" })
    for _, original_icon in pairs(original_icons) do
      table.insert(signal_icons, original_icon)
    end
    table.insert(signal_icons, { icon = "__aai-programmable-vehicles__/graphics/icons/ids/id_overlay.png" })
    local virtual_signal = {
        type = "virtual-signal",
        name = vehicle.name.. data_util.composite_suffix.."signal",
        icons = signal_icons,
        icon_size = 32,
        subgroup = "vehicle-ids",
        order = "a[vehicle]",
        localised_name = { "vehicle-signal", localised_name}
    }

    data:extend{ virtual_signal }
end


-- programmable-warfare vehcile/units
-- add "no-aai" to an entity order string to disable AAI inclusion
-- a weight or consumtion of 0 will also exclude
local vehicles_to_process = {}
for _, vehicle in pairs(data.raw.car) do -- beware loop
    if (not string.find(vehicle.name, data_util.composite_suffix, 1, true))
    and (not string.find(vehicle.order or "", "no-aai", 1, true)) then
      if data_util.table_contains(aai_vehicle_exclusions, vehicle.name) then
        log("Exclude vehicle from composite: " .. vehicle.name)
      else
        table.insert(vehicles_to_process, vehicle)
      end
    end
end

for _,vehicle in pairs(vehicles_to_process) do
    make_composite_unit_from_vehicle(vehicle)
end
