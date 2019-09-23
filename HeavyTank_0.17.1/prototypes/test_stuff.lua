

data:extend({

---------------------------------------------------------------------------------------------
-----------------------------------------------------------TEST  recipe------------------------
---------------------------------------------------------------------------------------------
  --------------------------------------------------TEST
{
    type = "item-with-entity-data",
    name = "HeavyTank_test_tank",
    icon = "__HeavyTank__/graphics/icons/scraptank.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank-fuel",
    place_result = "HeavyTank_test_tank",
    stack_size = 1
  },

-------------------------tank
    {
    type = "recipe",
    name = "HeavyTank_test_tank",
	energy_required = 3,
    enabled = true,
    subgroup = "heavy-tank",
	order = "k",
    ingredients =
    {
	  {"iron-ore", 1},
    },
    result = "HeavyTank_test_tank",
  },
  ---------------------------test dummy
    -- {
    -- type = "recipe",
    -- name = "test_dummy",
	-- energy_required = 3,
    -- enabled = false,
    -- subgroup = "heavy-tank",
	-- order="y",
    -- ingredients =
    -- {
	  -- {"iron-ore", 1},
    -- },
    -- result = "test_dummy",
  -- },
  
    -- {
    -- type = "item",
    -- name = "test_dummy",
    -- icon = "__base__/graphics/icons/stone-wall.png",
    -- icon_size = 32,
    -- --flags = {"goes-to-quickbar"},
    -- subgroup = "defensive-structure",
    -- order = "a[stone-wall]-a[stone-wall]",
    -- place_result = "test_dummy",
    -- stack_size = 100
  -- },


-------------------------------------------------------------------------test dummy----------


-- {
    -- type = "wall",
    -- name = "test_dummy",
    -- icon = "__base__/graphics/icons/stone-wall.png",
    -- icon_size = 32,
    -- flags = {"placeable-neutral", "player-creation"},
    -- collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    -- selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    -- minable = {mining_time = 0.5, result = "test_dummy"},
    -- fast_replaceable_group = "wall",
    -- max_health = 1000000,
    -- repair_speed_modifier = 2,
    -- corpse = "wall-remnants",
    -- repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    -- mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    -- vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },

    -- connected_gate_visualization =
    -- {
      -- filename = "__core__/graphics/arrows/underground-lines.png",
      -- priority = "high",
      -- width = 64,
      -- height = 64,
      -- scale = 0.5
    -- },
    -- resistances =
    -- {
      -- {
        -- type = "physical",
        -- decrease = 0,
        -- percent = 0
      -- },
      -- {
        -- type = "impact",
        -- decrease = 0,
        -- percent = 0
      -- },
      -- {
        -- type = "explosion",
        -- decrease = 0,
        -- percent = 0
      -- },
      -- {
        -- type = "fire",
        -- percent = 0
      -- },
      -- {
        -- type = "laser",
        -- percent = 0
      -- }
    -- },
    -- pictures =
    -- {
      -- single =
      -- {
        -- layers =
        -- {
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-single.png",
            -- priority = "extra-high",
            -- width = 22,
            -- height = 42,
            -- shift = {0, -0.15625}
          -- },
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-single-shadow.png",
            -- priority = "extra-high",
            -- width = 47,
            -- height = 32,
            -- shift = {0.359375, 0.5},
            -- draw_as_shadow = true
          -- }
        -- }
      -- },
      -- straight_vertical =
      -- {
        -- {
          -- layers =
          -- {
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-1.png",
              -- priority = "extra-high",
              -- width = 22,
              -- height = 42,
              -- shift = {0, -0.15625}
            -- },
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              -- priority = "extra-high",
              -- width = 47,
              -- height = 60,
              -- shift = {0.390625, 0.625},
              -- draw_as_shadow = true
            -- }
          -- }
        -- },
        -- {
          -- layers =
          -- {
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-2.png",
              -- priority = "extra-high",
              -- width = 22,
              -- height = 42,
              -- shift = {0, -0.15625}
            -- },
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              -- priority = "extra-high",
              -- width = 47,
              -- height = 60,
              -- shift = {0.390625, 0.625},
              -- draw_as_shadow = true
            -- }
          -- }
        -- },
        -- {
          -- layers =
          -- {
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-3.png",
              -- priority = "extra-high",
              -- width = 22,
              -- height = 42,
              -- shift = {0, -0.15625}
            -- },
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              -- priority = "extra-high",
              -- width = 47,
              -- height = 60,
              -- shift = {0.390625, 0.625},
              -- draw_as_shadow = true
            -- }
          -- }
        -- }
      -- },
      -- straight_horizontal =
      -- {
        -- {
          -- layers =
          -- {
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-1.png",
              -- priority = "extra-high",
              -- width = 32,
              -- height = 42,
              -- shift = {0, -0.15625}
            -- },
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              -- priority = "extra-high",
              -- width = 59,
              -- height = 32,
              -- shift = {0.421875, 0.5},
              -- draw_as_shadow = true
            -- }
          -- }
        -- },
        -- {
          -- layers =
          -- {
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-2.png",
              -- priority = "extra-high",
              -- width = 32,
              -- height = 42,
              -- shift = {0, -0.15625}
            -- },
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              -- priority = "extra-high",
              -- width = 59,
              -- height = 32,
              -- shift = {0.421875, 0.5},
              -- draw_as_shadow = true
            -- }
          -- }
        -- },
        -- {
          -- layers =
          -- {
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-3.png",
              -- priority = "extra-high",
              -- width = 32,
              -- height = 42,
              -- shift = {0, -0.15625}
            -- },
            -- {
              -- filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              -- priority = "extra-high",
              -- width = 59,
              -- height = 32,
              -- shift = {0.421875, 0.5},
              -- draw_as_shadow = true
            -- }
          -- }
        -- }
      -- },
      -- corner_right_down =
      -- {
        -- layers =
        -- {
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-corner-right-down.png",
            -- priority = "extra-high",
            -- width = 27,
            -- height = 42,
            -- shift = {0.078125, -0.15625}
          -- },
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-corner-right-down-shadow.png",
            -- priority = "extra-high",
            -- width = 53,
            -- height = 61,
            -- shift = {0.484375, 0.640625},
            -- draw_as_shadow = true
          -- }
        -- }
      -- },
      -- corner_left_down =
      -- {
        -- layers =
        -- {
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-corner-left-down.png",
            -- priority = "extra-high",
            -- width = 27,
            -- height = 42,
            -- shift = {-0.078125, -0.15625}
          -- },
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-corner-left-down-shadow.png",
            -- priority = "extra-high",
            -- width = 53,
            -- height = 60,
            -- shift = {0.328125, 0.640625},
            -- draw_as_shadow = true
          -- }
        -- }
      -- },
      -- t_up =
      -- {
        -- layers =
        -- {
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-t-down.png",
            -- priority = "extra-high",
            -- width = 32,
            -- height = 42,
            -- shift = {0, -0.15625}
          -- },
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-t-down-shadow.png",
            -- priority = "extra-high",
            -- width = 71,
            -- height = 61,
            -- shift = {0.546875, 0.640625},
            -- draw_as_shadow = true
          -- }
        -- }
      -- },
      -- ending_right =
      -- {
        -- layers =
        -- {
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-ending-right.png",
            -- priority = "extra-high",
            -- width = 27,
            -- height = 42,
            -- shift = {0.078125, -0.15625}
          -- },
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-ending-right-shadow.png",
            -- priority = "extra-high",
            -- width = 53,
            -- height = 32,
            -- shift = {0.484375, 0.5},
            -- draw_as_shadow = true
          -- }
        -- }
      -- },
      -- ending_left =
      -- {
        -- layers =
        -- {
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-ending-left.png",
            -- priority = "extra-high",
            -- width = 27,
            -- height = 42,
            -- shift = {-0.078125, -0.15625}
          -- },
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-ending-left-shadow.png",
            -- priority = "extra-high",
            -- width = 53,
            -- height = 32,
            -- shift = {0.328125, 0.5},
            -- draw_as_shadow = true
          -- }
        -- }
      -- },
      -- water_connection_patch =
      -- {
        -- sheets =
        -- {
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-patch.png",
            -- priority = "extra-high",
            -- width = 52,
            -- height = 68,
            -- shift = util.by_pixel(0, -2),
          -- },
          -- {
            -- filename = "__base__/graphics/entity/stone-wall/wall-patch-shadow.png",
            -- priority = "extra-high",
            -- draw_as_shadow = true,
            -- width = 74,
            -- height = 96,
            -- shift = util.by_pixel(6, 13),
          -- }
        -- }
      -- }
    -- },

    -- wall_diode_green = util.conditional_return(not data.is_demo,
        -- {
          -- filename = "__base__/graphics/entity/gate/wall-diode-green.png",
          -- width = 21,
          -- height = 22,
          -- shift = {0, -0.78125}
        -- }),
    -- wall_diode_green_light = util.conditional_return(not data.is_demo,
        -- {
          -- minimum_darkness = 0.3,
          -- color = {g=1},
          -- shift = {0, -0.78125},
          -- size = 1,
          -- intensity = 0.3
        -- }),
    -- wall_diode_red = util.conditional_return(not data.is_demo,
    -- {
      -- filename = "__base__/graphics/entity/gate/wall-diode-red.png",
      -- width = 21,
      -- height = 22,
      -- shift = {0, -0.78125}
    -- }),
    -- wall_diode_red_light = util.conditional_return(not data.is_demo,
    -- {
      -- minimum_darkness = 0.3,
      -- color = {r=1},
      -- shift = {0, -0.78125},
      -- size = 1,
      -- intensity = 0.3
    -- }),

    -- circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
    -- circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
    -- circuit_wire_max_distance = default_circuit_wire_max_distance,
    -- default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
  -- },
 })

