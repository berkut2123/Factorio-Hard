engine_horizontal_animation_secondary = 
{
  layers = 
  {
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
    tint = secondary_entity_tint,
    width = 176,
    height = 128,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(1, -5),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H.png",
        tint = secondary_entity_tint,
        width = 352,
        height = 257,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(1, -4.75),
        scale = 0.5
        },
    },
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
    width = 254,
    height = 80,
    frame_count = 32,
    line_length = 8,
    draw_as_shadow = true,
    shift = util.by_pixel(48, 24),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H-shadow.png",
        width = 508,
        height = 160,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 24),
        scale = 0.5
        },
    },
  },
}

engine_vertical_animation_secondary = 
{
  layers =
  {
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-V.png",
    tint = secondary_entity_tint,
    width = 112,
    height = 195,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(5, -6.5),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V.png",
        tint = secondary_entity_tint,
        width = 225,
        height = 391,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(4.75, -6.25),        
        scale = 0.5
        },
    },
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
    width = 165,
    height = 153,
    frame_count = 32,
    line_length = 8,
    draw_as_shadow = true,
    shift = util.by_pixel(40.5, 9.5),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V-shadow.png",
        width = 330,
        height = 307,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(40.5, 9.25),        
        scale = 0.5
        },
    },
  },
}

engine_vertical_animation_primary = 
{
  layers =
  {
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-V.png",
    tint = primary_entity_tint,
    width = 112,
    height = 195,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(5, -6.5),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V.png",
        tint = primary_entity_tint,
        width = 225,
        height = 391,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(4.75, -6.25),        
        scale = 0.5
        },
    },
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
    width = 165,
    height = 153,
    frame_count = 32,
    line_length = 8,
    draw_as_shadow = true,
    shift = util.by_pixel(40.5, 9.5),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V-shadow.png",
        width = 330,
        height = 307,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(40.5, 9.25),        
        scale = 0.5
        },
    },
  },
}

engine_horizontal_animation_primary = 
{
  layers = 
  {
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
    tint = primary_entity_tint,
    width = 176,
    height = 128,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(1, -5),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H.png",
        tint = primary_entity_tint,
        width = 352,
        height = 257,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(1, -4.75),
        scale = 0.5
        },
    },
    {
    filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
    width = 254,
    height = 80,
    frame_count = 32,
    line_length = 8,
    draw_as_shadow = true,
    shift = util.by_pixel(48, 24),
    hr_version = {
        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H-shadow.png",
        width = 508,
        height = 160,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 24),
        scale = 0.5
        },
    },
  },
}

data.raw["generator"]["steam-engine"].icon = nil
data.raw["generator"]["steam-engine"].icons = secondary_steam_engine_icons 
data.raw["generator"]["steam-engine"].horizontal_animation = engine_horizontal_animation_secondary
data.raw["generator"]["steam-engine"].vertical_animation = engine_vertical_animation_secondary

--Secondary Load Engines
local steam_engine_mk2 = util.table.deepcopy(data.raw["generator"]["steam-engine"])
steam_engine_mk2.name = "advanced-electric-steam-engine-2"
steam_engine_mk2.icon = nil
steam_engine_mk2.icons = secondary_steam_engine_icons
steam_engine_mk2.horizontal_animation = engine_horizontal_animation_secondary
steam_engine_mk2.vertical_animation = engine_vertical_animation_secondary
steam_engine_mk2.fluid_usage_per_tick = 0.625
steam_engine_mk2.maximum_temperature = 215
steam_engine_mk2.max_heath = 500
steam_engine_mk2.minable.result = "advanced-electric-steam-engine-2"
data:extend({steam_engine_mk2})

local steam_engine_mk3 = util.table.deepcopy(data.raw["generator"]["steam-engine"])
steam_engine_mk3.name = "advanced-electric-steam-engine-3"
steam_engine_mk3.icon = nil
steam_engine_mk3.icons = secondary_steam_engine_icons
steam_engine_mk3.horizontal_animation = engine_horizontal_animation_secondary
steam_engine_mk3.vertical_animation = engine_vertical_animation_secondary
steam_engine_mk3.fluid_usage_per_tick = 0.8
steam_engine_mk3.maximum_temperature = 265
steam_engine_mk3.max_heath = 600
steam_engine_mk3.minable.result = "advanced-electric-steam-engine-3"
data:extend({steam_engine_mk3})

