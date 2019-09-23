local easy_research = settings.startup["load-furn-easy-research"].value

data:extend{
	{
	type = "technology",
	name = "furnace-pro-1",
	localised_name = {"entity-name.furnace-pro-01"},
	icon = "__Load-Furn__/graphics/technology/furnace.png",
	icon_size = 128,
	order = "l[furnace-pro]-a[furnace]-a[01]",
	effects = {
		{
			type = "unlock-recipe",
			recipe = "furnace-pro-01",
		}
	},
	prerequisites = 
		{
			"advanced-material-processing-2",
		},
		unit =
		{
		count = easy_research and 150 or 300, 
		time = 30,
		ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			} 
		}
	},
	{
		type = "technology",
		name = "furnace-pro-2",
		localised_name = {"entity-name.furnace-pro-02"},
		icons = {
					{icon = "__Load-Furn__/graphics/technology/furnace.png"},
					{icon = "__Load-Furn__/graphics/technology/2.png"}
				},
		icon_size = 128,
		order = "l[furnace-pro]-a[furnace]-a[02]",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "furnace-pro-02",
			}
		},
		prerequisites = 
		{
			"furnace-pro-1"
		},
		unit =
		{
			count = easy_research and 250 or 500,
			time = 60,
			ingredients = 
			{
				{"automation-science-pack", easy_research and 1 or 2},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			}
		}
	},
	{
		type = "technology",
		name = "furnace-pro-3",
		localised_name = {"entity-name.furnace-pro-03"},
		icons = {
					{icon = "__Load-Furn__/graphics/technology/furnace.png"},
					{icon = "__Load-Furn__/graphics/technology/3.png"}
				},
		icon_size = 128,
		order = "l[furnace-pro]-a[furnace]-a[03]",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "furnace-pro-03",
			}
		},
		prerequisites = 
		{
			"furnace-pro-2",
			"production-science-pack",
			"logistics-3"
		},
		unit =	 
		{
			count = easy_research and 500 or 1000,
			time = 75,
			ingredients = 
			{
				{"automation-science-pack", easy_research and 1 or 2},
				{"logistic-science-pack", easy_research and 1 or 2},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}
			}
		}
	},
	{
		type = "technology",
		name = "furnace-pro-4",
		localised_name = {"entity-name.furnace-pro-04"},
		icons = {
					{icon = "__Load-Furn__/graphics/technology/furnace.png"},
					{icon = "__Load-Furn__/graphics/technology/4.png"}
				},
		icon_size = 128,
		order = "l[furnace-pro]-a[furnace]-a[04]",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "furnace-pro-04",
			}
		},
		prerequisites = 
		{
			"furnace-pro-3"
		},
		unit =
		{
			count = easy_research and 750 or 1500,
			time = 75,
			ingredients = 
			{
				{"automation-science-pack", easy_research and 1 or 2},
				{"logistic-science-pack", easy_research and 1 or 2},
				{"chemical-science-pack", easy_research and 1 or 2},
				{"production-science-pack", 1}
			}
		}
	},
	{
		type = "technology",
		name = "furnace-pro-5",
		localised_name = {"entity-name.furnace-pro-05"},
		icons = {
					{icon = "__Load-Furn__/graphics/technology/furnace.png"},
					{icon = "__Load-Furn__/graphics/technology/5.png"}
				},
		icon_size = 128,
		order = "l[furnace-pro]-a[furnace]-a[05]",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "furnace-pro-05",
			}
		},
		prerequisites = 
		{
			"furnace-pro-4"
		},
		unit =
		{
			count = easy_research and 1000 or 2000,
			time = 75,
			ingredients = 
			{
				{"automation-science-pack", easy_research and 1 or 2},
				{"logistic-science-pack", easy_research and 1 or 2},
				{"chemical-science-pack", easy_research and 1 or 2},
				{"production-science-pack", easy_research and 1 or 2},
				{"utility-science-pack", 1}
			}
		}		
	},
}