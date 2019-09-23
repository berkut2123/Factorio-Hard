data:extend({
  {
    type = "projectile",
    name = "electroshock-pulse-projectile",
    acceleration = 0.01,
    action = {
      action_delivery = {
        target_effects = {
          {
            entity_name = "electroshock-pulse-explosion",
            type = "create-entity"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 9,
              entity_flags = {"breaths-air"},
              action_delivery =
              {
                type = "instant",
                target_effects = {
                  {
                    type = "create-sticker",
                    sticker = "electroshock-pulse-sticker",
                  },
                  {
                    type = "damage",
                    damage = { amount = 1, type = "electric"}
                  }
                }
              }
            }
          }
        },
        type = "instant"
      },
      type = "direct"
    },
    animation = {
      scale = 0.25,
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule.png",
      frame_count = 1,
      height = 32,
      priority = "high",
      width = 32
    },
    flags = {
      "not-on-map"
    },
    light = {
      intensity = 1,
      size = 4,
      color = {
        a = 1,
        b = 1,
        g = 0.3,
        r = 0.1
      },
    },
    shadow = {
      scale = 0.25,
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule-shadow.png",
      frame_count = 1,
      height = 32,
      priority = "high",
      width = 32
    },
    smoke = nil,
  },
  {
    type = "sticker",
    name = "electroshock-pulse-sticker",
      animation = {
        scale = 1,
        filename = "__aai-vehicles-warden__/graphics/entity/electroshock-pulse/electroshock-pulse-sticker.png",
        animation_speed = 3.14,
        frame_count = 16*6,
        line_length = 16,
        width = 800/16,
        height = 240/6,
        priority = "extra-high",
      },
      duration_in_ticks = 75,
      flags = {},
      target_movement_modifier = 0.25,
  },
  {
    type = "explosion",
    name = "electroshock-pulse-explosion",
      animations = {
        {
          scale = 1,
          axially_symmetrical = false,
          direction_count = 1,
          filename = "__aai-vehicles-warden__/graphics/entity/electroshock-pulse/electroshock-pulse-explosion.png",
          animation_speed = 1,
          frame_count = 7*5,
          line_length = 5,
          width = 1675/5,
          height = 2044/7,
          priority = "extra-high",
        }
      },
      --[[created_effect = {
        action_delivery = {
          target_effects = {
            {
              entity_name = "explosion-remnants-particle",
              initial_height = 0.5,
              initial_vertical_speed = 0.08,
              initial_vertical_speed_deviation = 0.15,
              offset_deviation = {
                {
                  -0.2,
                  -0.2
                },
                {
                  0.2,
                  0.2
                }
              },
              repeat_count = 20,
              speed_from_center = 0.08,
              speed_from_center_deviation = 0.15,
              type = "create-particle"
            }
          },
          type = "instant"
        },
        type = "direct"
      },]]--
      flags = {
        "not-on-map"
      },
      light = {
        intensity = 1,
        size = 25,
        color = {
          a = 1,
          b = 1,
          g = 0.3,
          r = 0.1
        },
      },
      sound = {
        aggregation = {
          max_count = 1,
          remove = true
        },
        variations = {
          {
            filename = "__aai-vehicles-warden__/sound/electroshock-pulse-explosion.ogg",
            volume = 1
          }
        }
      },
    },
})