------------------------------------------------------------------------------------------------

local heavyTank = table.deepcopy(data.raw.car["tank"])

patchTable(heavyTank, {
	name = "HeavyTank_test_tank",
	minable = {mining_time = 10, result = "HeavyTank_test_tank"},
	collision_box = {{-1.5, -3.2}, {1.5, 3.2}},
    selection_box = {{-1.5, -3.2}, {1.5, 3.2}},

	weight = 50000,
    inventory_size = 80,
    max_health = 10000,
    effectivity = 0.8,
	energy_per_hit_point = 0.5,
    braking_power = "50MW",
	immune_to_tree_impacts = true,
    burner =
    {
      fuel_category = "chemical",
      effectivity = 100,
      fuel_inventory_size = 3,
    },
    consumption = "30MW",
    terrain_friction_modifier = 0.02, --0.2
    friction = 0.001, --0.002
    rotation_speed = 0.0040,
    turret_rotation_speed = 0.40 / 60,
    turret_return_timeout = 300,

	guns = { "120mm-Twin-Cannons-Gauss-mode", "120mm-Twin-Cannons-Fast-Reload-mode", "25mm-Twin-AutoCannons-Gauss-mode", "HT-Rocket-Pad-3" },
	
    equipment_grid = "HeavyTank-tank-grid",
	
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 80
      },
	  {
        type = "poison",
        decrease = 15,
        percent = 100
      },
      {
        type = "physical",
        decrease = 15,
        percent = 80
      },
      {
        type = "impact",
        decrease = 50,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 80
      },
      {
        type = "acid",
        decrease = 15,
        percent = 65
      }
    },

    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200,
        },
		shift = {-0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {0.6, -28},
        size = 3,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },

	animation =
	{
		layers = {
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 2,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 8,
          		max_advance = 1,
				scale = 0.65,
          		stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/01.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/02.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/03.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/04.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/05.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/06.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/07.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/08.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/09.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/10.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/11.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/12.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/13.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/14.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/15.png",
						width_in_frames = 2,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/16.png",
						width_in_frames = 2,
						height_in_frames = 4,
					}
				},
			 }
		}
	},

	turret_animation =
	{
		layers =
		{
			{
				priority = "low",
				width = 500,
				height = 500,
				frame_count = 1,
				direction_count = 64,
				shift = util.by_pixel(0,25),
				animation_speed = 8,
				scale = 0.65,
				stripes =
				{
					{
						filename = "__HeavyTank__/graphics/entities/t01.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t02.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t03.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t04.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t05.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t06.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t07.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t08.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t09.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t10.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t11.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t12.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t13.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t14.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t15.png",
						width_in_frames = 1,
						height_in_frames = 4,
					},{
						filename = "__HeavyTank__/graphics/entities/t16.png",
						width_in_frames = 1,
						height_in_frames = 4,
					}
				}
			}
		}
	},
    sound_no_fuel =
    {
      {
		filename = "__HeavyTank__/sound/MEXOFF2.ogg",
        volume = 0.6
      },
    },
	working_sound =
	{
		sound =
		{
			filename = "__HeavyTank__/sound/DRONE3.ogg",
			volume = 0.6
		},
		activate_sound =
		{
			filename = "__HeavyTank__/sound/MEXON2.ogg",
			volume = 0.6
		},
		deactivate_sound =
		{
			filename = "__HeavyTank__/sound/MEXOFF2.ogg",
			volume = 0.6
		},
		match_speed_to_activity = true,
	},
})
data:extend({heavyTank})


