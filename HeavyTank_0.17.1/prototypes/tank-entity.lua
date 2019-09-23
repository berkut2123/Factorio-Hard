require("util")


--------------------------------------------------------------------------------------------
------------------------------------------------Experimental TANK------------------------------
----------------------------------------------------------------------------------------------
local heavyTank = table.deepcopy(data.raw.car["tank"])

patchTable(heavyTank, {
	name = "HeavyTank_experimental_tank",
	minable = {mining_time = 10, result = "HeavyTank_experimental_tank"},
	collision_box = {{-1.5, -3.2}, {1.5, 3.2}},
    selection_box = {{-1.5, -3.2}, {1.5, 3.2}},

	weight = 400000,
    inventory_size = 120,
    max_health = 50000,
    effectivity = 0.8,
	energy_per_hit_point = 0.25,
    braking_power = "40MW",
	immune_to_tree_impacts = true,
    burner =
    {
      fuel_category = "nuclear",
      effectivity = 1,
      fuel_inventory_size = 2,
	  burnt_inventory_size = 2
    },
    consumption = "20MW",
    terrain_friction_modifier = 0.05, --0.2
    friction = 0.0006, --0.002
    rotation_speed = 0.0060,
    turret_rotation_speed = 0.60 / 60,
    turret_return_timeout = 300,

	guns = { "120mm-Twin-Cannons-Gauss-mode-exp", "120mm-Twin-Cannons-Fast-Reload-mode-exp", "25mm-Twin-AutoCannons-Gauss-mode-exp", "HT-Rocket-Pad-3-exp" },
	
    equipment_grid = "HeavyTank-experimental-tank-grid",
	
    resistances =
    {
      {
        type = "fire",
        decrease = 25,
        percent = 80
      },
	  {
        type = "poison",
        decrease = 25,
        percent = 100
      },
      {
        type = "physical",
        decrease = 25,
        percent = 80
      },
      {
        type = "impact",
        decrease = 70,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 25,
        percent = 80
      },
      {
        type = "acid",
        decrease = 25,
        percent = 70
      }
    },

    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200,
        },
		shift = {-0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200
        },
		--shift = {-0.6, -14},
        shift = {0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },

	animation =
	{
		layers = {
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 2,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 2,
          		max_advance = 1,
				scale = 0.65,
          		stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Experimental/01.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/02.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/03.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/04.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/05.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/06.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/07.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/08.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/09.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/10.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/11.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/12.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/13.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/14.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/15.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/16.png",
						width_in_frames = 2,
						height_in_frames = 4,
					}
				},
			 }
		}
	},

	turret_animation =
	{
		layers =
		{
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 1,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 8,
				scale = 0.65,
				stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Experimental/t01.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t02.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t03.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t04.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t05.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t06.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t07.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t08.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t09.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t10.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t11.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t12.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t13.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t14.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t15.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Experimental/t16.png",
						width_in_frames = 1,
						height_in_frames = 4,
					}
				}
			}
		}
	},
    sound_no_fuel =
    {
      {
		filename = "__HeavyTank__/sound/MEXOFF2.ogg",
        volume = 0.6
      },
    },
	working_sound =
	{
		sound =
		{
			filename = "__HeavyTank__/sound/DRONE3.ogg",
			volume = 0.6
		},
		activate_sound =
		{
			filename = "__HeavyTank__/sound/MEXON2.ogg",
			volume = 0.6
		},
		deactivate_sound =
		{
			filename = "__HeavyTank__/sound/MEXOFF2.ogg",
			volume = 0.6
		},
		match_speed_to_activity = true,
	},
})
data:extend({heavyTank})

--------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------HEAVY TANK------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
local heavyTank = table.deepcopy(data.raw.car["tank"])

