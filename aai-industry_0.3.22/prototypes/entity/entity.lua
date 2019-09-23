local medium_electric_pole = data.raw["electric-pole"]["medium-electric-pole"]
local fast_replace = medium_electric_pole.fast_replaceable_group or "medium-electric-pole"
medium_electric_pole.fast_replaceable_group = fast_replace

local small_electric_pole = data.raw["electric-pole"]["small-electric-pole"]
small_electric_pole.fast_replaceable_group = fast_replace
local small_iron_electric_pole = table.deepcopy(small_electric_pole)
small_iron_electric_pole.name = "small-iron-electric-pole"
small_iron_electric_pole.minable.result = "small-iron-electric-pole"
small_iron_electric_pole.max_health = small_iron_electric_pole.max_health * 1.25
small_iron_electric_pole.pictures =
{
        layers = {
          {
            direction_count = 4,
            filename = "__aai-industry__/graphics/entity/small-iron-electric-pole/small-iron-electric-pole.png",
            height = 108,
            hr_version = {
              direction_count = 4,
              filename = "__aai-industry__/graphics/entity/small-iron-electric-pole/hr-small-iron-electric-pole.png",
              height = 220,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.03125,
                -1.34375
              },
              width = 70
            },
            priority = "extra-high",
            shift = {
              0,
              -1.3125
            },
            width = 38
          },
          {
            direction_count = 4,
            draw_as_shadow = true,
            filename = "__aai-industry__/graphics/entity/small-iron-electric-pole/small-iron-electric-pole-shadow.png",
            height = 28,
            hr_version = {
              direction_count = 4,
              draw_as_shadow = true,
              filename = "__aai-industry__/graphics/entity/small-iron-electric-pole/hr-small-iron-electric-pole-shadow.png",
              height = 52,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                1.59375,
                0.09375
              },
              width = 256
            },
            priority = "extra-high",
            shift = {
              1.5625,
              0.0625
            },
            width = 130
          }
        }
}
data:extend({small_iron_electric_pole})
