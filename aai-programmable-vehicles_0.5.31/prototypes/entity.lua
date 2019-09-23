local function blank_combinator_sprite()
    return {
        filename = "__aai-programmable-vehicles__/graphics/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1,
        shift = {0, 0},
    }
end
local function blank_combinator_connections()
    return {
        shadow = { green = {0, 0}, red = {0, 0}, },
        wire = { green = {0, 0}, red = {0, 0}, }
    }
end

data:extend{
    {
        type = "simple-entity",
        name = "unit-selection",
        icon = "__aai-programmable-vehicles__/graphics/icons/unit-selection.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-off-grid"},
        subgroup = "grass",
        order = "z-z",
        collision_box = {{0, 0}, {0, 0}},
        collision_mask = { "not-colliding-with-itself" },
        selection_box = {{-0.0, -0.0}, {0.0, 0.0}},
        selectable_in_game = false,
        render_layer = "lower-radius-visualization",
        pictures = {{
                filename = "__aai-programmable-vehicles__/graphics/entity/unit-selection-large.png",
                width = 312,
                height = 232,
                scale = 0.5
            }
        },
    },
    {
        type = "constant-combinator",
        name = "remote-unit-data",
        icon = "__aai-programmable-vehicles__/graphics/blank.png",
        icon_size = 32,
        flags = {"placeable-player", "placeable-off-grid", "not-blueprintable", "not-deconstructable"},
        order = "y",
        max_health = 10000,
        healing_per_tick = 10000,
        --corpse = "small-remnants",
        collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
        collision_mask = { "not-colliding-with-itself" },
        selection_box = {{-0.0, -0.0}, {0.0, 0.0}},
        item_slot_count = 60,
        sprites =
        {
            north = blank_combinator_sprite(),
            east = blank_combinator_sprite(),
            south = blank_combinator_sprite(),
            west = blank_combinator_sprite()
        },
        activity_led_sprites =
        {
            north = blank_combinator_sprite(),
            east = blank_combinator_sprite(),
            south = blank_combinator_sprite(),
            west = blank_combinator_sprite()
        },
        activity_led_light =
        {
            intensity = 0.01,
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
            blank_combinator_connections(),
            blank_combinator_connections(),
            blank_combinator_connections(),
            blank_combinator_connections()
        },
        circuit_wire_max_distance = 10
    },
}
