data:extend( { {
    type = "technology",
    name = "vehicle-flame-tumbler",
    icon = "__aai-vehicles-flame-tumbler__/graphics/technology/flame-tumbler.png",
    icon_size = 128,
    order = "c-m-a",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "vehicle-flame-tumbler",
        },
        {
            type = "unlock-recipe",
            recipe = "flamejet-ammo",
        }
    },
    prerequisites = {"automobilism", "flamethrower"},
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
        },
        time = 10
    },
}, } )

table.insert(data.raw["technology"]["flamethrower"].effects, {type = "unlock-recipe", recipe = "flamejet-ammo"})
