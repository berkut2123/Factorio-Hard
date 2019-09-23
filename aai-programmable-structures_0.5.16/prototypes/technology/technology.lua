data:extend({
    {
        type = "technology",
        name = "programmable-structures",
        icon = "__aai-programmable-structures__/graphics/technology/programmable-structures.png",
        icon_size = 128,
        order = "c-m-a",
        effects = {
            {type = "unlock-recipe", recipe = "zone-scan"},
            {type = "unlock-recipe", recipe = "zone-control"},
            {type = "unlock-recipe", recipe = "tile-scan"},
            {type = "unlock-recipe", recipe = "unit-scan"},
        },
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    }
})
