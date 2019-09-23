require("util")


-----------------------------------------------------------------------------------
-----------------------------explosions-------------------------------------------
-----------------------------------------------------------------------------------
data:extend(
{
--------- Big Explosion

 {
    type = "explosion",
    name = "big-shell-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f.png",
        flags = { "compressed" },
        animation_speed = 0.5,
        width = 324,
        height = 416,
        frame_count = 36,
        shift = util.by_pixel(0, -70),
        stripes =
        {
          {
            filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f-1.png",
            width_in_frames = 6,
            height_in_frames = 3
          },
          {
            filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f-2.png",
            width_in_frames = 6,
            height_in_frames = 3
          }
        }
      }
    },
    light = {intensity = 1, size = 75, color = {r=0.5, g=1.0, b=0.5}},
    sound =
    {
      aggregation =
      {
        max_count = 2,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0
        }
      }
    },
  },
--------- nuke

 {
    type = "explosion",
    name = "big-atomic-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        flags = { "compressed" },
        animation_speed = 0.2,
        width = 324,
        height = 416,
        frame_count = 36,
        shift = util.by_pixel(0,-550), --(<>,AV)
		scale = 5,
        stripes =
        {
          {
            filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f-1.png",
            width_in_frames = 6,
            height_in_frames = 3,
          },
          {
            filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f-2.png",
            width_in_frames = 6,
            height_in_frames = 3,
          }
        }
      }
    },
    light = {intensity = 1, size = 75, color = {r=0.5, g=1.0, b=0.5}},
    sound =
    {
      aggregation =
      {
        max_count = 2,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0
        }
      }
    },
  },
--------- uranium explosion

 {
    type = "explosion",
    name = "big-uranium-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/uranium-explosion.png",
        flags = { "compressed" },
        animation_speed = 0.5,
        width = 324,
        height = 416,
        frame_count = 36,
        shift = util.by_pixel(0,-220), --(<>,AV)
		scale = 2,
        stripes =
        {
          {
            filename = "__HeavyTank__/graphics/entities/uranium-explosion1.png",
            width_in_frames = 6,
            height_in_frames = 3,
          },
          {
            filename = "__HeavyTank__/graphics/entities/uranium-explosion2.png",
            width_in_frames = 6,
            height_in_frames = 3,
          }
        }
      }
    },
    light = {intensity = 1, size = 75, color = {r=0.5, g=1.0, b=0.5}},
    sound =
    {
      aggregation =
      {
        max_count = 2,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0
        }
      }
    },
  },
  --------- concussive explosion

 {
    type = "explosion",
    name = "big-concussive-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/concussive-explosion.png",
        flags = { "compressed" },
        animation_speed = 1, --0.5
        width = 324,
        height = 416,
        frame_count = 36,
        shift = util.by_pixel(0,-70), --(<>,AV)
		scale = 1,
        stripes =
        {
          {
            filename = "__HeavyTank__/graphics/entities/concussive-explosion1.png",
            width_in_frames = 6,
            height_in_frames = 3,
          },
          {
            filename = "__HeavyTank__/graphics/entities/concussive-explosion2.png",
            width_in_frames = 6,
            height_in_frames = 3,
          }
        }
      }
    },
    light = {intensity = 1, size = 75, color = {r=0.5, g=1.0, b=0.5}},
    sound =
    {
      aggregation =
      {
        max_count = 2,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0
        }
      }
    },
  },
  --------- plasma explosion

 {
    type = "explosion",
    name = "big-plasma-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/plasma-explosion.png",
        flags = { "compressed" },
        animation_speed = 0.5,
        width = 324,
        height = 416,
        frame_count = 36,
        shift = util.by_pixel(0,-220), --(<>,AV)
		scale = 2,
        stripes =
        {
          {
            filename = "__HeavyTank__/graphics/entities/plasma-explosion1.png",
            width_in_frames = 6,
            height_in_frames = 3,
          },
          {
            filename = "__HeavyTank__/graphics/entities/plasma-explosion2.png",
            width_in_frames = 6,
            height_in_frames = 3,
          }
        }
      }
    },
    light = {intensity = 1, size = 75, color = {r=0.5, g=1.0, b=0.5}},
    sound =
    {
      aggregation =
      {
        max_count = 2,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0
        }
      }
    },
  },
  ------------shockwave
    {
    type = "explosion",
    name = "shockwave-wave",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__base__/graphics/entity/explosion/explosion-3.png",
        priority = "high",
        width = 64,
        height = 49,
		x = 6 * 64,
        frame_count = 10,
		scale = 1.5,
        animation_speed = 1
      }
    },
    --light = {intensity = 0.5, size = 10, color = {r=1.0, g=1.0, b=1.0}},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound =
    {
      aggregation =
      {
        max_count = 1,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/small-explosion-1.ogg",
          volume = 0.4
        },
        {
          filename = "__base__/sound/fight/small-explosion-2.ogg",
          volume = 0.4
        }
      }
    }
  },
  
  ---------end
})
-----------------------------------------------------------------------------------
-----------------------------ACID CLOUD-------------------------------------------
-----------------------------------------------------------------------------------
data:extend(
{{
    type = "smoke-with-trigger",
    name = "ht-poison-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      flags = { "compressed" },
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.5,
      line_length = 7,
      scale = 3,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 10,
    fade_away_duration = 1 * 60,
    spread_duration = 10,
    color = { r = 0.7, g = 0.7, b = 0.1, a = 0.5 },
--	color = { r = 0.7, g = 0.7, b = 0.1 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 11,
 --         entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 100, type = "acid"}
              }
            }
          }
        }
      }
    },
    action_cooldown = 30
	},
  })
  
  -----------------------------------------------------------------------------------
