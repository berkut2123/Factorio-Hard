--luacheck: no global
local scanner_selection_box = {{-0.9, -1.4}, {0.9, 1.4}}
local scanner_collision_box = {{-1.1, -1.1}, {1.1, 1.1}}
local controller_selection_box = {{-1.4, -1.4}, {1.4, 1.4}}
local controller_collision_box = {{-1.1, -1.1}, {1.1, 1.1}}

function struct_extension_slots(mode)
    if mode == "output" then
        return 1000
    elseif mode == "input" then
        return 0
    else
        return 25
    end
end


function struct_extension_sprite()
    return {
        filename = "__aai-programmable-structures__/graphics/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1,
        shift = {0, 0},
    }
end

function struct_extension_led_sprite(mode)
    if mode == "output" then
        return {
            filename = "__base__/graphics/entity/combinator/activity-leds/constant-combinator-LED-N.png",
            width = 11,
            height = 6,
            frame_count = 1,
            shift = {-0.32, 0.20625},
        }
    else
        return {
            filename = "__base__/graphics/entity/combinator/activity-leds/constant-combinator-LED-N.png",
            width = 11,
            height = 6,
            frame_count = 1,
            shift = {0.296875, -0.40625},
        }
    end
end

function struct_extension_led_offset(mode)
    if mode == "output" then
        return {0, 0}
    else
        return {0, 0}
    end
end

function struct_extension_connections(mode)
    if mode == "output" then
        return {
            shadow =
            {
                green = {0.3125, 0.2},
                red = {0.35, 0.65},
            },
            wire =
            {
                green = {0.13125, -0.12},
                red = {0.13125, 0.22},
            }
        }
    else -- input
        return {
            shadow =
            {
                green = {0.25, 0.28125},
                red = {0.25, -0.125},
            },
            wire =
            {
                green = {-0.1, 0.22},
                red = {-0.1, -0.12},
            }
        }
    end
end

function struct_extension(base_name, mode) -- input / output
    local extension = {
        type = "constant-combinator",
        name = base_name.."-"..mode,
        icon = "__aai-programmable-structures__/graphics/blank.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-deconstructable", "not-repairable"},
        fast_replaceable_group = base_name.."-"..mode,
        order = "y",
        max_health = 10000,
        healing_per_tick = 10000,
        corpse = "small-remnants",
        collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
        collision_mask = {"not-colliding-with-itself"},
        selection_box = {{-0.5, -0.9}, {0.5, 0.9}},
        item_slot_count = struct_extension_slots(mode),
        sprites =
        {
            north = struct_extension_sprite(mode),
            east = struct_extension_sprite(mode),
            south = struct_extension_sprite(mode),
            west = struct_extension_sprite(mode)
        },
        activity_led_sprites =
        {
            north = struct_extension_led_sprite(mode),
            east = struct_extension_led_sprite(mode),
            south = struct_extension_led_sprite(mode),
            west = struct_extension_led_sprite(mode)
        },
        activity_led_light =
        {
            intensity = 0.8,
            size = 1,
        },
        activity_led_light_offsets =
        {
            struct_extension_led_offset(mode),
            struct_extension_led_offset(mode),
            struct_extension_led_offset(mode),
            struct_extension_led_offset(mode)
        },
        circuit_wire_connection_points =
        {
            struct_extension_connections(mode),
            struct_extension_connections(mode),
            struct_extension_connections(mode),
            struct_extension_connections(mode)
        },
        circuit_wire_max_distance = (mode == "input" or mode == "output") and 10 or 0
    }
    if mode == "input" then
        extension.icon = "__aai-programmable-structures__/graphics/icon/generic-input.png"
    elseif mode == "output" then
        extension.icon = "__aai-programmable-structures__/graphics/icon/generic-output.png"
    else
        extension.icon = "__aai-programmable-structures__/graphics/icon/settings.png"
        extension.selectable_in_game = false
        if mode == "scanner-settings" then
            extension.collision_box = scanner_collision_box
            extension.selection_box = {{-0.0, -0.0}, {0.0, 0.0}}
        else
            extension.collision_box = controller_collision_box
            extension.selection_box = {{-0.0, -0.0}, {0.0, 0.0}}
        end
    end
    return extension
