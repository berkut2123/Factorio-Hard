function add_belt_pro_item(data)
	local name = data.name
	local localised_name = data.localised_name
	local subgroup = data.subgroup or "belt"
	local order = data.order	
	local stack_size = data.stack_size
	return {
		type = "item",
		name = name,
		localised_name = localised_name,
		icon = "__Load-Furn__/graphics/icons/"..name..".png",
		icon_size = 32,
		order = order,
		subgroup = subgroup,
		place_result = name,
		stack_size = stack_size
	}
end
local items = 
{
	add_belt_pro_item
		{
			name = 'transport-belt-pro',
			localised_name = {"",{"item-name.express-transport-belt"}, " PRO-1"},
			order = "a[transport-belt]-d[transport-belt-pro]",
			stack_size = 100
		},
	add_belt_pro_item
		{
			name = 'transport-belt-pro2',
			localised_name = {"",{"item-name.express-transport-belt"}, " PRO-2"},
			order = "a[transport-belt]-e[transport-belt-pro2]",
			stack_size = 100
		},
	add_belt_pro_item
		{
			name = 'underground-belt-pro',
			localised_name = {"",{"item-name.express-underground-belt"}, " PRO-1"},
			order = "b[underground-belt]-d[underground-belt-pro]",
			stack_size = 50 
		},
	add_belt_pro_item
		{
			name = 'underground-belt-pro2',
			localised_name = {"",{"item-name.express-underground-belt"}, " PRO-2"},
			order = "b[underground-belt]-e[underground-belt-pro2]",
			stack_size = 50 
		},
	add_belt_pro_item
		{
			name = 'splitter-pro',
			localised_name = {"",{"item-name.express-splitter"}, " PRO-1"},
			order = "c[splitter]-d[splitter-pro]",
			stack_size = 50
		},
	add_belt_pro_item
		{
			name = 'splitter-pro2',
			localised_name = {"",{"item-name.express-splitter"}, " PRO-2"},
			order = "c[splitter]-e[splitter-pro2]",
			stack_size = 50
		}
}
data:extend(items)