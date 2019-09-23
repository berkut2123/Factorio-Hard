-- data.lua

data:extend({
    {
        icon = "__advanced-satellite-mod__/graphics/adv-satellite.png",
        icon_size = 32,
        name = "advanced-satellite",
        order = "m",
        rocket_launch_product = {
            "space-science-pack",
            1500
        },
        stack_size = 1,
        subgroup = "intermediate-product",
        type = "item"
    },
    {
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {
                "low-density-structure",
                100
            },
            {
                "solar-panel",
                100
            },
            {
                "accumulator",
                100
            },
            {
                "radar",
                5
            },
            {
                "processing-unit",
                100
            },
            {
                "nuclear-fuel",
                50
            }
        },
        name = "advanced-satellite",
        requester_paste_multiplier = 1,
        result = "advanced-satellite",
        type = "recipe"
    },
    {
        effects = {
            {
                recipe = "advanced-satellite",
                type = "unlock-recipe"
            }
        },
        icon = "__advanced-satellite-mod__/graphics/nuclear-fuel-sat.png",
        icon_size = 128,
        name = "advanced-satellite",
        order = "c-b",
        prerequisites = {
            "kovarex-enrichment-process",
            "space-science-pack"
        },
        type = "technology",
        unit = {
            count = 2000,
            ingredients = {
                {
                    "automation-science-pack",
                    1
                },
                {
                    "logistic-science-pack",
                    1
                },
                {
                    "chemical-science-pack",
                    1
                },
                {
                    "production-science-pack",
                    1
                },
                {
                    "utility-science-pack",
                    1
                }
            },
            time = 30
        }
    }
})
