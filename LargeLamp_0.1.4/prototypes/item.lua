--item.lua

data:extend({
	{ 
		type = "item",
		name = "LargeLamp",
		icon = "__LargeLamp__/graphics/icons/large-lamp-icon.png",
		icon_size = 32,
		subgroup = "circuit-network",
		order = "a[light]-a[small-lamp]",
		place_result = "LargeLamp",
		stack_size = 50,
	},
})