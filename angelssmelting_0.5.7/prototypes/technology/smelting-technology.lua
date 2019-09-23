data:extend(
{
	--ALUMINIUM
	{
		type = "technology",
		name = "angels-aluminium-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-aluminium.png",
		icon_size = 128,
		prerequisites =
		{
			"powder-metallurgy-1",
			"chlorine-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "bauxite-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-aluminium-hydroxide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-aluminium-oxide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-aluminium-smelting-1"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-aluminium"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-aluminium-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-aluminium.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-aluminium-smelting-1",
			"ore-processing-1",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "bauxite-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-aluminium-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-aluminium-smelting-2"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-aluminium-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-aluminium-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-aluminium-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-aluminium.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-aluminium-smelting-2",
			"ore-processing-2",
			"sodium-processing",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "aluminium-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-aluminium-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-sodium-aluminate-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-aluminium-smelting-3"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-aluminium-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--CHROME
	{
		type = "technology",
		name = "angels-chrome-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-chrome.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"angels-coal-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "chrome-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-chrome-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-chrome"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-chrome-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-chrome.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-chrome-smelting-1",
			"ore-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "chrome-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-chrome-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-chrome"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-chrome-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-chrome.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-chrome-smelting-2",
			"ore-processing-2",
			"sodium-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "chrome-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-chrome-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-chromate-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-dichromate-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-chrome-oxide-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--COBALT
	{
		type = "technology",
		name = "angels-cobalt-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"angels-coal-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cobalt-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-cobalt-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-cobalt"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-cobalt-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-cobalt-smelting-1",
			"ore-processing-1",
			"water-washing-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cobalt-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-cobalt-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-cobalt-oxide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-cobalt"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-cobalt-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-cobalt-smelting-2",
			"ore-processing-2",
			"angels-sulfur-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cobalt-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-cobalt-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-cobalt-hydroxide-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--COPPER
	{
		type = "technology",
		name = "angels-copper-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-copper.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "copper-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-copper-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-copper"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-copper-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-copper.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-copper-smelting-1",
			"ore-processing-1",
			"basic-chemistry",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "copper-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-copper-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-copper"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-copper-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-copper-converting"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-copper-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-copper-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-copper-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-copper.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-copper-smelting-2",
			"ore-processing-2",
			"angels-sulfur-processing-1",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "copper-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-copper-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "anode-copper-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-copper-casting-fast"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-copper-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--GLAS
	{
		type = "technology",
		name = "angels-glass-smelting-1",
		icon = "__angelssmelting__/graphics/technology/glass-tech.png",
		icon_size = 128,
		prerequisites =
		{
			"powder-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "glass-mixture-1"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-glass-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-glass-1"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-glass-smelting-2",
		icon = "__angelssmelting__/graphics/technology/glass-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-glass-smelting-1",
			"angels-stone-smelting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "glass-mixture-2"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-glass-2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-glass-smelting-3",
		icon = "__angelssmelting__/graphics/technology/glass-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-glass-smelting-2",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "glass-mixture-3"
			},
			{
				type = "unlock-recipe",
				recipe = "glass-mixture-4"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-glass-3"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-coil-glass-fiber"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--GOLD
	{
		type = "technology",
		name = "angels-gold-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-gold.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"chlorine-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "gold-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-gold-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-gold"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-gold-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-gold.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-gold-smelting-1",
			"ore-processing-1",
			"angels-nitrogen-processing-2",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "gold-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "liquid-chlorauric-acid"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-gold-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "cathode-gold-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-gold-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-gold-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-gold-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-gold.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-gold-smelting-2",
			"ore-processing-2",
			"sodium-processing",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "gold-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-gold-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-sodium-gold-cyanide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-gold-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--IRON
	{
		type = "technology",
		name = "angels-iron-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "iron-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-iron-smelting-1"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-iron"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-iron-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-iron-smelting-1",
			"ore-processing-1",
			"angels-coal-processing",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "iron-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-iron-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-iron-smelting-2"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-iron-smelting-3"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-iron-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-iron-converting"
			},
			{
				type = "unlock-recipe",
				recipe = "rod-stack-iron-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-rod-stack-iron-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-iron-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-iron-smelting-2",
			"ore-processing-2",
			"water-washing-2",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "iron-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-iron-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-iron-smelting-4"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-iron-smelting-5"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-iron-casting-fast"
			},
			{
				type = "unlock-recipe",
				recipe = "rod-stack-iron-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--LEAD
	{
		type = "technology",
		name = "angels-lead-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-lead.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"basic-chemistry",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "lead-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-lead-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-lead"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-lead-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-lead.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-lead-smelting-1",
			"ore-processing-1",
			"angels-coal-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "lead-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-lead-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-lead-oxide-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-lead-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-lead.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-lead-smelting-2",
			"ore-processing-2",
			"water-washing-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "lead-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-lead-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "liquid-hexafluorosilicic-acid"
			},
			{
				type = "unlock-recipe",
				recipe = "anode-lead-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--MANGANESE
	{
		type = "technology",
		name = "angels-manganese-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-manganese.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"angels-coal-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "manganese-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-manganese-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-manganese"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-manganese-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-manganese.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-manganese-smelting-1",
			"ore-processing-1",
			"angels-sulfur-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "manganese-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-manganese-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "cathode-manganese-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-manganese-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-manganese.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-manganese-smelting-2",
			"ore-processing-2",
			"oil-gas-extraction",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "manganese-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-manganese-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-manganese-oxide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-iron-hydroxide-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--NICKEL
	{
		type = "technology",
		name = "angels-nickel-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-nickel.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"angels-coal-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "nickel-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-nickel-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-nickel"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-nickel-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-nickel.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-nickel-smelting-1",
			"ore-processing-1",
			"angels-sulfur-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "nickel-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-nickel-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "cathode-nickel-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-nickel"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-nickel-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-nickel.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-nickel-smelting-2",
			"ore-processing-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "nickel-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-nickel-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-nickel-carbonyl-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--PLATINUM
	{
		type = "technology",
		name = "angels-platinum-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-platinum.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "platinum-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-platinum-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-platinum"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-platinum-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-platinum.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-platinum-smelting-1",
			"ore-processing-1",
			"angels-sulfur-processing-1",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "platinum-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-platinum-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-platinum-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-platinum-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-platinum-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-platinum.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-platinum-smelting-2",
			"ore-processing-2",
			"chlorine-processing-1",
			"angels-nitrogen-processing-2",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "platinum-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-platinum-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "liquid-hexachloroplatinic-acid-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-ammonium-chloroplatinate-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-platinum-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--SILICON
	{
		type = "technology",
		name = "angels-silicon-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-silicon.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"angels-coal-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "silicon-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-silicon-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-mono-silicon-seed"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-mono-silicon-1"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-silicon-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-silicon.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-silicon-smelting-1",
			"ore-processing-1",
			"chlorine-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "silica-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-silicon-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "liquid-trichlorosilane-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-silicon-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-silicon.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-silicon-smelting-2",
			"ore-processing-2",
			"basic-chemistry",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "silica-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-silicon-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "gas-silane-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-mono-silicon-2"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-quartz-crucible"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--SILVER
	{
		type = "technology",
		name = "angels-silver-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-silver.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "silver-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-silver-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-silver"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-silver-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-silver.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-silver-smelting-1",
			"ore-processing-1",
			"angels-nitrogen-processing-2",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "silver-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-silver-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-silver-nitrate-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-silver-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-silver-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-silver-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-silver.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-silver-smelting-2",
			"ore-processing-2",
			"sodium-processing",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "silver-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-silver-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-sodium-silver-cyanide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "cathode-silver-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-silver-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--STONE
	{
		type = "technology",
		name = "angels-stone-smelting-1",
		icon = "__angelssmelting__/graphics/technology/cement-tech.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"water-washing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "solid-lime"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-clay-brick-raw"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-clay-brick"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-stone-smelting-2",
		icon = "__angelssmelting__/graphics/technology/cement-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-stone-smelting-1",
			"powder-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cement-mixture-1"
			},
			{
				type = "unlock-recipe",
				recipe = "concrete-mixture-1"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-concrete"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-concrete-brick"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-stone-smelting-3",
		icon = "__angelssmelting__/graphics/technology/cement-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-stone-smelting-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cement-mixture-2"
			},
			{
				type = "unlock-recipe",
				recipe = "concrete-mixture-2"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-reinforced-concrete-brick"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--TIN
	{
		type = "technology",
		name = "angels-tin-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-tin.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tin-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-tin-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-tin"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-tin-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-tin.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-tin-smelting-1",
			"ore-processing-1",
			"angels-coal-processing",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tin-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-tin-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-tin-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-tin-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-tin-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-tin.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-tin-smelting-2",
			"ore-processing-2",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tin-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-tin-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-wire-coil-tin-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--TITANIUM
	{
		type = "technology",
		name = "angels-titanium-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-titanium.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"angels-coal-processing",
			"chlorine-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "titanium-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "liquid-titanium-tetrachloride-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "sponge-titanium-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-titanium-smelting-1"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-titanium"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-titanium-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-titanium.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-titanium-smelting-1",
			"ore-processing-1",
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "titanium-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-titanium-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-titanium-smelting-2"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-titanium-smelting-3"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-titanium-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-titanium-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-titanium-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-titanium.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-titanium-smelting-2",
			"ore-processing-2",
			"basic-chemistry-2",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "titanium-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-titanium-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-titanium-smelting-4"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-titanium-smelting-5"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-titanium-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--TUNGSTEN
	{
		type = "technology",
		name = "angels-tungsten-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-tungsten.png",
		icon_size = 128,
		prerequisites =
		{
			"powder-metallurgy-1",
			"chlorine-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tungsten-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "liquid-tungstic-acid-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-tungsten-oxide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "gas-tungsten-hexafluoride-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-powder-tungsten-1"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-tungsten"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-tungsten-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-tungsten.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-tungsten-smelting-1",
			"ore-processing-1",
			"angels-nitrogen-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tungsten-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-tungsten-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-ammonium-paratungstate-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-powder-tungsten-2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-tungsten-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-tungsten.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-tungsten-smelting-2",
			"ore-processing-2",
			"angels-sulfur-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tungsten-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-tungsten-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--ZINC
	{
		type = "technology",
		name = "angels-zinc-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"basic-chemistry",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "zinc-ore-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-zinc-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-zinc"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-zinc-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-zinc-smelting-1",
			"ore-processing-1",
			"angels-coal-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "zinc-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "processed-zinc-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-zinc-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-zinc-smelting-2",
			"ore-processing-2",
			"angels-sulfur-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "zinc-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-zinc-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "solid-zinc-oxide-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "cathode-zinc-smelting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--ALLOYS
	--STEEL
	{
		type = "technology",
		name = "angels-steel-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-steel.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-iron-smelting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "ingot-iron-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-steel-smelting-1"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-plate-steel"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-steel-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-steel-converting"
			},
			{
				type = "unlock-recipe",
				recipe = "rod-stack-steel-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-rod-stack-steel-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-steel-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-steel.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-steel-smelting-1",
			"angels-silicon-smelting-1",
			"angels-manganese-smelting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "molten-steel-smelting-2"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-steel-smelting-3"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-steel"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-steel-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-steel.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-steel-smelting-2",
			"angels-cobalt-smelting-1",
			"angels-nickel-smelting-1",
			"angels-chrome-smelting-1",
			"angels-tungsten-smelting-1",
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "molten-steel-smelting-4"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-steel-smelting-5"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-steel-casting-fast"
			},
			{
				type = "unlock-recipe",
				recipe = "rod-stack-steel-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--SOLDER
	{
		type = "technology",
		name = "angels-solder-smelting-1",
		icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-tin-smelting-1",
			"angels-lead-smelting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "angels-solder-smelting-1"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-solder"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-solder-smelting-2",
		icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-solder-smelting-1",
			"angels-zinc-smelting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "angels-solder-smelting-2"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-solder-casting"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-roll-solder-converting"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-solder-smelting-3",
		icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-solder-smelting-2",
			"angels-copper-smelting-1",
			"angels-silver-smelting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "angels-solder-smelting-3"
			},
			{
				type = "unlock-recipe",
				recipe = "roll-solder-casting-fast"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--METALLURGY
	{
		type = "technology",
		name = "angels-metallurgy-1",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		prerequisites =
		{
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "blast-furnace"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-chemical-furnace"
			},
			{
				type = "unlock-recipe",
				recipe = "induction-furnace"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-machine"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-metallurgy-2",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "blast-furnace-2"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-chemical-furnace-2"
			},
			{
				type = "unlock-recipe",
				recipe = "induction-furnace-2"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-machine-2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-metallurgy-3",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-metallurgy-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "blast-furnace-3"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-chemical-furnace-3"
			},
			{
				type = "unlock-recipe",
				recipe = "induction-furnace-3"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-machine-3"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-metallurgy-4",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-metallurgy-3",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "blast-furnace-4"
			},
			{
				type = "unlock-recipe",
				recipe = "angels-chemical-furnace-4"
			},
			{
				type = "unlock-recipe",
				recipe = "induction-furnace-4"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-machine-4"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--POWDER METALLURGY
	{
		type = "technology",
		name = "powder-metallurgy-1",
		icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "sintering-oven"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-mixer"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "powder-metallurgy-2",
		icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"powder-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "sintering-oven-2"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-mixer-2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "powder-metallurgy-3",
		icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"powder-metallurgy-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "sintering-oven-3"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-mixer-3"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "powder-metallurgy-4",
		icon = "__angelssmelting__/graphics/technology/sintering-oven-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"powder-metallurgy-3",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "sintering-oven-4"
			},
			{
				type = "unlock-recipe",
				recipe = "powder-mixer-4"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--STRAND CASTING
	{
		type = "technology",
		name = "strand-casting-1",
		icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "strand-casting-machine"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "strand-casting-2",
		icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"strand-casting-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "strand-casting-machine-2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "strand-casting-3",
		icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"strand-casting-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "strand-casting-machine-3"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "strand-casting-4",
		icon = "__angelssmelting__/graphics/technology/strand-casting-machine-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"strand-casting-3",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "strand-casting-machine-4"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--ORE PROCESSING
	{
		type = "technology",
		name = "ore-processing-1",
		icon = "__angelssmelting__/graphics/technology/processing-machine-tech.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "ore-processing-machine"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "ore-processing-2",
		icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"ore-processing-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "ore-processing-machine-2"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-press"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "ore-processing-3",
		icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"ore-processing-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "ore-processing-machine-3"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-press-2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "ore-processing-4",
		icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"ore-processing-3",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "ore-processing-machine-4"
			},
			{
				type = "unlock-recipe",
				recipe = "pellet-press-3"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "ore-processing-5",
		icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"ore-processing-4",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "pellet-press-4"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	--SUPPORT
	{
		type = "technology",
		name = "angels-coolant-1",
		icon = "__angelssmelting__/graphics/technology/coolant-tech.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-metallurgy-1",
			"water-treatment",
			"angels-oil-processing",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cooling-tower"
			},
			{
				type = "unlock-recipe",
				recipe = "coolant"
			},
			{
				type = "unlock-recipe",
				recipe = "coolant-used-filtration-1"
			},
			{
				type = "unlock-recipe",
				recipe = "coolant-cool-100"
			},
			{
				type = "unlock-recipe",
				recipe = "coolant-cool-200"
			},
			{
				type = "unlock-recipe",
				recipe = "coolant-cool-300"
			},
			{
				type = "unlock-recipe",
				recipe = "coolant-cool-steam"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "angels-coolant-2",
		icon = "__angelssmelting__/graphics/technology/coolant-tech.png",
		icon_size = 128,
		prerequisites =
		{
			"angels-coolant-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "coolant-used-filtration-2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
}
)
