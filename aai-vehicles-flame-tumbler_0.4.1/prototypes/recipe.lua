data:extend({{
	type = "recipe",
	name = "vehicle-flame-tumbler",
	ingredients =
	{
		{"car", 1},
		{"steel-plate", 25},
		{"engine-unit", 25},
		{"advanced-circuit", 25}
	},
	enabled = data.raw["technology"]["automobilism"] == nil,
	energy_required = 5,
	results=
	{
	  {type="item", name="vehicle-flame-tumbler", amount=1},
	}
}})

-- fix ammo after 0.15
local flamejet = table.deepcopy(data.raw.recipe["flamethrower-ammo"])
flamejet.result = "flamejet-ammo"
flamejet.name = "flamejet-ammo"
table.insert(data.raw["technology"]["flamethrower"].effects, {type = "unlock-recipe", recipe = "flamejet-ammo"})

data:extend({flamejet})
