function add_furnace_recipe(data)
	local name = data.name
	local order = data.order
	local category = data.category or "crafting"
	local ingredients = data.ingredients
	
	return {
		type = "recipe",
		name = name,
		ingredients = ingredients,
		enabled = false,
		order = order,
		subgroup = "pro-furnace",
		energy_required = 1,
		result = name,
		category = category,
	}
end

local recipes = 
	{
		add_furnace_recipe{
			name = "furnace-pro-01",
			ingredients = 
				{
					{"fast-inserter", 5},
					{"steel-plate", 50},
					{"electric-furnace", 24},
					{"electronic-circuit", 20},
					{"iron-gear-wheel", 20},
				
				},
			order = "c[furnace-pro]-d1[01]",
		},
		add_furnace_recipe{
			name = "furnace-pro-02",
			ingredients = 
				{
					{"fast-inserter", 10},
					{"steel-plate", 50},
					{"furnace-pro-01", 2},
					{"advanced-circuit", 5},
					{"iron-gear-wheel", 20},
				 
				},
			order = "c[furnace-pro]-d2[02]",
		},
		add_furnace_recipe{
			name = "furnace-pro-03",
			ingredients = 
				{
					{"fast-inserter", 20},
					{"furnace-pro-02", 2},
					{"advanced-circuit", 25},
					{"speed-module", 10},
					{type = "fluid", name = "lubricant", amount = 120}
				},
			order = "c[furnace-pro]-d3[03]",
			category = "crafting-with-fluid",
		},
 add_furnace_recipe{
			name = "furnace-pro-04",
			ingredients = 
				{
					{"stack-inserter", 5},
					{"furnace-pro-03", 2},
					{"advanced-circuit", 50},
					{"speed-module-2", 5},
					{type = "fluid", name = "lubricant", amount = 120}
				},
			order = "c[furnace-pro]-d4[04]",
			category = "crafting-with-fluid",
		},
 add_furnace_recipe{
			name = "furnace-pro-05",
			ingredients = 
				{
					{"stack-inserter", 10},
					{"furnace-pro-04", 2},
					{"advanced-circuit", 100},
					{"speed-module-3", 2},
					{type = "fluid", name = "lubricant", amount = 120}
				},
			order = "c[furnace-pro]-d5[05]",
			category = "crafting-with-fluid",
		},
	}
data:extend(recipes)

local steel = {
type = "recipe",
name = "steel-plate2",
category = "pro-smelting",
result_count = 1,
icon = "__base__/graphics/icons/steel-plate.png",
icon_size = 32,
normal =
	{
	  enabled = true,
	  energy_required = 16,
	  ingredients = {{"iron-ore", 5}},
	  result = "steel-plate"
	},
expensive =
	{
	  enabled = true,
	  energy_required = 32,
	  ingredients = {{"iron-ore", 10}},
	  result = "steel-plate"
	},
localised_name = {"recipe-name.steel-plate"}
}

data:extend({steel})


data:extend({
  {
	type = "recipe",
	name = "wood-cool",
	category = "smelting",
	icon = "__base__/graphics/icons/icons-new/coal.png",
	icon_size = 32,
	normal =
	{
	  enabled = true,
	  energy_required = 10,
	  ingredients = {{"wood", 1}},
	  result = "coal",
	  result_count = 150
	},
	expensive =
	{
	  enabled = true,
	  energy_required = 20,
	  ingredients = {{"wood", 2}},
	  result = "coal",
	  result_count = 75
	},
	localised_name = {"item-name.coal"}
  }
})