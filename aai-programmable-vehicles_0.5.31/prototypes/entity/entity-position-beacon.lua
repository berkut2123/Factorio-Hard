data:extend({
    {
        type = "constant-combinator",
        name = "position-beacon",
        icon = "__aai-programmable-vehicles__/graphics/icons/position-beacon.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid"},
        order = "y",
        minable = {hardness = 0.2, mining_time = 0.5, result = "position-beacon"},
        max_health = 100,
        render_layer = "floor-mechanics",
        corpse = "small-remnants",
        collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
        collision_mask = {"not-colliding-with-itself"},
        selection_priority = 100,
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        item_slot_count = 6,
          -- beacon id
          -- x tile
          -- y tile
          -- x subtile tile
          -- y subtile tile
          -- surface
        sprites =
        {
            north = {
                filename = "__aai-programmable-vehicles__/graphics/entity/position-beacon.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5,
                frame_count = 1,
                shift = {0, 0},
            },
            east = {
                filename = "__aai-programmable-vehicles__/graphics/entity/position-beacon.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5,
                frame_count = 1,
                shift = {0, 0},
            },
            south = {
                filename = "__aai-programmable-vehicles__/graphics/entity/position-beacon.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5,
                frame_count = 1,
                shift = {0, 0},
            },
            west = {
                filename = "__aai-programmable-vehicles__/graphics/entity/position-beacon.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5,
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
})
