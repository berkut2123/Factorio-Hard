data:extend({{
	type = "car",
	name = "vehicle-hauler",
	order = "z[programmable]", -- programmable in programmable-vehicles
	icon = "__aai-vehicles-hauler__/graphics/icons/hauler.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
	minable = {mining_time = 1, result = "vehicle-hauler"},
	max_health = 600,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	energy_per_hit_point = 3,
	resistances = {
		{
			type = "fire",
			decrease = 15,
			percent = 50
		},
		{
			type = "physical",
			percent = 25
		},
		{
			type = "impact",
			decrease = 50,
			percent = 60
		},
		{
			type = "acid",
			percent = 25
		},
	},
	selection_box = {{-2, -2.4}, {2, 2.4}},
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	burner =
	{
		effectivity = 3,
		fuel_inventory_size = 2,
		smoke = {
			{
			  name = "tank-smoke",
			  deviation = {0.25, 0.25},
			  frequency = 50,
			  position = {0, 1.5},
			  starting_frame = 0,
			  starting_frame_deviation = 60
			}
		}
	},
	effectivity = 3,
	weight = 2000,
    consumption = "40kW",
	braking_power = "160kW",
	terrain_friction_modifier = 1,
    friction = 0.003,
    rotation_speed = 0.005,
	turret_rotation_speed = 0.01,
	turret_return_timeout = 300,
	tank_driving = true,
	light =
	{
	  {
		type = "oriented",
		minimum_darkness = 0.3,
		picture =
		{
		  filename = "__core__/graphics/light-cone.png",
		  priority = "medium",
		  scale = 2,
		  width = 200,
		  height = 200
		},
		shift = {-0.6, -14},
		size = 2,
		intensity = 0.6
	  },
	  {
		type = "oriented",
		minimum_darkness = 0.3,
		picture =
		{
		  filename = "__core__/graphics/light-cone.png",
		  priority = "medium",
		  scale = 2,
		  width = 200,
		  height = 200
		},
		shift = {0.6, -14},
		size = 2,
		intensity = 0.6
	  }
	},
	animation =
	{
	  layers =
	  {
			{
			  width = 1384/8,
			  height = 1248/8,
			  frame_count = 1,
			  direction_count = 64,
			  shift = {0.140625, -0.28125},
			  animation_speed = 8,
			  max_advance = 1,
			  stripes = { { filename = "__aai-vehicles-hauler__/graphics/entity/hauler/hauler.png", width_in_frames = 8, height_in_frames = 8, }, },
				hr_version = {
	            priority = "low",
	            width = 2768/8,
	            height = 2496/8,
	            frame_count = 1,
	            scale = 0.5,
	            direction_count = 64,
	            shift = {0.140625, -0.28125},
	            animation_speed = 8,
	            max_advance = 1,
	            stripes = { { filename = "__aai-vehicles-hauler__/graphics/entity/hauler/hr-hauler.png", width_in_frames = 8, height_in_frames = 8, }, }
				}
			},
			{
			  width = 1384/8,
			  height = 1248/8,
			  frame_count = 1,
			  direction_count = 64,
			  shift = {0.140625, -0.28125},
			  animation_speed = 8,
			  max_advance = 1,
	      apply_runtime_tint = true,
			  stripes = util.multiplystripes(2, {	{ filename = "__aai-vehicles-hauler__/graphics/entity/hauler/hauler-mask.png", width_in_frames = 8, height_in_frames = 8, }, }),
				hr_version = {
	          priority = "low",
	          width = 2768/8,
	          height = 2496/8,
	          frame_count = 1,
	          scale = 0.5,
	          direction_count = 64,
	          shift = {0.140625, -0.28125},
	          animation_speed = 8,
	          max_advance = 1,
	          apply_runtime_tint = true,
	          stripes = util.multiplystripes(2, { { filename = "__aai-vehicles-hauler__/graphics/entity/hauler/hr-hauler-mask.png", width_in_frames = 8, height_in_frames = 8, }, }),
				}
			},
			{
	          width = 1592/8,
	          height = 1016/8,
	          frame_count = 1,
	          draw_as_shadow = true,
	          direction_count = 64,
	          shift = {0.98, 0.6},
	          animation_speed = 8,
			  		max_advance = 1,
	          stripes = { { filename = "__aai-vehicles-hauler__/graphics/entity/hauler/hauler-shadow.png", width_in_frames = 8, height_in_frames = 8, } },
						hr_version =   {
		          priority = "low",
		          width = 3184/8,
		          height = 2032/8,
		          frame_count = 1,
		          scale = 0.5,
		          draw_as_shadow = true,
		          direction_count = 64,
		          shift = {0.98, 0.6},
		          animation_speed = 8,
		          max_advance = 1,
		          stripes = { { filename = "__aai-vehicles-hauler__/graphics/entity/hauler/hr-hauler-shadow.png", width_in_frames = 8, height_in_frames = 8, } }
						}
		  }
		}
	},
	stop_trigger_speed = 0.2,
	sound_no_fuel = { { filename = "__base__/sound/fight/tank-no-fuel-1.ogg", volume = 0.6 }, },
	stop_trigger = { { type = "play-sound", sound = { { filename = "__base__/sound/car-breaks.ogg", volume = 0.6  }, } }, },
	sound_minimum_speed = 0.15;
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
	  sound = { filename = "__base__/sound/fight/tank-engine.ogg", volume = 0.6 },
	  activate_sound = { filename = "__base__/sound/fight/tank-engine-start.ogg", volume = 0.6 },
	  deactivate_sound = { filename = "__base__/sound/fight/tank-engine-stop.ogg", volume = 0.6 },
	  match_speed_to_activity = true,
	},
	open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
	close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
	inventory_size = 120,
}})
