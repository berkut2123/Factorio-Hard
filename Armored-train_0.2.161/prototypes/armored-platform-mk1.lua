--Need to redefine this old-way because sometimes cannot be copied right parameter
----------------
--DEFINE ITEMS--
----------------
data:extend({
	{
		type = "item",
		name = "armored-platform-mk1",
		icon = "__Armored-train__/graphics/icons/armored-paltform-mk1-icon.png",
		icon_size = 32,
		flags = {},
		subgroup = "transport",
		order = "a[train-system]-j[armored_platform1]",
		place_result = "armored-platform-mk1",
		stack_size = 5
	},
	
------------------
--DEFINE RECIPES--
------------------
	{
		type = "recipe",
		name = "armored-platform-mk1",
		enabled = false,
		ingredients =
		{
			{"steel-plate", 20},
			{"iron-plate", 20},
			{"iron-gear-wheel", 10},
		},
		result = "armored-platform-mk1"
	}
})



------------------
--DEFINE ENTITIES--
------------------
--Deep copy base data and create new one with custom parametres
local armored_platform_mk1 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
armored_platform_mk1.name = "armored-platform-mk1"
armored_platform_mk1.icon = "__Armored-train__/graphics/icons/armored-paltform-mk1-icon.png"
armored_platform_mk1.minable = 
	{
		mining_time = 1, 
		result = "armored-platform-mk1"
	}


--COPY FROM BASE HP data from tank \/
-------------------------------------
local base_tank = data.raw.car["tank"];
--use flags (not flamable)
armored_platform_mk1.flags = base_tank.flags;
--copy tank resistancec (maybe add acid resistane)
armored_platform_mk1.resistances = base_tank.resistances;
-------------------------------------
--COPY FROM BASE HP data from tank /\


--ACTUAL PARAMETRES \/
armored_platform_mk1.max_health = 1000
armored_platform_mk1.weight = 1500
armored_platform_mk1.energy_per_hit_point = 5
armored_platform_mk1.inventory_size = 10
--ACTUAL PARAMETRES /\


--no doors
armored_platform_mk1.horizontal_doors = nil
armored_platform_mk1.vertical_doors = nil
--pictures
armored_platform_mk1.pictures =
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
				"__Armored-train__/graphics/entity/armored-platform-mk1/armored-platform-mk1-01.png",
				"__Armored-train__/graphics/entity/armored-platform-mk1/armored-platform-mk1-02.png",
				"__Armored-train__/graphics/entity/armored-platform-mk1/armored-platform-mk1-03.png",
				"__Armored-train__/graphics/entity/armored-platform-mk1/armored-platform-mk1-04.png"
				},
			}
			--DECORATIVES
		},
	}



--FINAL RESULTS and write
data:extend({armored_platform_mk1})