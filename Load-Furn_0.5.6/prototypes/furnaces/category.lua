if not mods["bobplates"] then 
	if mods["bobelectronics"] then
data:extend({
	{
		type = "recipe-category", 
		name = "mixing-furnace"
	},
	{
		type = "item-subgroup",
		name = "chemical-furnace",
		group = "production",
		order = "c-d2"
	},
		{
		type = "item-subgroup",
		name = "mixing-furnace",
		group = "production",
		order = "c-d5"
	},
})
else
data:extend({
	{
		type = "recipe-category", 
		name = "chemical-furnace"
	},
	{
		type = "recipe-category", 
		name = "mixing-furnace"
	},
	{
		type = "item-subgroup",
		name = "chemical-furnace",
		group = "production",
		order = "c-d2"
	},
		{
		type = "item-subgroup",
		name = "mixing-furnace",
		group = "production",
		order = "c-d5"
	},
})
	end
end

data:extend({
	{
		type = "recipe-category",
		name = "pro-smelting"
	},
	{
		type = "recipe-category",
		name = "AdvFurn"
	},
	{
		type = "recipe-category",
		name = "pro-chemical-smelting"
	},
	{
		type = "recipe-category",
		name = "pro-mixing-smelting"
	},
	{
		type = "recipe-category", 
		name = "pro-chemical-furnace"
	},
	{
		type = "item-subgroup",
		name = "pro-furnace",
		group = "production",
		order = "c-d"
	},
	{
		type = "item-subgroup",
		name = "pro-chemical-furnace",
		group = "production",
		order = "c-d2"
	},
	{
		type = "item-subgroup",
		name = "pro-mixing-furnace",
		group = "production",
		order = "c-d3"
	},
	{
		type = "item-subgroup",
		name = "pro-smelting",
		group = "production",
		order = "c-d4"
	},
	{
		type = "item-subgroup",
		name = "pro-chemical-smelting",
		group = "production",
		order = "c-d5"
	},
	{
		type = "item-subgroup",
		name = "pro-mixing-smelting",
		group = "production",
		order = "c-d6"
	}
})