data:extend({
  {
    name = "repair-beam",
    type = "beam",
    action = {
      action_delivery = {
        target_effects = {
          {
            damage = {
              amount = 0,
              type = "repair"
            },
            type = "damage"
          }
        },
        type = "instant"
      },
      type = "direct"
    },
    body = {
      {
        blend_mode = "additive-soft",
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-body-1.png",
        frame_count = 16,
        height = 39,
        line_length = 16,
        width = 45
      },
      {
        blend_mode = "additive-soft",
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-body-2.png",
        frame_count = 16,
        height = 39,
        line_length = 16,
        width = 45
      },
      {
        blend_mode = "additive-soft",
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-body-3.png",
        frame_count = 16,
        height = 39,
        line_length = 16,
        width = 45
      },
      {
        blend_mode = "additive-soft",
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-body-4.png",
        frame_count = 16,
        height = 39,
        line_length = 16,
        width = 45
      },
      {
        blend_mode = "additive-soft",
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-body-5.png",
        frame_count = 16,
        height = 39,
        line_length = 16,
        width = 45
      },
      {
        blend_mode = "additive-soft",
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-body-6.png",
        frame_count = 16,
        height = 39,
        line_length = 16,
        width = 45
      }
    },
    damage_interval = 20,
    ending = {
      axially_symmetrical = false,
      direction_count = 1,
      filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/tileable-beam-END.png",
      frame_count = 16,
      height = 54,
      hr_version = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/hr-tileable-beam-END.png",
        frame_count = 16,
        height = 93,
        line_length = 4,
        scale = 0.5,
        shift = {
          -0.078125,
          -0.046875
        },
        width = 91
      },
      line_length = 4,
      shift = {
        -0.046875,
        0
      },
      width = 49
    },
    flags = { "not-on-map" },
    head = {
      animation_speed = 0.5,
      blend_mode = "additive-soft",
      filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-head.png",
      frame_count = 16,
      height = 39,
      line_length = 16,
      width = 45
    },
    start = {
      axially_symmetrical = false,
      direction_count = 1,
      filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/tileable-beam-START.png",
      frame_count = 16,
      height = 40,
      hr_version = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/hr-tileable-beam-START.png",
        frame_count = 16,
        height = 66,
        line_length = 4,
        scale = 0.5,
        shift = { 0.53125, 0 },
        width = 94
      },
      line_length = 4,
      shift = { -0.03125, 0 },
      width = 52
    },
    tail = {
      blend_mode = "additive-soft",
      filename = "__aai-vehicles-warden__/graphics/entity/repair-beam/beam-tail.png",
      frame_count = 16,
      height = 39,
      line_length = 16,
      width = 45
    },
    width = 0.5,
    working_sound = {
      {
        filename = "__aai-vehicles-warden__/sound/repair.ogg",
        --filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.8
      }
    }
  },
})
