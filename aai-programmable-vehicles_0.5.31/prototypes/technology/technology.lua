data:extend({
    {
        type = "technology",
        name = "vehicle-deployment",
        icon = "__aai-programmable-vehicles__/graphics/technology/vehicle-deployment.png",
        icon_size = 128,
        order = "c-m-a",
        effects = {
            {type = "unlock-recipe", recipe = "vehicle-deployer"},
        },
        unit = {
            count = 20,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "vehicle-depot",
        icon = "__aai-programmable-vehicles__/graphics/technology/vehicle-depot.png",
        icon_size = 128,
        order = "c-m-a",
        effects = {
            {type = "unlock-recipe", recipe = "vehicle-depot"},
        },
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "position-beacon",
        icon = "__aai-programmable-vehicles__/graphics/technology/position-beacon.png",
        icon_size = 128,
        order = "c-m-a",
        effects = {
            {type = "unlock-recipe", recipe = "position-beacon"},
        },
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    }
})


if data.raw.technology["basic-vehicles"] then
  data.raw.technology["vehicle-deployment"].prerequisites = {"basic-vehicles"}
  data.raw.technology["vehicle-depot"].prerequisites = {"basic-vehicles"}
end

-- make it easier to get to vehicles
if data.raw["technology"]["engine"] then
    data.raw["technology"]["engine"].prerequisites = {"steel-processing"}
    data.raw["technology"]["engine"].unit = {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
        },
        time = 10
    }
end

if data.raw["technology"]["automobilism"] then
    data.raw["technology"]["automobilism"].unit = {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 15
    }
end

if data.raw["technology"]["programmable-structures"] then
    for _, effect in pairs(data.raw["technology"]["programmable-structures"].effects) do
      if effect.recipe == "unit-scan" then
        data.raw["technology"]["programmable-structures"].effects[_] = nil
      end
    end

    data:extend({
          {
              type = "technology",
              name = "programmable-vehicle-structures",
              icon = "__aai-programmable-vehicles__/graphics/technology/programmable-vehicle-structures.png",
              icon_size = 128,
              order = "c-m-a",
              prerequisites = { "programmable-structures" },
              effects = {
                  {type = "unlock-recipe", recipe = "unit-scan"},
                  {type = "unlock-recipe", recipe = "unit-control"},
                  {type = "unlock-recipe", recipe = "unitdata-scan"},
                  {type = "unlock-recipe", recipe = "unitdata-control"},
                  {type = "unlock-recipe", recipe = "path-scan"},
                  {type = "unlock-recipe", recipe = "path-control"},
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
end

if data.raw["technology"]["tanks"] then
    table.insert(data.raw["technology"]["tanks"].effects, {type = "unlock-recipe", recipe = "cannon-shell-precision"})
    table.insert(data.raw["technology"]["tanks"].effects, {type = "unlock-recipe", recipe = "explosive-cannon-shell-precision"})
end