patchTable(heavyTank, {
	name = "HeavyTank_heavy_tank",
	minable = {mining_time = 10, result = "HeavyTank_heavy_tank"},
	collision_box = {{-1.5, -3.2}, {1.5, 3.2}},
    selection_box = {{-1.5, -3.2}, {1.5, 3.2}},

	weight = 400000,
    inventory_size = 80,
    max_health = 10000,
    effectivity = 0.8,
	energy_per_hit_point = 0.5,
    braking_power = "25MW",
	immune_to_tree_impacts = true,
    burner =
    {
      fuel_category = "nuclear",
      effectivity = 1,
      fuel_inventory_size = 2,
	  burnt_inventory_size = 2
    },
    consumption = "20MW",
    terrain_friction_modifier = 0.05, --0.2
    friction = 0.001, --0.002
    rotation_speed = 0.0040,
    turret_rotation_speed = 0.40 / 60,
    turret_return_timeout = 300,

	guns = { "120mm-Twin-Cannons-Gauss-mode", "120mm-Twin-Cannons-Fast-Reload-mode", "25mm-Twin-AutoCannons-Gauss-mode", "HT-Rocket-Pad-3" },
	
    equipment_grid = "HeavyTank-tank-grid",
	
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 80
      },
	  {
        type = "poison",
        decrease = 15,
        percent = 100
      },
      {
        type = "physical",
        decrease = 15,
        percent = 80
      },
      {
        type = "impact",
        decrease = 50,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 80
      },
      {
        type = "acid",
        decrease = 15,
        percent = 65
      }
    },

    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200,
        },
		shift = {-0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200
        },
		--shift = {-0.6, -14},
        shift = {0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },

	animation =
	{
		layers = {
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 2,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 2,
          		max_advance = 1,
				scale = 0.65,
          		stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Heavy/01.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/02.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/03.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/04.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/05.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/06.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/07.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/08.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/09.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/10.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/11.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/12.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/13.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/14.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/15.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/16.png",
						width_in_frames = 2,
						height_in_frames = 4,
					}
				},
			 }
		}
	},

	turret_animation =
	{
		layers =
		{
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 1,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 8,
				scale = 0.65,
				stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Heavy/t01.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t02.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t03.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t04.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t05.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t06.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t07.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t08.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t09.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t10.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t11.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t12.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t13.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t14.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t15.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Heavy/t16.png",
						width_in_frames = 1,
						height_in_frames = 4,
					}
				}
			}
		}
	},
    sound_no_fuel =
    {
      {
		filename = "__HeavyTank__/sound/MEXOFF2.ogg",
        volume = 0.6
      },
    },
	working_sound =
	{
		sound =
		{
			filename = "__HeavyTank__/sound/DRONE3.ogg",
			volume = 0.6
		},
		activate_sound =
		{
			filename = "__HeavyTank__/sound/MEXON2.ogg",
			volume = 0.6
		},
		deactivate_sound =
		{
			filename = "__HeavyTank__/sound/MEXOFF2.ogg",
			volume = 0.6
		},
		match_speed_to_activity = true,
	},
})
data:extend({heavyTank})

------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------MEDIUM TANK------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
local heavyTank = table.deepcopy(data.raw.car["tank"])

patchTable(heavyTank, {
	name = "HeavyTank_medium_tank",
	minable = {mining_time = 10, result = "HeavyTank_medium_tank"},
	collision_box = {{-1.5, -3.2}, {1.5, 3.2}},
    selection_box = {{-1.5, -3.2}, {1.5, 3.2}},

	weight = 250000,
    inventory_size = 60,
    max_health = 7500,
    effectivity = 0.75,
	energy_per_hit_point = 0.5,
    braking_power = "15MW",
	immune_to_tree_impacts = true,
    burner =
    {
      fuel_category = "liquid-fuel",
      effectivity = 1,
      fuel_inventory_size = 3,
    },
    consumption = "10MW",
    terrain_friction_modifier = 0.1, --0.2
    friction = 0.002, --0.002
    rotation_speed = 0.0030,
    turret_rotation_speed = 0.30 / 60,
    turret_return_timeout = 300,

	guns = { "120mm-Twin-Cannons", "25mm-Twin-AutoCannons", "HT-Rocket-Pad-2" },
	
    equipment_grid = "HeavyTank-tank-medium-grid",
	
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 60
      },
	  {
        type = "poison",
        decrease = 15,
        percent = 100
      },
      {
        type = "physical",
        decrease = 10,
        percent = 60
      },
      {
        type = "impact",
        decrease = 30,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 60
      },
      {
        type = "acid",
        decrease = 15,
        percent = 50
      }
    },

    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200,
        },
		shift = {-0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200
        },
		--shift = {-0.6, -14},
        shift = {0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },

	animation =
	{
		layers = {
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 2,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 2,
          		max_advance = 1,
				scale = 0.65,
          		stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Medium/01.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/02.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/03.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/04.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/05.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/06.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/07.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/08.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/09.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/10.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/11.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/12.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/13.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/14.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/15.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/16.png",
						width_in_frames = 2,
						height_in_frames = 4,
					}
				},
			 }
		}
	},

	turret_animation =
	{
		layers =
		{
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 1,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 8,
				scale = 0.65,
				stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Medium/t01.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t02.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t03.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t04.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t05.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t06.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t07.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t08.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t09.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t10.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t11.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t12.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t13.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t14.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t15.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Medium/t16.png",
						width_in_frames = 1,
						height_in_frames = 4,
					}
				}
			}
		}
	},

    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.8
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.8
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.8
      },
      match_speed_to_activity = true,
    },
})
data:extend({heavyTank})

