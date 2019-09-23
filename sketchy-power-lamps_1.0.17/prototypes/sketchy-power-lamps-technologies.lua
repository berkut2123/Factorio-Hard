data:extend({
	{
		type = "technology",
		name = "medium-power-lamp",
		icon = "__sketchy-power-lamps__/graphics/technology/medium-power-lamps.png",
		icon_size = 128,
		prerequisites = {"optics"},
		effects = {},
		unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 15
		}
	},
	{
		type = "technology",
		name = "high-power-lamp",
		icon = "__sketchy-power-lamps__/graphics/technology/high-power-lamps.png",
		icon_size = 128,
		prerequisites = {"medium-power-lamp"},
		effects = {},
		unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		}
	}
})

table.insert( data.raw["technology"]["medium-power-lamp"].effects, { type = "unlock-recipe", recipe = "medium-power-lamp" } )
table.insert( data.raw["technology"]["high-power-lamp"].effects, { type = "unlock-recipe", recipe = "high-power-lamp" } )