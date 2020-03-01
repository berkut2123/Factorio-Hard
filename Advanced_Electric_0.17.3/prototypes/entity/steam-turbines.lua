turbine_horizontal_animation_secondary = 
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
      tint = secondary_entity_tint,
      width = 160,
      height = 123,
      frame_count = 8,
      line_length = 4,
      shift = util.by_pixel(0, -2.5),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
        tint = secondary_entity_tint,
        width = 320,
        height = 245,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(0, -2.75),
        scale = 0.5
      },
    },
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
      width = 217,
      height = 74,
      frame_count = 8,
      line_length = 4,
      draw_as_shadow = true,
      shift = util.by_pixel(28.75, 18),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
        width = 435,
        height = 150,
        frame_count = 8,
        line_length = 4,
        draw_as_shadow = true,
        shift = util.by_pixel(28.5, 18),
        scale = 0.5
      },
    },
  },
}

turbine_vertical_animation_secondary = 
{
 layers =
 {
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
      tint = secondary_entity_tint,
      width = 108,
      height = 173,
      frame_count = 8,
      line_length = 4,
      shift = util.by_pixel(5, 6.5),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
        tint = secondary_entity_tint,
        width = 217,
        height = 347,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(4.75, 6.75),
        scale = 0.5
      },
    },
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
      width = 151,
      height = 131,
      frame_count = 8,
      line_length = 4,
      draw_as_shadow = true,
      shift = util.by_pixel(39.5, 24.5),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
        width = 302,
        height = 260,
        frame_count = 8,
        line_length = 4,
        draw_as_shadow = true,
        shift = util.by_pixel(39.5, 24.5),
        scale = 0.5
      },
    },
  },
}

turbine_horizontal_animation_primary = 
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
      tint = primary_entity_tint,
      width = 160,
      height = 123,
      frame_count = 8,
      line_length = 4,
      shift = util.by_pixel(0, -2.5),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
        tint = primary_entity_tint,
        width = 320,
        height = 245,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(0, -2.75),
        scale = 0.5
      },
    },
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
      width = 217,
      height = 74,
      frame_count = 8,
      line_length = 4,
      draw_as_shadow = true,
      shift = util.by_pixel(28.75, 18),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
        width = 435,
        height = 150,
        frame_count = 8,
        line_length = 4,
        draw_as_shadow = true,
        shift = util.by_pixel(28.5, 18),
        scale = 0.5
      },
    },
  },
}

turbine_vertical_animation_primary = 
{
 layers =
 {
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
      tint = primary_entity_tint,
      width = 108,
      height = 173,
      frame_count = 8,
      line_length = 4,
      shift = util.by_pixel(5, 6.5),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
        tint = primary_entity_tint,
        width = 217,
        height = 347,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(4.75, 6.75),
        scale = 0.5
      },
    },
    {
      filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
      width = 151,
      height = 131,
      frame_count = 8,
      line_length = 4,
      draw_as_shadow = true,
      shift = util.by_pixel(39.5, 24.5),
      hr_version = {
        filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
        width = 302,
        height = 260,
        frame_count = 8,
        line_length = 4,
        draw_as_shadow = true,
        shift = util.by_pixel(39.5, 24.5),
        scale = 0.5
      },
    },
  },
}

data.raw["generator"]["steam-turbine"].icon = nil
data.raw["generator"]["steam-turbine"].icons = secondary_steam_turbine_icons
data.raw["generator"]["steam-turbine"].horizontal_animation = turbine_horizontal_animation_secondary
data.raw["generator"]["steam-turbine"].vertical_animation = turbine_vertical_animation_secondary

--Secondary Load Turbine
local steam_turbine_mk2 = util.table.deepcopy(data.raw["generator"]["steam-turbine"])
steam_turbine_mk2.name = "advanced-electric-steam-turbine-2"
steam_turbine_mk2.icon = nil
steam_turbine_mk2.icons = secondary_steam_turbine_icons
steam_turbine_mk2.horizontal_animation = turbine_horizontal_animation_secondary
steam_turbine_mk2.vertical_animation = turbine_vertical_animation_secondary
steam_turbine_mk2.fluid_usage_per_tick = 2
steam_turbine_mk2.maximum_temperature = 750
steam_turbine_mk2.max_heath = 750
steam_turbine_mk2.minable.result = "advanced-electric-steam-turbine-2"
data:extend({steam_turbine_mk2})

--Primary Load Turbine
local primary_load_turbine = util.table.deepcopy(data.raw["generator"]["steam-turbine"])
primary_load_turbine.name = "advanced-electric-primary-steam-turbine-1"
primary_load_turbine.energy_source.usage_priority = "primary-output"
primary_load_turbine.minable.result = "advanced-electric-primary-steam-turbine-1"
primary_load_turbine.icon = nil
primary_load_turbine.icons = primary_steam_turbine_icons
primary_load_turbine.horizontal_animation = turbine_horizontal_animation_primary
primary_load_turbine.vertical_animation = turbine_vertical_animation_primary
data:extend({primary_load_turbine})
  
local primary_load_steam_turbine_mk2 = util.table.deepcopy(data.raw["generator"]["steam-turbine"])
primary_load_steam_turbine_mk2.name = "advanced-electric-primary-steam-turbine-2"
primary_load_steam_turbine_mk2.icon = nil
primary_load_steam_turbine_mk2.icons = primary_steam_turbine_icons
primary_load_steam_turbine_mk2.horizontal_animation = turbine_horizontal_animation_primary
primary_load_steam_turbine_mk2.vertical_animation = turbine_vertical_animation_primary
primary_load_steam_turbine_mk2.energy_source.usage_priority = "primary-output"
primary_load_steam_turbine_mk2.fluid_usage_per_tick = 2
primary_load_steam_turbine_mk2.maximum_temperature = 750
primary_load_steam_turbine_mk2.max_heath = 750
primary_load_steam_turbine_mk2.minable.result = "advanced-electric-primary-steam-turbine-2"
data:extend({primary_load_steam_turbine_mk2})