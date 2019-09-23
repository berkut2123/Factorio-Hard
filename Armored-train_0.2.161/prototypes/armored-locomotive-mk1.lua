--Need to redefine this old-way because sometimes cannot be copied right parameter
----------------
--DEFINE ITEMS--
----------------
data:extend({
	{
		type = "item",
		name = "armored-locomotive-mk1",
		icon = "__Armored-train__/graphics/icons/armored-locomotive-mk1-icon.png",
		icon_size = 32,
		flags = {},
		subgroup = "transport",
		order = "a[train-system]-m[armored_locomotive1]",
		place_result = "armored-locomotive-mk1",
		stack_size = 5
	},
	
------------------
--DEFINE RECIPES--
------------------
	{
		type = "recipe",
		name = "armored-locomotive-mk1",
		enabled = false,
		ingredients =
		{
			{"engine-unit", 32},
			{"steel-plate", 50},										--tweak!!!
			{"iron-gear-wheel", 15},
			{"electronic-circuit", 20},
		},
		result = "armored-locomotive-mk1"
	}
})



-------------------
--DEFINE ENTITIES--
-------------------
--Deep copy base data and create new one with custom parametres
local armored_locomotive_mk1 = util.table.deepcopy(data.raw["locomotive"]["locomotive"])
armored_locomotive_mk1.name = "armored-locomotive-mk1"
armored_locomotive_mk1.icon = "__Armored-train__/graphics/icons/armored-locomotive-mk1-icon.png"
armored_locomotive_mk1.minable = 
	{
		mining_time = 1, 
		result = "armored-locomotive-mk1"
	}


--COPY FROM BASE HP data from tank \/
-------------------------------------
local base_tank = data.raw.car["tank"];
--use flags (not flamable)
armored_locomotive_mk1.flags = base_tank.flags;
--copy tank resistancec (maybe add acid resistane)
armored_locomotive_mk1.resistances = base_tank.resistances;
-------------------------------------
--COPY FROM BASE HP data from tank /\


--ACTUAL PARAMETRES \/
--burner inventory size
armored_locomotive_mk1.max_health = 2000;
armored_locomotive_mk1.weight = 4000;
armored_locomotive_mk1.max_power = "700kW"
armored_locomotive_mk1.braking_force = 15
--Energy per HP (collide dmg)
armored_locomotive_mk1.energy_per_hit_point = 5		--(5 is default)
--ACTUAL PARAMETRES /\


armored_locomotive_mk1.burner =
    {
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 5,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    }
	
armored_locomotive_mk1.pictures =															--add shadows cuz picturs is replaced!!!!!!!!!!!
    {
      layers =
      {
        {
			--slice = 4,
			priority = "very-low",
			width = 238, --346
			height = 230, --248
			direction_count = 256,
			allow_low_quality_rotation = true,
			filenames =
			{
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-01.png",
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-02.png",
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-03.png",
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-04.png",
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-05.png",
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-06.png",
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-07.png",
			"__Armored-train__/graphics/entity/armored-locomotive-mk1/armored-locomotive-mk1-08.png"
			},
			line_length = 32,
			lines_per_file = 1,
			shift = {-0.1, -0.5},																		--add color mask when finished!!!!!!!!!!!
        }
		--DECO LAYERS
	  }
    }
	
	

--FINAL RESULTS and write
data:extend({armored_locomotive_mk1})