local oi=-0.6

data:extend({
----------------------------------------------------------------
--------------------------------BLACK HOLE---------------------
----------------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-black-hole-rocket",
	energy_required = 1,
	--category = "chemistry",
    enabled = true,
	subgroup = "heavy-tank-rockets",
	order="c",
    ingredients =
    {
     -- {"rocket", 1},
	  --{type="fluid", name="sulfuric-acid", amount=50},
    },
    result = "HeavyTank-black-hole-rocket",
  },
----------------------------------------------------------------


	{
		type = "ammo",
		name = "HeavyTank-black-hole-rocket",
		icon = "__HeavyTank__/graphics/icons/acid-rocket.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "rocket",
			target_type = "position",
			action =
			{
				type = "direct",
				--repeat_count = 20,
				action_delivery =
				{
					type = "projectile",
					projectile = "ht-black-hole-rocket",
					starting_speed = 0.5,
					direction_deviation = 0.3,
					range_deviation = 0.3,
				}
			},
		},
		magazine_size = 10,
		subgroup = "ammo",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},

 ----------------------------------------------------------------- 
     {
    type = "projectile",
    name = "ht-black-hole-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-entity",
          show_in_tooltip = true,
          entity_name = "ht-black-hole"
        }
      }
    },
    light = {intensity = 0.5, size = 4},
 
 
	animation =
    {
     filename = "__base__/graphics/entity/rocket/rocket.png",
     frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
  },
   ----------------------------------------------------------------- 