-----------------------------Storm CLOUD-------------------------------------------
-----------------------------------------------------------------------------------
data:extend(
{{
    type = "smoke-with-trigger",
    name = "ht-storm-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      flags = { "compressed" },
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.2,
      line_length = 7,
      scale = 8,
    },
    slow_down_factor = 0,
    affected_by_wind = true,
    cyclic = true,
    duration = 60 * 25,
    fade_away_duration = 5 * 60,
    spread_duration = 10,
    color = { r = 0.3, g = 0.3, b = 0.3, a = 0.75 },
--	color = { r = 0.7, g = 0.7, b = 0.1 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 15,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
				{
				type = "create-explosion",
				entity_name = "storm-lightning"
				},
				-- {
				-- type = "create-sticker",
				-- sticker = "slowdown-sticker"
				-- },
				{
                type = "damage",
                damage = { amount = 100, type = "electric"}
				}
              }
            }
          }
        }
      }
    },
    action_cooldown = 45
	},
	
	
  })
  
  -----------------------------------------------------------------------------------
-----------------------------ACID CLOUD small-------------------------------------------
-----------------------------------------------------------------------------------
data:extend(
{{
    type = "smoke-with-trigger",
    name = "ht-poison-cloud-small",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      flags = { "compressed" },
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.3,
      line_length = 7,
      scale = 0.7,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 1,
    fade_away_duration = 1 * 60,
    spread_duration = 10,
    color = { r = 0.7, g = 0.7, b = 0.1, a = 0.5 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 3,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 100, type = "acid"}
              }
            }
          }
        }
      }
    },
    action_cooldown = 15
	},
  })
-----------------------------------------------------------------------------------
-----------------------------------Napalm------------------------------------------
-----------------------------------------------------------------------------------
require "util"
local math3d = require "math3d"

local function make_color(r_,g_,b_,a_)
  return { r = r_ * a_, g = g_ * a_, b = b_ * a_, a = a_ }
end

local fireutil = {}

function fireutil.foreach(table_, fun_)
  for k, tab in pairs(table_) do fun_(tab) end
  return table_
