local intermediatemulti = angelsmods.marathon.intermediatemulti
data:extend({
	{
		type = "recipe",
		name = "angels-wire-coil-insulated-casting",
		category = "strand-casting",
		subgroup = "angels-tin-casting",
		normal =
		{
		enabled = "false",
			energy_required = 4,
			ingredients = {
				{type="fluid", name="liquid-molten-tin", amount=40},
				{type="fluid", name="liquid-molten-copper", amount=40},
				{type="fluid", name="water", amount=40},
				{type="item", name="rubber", amount=8},
			},
			results={{type="item",name="angels-wire-coil-insulated", amount=4}},
		},
		expensive =
		{
			enabled = "false",
			energy_required = 4,
			ingredients ={
				{type="fluid", name="liquid-molten-tin", amount=50 * intermediatemulti},
				{type="fluid", name="liquid-molten-copper", amount=50 * intermediatemulti},
				{type="fluid", name="water", amount=40},
				{type="item", name="rubber", amount=10 * intermediatemulti},
			},
			results={{type="item", name="angels-wire-coil-tin", amount=4}},
		},
		icons = {
			{
				icon = "__angelsaddons-insulatedcablecoil__/graphics/icons/wire-coil-insulated.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_1.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12},
			},
		},
		icon_size = 32,
		order = "zc",
	},
	
	{
	type = "recipe",
	name = "angels-wire-coil-insulated-fast",
	category = "strand-casting",
	subgroup = "angels-tin-casting",
	normal =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-tin", amount=70},
			{type="fluid", name="liquid-molten-copper", amount=70},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
			{type="item", name="rubber", amount=14},
		},
		results={
			{type="item", name="angels-wire-coil-insulated", amount=8},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-wire-coil-insulated",
	},
	expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-tin", amount=90 * intermediatemulti},
			{type="fluid", name="liquid-molten-copper", amount=90 * intermediatemulti},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
			{type="item", name="rubber", amount=18 * intermediatemulti},
		},
		results={
			{type="item", name="angels-wire-coil-insulated", amount=8},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-wire-coil-insulated",
	},
	icons = {
		{
			icon = "__angelsaddons-insulatedcablecoil__/graphics/icons/wire-coil-insulated.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	order = "zd",
	},
	{
		type = "recipe",
		name = "angels-wire-coil-insulated-converting",
		category = "advanced-crafting",
		subgroup = "angels-tin-casting",
		energy_required = 1,
		enabled = "false",
		allow_decomposition = false,
		ingredients ={
			{type="item", name="angels-wire-coil-insulated", amount=4},
		},
		results=
		{
			{type="item", name="insulated-cable", amount=16},
		},
		icons = {
			{
				icon = "__bobelectronics__/graphics/icons/insulated-cable.png",
			},
			{
				icon = "__angelsaddons-insulatedcablecoil__/graphics/icons/wire-coil-insulated.png",
				scale = 0.4375,
				shift = { -10, -10},
			}
		},
		icon_size = 32,
		order = "zd",
	},
}
)