data:extend({
  {
    type = "gun",
    name = "cannon-wagon-cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[artillery]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell-magazine",
      cooldown = 200,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.75,
      projectile_center = {-0.15625, -0.07812},
      range = 40,
      min_range = 15,
      -- projectile_creation_parameters = require("artillery-cannon-muzzle-flash-shifting"),
      damage_modifier = 1,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      sound =
      {
        {
            filename = "__vtk-cannon-turret__/sounds/CANNHVY5.ogg",
            volume = 1.5
        }
      },
    },
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "cannon-wagon",
    icon = "__base__/graphics/icons/artillery-wagon.png",
    icon_size = 32,
    subgroup = "transport",
    order = "a[train-system]-i[artillery-wagon]",
    place_result = "cannon-wagon",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "cannon-wagon",
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"engine-unit", 64},
      {"iron-gear-wheel", 10},
      {"steel-plate", 40},
      {"pipe", 16},
      {"advanced-circuit", 20}
    },
    result = "cannon-wagon"
  },
  {
    type = "artillery-wagon",
    name = "cannon-wagon",
    icon = "__base__/graphics/icons/artillery-wagon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 1,
    ammo_stack_limit = 100,
    minable = {mining_time = 1, result = "cannon-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 600,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    vertical_selection_shift = -0.796875,
    weight = 4000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.015,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 2,
    gun = "cannon-wagon-cannon",
    turret_rotation_speed = 0.001,
    turn_after_shooting_cooldown = 60,
    cannon_parking_frame_count = 8,
    cannon_parking_speed = 0.25,
    manual_range_modifier = 2.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 50
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 238,
          height = 206,
          direction_count = 256,
          allow_low_quality_rotation = true,
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(0, -27),
          slice = 4,
          filenames =
          {
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-1.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-2.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-3.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-4.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-5.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-6.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-7.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-8.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-9.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-10.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-11.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-12.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-13.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-14.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-15.png",
            "__base__/graphics/entity/artillery-wagon/artillery-wagon-base-16.png",
          },
          hr_version =
          {
            priority = "very-low",
            width = 476,
            height = 410,
            direction_count = 256,
            allow_low_quality_rotation = true,
            line_length = 4,
            lines_per_file = 4,
            shift = util.by_pixel(0.5, -27.5),
            scale = 0.5,
            slice = 4,
            filenames =
            {
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-1.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-2.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-3.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-4.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-5.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-6.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-7.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-8.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-9.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-10.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-11.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-12.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-13.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-14.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-15.png",
              "__base__/graphics/entity/artillery-wagon/hr-artillery-wagon-base-16.png",
            }
          }
        },
      }
    },
    cannon_base_pictures =
    {
      layers =
      {
        {
            filename = "__vtk-cannon-turret__/graphics/entity/cannon-turret-sheet.png",
            priority = "medium",
            scale = 0.75,
            width = 128,
            height = 128,
            direction_count = 8 and 8 or 64,
            frame_count = 1,
            line_length = 1 and 1 or 8,
            axially_symmetrical = false,
            run_mode = "backward" and "backward" or "forward",
            shift = { 0.35, -0.5 },
        },
      }
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    guns = { "tank-cannon", "tank-machine-gun", "tank-flamethrower" },
  },
})