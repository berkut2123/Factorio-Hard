local blank_image = {
    filename = "__aai-programmable-vehicles__/graphics/blank.png",
    width = 1,
    height = 1,
    frame_count = 1,
    line_length = 1,
    shift = { 0, 0 },
}
data:extend{
    { -- placement and chest
        type = "container",
        name = "vehicle-depot-chest",
        icon = "__base__/graphics/icons/iron-chest.png",
        icon_size = 32,
        order = "z-z",
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 2, result = "vehicle-depot"},
        max_health = 5000,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-4.35, -4.35}, {4.35, 4.35}},
        collision_mask = {"item-layer"},
        --selection_box = {{-4, -0}, {4, 7}},
        selection_box = {{-4.35, -4.35}, {4.35, 4.35}},
        inventory_size = 300,
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
        picture = blank_image,
        circuit_wire_connection_point =
        {
            shadow =
            {
                red = {-3.5, 2.7},
                green = {-3.6, 2.6},
            },
            wire =
            {
                red = {-3.5, 2.7},
                green = {-3.6, 2.6},
            }
        },
        circuit_wire_max_distance = 12.5,
        --circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    },
    {
        type = "simple-entity-with-force",
        name = "vehicle-depot-base",
        icon = "__aai-programmable-vehicles__/graphics/icons/vehicle-depot.png",
        icon_size = 32,
        order = "z-z",
        collision_mask = {"floor-layer", "water-tile"},
        flags = { "placeable-neutral", "player-creation", "not-deconstructable"},
        collision_box = {{-4.35, -4.35}, {4.35, 4.35}},
        selection_box = {{-4.35, -4.35}, {4.35, 4.35}}, -- need to set not interactable
        max_health = 5000,
        healing_per_tick = 5000,
        render_layer = "floor",
        animations = {
          frame_count = 1,
          filename = "__aai-programmable-vehicles__/graphics/entity/vehicle-depot/vehicle-depot.png",
          priority = "extra-high",
          width = 576/2,
          height = 576/2,
          shift = {0, 0},
          hr_version = {
            frame_count = 1,
            filename = "__aai-programmable-vehicles__/graphics/entity/vehicle-depot/hr-vehicle-depot.png",
            priority = "extra-high",
            width = 576,
            height = 576,
            shift = {0, 0},
            scale = 0.5,
          }
        }
    },
    {
        type = "constant-combinator",
        name = "vehicle-depot-combinator",
        icon = "__base__/graphics/icons/constant-combinator.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-deconstructable"},
        order = "y",
        max_health = 10000,
        healing_per_tick = 10000,
        corpse = "small-remnants",
        collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
        collision_mask = {"doodad-layer"},
        selection_priority = 100,
        selection_box = {{-1.5, -1}, {1.5, 1}},
        item_slot_count = 75,
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
                shadow = { green = {-0.1, -0.0}, red = {0.0, 0.1}, },
                wire = { green = {-0.1, -0.0}, red = {0.0, 0.1}, }
            },
            {
                shadow = { green = {-0.1, -0.0}, red = {0.0, 0.1}, },
                wire = { green = {-0.1, -0.0}, red = {0.0, 0.1}, }
            },
            {
                shadow = { green = {-0.1, -0.0}, red = {0.0, 0.1}, },
                wire = { green = {-0.1, -0.0}, red = {0.0, 0.1}, }
            },
            {
                shadow = { green = {-0.1, -0.0}, red = {0.0, 0.1}, },
                wire = { green = {-0.1, -0.0}, red = {0.0, 0.1}, }
            }
        },
        circuit_wire_max_distance = 10
    }
}
