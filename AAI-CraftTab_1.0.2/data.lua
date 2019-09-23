data:extend({
    {
    type = "item-group",
    name = "aai-group",
    order = "z",
    inventory_order = "x",
    icon = "__AAI-CraftTab__/graphics/unit-control.png",
    icon_size = 128,
    },
	{
	type = "item-subgroup",
	name = "aai-tools",
	group = "aai-group",
	order = "a",
	},
	{
	type = "item-subgroup",
	name = "aai-ammo",
    group = "aai-group",
    order = "b",
	},
	{
	type = "item-subgroup",
	name = "aai-miners",
    group = "aai-group",
    order = "c",
	},
	{
	type = "item-subgroup",
	name = "aai-vehicles",
    group = "aai-group",
    order = "d",
	},
})