end

function struct_static_connected(base_name) -- input / output controller
    local picture = {
        filename = "__aai-programmable-structures__/graphics/entity/"..base_name..".png",
        width = 140,
        height = 184,
        frame_count = 1,
        direction_count = 1,
        shift = { 0.4, -0.6},
        priority = "low",
    }
    local blank = {
        filename = "__aai-programmable-structures__/graphics/blank.png",
        width = 1,
        height = 1,
        frame_count = 1,
        direction_count = 1
    }
    return {
        type = "roboport",
        name = base_name,
        icon = "__aai-programmable-structures__/graphics/icon/"..base_name..".png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = base_name},
        max_health = 400,
        corpse = "big-remnants",
        collision_box = controller_collision_box,
        selection_box = controller_selection_box,
        dying_explosion = "medium-explosion",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            input_flow_limit = "2MW",
            buffer_capacity = "100kJ"
        },
        recharge_minimum = "1J",
        energy_usage = "1MW",
        charging_energy = "1W",
        logistics_radius = 0,
        logistics_connection_distance = 0,
        construction_radius = 0,
        charge_approach_distance = 0,
        robot_slots_count = 0,
        material_slots_count = 0,
        base = picture,
        base_patch = blank,
        base_animation = blank,
        door_animation_up = blank,
        door_animation_down = blank,
        recharging_animation = blank,
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
            max_sounds_per_type = 3,
            audible_distance_modifier = 0.5,
            probability = 1 / (15 * 60) -- average pause between the sound is 5 seconds
        },
        request_to_open_door_timeout = 15,
        spawn_and_station_height = -0.1,
        draw_logistic_radius_visualization = false,
        draw_construction_radius_visualization = false,
        open_door_trigger_effect =
        {
            {
                type = "play-sound",
                sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
            },
        },
        close_door_trigger_effect =
        {
            {
                type = "play-sound",
                sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
            },
        },
        circuit_wire_connection_point =
        {
            shadow =
            {
                green = {-1.25, 0.28125},
                red = {-1.25, -0.165},
            },
            wire =
            {
                green = {-1.3875, 0.2},
                red = {-1.3875, -0.12},
            }
        },
        --circuit_connector_sprites = get_circuit_connector_sprites({0.59375, 1.3125}, nil, 18),
        circuit_wire_max_distance = 10,
    }
end

function struct_animated_disconnected(base_name) -- input / output scanner
    return {
        type = "radar",
        name = base_name,
        icon = "__aai-programmable-structures__/graphics/icon/"..base_name..".png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = base_name},
        max_health = 150,
        corpse = "big-remnants",
        resistances =
        {
            {
                type = "fire",
                percent = 70
            }
        },
        collision_box = scanner_collision_box,
        selection_box = scanner_selection_box,
        energy_per_sector = "10MJ",
        max_distance_of_sector_revealed = 1,
        max_distance_of_nearby_sector_revealed = 1,
        energy_per_nearby_scan = "250kJ",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_usage = "250kW",
        pictures =
        {
            filename = "__aai-programmable-structures__/graphics/entity/"..base_name.."-grid.png",
            --priority = "extra-high",
            priority = "low",
            width = 120,
            height = 128,
            apply_projection = false,
            line_length = 8,
            direction_count = 64,
            shift = {0.1875, 0},
            animation_speed = 0.5
        },
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound = { filename = "__base__/sound/radar.ogg", volume = 0.3 },
            max_sounds_per_type = 3,
            audible_distance_modifier = 0.5,
            probability = 1 / (10 * 60) -- average pause between the sound is 10 seconds
        },
    }
end

-- Note: the ohter structures are added by programmable vehicles
data:extend{
    struct_extension("struct-generic", "input"),
    struct_extension("struct-generic", "output"),
    struct_extension("struct-generic", "scanner-settings"),
    struct_extension("struct-generic", "controller-settings"),
    struct_animated_disconnected("tile-scan"),
    struct_animated_disconnected("zone-scan"),
    struct_animated_disconnected("unit-scan"),
    struct_static_connected("zone-control"),
}