----------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------SCRAP TANK-----------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
local heavyTank = table.deepcopy(data.raw.car["tank"])

patchTable(heavyTank, {
	name = "HeavyTank_scrap_tank",
	minable = {mining_time = 10, result = "HeavyTank_scrap_tank"},
	collision_box = {{-1.5, -3.2}, {1.5, 3.2}},
    selection_box = {{-1.5, -3.2}, {1.5, 3.2}},

	weight = 25000,
    inventory_size = 40,
    max_health = 5000,
    effectivity = 0.5,
	energy_per_hit_point = 0.5,
    braking_power = "2MW",
	immune_to_tree_impacts = true,
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.5,
      fuel_inventory_size = 3,
    },
    consumption = "1000kW",
    terrain_friction_modifier = 0.3, --0.2
    friction = 0.005, --0.002
    rotation_speed = 0.0020,
    turret_rotation_speed = 0.20 / 60,
    turret_return_timeout = 300,

	guns = {"prototype-120mm-Twin-Cannons", "25mm-crude-Twin-AutoCannons", "HT-Rocket-Pad-1" },
	
    equipment_grid = "HeavyTank-tank-scrap-grid",
	
    resistances =
    {
      {
        type = "fire",
        decrease = 10,
        percent = 40
      },
	  {
        type = "poison",
        decrease = 15,
        percent = 80
      },
      {
        type = "physical",
        decrease = 5,
        percent = 40
      },
      {
        type = "impact",
        decrease = 20,
        percent = 40
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 40
      },
      {
        type = "acid",
        decrease = 8,
        percent = 35
      }
    },

    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200,
        },
		shift = {-0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200
        },
		--shift = {-0.6, -14},
        shift = {0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },

	animation =
	{
		layers = {
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 2,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 2,
          		max_advance = 1,
				scale = 0.65,
          		stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Scrap/01.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/02.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/03.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/04.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/05.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/06.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/07.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/08.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/09.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/10.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/11.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/12.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/13.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/14.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/15.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/16.png",
						width_in_frames = 2,
						height_in_frames = 4,
					}
				},
			 }
		}
	},

	turret_animation =
	{
		layers =
		{
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 1,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 8,
				scale = 0.65,
				stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/Scrap/t01.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t02.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t03.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t04.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t05.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t06.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t07.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t08.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t09.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t10.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t11.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t12.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t13.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t14.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t15.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/Scrap/t16.png",
						width_in_frames = 1,
						height_in_frames = 4,
					}
				}
			}
		}
	},
	
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/train-breaks.ogg", 
        volume = 0.8
      },
    },
    working_sound =
    {
      sound =
      {
       -- filename = "__base__/sound/fight/tank-engine.ogg",
       -- volume = 0.8
		filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 1
      },
      activate_sound =
      {
        -- filename = "__base__/sound/fight/tank-engine-start.ogg",
		filename = "__base__/sound/oil-refinery.ogg",
        volume = 1.5
      },
      deactivate_sound =
      {
        -- filename = "__base__/sound/fight/tank-engine-stop.ogg", 
		filename = "__base__/sound/train-breaks.ogg",
        volume = 0.8
      },
      match_speed_to_activity = true,
    },
})
data:extend({heavyTank})

