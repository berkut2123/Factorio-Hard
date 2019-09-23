data:extend({
  {
      type = "item",
      name = "vehicle-fuel",
      icon = "__aai-industry__/graphics/icons/vehicle-fuel.png",
      icon_size = 32,
      fuel_value = "5MJ", -- rocket is 100MJ, solid is 12
      subgroup = "intermediate-product",
      order = "m[rocket-fuel]-b[vehicle-fuel]",
      stack_size = 200, --(1000MJ) rocket is 10 (2250MJ), solid is 50(1250MK),
      fuel_category = "chemical",
      fuel_acceleration_multiplier = 1.75,
      fuel_top_speed_multiplier = 1.125,
  },
  {
      type = "item",
      name = "fuel-processor",
      icon = "__aai-industry__/graphics/icons/fuel-processor.png",
      icon_size = 32,
      subgroup = "smelting-machine",
      order = "z",
      place_result = "fuel-processor",
      stack_size = 50,
  },
  {
      type = "recipe",
      name = "fuel-processor",
      enabled = false,
      energy_required = 10,
      ingredients =
      {
          {"iron-plate", 5},
          {"stone-brick", 10},
          {"electric-motor", 1},
      },
      result = "fuel-processor"
  },
  {
        type = "furnace",
        name = "fuel-processor",
        icon = "__aai-industry__/graphics/icons/fuel-processor.png",
        icon_size = 32,
        allowed_effects = {
          "consumption",
          "speed",
          "productivity",
          "pollution"
        },
        animation = {
          filename = "__aai-industry__/graphics/entity/fuel-processor/fuel-processor.png",
          frame_count = 1,
          width = 128,
          height = 108,
          priority = "high",
          shift = util.by_pixel(16, -4),
          hr_version = {
              filename = "__aai-industry__/graphics/entity/fuel-processor/hr-fuel-processor.png",
              frame_count = 1,
              width = 256,
              height = 216,
              priority = "high",
              scale = 0.5,
              shift = util.by_pixel(16, -4),
          }
        },
        working_visualisations =
        {
          {
            animation =
            {
              filename = "__aai-industry__/graphics/entity/fuel-processor/fuel-processor-animation.png",
              priority = "high",
              width = 1328/8/2,
              height = 1008/8/2,
              line_length = 8,
              frame_count = 64,
              animation_speed = 1,
              shift = util.by_pixel(16 - 15, -4 + 11),
              hr_version = {
                filename = "__aai-industry__/graphics/entity/fuel-processor/hr-fuel-processor-animation.png",
                priority = "high",
                width = 1328/8,
                height = 1008/8,
                line_length = 8,
                frame_count = 64,
                animation_speed = 1,
                shift = util.by_pixel(16 - 15, -4 + 11),
                scale = 0.5
              }
            }
          },
        },
        collision_box = { { -1.1, -1.1, }, { 1.1, 1.1 } },
        corpse = "big-remnants",
        crafting_categories = {
          "fuel-processing"
        },
        crafting_speed = 1,
        dying_explosion = "medium-explosion",
        energy_source = {
          emissions_per_minute = 4,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "75kW",
        fast_replaceable_group = "fuel-processor",
        flags = {
          "placeable-neutral",
          "placeable-player",
          "player-creation"
        },
        light = {
          intensity = 1,
          size = 10
        },
        max_health = 150,
        minable = {
          mining_time = 1,
          result = "fuel-processor"
        },
        result_inventory_size = 1,
        selection_box = { { -1.45, -1.45 }, { 1.45, 1.45 } },
        source_inventory_size = 1,
        vehicle_impact_sound = {
          filename = "__base__/sound/car-metal-impact.ogg",
          volume = 0.65
        },
        working_sound = {
          sound = {
            filename = "__base__/sound/burner-mining-drill.ogg",
            volume = 0.8
          }
        },
      },

})
