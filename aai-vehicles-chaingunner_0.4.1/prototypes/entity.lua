data:extend({{
	type = "car",
	name = "vehicle-chaingunner",
	order = "z[programmable]", -- programmable in programmable-vehicles
	icon = "__aai-vehicles-chaingunner__/graphics/icons/chaingunner.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
	minable = {mining_time = 1, result = "vehicle-chaingunner"},
	max_health = 400,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	energy_per_hit_point = 0.5,
	resistances = {
		{
			type = "fire",
			percent = 50
		},
		{
			type = "physical",
			decrease = 5,
			percent = 25
		},
		{
			type = "impact",
			decrease = 40,
			percent = 40
		},
    {
      percent = 25,
      type = "acid"
    }
	},
	selection_box = {{-1, -1.2}, {1, 1.2}},
	collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
	burner =
	{
		effectivity = 1,
		fuel_inventory_size = 1,
		smoke = {
			{
			  name = "tank-smoke",
			  deviation = {0.25, 0.25},
			  frequency = 50,
			  position = {0, 0.5},
			  starting_frame = 0,
			  starting_frame_deviation = 60
			}
		}
	},
	effectivity = 1.5,
	weight = 4000,
	consumption = "100kW",
	braking_power = "200kW",
	terrain_friction_modifier = 0.25,
	friction = 0.01,
	rotation_speed = 0.005,
	turret_rotation_speed = 0.01,
	turret_return_timeout = 200,
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
		  width = 1728/16,
		  height = 688/8,
		  frame_count = 2,
		  direction_count = 64,
		  shift = {0, 0},
		  animation_speed = 8,
		  max_advance = 1,
		  stripes =
		  {
			{ filename = "__aai-vehicles-chaingunner__/graphics/entity/chaingunner/chaingunner_base-1.png", width_in_frames = 16, height_in_frames = 8, },
		  }
		},
		{
		  width = 1728/16,
		  height = 688/8,
		  frame_count = 2,
		  apply_runtime_tint = true,
		  direction_count = 64,
		  shift = {0, 0},
		  max_advance = 1,
		  line_length = 16,
		  stripes = util.multiplystripes(2, {
			{ filename = "__aai-vehicles-chaingunner__/graphics/entity/chaingunner/chaingunner_base_mask.png", width_in_frames = 16, height_in_frames = 8, },
		  })
		},
		{
		  width = 1856/16,
		  height = 616/8,
		  frame_count = 2,
		  draw_as_shadow = true,
		  direction_count = 64,
		  shift = {0.1, 0.2},
		  max_advance = 1,
		  stripes = util.multiplystripes(2, {
			{ filename = "__aai-vehicles-chaingunner__/graphics/entity/chaingunner/chaingunner_base_shadow.png", width_in_frames = 16, height_in_frames = 8 },
		  })
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
	inventory_size = 10,
    turret_animation =
    {
      layers =
      {
        {
          filename = "__aai-vehicles-chaingunner__/graphics/entity/chaingunner/chaingunner_turret-1.png",
          line_length = 16,
		  width = 1152/16,
		  height = 456/8,
          frame_count = 2,
          direction_count = 64,
          shift = {0, -0.79687},
          animation_speed = 8,
        },
        {
          filename = "__aai-vehicles-chaingunner__/graphics/entity/chaingunner/chaingunner_turret_mask-1.png",
          line_length = 16,
		  width = 1152/16,
		  height = 456/8,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {0, -0.79687},
        },
        {
          filename = "__aai-vehicles-chaingunner__/graphics/entity/chaingunner/chaingunner_turret_shadow-1.png",
          line_length = 16,
		  width = 1232/16,
		  height = 432/8,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.30312, 0.340625},
        }
      }
    },
	guns = { "vehicle-chaingunner-gun" },
}})