----------------------------------------------------------------
--------------------------------BLACK HOLE---------------------
----------------------------------------------------------------
{
    type = "smoke-with-trigger",
    name = "ht-black-hole",
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
      scale = 4,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 50,
    fade_away_duration = 1 * 1,
    spread_duration = 10,
    color = { r = 0.1, g = 0.1, b = 0.1, a = 0.2 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
		{
			{type = "nested-result",action ={ type = "area",radius = 100,action_delivery ={type = "instant",target_effects ={{type ="push-back",distance = oi},{type = "damage", damage = { amount = 0, type = "electric"}}}}}},
			{type = "nested-result",action ={ type = "area",radius = 80,action_delivery ={type = "instant",target_effects ={{type ="push-back",distance = oi},{type = "damage", damage = { amount = 0, type = "electric"}}}}}},
			{type = "nested-result",action ={ type = "area",radius = 60,action_delivery ={type = "instant",target_effects ={{type ="push-back",distance = oi},{type = "damage", damage = { amount = 0, type = "electric"}}}}}},
			{type = "nested-result",action ={ type = "area",radius = 40,action_delivery ={type = "instant",target_effects ={{type ="push-back",distance = oi},{type = "damage", damage = { amount = 0, type = "electric"}}}}}},
			{type = "nested-result",action ={ type = "area",radius = 20,action_delivery ={type = "instant",target_effects ={{type ="push-back",distance = oi},{type = "damage", damage = { amount = 0, type = "electric"}}}}}},
			{type = "nested-result",action ={ type = "area",radius = 10,action_delivery ={type = "instant",target_effects ={{type ="push-back",distance = oi},{type = "damage", damage = { amount = 0, type = "electric"}}}}}}
		}
      }
    },
    action_cooldown = 5
	},

})

