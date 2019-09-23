local scale = 0.4
data:extend({{
  type = "car",
  name = "vehicle-flame-tank",
  icon = "__aai-vehicles-flame-tank__/graphics/icons/flame-tank.png",
  icon_size = 32,
  flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
  minable = {mining_time = 1, result = "vehicle-flame-tank"},
  max_health = 2000,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  energy_per_hit_point = 0.3,
  immune_to_tree_impacts = true,
  resistances =
  {
    {
      type = "fire",
      percent = 100
    },
    {
      type = "physical",
      decrease = 10,
      percent = 75
    },
    {
      type = "impact",
      decrease = 50,
      percent = 90
    },
    {
      type = "explosion",
      decrease = 10,
      percent = 75
    },
    {
      type = "acid",
      decrease = 10,
      percent = 80
    }
  },
  collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
  selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
  effectivity = 0.8,
  braking_power = "500kW",
  burner =
  {
    fuel_category = "chemical",
    effectivity = 0.75,
    fuel_inventory_size = 2,
    smoke =
    {
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
  consumption = "700kW",
  terrain_friction_modifier = 0.2,
  friction = 0.003,
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
        scale = 2,
        width = 200,
        height = 200,
      },
      shift = {-0.6, -14},
      size = 2,
      intensity = 0.6,
      color = {r = 1.0, g = 0.95, b = 0.9}
    },
    {
      type = "oriented",
      minimum_darkness = 0.3,
      picture =
      {
        filename = "__core__/graphics/light-cone.png",
        priority = "extra-high",
        flags = { "light" },
        scale = 2,
        width = 200,
        height = 200
      },
      shift = {0.6, -14},
      size = 2,
      intensity = 0.6,
      color = {r = 1.0, g = 0.95, b = 0.9}
    }
  },
  animation =
  {
    layers =
    {
      {
        width = 2004/6,
        height = 1848/7,
        frame_count = 2,
        direction_count = 64,
        shift = {0, -0.1},
        animation_speed = 8,
        max_advance = 1,
        scale = scale,
        stripes =
        {
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-main-1.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-main-2.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-main-3.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-main-4.png",
           width_in_frames = 2,
           height_in_frames = 1,
          }
        }
      },
      {
        apply_runtime_tint = true,
        width = 2004/6,
        height = 1848/7,
        frame_count = 2,
        direction_count = 64,
        shift = {0, -0.1},
        animation_speed = 8,
        max_advance = 1,
        scale = scale,
        stripes =
        {
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-mask-1.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-mask-2.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-mask-3.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-mask-4.png",
           width_in_frames = 2,
           height_in_frames = 1,
          },
        }
      },
      {
        draw_as_shadow = true,
        width = 2040/6,
        height = 1610/7,
        frame_count = 2,
        direction_count = 64,
        shift = {0.3, 0.1},
        animation_speed = 8,
        max_advance = 1,
        scale = scale * 1.1,
        stripes =
        {
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/hr-flame-tank-shadow-1.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/hr-flame-tank-shadow-2.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/hr-flame-tank-shadow-3.png",
           width_in_frames = 6,
           height_in_frames = 7,
          },
          {
           filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/hr-flame-tank-shadow-4.png",
           width_in_frames = 2,
           height_in_frames = 1,
          },
        }
      }
    }
  },
  turret_animation =
  {
    layers =
    {
      {
        filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-turret.png",
        line_length = 8,
        width = 1120/8,
        height = 912/8,
        frame_count = 1,
        direction_count = 64,
        shift = {0, -0.8},
        animation_speed = 8,
        scale=scale
      },
      {
        filename = "__aai-vehicles-flame-tank__/graphics/entity/flame-tank/flame-tank-turret-mask.png",
        line_length = 8,
        width = 1120/8,
        height = 912/8,
        frame_count = 1,
        apply_runtime_tint = true,
        direction_count = 64,
        shift = {0, -0.8},
        scale=scale
      },
    }
  },
  turret_rotation_speed = 0.6 / 60,
  turret_return_timeout = 300,
  stop_trigger_speed = 0.2,
  sound_no_fuel =
  {
    {
      filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
      volume = 0.6
    },
  },
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
  sound_minimum_speed = 0.15;
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/fight/tank-engine.ogg",
      volume = 0.6
    },
    activate_sound =
    {
      filename = "__base__/sound/fight/tank-engine-start.ogg",
      volume = 0.6
    },
    deactivate_sound =
    {
      filename = "__base__/sound/fight/tank-engine-stop.ogg",
      volume = 0.6
    },
    match_speed_to_activity = true,
  },
  open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
  close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
  rotation_speed = 0.005,
  tank_driving = true,
  weight = 16000,
  inventory_size = 30,
  guns = {"flame-tank-flamethrower" },
}})

for _, gun in pairs(data.raw.car.tank) do
  if gun == "tank-flamethrower" then
    table.remove(data.raw.car.tank.gun, _)
    break
  end
end
