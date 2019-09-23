data:extend({{
	type = "recipe",
	name = "vehicle-flame-tank",
  normal = {
    enabled = false,
    ingredients =
    {
      {"engine-unit", 40},
      {"steel-plate", 60},
      {"iron-gear-wheel", 20},
      {"flamethrower", 1}
    },
    results = { {type="item", name="vehicle-flame-tank", amount=1}, }
  },
  expensive = {
    enabled = false,
    ingredients =
    {
      {"engine-unit", 70},
      {"steel-plate", 120},
      {"iron-gear-wheel", 40},
      {"flamethrower", 1}
    },
    results = { {type="item", name="vehicle-flame-tank", amount=1}, }
  }
}})

-- fix ammo after 0.15
if not data.raw.recipe["flamejet-ammo"] then
  local flamejet = table.deepcopy(data.raw.recipe["flamethrower-ammo"])
  flamejet.result = "flamejet-ammo"
  flamejet.name = "flamejet-ammo"
  table.insert(data.raw["technology"]["flamethrower"].effects, {type = "unlock-recipe", recipe = "flamejet-ammo"})
  data:extend({flamejet})
end
