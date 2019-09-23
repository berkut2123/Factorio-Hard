function add_loader_pro_item(data)
	local name = data.name
	local localised_name = data.localised_name
	local subgroup = data.subgroup or "belt"
	local order = data.order	
	return {
		type = "item",
		name = name,
		localised_name = localised_name,
		icon = "__Load-Furn__/graphics/icons/"..name..".png",
		icon_size = 32,
		order = order,
		subgroup = subgroup,
		place_result = name,
		stack_size = 50
	}
end

local items = 
{
	add_loader_pro_item
		{
			name = 'loader-pro-001',
			localised_name = {"item-name.loader"},
			order = "d[loader-pro]-a[loader-pro-001]",
		},
	add_loader_pro_item
		{
			name = 'loader-pro-002',
			localised_name = {"item-name.fast-loader"},
			order = "d[loader-pro]-b[loader-pro-002]",
		},
	add_loader_pro_item
		{
			name = 'loader-pro-01',
			localised_name = {"item-name.express-loader"},
			order = "d[loader-pro]-c[loader-pro-01]",
		},
	add_loader_pro_item
		{
			name = 'loader-pro-02',
			localised_name = {"",{"item-name.express-loader"}, " PRO-1"},
			order = "d[loader-pro]-d[loader-pro-02]",
		},
	add_loader_pro_item
		{
			name = 'loader-pro-03',
			localised_name = {"",{"item-name.express-loader"}, " PRO-2"},
			order = "d[loader-pro]-e[loader-pro-03]",
		}
}
data:extend(items)