local steam_engine_mk4 = util.table.deepcopy(data.raw["generator"]["steam-engine"])
steam_engine_mk4.name = "advanced-electric-steam-engine-4"
steam_engine_mk4.icon = nil
steam_engine_mk4.icons = secondary_steam_engine_icons
steam_engine_mk4.horizontal_animation = engine_horizontal_animation_secondary
steam_engine_mk4.vertical_animation = engine_vertical_animation_secondary
steam_engine_mk4.fluid_usage_per_tick = 1
steam_engine_mk4.maximum_temperature = 315
steam_engine_mk4.max_heath = 700
steam_engine_mk4.minable.result = "advanced-electric-steam-engine-4"
data:extend({steam_engine_mk4})

--Primary Load Engines
local primary_load_engine = util.table.deepcopy(data.raw["generator"]["steam-engine"])
primary_load_engine.name = "advanced-electric-primary-steam-engine-1"
primary_load_engine.energy_source.usage_priority = "primary-output"
primary_load_engine.minable.result = "advanced-electric-primary-steam-engine-1"
primary_load_engine.icon = nil
primary_load_engine.icons = primary_steam_engine_icons
primary_load_engine.horizontal_animation = engine_horizontal_animation_primary
primary_load_engine.vertical_animation = engine_vertical_animation_primary
data:extend({primary_load_engine})
  
local primary_load_steam_engine_mk2 = util.table.deepcopy(data.raw["generator"]["steam-engine"])
primary_load_steam_engine_mk2.name = "advanced-electric-primary-steam-engine-2"
primary_load_steam_engine_mk2.energy_source.usage_priority = "primary-output"
primary_load_steam_engine_mk2.icon = nil
primary_load_steam_engine_mk2.icons = primary_steam_engine_icons
primary_load_steam_engine_mk2.horizontal_animation = engine_horizontal_animation_primary
primary_load_steam_engine_mk2.vertical_animation = engine_vertical_animation_primary
primary_load_steam_engine_mk2.fluid_usage_per_tick = 0.625
primary_load_steam_engine_mk2.maximum_temperature = 215
primary_load_steam_engine_mk2.max_heath = 500
primary_load_steam_engine_mk2.minable.result = "advanced-electric-primary-steam-engine-2"
data:extend({primary_load_steam_engine_mk2})

local primary_load_steam_steam_engine_mk3 = util.table.deepcopy(data.raw["generator"]["steam-engine"])
primary_load_steam_steam_engine_mk3.name = "advanced-electric-primary-steam-engine-3"
primary_load_steam_steam_engine_mk3.energy_source.usage_priority = "primary-output"
primary_load_steam_steam_engine_mk3.icon = nil
primary_load_steam_steam_engine_mk3.icons = primary_steam_engine_icons
primary_load_steam_steam_engine_mk3.horizontal_animation = engine_horizontal_animation_primary
primary_load_steam_steam_engine_mk3.vertical_animation = engine_vertical_animation_primary
primary_load_steam_steam_engine_mk3.fluid_usage_per_tick = 0.8
primary_load_steam_steam_engine_mk3.maximum_temperature = 265
primary_load_steam_steam_engine_mk3.max_heath = 600
primary_load_steam_steam_engine_mk3.minable.result = "advanced-electric-primary-steam-engine-3"
data:extend({primary_load_steam_steam_engine_mk3})

local primary_load_steam_steam_engine_mk4 = util.table.deepcopy(data.raw["generator"]["steam-engine"])
primary_load_steam_steam_engine_mk4.name = "advanced-electric-primary-steam-engine-4"
primary_load_steam_steam_engine_mk4.energy_source.usage_priority = "primary-output"
primary_load_steam_steam_engine_mk4.icon = nil
primary_load_steam_steam_engine_mk4.icons = primary_steam_engine_icons
primary_load_steam_steam_engine_mk4.horizontal_animation = engine_horizontal_animation_primary
primary_load_steam_steam_engine_mk4.vertical_animation = engine_vertical_animation_primary
primary_load_steam_steam_engine_mk4.fluid_usage_per_tick = 1
primary_load_steam_steam_engine_mk4.maximum_temperature = 315
primary_load_steam_steam_engine_mk4.max_heath = 700
primary_load_steam_steam_engine_mk4.minable.result = "advanced-electric-primary-steam-engine-4"
data:extend({primary_load_steam_steam_engine_mk4})
