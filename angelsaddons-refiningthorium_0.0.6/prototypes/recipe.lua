local rawmulti = angelsmods.marathon.rawmulti
data:extend({
	{
		type = "recipe",
		name = "thorium-ore",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "true",
		allow_decomposition = false,
		ingredients = {
			{type="item", name="angels-ore1-pure", amount=2},
			{type="item", name="angels-ore4-pure", amount=2},
			{type="item", name="angels-ore6-pure", amount=2},
			{type="item", name="catalysator-orange", amount=1},
		},
		results = {{type="item", name="thorium-ore", amount=3}},
		icons = {{ icon = "__angelsrefining__/graphics/icons/sort-icon.png" }, { icon = "__boblibrary__/graphics/icons/ore-5.png", scale = 0.5, shift = { 10, 10 }, tint = {r = 1, g = 1, b = 0.25}}},
		icon_size = 32,
		},
})

local OV = angelsmods.functions.OV
OV.patch_recipes({
	{ name = "angelsore1-pure-processing", results = {
		{ name = "iron-ore", type = "item", amount = 3 },
		{ name = "copper-ore", type = "item", amount = 2 },
		{ name = "quartz", type = "item", amount = 1 },
		{ name = "nickel-ore", type = "item", amount = 1 },
		{ name = "rutile-ore", type = "item", amount = 1 },
		{ name = "thorium-ore", type = "item", amount = 1 }
	} }
})