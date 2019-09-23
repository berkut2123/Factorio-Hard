function add_furnace_item(data)
	local name = data.name
	local subgroup = data.subgroup or "pro-furnace"
	local order = data.order
	local icon = data.icon
	local icons = data.icons
	return {
		type = "item",
		name = name,
		icon = icon,
		icons = icons,
		icon_size = 32,
		--flags = {"goes-to-quickbar"},
		order = order,
		subgroup = subgroup,
		place_result = name,
		stack_size = 50
	}
end

local items = 
{
	add_furnace_item
		{
			name = 'furnace-pro-01',
			order = "c[furnace-pro]-d1[01]",
			icon = "__Load-Furn__/graphics/icons/furnace-pro.png"
		},
	add_furnace_item
		{
			name = 'furnace-pro-02',
			order = "c[furnace-pro]-d2[02]",
			icons = {
						{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
						{icon = "__Load-Furn__/graphics/icons/2.png"}
					}
		},
	add_furnace_item
		{
			name = 'furnace-pro-03',
			order = "c[furnace-pro]-d3[03]",
			icons = {
						{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
						{icon = "__Load-Furn__/graphics/icons/3.png"}
					}
		},
	add_furnace_item
		{
			name = 'furnace-pro-04',
			order = "c[furnace-pro]-d4[04]",
			icons = {
						{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
						{icon = "__Load-Furn__/graphics/icons/4.png"}
					}
		},
	add_furnace_item
		{
			name = 'furnace-pro-05',
			order = "c[furnace-pro]-d5[05]",
			icons = {
						{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
						{icon = "__Load-Furn__/graphics/icons/5.png"}
					}
		}
}

data:extend(items)

local steel = table.deepcopy(data.raw['item']['steel-plate'])
steel.name = "steel-plate2"
steel.localised_name = {"recipe-name.steel-plate"}
steel.stack_size = 200


data:extend({steel})


local wood_cool = table.deepcopy(data.raw['item']['coal'])
wood_cool.name = "wood-cool"
wood_cool.localised_name = {"item-name.coal"}

data:extend({wood_cool})