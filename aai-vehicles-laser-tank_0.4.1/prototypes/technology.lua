data:extend( { {
    type = "technology",
    name = "vehicle-laser-tank",
    icon = "__aai-vehicles-laser-tank__/graphics/technology/laser-tank.png",
    icon_size = 128,
    order = "c-m-a",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "vehicle-laser-tank",
        },
        {
            type = "unlock-recipe",
            recipe = "laser-cannon-battery-piercing",
        },
        {
            type = "unlock-recipe",
            recipe = "laser-cannon-battery-focussed",
        }
    },
    prerequisites = {"tanks", "laser-turrets"},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"military-science-pack", 1},
        },
        time = 10
    },
}, } )

for _, tech in pairs(data.raw.technology) do
  if tech.effects then
    for _, effect in pairs(tech.effects) do
      if (effect.type == "ammo-damage" or effect.type == "gun-speed") and effect.ammo_category == "laser-turret" then
        local c = table.deepcopy(effect)
        c.ammo_category = "laser-cannon"
        table.insert(tech.effects, c)
      end
    end
  end
end
