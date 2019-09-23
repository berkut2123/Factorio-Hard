-- green = to tile
-- yellow = after path section
-- blue = follow

local base = {
        ['indicator-final'] = {
          type = "simple-entity",
          name = "indicator-final",
          collision_mask = {"not-colliding-with-itself"},
          collision_box = {{-0,-0},{0,0}},
          flags = {"not-on-map", "placeable-neutral","placeable-off-grid"},
          icon = "__base__/graphics/icons/steel-chest.png",
          icon_size = 32,
          selectable_in_game = false,
          order = "s-e-w-f",
          picture = {
            blend_mode = "additive-soft",
            filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/final.png",
            height = 96,
            priority = "extra-high",
            width = 128,
            scale = 0.5,
          },
          render_layer = "lower-object",
          selection_box = {{-0,-0},{0,0}},
      },

      ['indicator-waypoint'] = {
        type = "simple-entity",
        name = "indicator-waypoint",
        collision_mask = {"not-colliding-with-itself"},
        collision_box = {{-0,-0},{0,0}},
        flags = {"not-on-map", "placeable-neutral","placeable-off-grid"},
        icon = "__base__/graphics/icons/steel-chest.png",
        icon_size = 32,
        selectable_in_game = false,
        order = "s-e-w-f",
        picture = {
          blend_mode = "additive-soft",
          filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/dot.png",
          height = 24,
          priority = "extra-high",
          width = 32,
          scale = 0.25,
        },
        render_layer = "lower-object",
        selection_box = {{-0,-0},{0,0}},
      },

      ['indicator-beam'] = {
        name = "indicator-beam",
        type = "beam",
        collision_mask = {"not-colliding-with-itself"},
        action = {
          type = "direct"
        },
        body = {
          {
            blend_mode = "additive-soft",
            filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/beam-body.png",
            frame_count = 16,
            height = 39,
            line_length = 16,
            width = 45,
          },
        },
        damage_interval = 20,
        ending = {
          axially_symmetrical = false,
          direction_count = 1,
          filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/tileable-beam-END.png",
          frame_count = 16,
          height = 54,
          hr_version = {
            axially_symmetrical = false,
            direction_count = 1,
            filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/hr-tileable-beam-END.png",
            frame_count = 16,
            height = 93,
            line_length = 4,
            scale = 0.5,
            shift = {
              -0.078125,
              -0.046875
            },
            width = 91,
          },
          line_length = 4,
          shift = {
            -0.046875,
            0
          },
          width = 49,
        },
        flags = { "not-on-map", "placeable-off-grid" },
        head = {
          animation_speed = 0.5,
          blend_mode = "additive-soft",
          filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/beam-head.png",
          frame_count = 16,
          height = 39,
          line_length = 16,
          width = 45,
        },
        start = {
          axially_symmetrical = false,
          direction_count = 1,
          filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/tileable-beam-START.png",
          frame_count = 16,
          height = 40,
          hr_version = {
            axially_symmetrical = false,
            direction_count = 1,
            filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/hr-tileable-beam-START.png",
            frame_count = 16,
            height = 66,
            line_length = 4,
            scale = 0.5,
            shift = { 0.53125, 0 },
            width = 94,
          },
          line_length = 4,
          shift = { -0.03125, 0 },
          width = 52,
        },
        tail = {
          blend_mode = "additive-soft",
          filename = "__aai-programmable-vehicles__/graphics/entity/indicator-white/beam-tail.png",
          frame_count = 16,
          height = 39,
          line_length = 16,
          width = 45,
        },
        width = 0.5,
      },
}

local colors = {
  {name = "white",  tint = nil},
  {name = "grey",   tint = { r = 0.3, g = 0.3, b = 0.3,  a = 1}},
  {name = "red",    tint = { r = 1, g = 0, b = 0,  a = 1}},
  {name = "yellow", tint = { r = 1, g = 1, b = 0,  a = 1}},
  {name = "green",  tint = { r = 0, g = 1, b = 0,  a = 1}},
  {name = "cyan",   tint = { r = 0, g = 1, b = 1,  a = 1}},
  {name = "blue",   tint = { r = 0, g = 0, b = 1,  a = 1}},
  {name = "purple", tint = { r = 1, g = 0, b = 1,  a = 1}},
}


for _, c in pairs(colors) do
  local final = table.deepcopy(base['indicator-final'])
  final.name = final.name .. "-" .. c.name
  final.picture.tint = c.tint

  local waypoint = table.deepcopy(base['indicator-waypoint'])
  waypoint.name = waypoint.name .. "-" .. c.name
  waypoint.picture.tint = c.tint

  local beam = table.deepcopy(base['indicator-beam'])
  beam.name = beam.name .. "-" .. c.name
  beam.body[1].tint = c.tint
  beam.head.tint = c.tint
  beam.tail.tint = c.tint
  beam.ending.tint = c.tint
  beam.ending.hr_version.tint = c.tint
  beam.start.tint = c.tint
  beam.start.hr_version.tint = c.tint

  data:extend{final, waypoint, beam}
end