end
-----------------------------------------------------------------------------------
function fireutil.create_fire_pictures(opts)
  local fire_blend_mode = opts.blend_mode or "additive"
  local fire_animation_speed = opts.animation_speed or 0.5
  local fire_scale =  opts.scale or 1
  local fire_tint = {r=1,g=1,b=1,a=1}
  local fire_flags = { "compressed" }
  local retval = {
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0390625, -0.90625 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-12.png",
      line_length = 8,
      width = 63,
      height = 116,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.015625, -0.914065 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-11.png",
      line_length = 8,
      width = 61,
      height = 122,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0078125, -0.90625 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-10.png",
      line_length = 8,
      width = 65,
      height = 108,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0625, -0.64844 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-09.png",
      line_length = 8,
      width = 64,
      height = 101,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.03125, -0.695315 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-08.png",
      line_length = 8,
      width = 50,
      height = 98,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0546875, -0.77344 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-07.png",
      line_length = 8,
      width = 54,
      height = 84,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.015625, -0.640625 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-06.png",
      line_length = 8,
      width = 65,
      height = 92,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.83594 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-05.png",
      line_length = 8,
      width = 59,
      height = 103,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.03125, -0.882815 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-04.png",
      line_length = 8,
      width = 67,
      height = 130,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.015625, -1.109375 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-03.png",
      line_length = 8,
      width = 74,
      height = 117,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.046875, -0.984375 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-02.png",
      line_length = 8,
      width = 74,
      height = 114,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.0078125, -0.96875 }
    },
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-01.png",
      line_length = 8,
      width = 66,
      height = 119,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0703125, -1.039065 }
    },
  }
  return fireutil.foreach(retval, function(tab)
    if tab.shift and tab.scale then tab.shift = { tab.shift[1] * tab.scale, tab.shift[2] * tab.scale } end
  end)
end

--------------------------------------------------------------

function fireutil.create_burnt_patch_pictures()
  local base = {
    filename = "__base__/graphics/entity/fire-flame/burnt-patch.png",
    line_length = 3,
    width = 115,
    height = 56,
    frame_count = 9,
    axially_symmetrical = false,
    direction_count = 1,
    shift = {-0.09375, 0.125},
  }

  local variations = {}

  for y=1,(base.frame_count / base.line_length) do
    for x=1,base.line_length do
      table.insert(variations,
      {
        filename = base.filename,
        width = base.width,
        height = base.height,
        tint = base.tint,
        shift = base.shift,
        x = (x-1) * base.width,
        y = (y-1) * base.height,
      })
    end
  end

  return variations
end

