data:extend({
{
    type = "electric-pole",
    name = "large-electric-pole",
    icon = "__LargeElectricPole__/graphics/icons/large-electric-pole.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-electric-pole"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    --collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selection_box = {{-3, -3}, {3, 3}},
    drawing_box = {{-1, -3}, {1, 0.5}},
    maximum_wire_distance = 64,
    supply_area_distance = 0,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      filename = "__LargeElectricPole__/graphics/spritesheet/large-electric-pole.png",
      priority = "high",
      width = 500,
      height = 500,
      direction_count = 4,
      shift = {0, 0}
      --shift = {1.6, -1.1}
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {5.8125, 3.375},
          green = {5.8125, 3.375},
          red = {5.8125, 3.375}
        },
        wire =
        {
          copper = {-0.65625, -1.25},
          green = {3.375, -1.25},
          red = {-4.6875, -1.25}
        }
      },
      {
        shadow =
        {
          copper = {2, 3.3125},
          green = {4.78125, 4.65625},
          red = {-0.75, 2.03125}
        },
        wire =
        {
          copper = {-0.6875, -1.1875},
          green = {2.09375, 0.125},
          red = {-3.5, -2.53125}
        }
      },
      {
        shadow =
        {
          copper = {2.03125, 3.34375},
          green = {1.9375, 5.1875},
          red = {2.15625, 1.5}
        },
        wire =
        {
          copper = {-0.625, -2.8125},
          green = {-0.78125, 0.53125},
          red = {-0.5625, -4.1875}
        }
      },
      {
        shadow =
        {
          copper = {2, 3.375},
          green = {-0.9375, 4.5625},
          red = {4.96875, 2.09375}
        },
        wire =
        {
          copper = {-0.6875, -1.1875},
          green = {-3.65625, 0.0625},
          red = {2.28125, -2.46875}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    }
  }
})
