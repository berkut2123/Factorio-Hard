data:extend({
--Categories for reverse recipes, used to define tiers
	{
		type = "recipe-category",
		name = "recycle-products"
	},
	{
		type = "recipe-category",
		name = "recycle-intermediates"
	},
	{
		type = "recipe-category",
		name = "recycle-with-fluids"
	},
	{
		type = "recipe-category",
		name = "recycle-productivity"
	},
--Hidden group and subgroup which contains the reverse recipes
	{
		type = "item-group",
		name = "recycling",
		icon = "__core__/graphics/questionmark.png",
		icon_size = 64,
		order = "z",
	},
	{
		type = "item-subgroup",
		name = "recycling",
		group = "recycling",
		order = "z",
	}
})
