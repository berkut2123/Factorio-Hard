function add_belt_pro_recipe(data)
	local name = data.name
	local localised_name = data.localised_name
	local category = data.category or "logistics"
	local ingredients = data.ingredients
	local order = data.order
	local result_count = data.result_count
	return {
		type = "recipe",
		name = name,
		localised_name = localised_name,
		ingredients = ingredients,
		enabled = false,
		order = order,
		subgroup = "belt",
		energy_required = 0.5,
		result = name,
		result_count = result_count
	}
end
local recipes = 
	{
		add_belt_pro_recipe{
			name = "transport-belt-pro",
			localised_name = {"",{"recipe-name.express-transport-belt"}, " PRO-1"},
			ingredients = {
				{"iron-gear-wheel", 15},
				{"express-transport-belt", 1}
			},
			order = "a[transport-belt]-d[transport-belt-pro]",
		},
		add_belt_pro_recipe{
			name = "transport-belt-pro2",
			localised_name = {"",{"recipe-name.express-transport-belt"}, " PRO-2"},
			ingredients = {
				{"iron-gear-wheel", 20},
				{"transport-belt-pro", 1}
			},
			order = "a[transport-belt]-e[transport-belt-pro2]",
		},
		add_belt_pro_recipe{
			name = "underground-belt-pro",
			localised_name = {"",{"recipe-name.express-underground-belt"}, " PRO-1"},
			ingredients = {
				{"iron-gear-wheel", 80},
				{"express-underground-belt", 2}
			},
			order = "b[underground-belt]-d[underground-belt-pro]",
			result_count = 2
		},
		add_belt_pro_recipe{
			name = "underground-belt-pro2",
			localised_name = {"",{"recipe-name.express-underground-belt"}, " PRO-2"},
			ingredients = {
				{"iron-gear-wheel", 80},
				{"underground-belt-pro", 2}
			},
			order = "b[underground-belt]-e[underground-belt-pro2]",
			result_count = 2
		},
		add_belt_pro_recipe{
			name = "splitter-pro",
			localised_name = {"",{"recipe-name.express-splitter"}, " PRO-1"},
			ingredients = {
				{"express-splitter", 1},
				{"iron-gear-wheel", 15},
				{"advanced-circuit", 15}
			},
			order = "c[splitter]-d[splitter-pro]",
		},
		add_belt_pro_recipe{
			name = "splitter-pro2",
			localised_name = {"",{"recipe-name.express-splitter"}, " PRO-2"},
			ingredients = {
				{"splitter-pro", 1},
				{"iron-gear-wheel", 20},
				{"advanced-circuit", 20}
			},
			order = "c[splitter]-e[splitter-pro2]",
		}
	}
data:extend(recipes)