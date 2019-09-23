function add_loader_pro_recipe(data)
	local name = data.name
	local localised_name = data.localised_name
	local category = data.category or "logistics"
	local ingredients = data.ingredients
	local order = data.order
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
	}
end

local recipes = 
	{
		add_loader_pro_recipe{
			name = 'loader-pro-001',
			localised_name = {"recipe-name.loader"},
			ingredients = {
				{"inserter", 5},
				{"electronic-circuit", 5},
				{"iron-gear-wheel", 5},
				{"iron-plate", 5},
				{"transport-belt", 5}
			},
			order = "d[loader-pro]-a[loader-pro-001]",
		},
		add_loader_pro_recipe{
			name = 'loader-pro-002',
			localised_name = {"recipe-name.fast-loader"},
			ingredients = {
				{"fast-transport-belt", 5},
				{"loader-pro-001", 1}
			},
			order = "d[loader-pro]-b[loader-pro-002]",
		},
		add_loader_pro_recipe{
			name = "loader-pro-01",
			localised_name = {"recipe-name.express-loader"},
			ingredients = {
				{"express-transport-belt", 5},
				{"stack-inserter", 3}
			},
			order = "d[loader-pro]-c[loader-pro-01]",
		},
		add_loader_pro_recipe{
			name = "loader-pro-02",
			localised_name = {"",{"recipe-name.express-loader"}, " PRO-1"},
			ingredients = {
				{"transport-belt-pro", 5},
				{"stack-inserter", 3}
			},
			order = "d[loader-pro]-d[loader-pro-02]",
		},
		add_loader_pro_recipe{
			name = "loader-pro-03",
			localised_name = {"",{"recipe-name.express-loader"}, " PRO-2"},
			ingredients = {
				{"transport-belt-pro2", 5},
				{"loader-pro-02", 1}
			},
			order = "d[loader-pro]-e[loader-pro-03]",
		}
	}
data:extend(recipes)