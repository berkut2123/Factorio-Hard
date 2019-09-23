data:extend( { {
    type = "technology",
    name = "basic-vehicles",
    icon = "__aai-vehicles-hauler__/graphics/technology/hauler.png",
    icon_size = 128,
    order = "c-m-a",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "vehicle-hauler",
        },
    },
    unit = {
        count = 10,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 10
    },
}, } )

if data.raw.technology.automobilism then
  table.insert(data.raw.technology.automobilism.prerequisites, "basic-vehicles")
end
