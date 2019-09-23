--Need to redefine this old-way because  sometimes cannot be copied right parameter
----------------
--DEFINE ITEMS--
----------------
data:extend({
	{
		type = "item",
		name = "armored-wagon-cannon-mk1",
		icon = "__Armored-train__/graphics/icons/armored-wagon-cannon-mk1-icon.png",
		icon_size = 32,
		flags = {},
		subgroup = "transport",
		order = "a[train-system]-l[armored_platform_turret2]",
		place_result = "armored-wagon-cannon-mk1",
		stack_size = 5
	},
	
------------------
--DEFINE RECIPES--
------------------
	{
		type = "recipe",
		name = "armored-wagon-cannon-mk1",
		enabled = false,
		ingredients =
		{
			{"armored-wagon-mk1", 1},
			{"repair-pack", 1},						
			{"wagon-cannon-turret-mk1", 1},
		},
		result = "armored-wagon-cannon-mk1"
	}
})



------------------
--DEFINE ENTITIES--
------------------
--Deep copy base data and create new one with custom parametres
local armored_wagon_cannon_mk1 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
armored_wagon_cannon_mk1.name = "armored-wagon-cannon-mk1"
armored_wagon_cannon_mk1.icon = "__Armored-train__/graphics/icons/armored-wagon-mk1-icon.png"
armored_wagon_cannon_mk1.minable = 
	{
		mining_time = 1, 
		result = "armored-wagon-mk1"		--wagon or platform dismantled and turret is placed to inventory (using buffer)
	}
	
	
--COPY FROM BASE HP data from tank \/
-------------------------------------
local base_tank = data.raw.car["tank"];
--use flags (not flamable)
armored_wagon_cannon_mk1.flags = base_tank.flags;
--copy tank resistancec (maybe add acid resistane)
armored_wagon_cannon_mk1.resistances = base_tank.resistances;
-------------------------------------
--COPY FROM BASE HP data from tank /\


--ACTUAL PARAMETRES \/
armored_wagon_cannon_mk1.max_health = 1200
armored_wagon_cannon_mk1.weight = 2400
armored_wagon_cannon_mk1.energy_per_hit_point = 5
armored_wagon_cannon_mk1.inventory_size = 20
--ACTUAL PARAMETRES /\


--no doors
armored_wagon_cannon_mk1.horizontal_doors = nil
armored_wagon_cannon_mk1.vertical_doors = nil
--pictures
armored_wagon_cannon_mk1.pictures =
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
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-01.png",
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-02.png",
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-03.png",
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-04.png"
				},
			},
			--DECORATIVES
			
			--SHADOW
			{
				priority = "very-low",
				--draw_as_shadow = true, 		--draw as shadow on groud level as in riginal game (use original shadow zip)
				width = 97,
				height = 67,
				back_equals_front = false,      --means to not rotate mirroring
				direction_count = 128, 			--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.0, -1.7},
				scale = 1,
				filenames =
				{
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-01-shadow.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-02-shadow.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-03-shadow.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-04-shadow.png",
				},
			},
			--MAIN SPRITE
			{
				priority = "very-low",
				width = 90,
				height = 67,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.0, -1.9},
				scale = 1,
				filenames =
				{
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-01.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-02.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-03.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-04.png",
				},
			},
			--MASK
			{
				priority = "very-low",
				width = 36,
				height = 33,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.0, -1.9},
				scale = 1,
				filenames =
				{
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-01-mask.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-02-mask.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-03-mask.png",
				"__Armored-train__/graphics/entity/tank-cannon-128/tank-cannon-128-04-mask.png",
				},
			}
		},
	}



--FINAL RESULTS and write
data:extend({armored_wagon_cannon_mk1})