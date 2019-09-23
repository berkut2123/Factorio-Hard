data:extend( { {
    type = "technology",
    name = "vehicle-warden",
    icon = "__aai-vehicles-warden__/graphics/technology/warden.png",
    icon_size = 128,
    order = "c-m-a",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "vehicle-warden",
        },
        {
            type = "unlock-recipe",
            recipe = "electroshock-pulse-ammo",
        },
    },
    prerequisites = {"automobilism"},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 10
    },
}, } )

for _, tech in pairs(data.raw.technology) do
  if tech.effects then
    for _, effect in pairs(tech.effects) do
      if (effect.type == "ammo-damage" or effect.type == "gun-speed") and effect.ammo_category == "laser-turret" then
        local c = table.deepcopy(effect)
        c.ammo_category = "electro-bolter"
        table.insert(tech.effects, c)
      end
    end
  end
end