-------------------------------------------------------------------------
data:extend({
-- damage type
{
	type = "damage-type",
	name = "ht-fire"
},
---------------------------------
{
	type = "fire",
	name = "ht-napalm-flame",
	flags = {"placeable-off-grid", "not-on-map"},
	color = {r=0, g=0.5, b=0.7, a=0.9},
	damage_per_tick = {amount = 2, type = "ht-fire"},
	maximum_damage_multiplier = 6,
	damage_multiplier_increase_per_added_fuel = 1,
	damage_multiplier_decrease_per_tick = 0.005,
	
	spawn_entity = "fire-flame-on-tree",
	
	spread_delay = 300,
	spread_delay_deviation = 180,
	maximum_spread_count = 100,
	
	flame_alpha = 0.35,
	flame_alpha_deviation = 0.05,
	
	emissions_per_tick = 0.005,
	
	add_fuel_cooldown = 10,
	fade_in_duration = 30,
	fade_out_duration = 30,
	
	initial_lifetime = 60*10, --120
	lifetime_increase_by = 150, --150
	lifetime_increase_cooldown = 4,
	maximum_lifetime = 1800,
	delay_between_initial_flames = 10,
	--initial_flame_count = 1,
	burnt_patch_lifetime = 1800,

	
	pictures = fireutil.create_fire_pictures({ blend_mode = "normal", animation_speed = 1, scale = 0.5}),
	
	smoke_source_pictures = 
	{
		{ 
			filename = "__base__/graphics/entity/fire-flame/fire-smoke-source-1.png",
			line_length = 8,
			width = 101,
			height = 138,
			frame_count = 31,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.109375, -1.1875},
			animation_speed = 0.5,
		tint = make_color(1, 0.5, 1, 0.75),
		},
		{ 
			filename = "__base__/graphics/entity/fire-flame/fire-smoke-source-2.png",
			line_length = 8,
			width = 99,
			height = 138,
			frame_count = 31,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.203125, -1.21875},
			animation_speed = 0.5,
		tint = make_color(1, 0.5, 1, 0.75),
		},
	},
	
	burnt_patch_pictures = fireutil.create_burnt_patch_pictures(),
	burnt_patch_alpha_default = 0.4,
	burnt_patch_alpha_variations = 
	{
		{ tile = "stone-path", alpha = 0.26 },
		{ tile = "concrete", alpha = 0.24 },
	},

--	smoke =
--	{
--		{
--			name = "acid-smoke",
--			deviation = {0.5, 0.5},
--			frequency = 0.25 / 2,
--			position = {0.0, -0.8},
--			starting_vertical_speed = 0.05,
--			starting_vertical_speed_deviation = 0.005,
--			vertical_speed_slowdown = 0.99,
--			starting_frame_deviation = 60,
--			height = -0.5,
--		}
--	},

	light = {intensity = 1, size = 20},
	
	working_sound =
	{
		sound = { filename = "__base__/sound/furnace.ogg" },
		max_sounds_per_type = 3
	},
},
-------------------------------------------------------------------------------------
----------------Water Dumper--------------------------------------------------
-------------------------------------------------------------------------------------
 -- {
    -- type = "assembling-machine",
    -- name = "offshore-dump",
    -- icon = "__base__/graphics/icons/offshore-pump.png",
    -- icon_size = 32,
    -- flags = {"placeable-neutral", "player-creation", "filter-directions"},
    -- collision_mask = { "ground-tile", "object-layer" },
    -- fluid_box_tile_collision_test = { "ground-tile" },
    -- adjacent_tile_collision_test = { "water-tile" },
    -- minable = {mining_time = 1, result = "offshore-dump"},
    -- max_health = 150,
    -- corpse = "small-remnants",
	-- energy_source =
    -- {
	 -- type = "electric",
      -- usage_priority = "secondary-input",
      -- emissions = 0
    -- },
	-- energy_usage = "10W",
    -- resistances =
    -- {
      -- {
        -- type = "fire",
        -- percent = 70
      -- },
      -- {
        -- type = "impact",
        -- percent = 30
      -- }
    -- },
    -- collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    -- selection_box = {{-1, -1.49}, {1, 0.49}},
    -- fluid_box =
    -- {
      -- base_area = 1,
      -- base_level = -1,
      -- pipe_covers = pipecoverspictures(),
      -- production_type = "input",
      -- pipe_connections =
      -- {
        -- {
          -- position = {0, 1},
          -- type = "input"
        -- },
      -- },
    -- },
    -- crafting_categories = {"crafting-with-fluid"},
    -- crafting_speed = 1,
	-- ingredient_count = 2,
    -- tile_width = 1,
    -- tile_height = 1,
    -- vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },



	-- animation =
    -- {
      -- north =
      -- {
        -- filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        -- priority = "high",
        -- frame_count = 1,
        -- line_length = 1,
        -- shift = {0.90625, 0.0625},
        -- width = 160,
        -- height = 102
      -- },
      -- east =
      -- {
        -- filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        -- priority = "high",
        -- shift = {0.90625, 0.0625},
		-- frame_count = 1,
        -- line_length = 1,
        -- x = 160,
        -- width = 160,
        -- height = 102
      -- },
      -- south =
      -- {
        -- filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        -- priority = "high",
		-- frame_count = 1,
        -- line_length = 1,
        -- shift = {0.90625, 0.65625},
        -- x = 320,
        -- width = 160,
        -- height = 102
      -- },
      -- west =
      -- {
        -- filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        -- priority = "high",
		-- frame_count = 1,
        -- line_length = 1,
        -- shift = {1.0, 0.0625},
        -- x = 480,
        -- width = 160,
        -- height = 102
      -- }
    -- },
    -- placeable_position_visualization =
    -- {
      -- filename = "__core__/graphics/cursor-boxes-32x32.png",
      -- priority = "extra-high-no-scale",
      -- width = 64,
      -- height = 64,
      -- scale = 0.5,
      -- x = 3*64
    -- }
-- },
-------------------------------------------------------------------------------------
----------------Deep Pump--------------------------------------------------
------------------------------------------------------------------------------------
{
    type = "offshore-pump",
    name = "deep-pump",
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    collision_mask = { "ground-tile", "object-layer" },
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    minable = {mining_time = 1, result = "deep-pump"},
    max_health = 150,
    corpse = "small-remnants",
    fluid = "deep-water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      pipe_connections =
      {
        {
          position = {0, 1},
          type = "output"
        },
      },
    },
    pumping_speed = 10,
    tile_width = 1,
    tile_height = 1,
	energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.05 / 1.5
    },
    energy_usage = "200kW",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      north =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.90625, 0.0625},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.90625, 0.0625},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.90625, 0.65625},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {1.0, 0.0625},
        x = 480,
        width = 160,
        height = 102
      }
    },
    placeable_position_visualization =
    {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3*64
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance

  },

-----------------------------------------------



})

require("util")
