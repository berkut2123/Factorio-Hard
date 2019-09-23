data:extend{
    { -- placement and chest
        type = "container",
        name = "vehicle-deployer",
        icon = "__aai-programmable-vehicles__/graphics/icons/vehicle-deployer.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 2, result = "vehicle-deployer"},
        max_health = 5000,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-4.35, -4.65}, {4.35, 3.90}},
        selection_box = {{-4.5, -4.5}, {4.5, 4.0}},
        inventory_size = 1,
        resistances = {{
                type = "impact",
                percent = 100
                },{
                type = "fire",
                percent = 50
        }},
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        render_layer = "resource", -- below floor
        picture =
        --[[{
            filename = "__aai-programmable-vehicles__/graphics/entity/vehicle-deployer/vehicle-deployer.png",
            priority = "extra-high",
            width = 350,
            height = 351,
            shift = {1, 0.6}
        },]]--
        {
            filename = "__aai-programmable-vehicles__/graphics/entity/vehicle-deployer/vehicle-deployer-rails.png",
            priority = "extra-high",
            width = 296,
            height = 351,
            shift = {6 / 32, 19 / 32}
        },
        circuit_wire_connection_point =
        {
            shadow =
            {
                red = {-2.9, -2.7},
                green = {-2.9, -3},
            },
            wire =
            {
                red = {-2.9, -2.7},
                green = {-2.9, -3},
            }
        },
        circuit_wire_max_distance = 12.5,
        circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    },
    { -- the visual
        type = "simple-entity",
        name = "vehicle-deployer-overlay",
        icon = "__aai-programmable-vehicles__/graphics/icons/vehicle-deployer.png",
        icon_size = 32,
        flags = {"placeable-player", "placeable-off-grid", "player-creation"},
        subgroup = "logistic-network",
        order = "b[deploy]-b[deploy]",
        render_layer = "object",
        max_health = 5000,
        heal_per_tick = 5000,
        selectable_in_game = false,
        collision_box = {{-4.35, -8.55}, {4.35, 0.15}},
        collision_mask = { "ghost-layer"},
        selection_box = {{0, 0}, {0, 0}},
        inventory_size = 0,
        picture =
        {
            filename = "__aai-programmable-vehicles__/graphics/entity/vehicle-deployer/vehicle-deployer-chest.png",
            priority = "extra-high",
            width = 290,
            height = 302,
            shift = {0.1, -4 - 2/32} -- lower moves up
        },
    },
    {
        type = "simple-entity",
        --type = "radar",
        name = "vehicle-deployer-belt",
        icon = "__aai-programmable-vehicles__/graphics/icons/vehicle-deployer.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "not-blueprintable", "not-deconstructable"},
        render_layer = "floor",
        subgroup = "logistic-network",
        order = "b[deploy]-b[deploy]",
        max_health = 5000,
        heal_per_tick = 5000,
        collision_box = {{-4.45, -4.45}, {4.45, 6.45}},
        collision_mask = { "ghost-layer"},
        selection_box = {{-4.5, -2.5}, {4.5, 6}},
        --[[energy_per_sector = "1kJ",
        max_distance_of_sector_revealed = 2,
        max_distance_of_nearby_sector_revealed = 1,
        energy_per_nearby_scan = "1kJ",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_usage = "1kW",]]--
        animations =
        {
            filename = "__aai-programmable-vehicles__/graphics/entity/vehicle-deployer/vehicle-deployer-belt-12.png",
            priority = "extra-high",
            width = 170,
            height = 153,
            frame_count = 12,
            --direction_count = 12,
            line_length = 6,
            apply_projection = false,
            shift = {0.0625, 5.67},
            animation_speed = 0.25
        },
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    },
    { -- the unit output blocker
        type = "simple-entity",
        name = "vehicle-deployer-reserved",
        icon = "__aai-programmable-vehicles__/graphics/blank.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-blueprintable", "not-deconstructable"},
        subgroup = "logistic-network",
        order = "b[deploy]-b[deploy]",
        render_layer = "object",
        max_health = 5000,
        heal_per_tick = 5000,
        selectable_in_game = false,
        collision_box = {{-1, -1}, {1, 1}},
        collision_mask = { "player-layer" },
        selection_box = {{-1, -1}, {1, 1}},
        inventory_size = 0,
        picture =
        {
            filename = "__aai-programmable-vehicles__/graphics/blank.png",
            width = 32,
            height = 32,
        },
    },
    {
        type = "constant-combinator",
        name = "vehicle-deployer-combinator",
        icon = "__base__/graphics/icons/constant-combinator.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-deconstructable"},
        order = "y",
        max_health = 10000,
        healing_per_tick = 10000,
        corpse = "small-remnants",
        collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
        collision_mask = {"doodad-layer"},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        item_slot_count = 75,
        selection_priority = 100,
        sprites =
        {
            north = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            },
            east = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            },
            south = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            },
            west = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            }
        },
        activity_led_sprites =
        {
            north = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            },
            east = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            },
            south = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            },
            west = {
                filename = "__aai-programmable-vehicles__/graphics/blank.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1,
                shift = {0, 0},
            }
        },
        activity_led_light =
        {
            intensity = 0.8,
            size = 1,
        },
        activity_led_light_offsets =
        {
            {0, 0},
            {0, 0},
            {0, 0},
            {0, 0}
        },
        circuit_wire_connection_points =
        {
            {
                shadow = { green = {-0.4, 0.1}, red = {0.4, 0.1}, },
                wire = { green = {-0.4, 0.1}, red = {0.4, 0.1}, }
            },
            {
                shadow = { green = {-0.4, 0.1}, red = {0.4, 0.1}, },
                wire = { green = {-0.4, 0.1}, red = {0.4, 0.1}, }
            },
            {
                shadow = { green = {-0.4, 0.1}, red = {0.4, 0.1}, },
                wire = { green = {-0.4, 0.1}, red = {0.4, 0.1}, }
            },
            {
                shadow = { green = {-0.4, 0.1}, red = {0.4, 0.1}, },
                wire = { green = {-0.4, 0.1}, red = {0.4, 0.1}, }
            },
        },
        circuit_wire_max_distance = 10
    }
}
