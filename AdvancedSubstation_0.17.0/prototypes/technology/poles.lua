

--[[ubstations--
local substations_2 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-2"])
substations_2.name = "electric-substation-3"
substations_2.effects[1].type = "unlock-recipe"
substations_2.effects[1].recipe = "substation-2"
substations_2.effects[2].type = "unlock-recipe"
substations_2.effects[2].recipe = "substation-3"
substations_2.prerequisites[1] = "electric-energy-distribution-2"
substations_2.prerequisites[2] = "advanced-electronics"
substations_2.unit.count = 150
substations_2.unit.ingredients[1] = {"science-pack-1", 1}
substations_2.unit.ingredients[2] = {"science-pack-2", 1}
substations_2.unit.ingredients[3] = {"science-pack-3", 1}
substations_2.unit.time = 45
substations_2.order = "c-e-c-2"
substations_2.upgrade = true
data:extend({substations_2})
]]

data:extend({
		{
			type = "technology",
			name = "electric-substation-3",
			icon = "__AdvancedSubstation__/graphics/tech/electric-energy-distribution.png",
			icon_size = 128,
			unit = {
				count = 150,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"production-science-pack", 1},
				},
				time = 45
			},
			effects = {
				{
					type = "unlock-recipe",
					recipe = "substation-2"
				},

			},
			prerequisites = {
				"electric-energy-distribution-2",
				"advanced-electronics",
			},
			order = "a-j-z"
		}
	})
	
data:extend({
		{
			type = "technology",
			name = "electric-substation-4",
			icon = "__AdvancedSubstation__/graphics/tech/electric-energy-distribution.png",
			icon_size = 128,
			unit = {
				count = 300,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"production-science-pack", 1},
					{"utility-science-pack", 1}
				},
				time = 200
			},
			effects = {
				{
					type = "unlock-recipe",
					recipe = "substation-3"
				},				
			},
			prerequisites = {
				"electric-substation-3",
				"nuclear-power",
			},		
			
			order = "a-j-z"
		}
	})