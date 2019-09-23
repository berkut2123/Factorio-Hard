data:extend({{
    type = "car",
    name = "vehicle-flame-tumbler",
	order = "z[programmable]", -- programmable in programmable-vehicles
    icon = "__aai-vehicles-flame-tumbler__/graphics/icons/flame-tumbler.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "vehicle-flame-tumbler"},
    max_health = 600,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 1,
    immune_to_tree_impacts = true,
    crash_trigger = crash_trigger(),
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
	tank_driving = true,
    consumption = "710kW",
    braking_power = "2400kW",
    friction = 0.002,
	terrain_friction_modifier = 1,
    rotation_speed = 0.014,
    weight = 1300,
    resistances =
    {
      {
        type = "fire",
        percent = 99,
        decrease = 30
      },
      {
        type = "impact",
        percent = 90,
        decrease = 25
      },
      {
        type = "acid",
        percent = 35,
        decrease = 5
      },
    },
    effectivity = 1.3,
    burner =
    {
      effectivity = 0.6,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.25, 0.25},
          frequency = 200,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
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
          width = 1760/16,
          height = 356/4,
          frame_count = 1,
          direction_count = 64,
          shift = {0, -0.1875},
          animation_speed = 8,
          max_advance = 0.2,
          line_length = 16,
          stripes =
          {
            {
             filename = "__aai-vehicles-flame-tumbler__/graphics/entity/flame-tumbler/flame-tumbler.png",
             width_in_frames = 16,
             height_in_frames = 4,
            }
          }
        },
        {
          width = 1760/16,
          height = 356/4,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          animation_speed = 8,
          max_advance = 0.2,
          line_length = 16,
          shift = {0, -0.1875},
          stripes = {
            {
              filename = "__aai-vehicles-flame-tumbler__/graphics/entity/flame-tumbler/flame-tumbler-mask.png",
             width_in_frames = 16,
             height_in_frames = 4,
			}
		  }
        },
		{
          width = 1856/16,
          height = 312/4,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.1, 0.0},
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__aai-vehicles-flame-tumbler__/graphics/entity/flame-tumbler/flame-tumbler-shadow.png",
             width_in_frames = 16,
             height_in_frames = 4,
            }
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          width = 1920/64,
          height = 26,
          frame_count = 1,
          direction_count = 64,
          shift = {0, -0.7},
          animation_speed = 8,
          max_advance = 0.2,
          line_length = 16,
          stripes =
          {
            {
             filename = "__aai-vehicles-flame-tumbler__/graphics/entity/flame-tumbler/flame-tumbler-turret.png",
             width_in_frames = 64,
             height_in_frames = 1,
            }
          }
        },
        {
          width = 1920/64,
          height = 26,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          animation_speed = 8,
          max_advance = 0.2,
          line_length = 16,
          shift = {0, -0.7},
          stripes = {
            {
             filename = "__aai-vehicles-flame-tumbler__/graphics/entity/flame-tumbler/flame-tumbler-turret-mask.png",
             width_in_frames = 64,
             height_in_frames = 1,
			}
		  }
        },
      }
    },
    turret_rotation_speed = 1 / 60,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    guns = { "flame-tumbler-flamethrower" },
    inventory_size = 20
}})
