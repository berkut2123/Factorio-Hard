local tech = {
    type = "technology",
    name = "vehicle-chaingunner",
    icon = "__aai-vehicles-chaingunner__/graphics/technology/chaingunner.png",
    icon_size = 128,
    order = "c-m-a",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "vehicle-chaingunner",
        },
    },
    prerequisites = {},
    unit = {
        count = 10,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 10
    },
}
if data.raw["technology"]["turrets"] then table.insert(tech.prerequisites, "turrets") end
data:extend({tech})
