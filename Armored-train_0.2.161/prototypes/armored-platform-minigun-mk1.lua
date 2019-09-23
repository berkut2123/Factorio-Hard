--Need to redefine this old-way because sometimes cannot be copied right parameter
----------------
--DEFINE ITEMS--
----------------
data:extend({
	{
		type = "item",
		name = "armored-platform-minigun-mk1",
		icon = "__Armored-train__/graphics/icons/armored-paltform-minigun-mk1-icon.png",
		icon_size = 32,
		flags = {},
		subgroup = "transport",
		order = "a[train-system]-l[armored_platform_turret1]",
		place_result = "armored-platform-minigun-mk1",
		stack_size = 5
	},
	
------------------
--DEFINE RECIPES--
------------------
	{
		type = "recipe",
		name = "armored-platform-minigun-mk1",
		enabled = false,
		ingredients =
		{
			{"armored-platform-mk1", 1},		
			{"repair-pack", 1},			
			{"platform-minigun-turret-mk1", 1},
		},
		result = "armored-platform-minigun-mk1"
	}
})



------------------
--DEFINE ENTITIES--
------------------
--Deep copy base data and create new one with custom parametres
local armored_platform_minigun_mk1 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
armored_platform_minigun_mk1.name = "armored-platform-minigun-mk1"
armored_platform_minigun_mk1.icon = "__Armored-train__/graphics/icons/armored-paltform-mk1-icon.png"
armored_platform_minigun_mk1.minable = 
	{
		mining_time = 1, 
		result = "armored-platform-mk1"		--wagon or platform dismantled and turret is placed to inventory (using buffer)
	}


--COPY FROM BASE HP data from tank \/
-------------------------------------
local base_tank = data.raw.car["tank"];
--use flags (not flamable)
armored_platform_minigun_mk1.flags = base_tank.flags;
--copy tank resistancec (maybe add acid resistane)
armored_platform_minigun_mk1.resistances = base_tank.resistances;
-------------------------------------
--COPY FROM BASE HP data from tank /\


--ACTUAL PARAMETRES \/
armored_platform_minigun_mk1.max_health = 1000
armored_platform_minigun_mk1.weight = 2000
armored_platform_minigun_mk1.energy_per_hit_point = 5
armored_platform_minigun_mk1.inventory_size = 10
--ACTUAL PARAMETRES /\


--no doors
armored_platform_minigun_mk1.horizontal_doors = nil
armored_platform_minigun_mk1.vertical_doors = nil
--pictures
armored_platform_minigun_mk1.pictures =
	{
	layers =
		{
			{
				priority = "very-low",
				width = 256,
				height = 256,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.4, -1.25},
				filenames =
				{
				"__Armored-train__/graphics/entity/armored-platform-mk2/armored-platform-mk2-01.png",
				"__Armored-train__/graphics/entity/armored-platform-mk2/armored-platform-mk2-02.png",
				"__Armored-train__/graphics/entity/armored-platform-mk2/armored-platform-mk2-03.png",
				"__Armored-train__/graphics/entity/armored-platform-mk2/armored-platform-mk2-04.png"
				},
			},
			--DECORATIVES
			
			--SHADOW
			{
				priority = "very-low",
				--draw_as_shadow = true, 		--draw as shadow on groud level as in riginal game (use original shadow zip)
				width = 126,
				height = 62,
				back_equals_front = false,      --means to not rotate mirroring
				direction_count = 128, 			--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {-0.65, -1.4},
				scale = 1,
				filenames =
				{
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-01-shadow.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-02-shadow.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-03-shadow.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-04-shadow.png",
				},
			},
			--MAIN SPRITE
			{
				priority = "very-low",
				width = 66,
				height = 64,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.0, -1.25},
				filenames =
				{
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-01.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-02.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-03.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-04.png",
				},
			},
			--MASK
			{
				priority = "very-low",
				width = 30,
				height = 28,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.0, -1.4},
				scale = 1,
				filenames =
				{
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-01-mask.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-02-mask.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-03-mask.png",
				"__Armored-train__/graphics/entity/minigun-turret-128/minigun-turret-128-04-mask.png",
				},
			}
		},
	}



--FINAL RESULTS and write
data:extend({armored_platform_minigun_mk1})