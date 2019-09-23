data:extend(
{
--------------------------------------------------
	{
		type = "ammo-category",
		name = "HeavyTank-cannon-shell"
	},
--------------------------------------------------
----------------------------------------------------vvvvvvvvvvv New Ammo
----------------------------------------------------
{
		type = "ammo",
		name = "HeavyTank-plasma-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/7-plasmashells.png",
		icon_size = 32,
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 1,
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-plasma-shell",
					starting_speed = 3,
					direction_deviation = 0,
					range_deviation = 0,
					max_range = 90,
					min_range = 23,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
    subgroup = "experimental-tank",
		order = "c",
		stack_size = 200
	},
---------------------------------------------------

	{
		type = "ammo",
		name = "HeavyTank-concussive-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/6-concussiveshells.png",
		icon_size = 32,
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 1,
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-concussive-shell",
					starting_speed = 3,
					direction_deviation = 0,
					range_deviation = 0,
					max_range = 90,
					min_range = 23,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
    subgroup = "experimental-tank",
		order = "b",
		stack_size = 200
	},
---------------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-uranium-cluster-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/9-uraniumclustershells.png",
		icon_size = 32,
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 20,
				action_delivery =
				{
					type = "projectile",
					projectile = "heavytank-uranium-cluster-shell",
					starting_speed = 2,
					direction_deviation = .6,
					range_deviation = 0.3,
					max_range = 70, --50
					min_range = 70, --50
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
    subgroup = "experimental-tank",
		order = "d",
		stack_size = 200
	},
----------------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-uranium-piercing-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/10-uraniumpiercingshells.png",
		icon_size = 32,
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 10,
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-uranium-piercing",
					starting_speed = 5,
					direction_deviation = 0,
					range_deviation = 0,
					max_range = 200,
					min_range = 5,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
    subgroup = "experimental-tank",
		order = "e",
		stack_size = 200
	},
	
----------------------------------------------------^^^^^^^^^^^^^ New Ammo
	{
		type = "ammo",
		name = "HeavyTank-crude-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/1-coalshells.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-crude-shell",
					starting_speed = 2, --2
					direction_deviation = .1,
					range_deviation = 0,
					max_range = 40,
					min_range = 40,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
	subgroup = "heavy-tank-shells",
		order = "d[cannon-shell]-a[basic]",
		stack_size = 200
	},

-------------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-cluster-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/4-clustershells.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 20,
				action_delivery =
				{
					type = "projectile",
					projectile = "heavytank-cluster-shell",
					starting_speed = 2,
					direction_deviation = .6,
					range_deviation = 0.3,
					max_range = 50, --50
					min_range = 50, --50
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
	subgroup = "heavy-tank-shells",
		order = "d[cannon-shell]-a[basic]",
		stack_size = 200
	},

---------------------
	{
		type = "ammo",
		name = "HeavyTank-basic-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/2-normalshells.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 1,
				action_delivery =
				{
					{
					type = "projectile",
					projectile = "120mm-shell",
					starting_speed = 3,
					direction_deviation = 0,
					range_deviation = 0,
					max_range = 70,
					min_range = 5,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
					}
				}
			},
		},
	subgroup = "heavy-tank-shells",
		order = "d[cannon-shell]-a[basic]",
		stack_size = 200
	},
-----------------

	{
		type = "ammo",
		name = "HeavyTank-explosive-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/3-explosiveshells.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 1,
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-explosive-shell",
					starting_speed = 3,
					direction_deviation = 0,
					range_deviation = 0,
					max_range = 70,
					min_range = 17,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
	subgroup = "heavy-tank-shells",
		order = "d[cannon-shell]-a[basic]",
		stack_size = 200
	},

-------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-piercing-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/5-piercingshells.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 10,
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-piercing",
					starting_speed = 4,
					direction_deviation = 0,
					range_deviation = 0,
					max_range = 120,
					min_range = 5,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
	subgroup = "heavy-tank-shells",
		order = "d[cannon-shell]-a[basic]",
		stack_size = 200
	},
	
-------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-uranium-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/8-uraniumshells.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 1,
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-uranium-shell",
					starting_speed = 3,
					direction_deviation = 0,
					range_deviation = 0,
--					max_range = 120,
					min_range = 25,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
	subgroup = "heavy-tank-shells",
		order = "d[cannon-shell]-a[basic]",
		stack_size = 200
	},
-------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-atomic-cannon-shell",
		icon = "__HeavyTank__/graphics/icons/120shells/11-atomicshells.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-cannon-shell",
			cooldown_modifier = 5,
			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 1,
				action_delivery =
				{
					type = "projectile",
					projectile = "120mm-atomic-shell",
					starting_speed = 2,
					direction_deviation = 0,
					range_deviation = 0,
--					max_range = 120,
					min_range = 53,
					source_effects =
					{{type = "create-explosion",entity_name = "120mm-muzzle-fire1"},
					{type = "create-explosion",entity_name = "120mm-muzzle-fire2"}}
				}
			},
		},
	subgroup = "heavy-tank-shells",
		order = "g[cannon-shell]-a[basic]",
		stack_size = 200
	},
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
	{
		type = "ammo-category",
		name = "HeavyTank-autocannon-shell"
	},

		{
		type = "ammo",
		name = "HeavyTank-crude-autocannon-shell",
		icon = "__HeavyTank__/graphics/icons/25mm-crude-autocannon-mag.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-autocannon-shell",
--			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 2,
				action_delivery =
				{
					type = "projectile",
					projectile = "25mm-crude-shell",
					starting_speed = 3.5,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 50,
					min_range = 0,
				}
			},
		},
		magazine_size = 10,
	subgroup = "heavy-tank-auto",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
-------------------------------------------

		{
		type = "ammo",
		name = "HeavyTank-autocannon-shell",
		icon = "__HeavyTank__/graphics/icons/25mm-autocannon-mag.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-autocannon-shell",
--			target_type = "direction",
			action =
			{
				type = "direct",
				repeat_count = 2,
				action_delivery =
				{
					type = "projectile",
					projectile = "25mm-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 75,
					min_range = 0,
				}
			},
		},
		magazine_size = 10,
	subgroup = "heavy-tank-auto",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
	-------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-fire-autocannon-shell",
		icon = "__HeavyTank__/graphics/icons/25mm-autocannon-mag-fire.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-autocannon-shell",
			action =
			{
				type = "direct",
				repeat_count = 2,
				action_delivery =
				{
					type = "projectile",
					projectile = "25mm-fire-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 75,
					min_range = 0,
				}
			},
		},
		magazine_size = 10,
	subgroup = "heavy-tank-auto",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
	-------------------------------------------
	{
		type = "ammo",
		name = "HeavyTank-acid-autocannon-shell",
		icon = "__HeavyTank__/graphics/icons/25mm-autocannon-mag-acid.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "HeavyTank-autocannon-shell",
			action =
			{
				type = "direct",
				repeat_count = 2,
				action_delivery =
				{
					type = "projectile",
					projectile = "25mm-acid-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 75,
					min_range = 0,
				}
			},
		},
		magazine_size = 10,
	subgroup = "heavy-tank-auto",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
	-------------------------------------------
	-- {
		-- type = "ammo-category",
		-- name = "rocket-pack"
	-- },

	{
		type = "ammo",
		name = "HeavyTank-multi-rocket",
		icon = "__HeavyTank__/graphics/icons/hexplosive-rocket.png",
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
					projectile = "ht-explosive-rocket",
					starting_speed = 0.4,
					direction_deviation = 0.3,
					range_deviation = 0.3,
					min_range = 16,
				}
			},
		},
	subgroup = "heavy-tank-rockets",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
---------------------------------
	{
		type = "ammo",
		name = "HeavyTank-multi-acid-rocket",
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
					projectile = "ht-poison-rocket",
					starting_speed = 0.5,
					direction_deviation = 0.3,
					range_deviation = 0.3,
				}
			},
		},
	subgroup = "heavy-tank-rockets",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
---------------------------------
	{
		type = "ammo",
		name = "HeavyTank-multi-napalm-rocket",
		icon = "__HeavyTank__/graphics/icons/napalm-rocket.png",
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
					projectile = "ht-napalm-rocket",
					starting_speed = 0.5,
					direction_deviation = 0.3,
					range_deviation = 0.3,
				}
			},
		},
	subgroup = "heavy-tank-rockets",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
------------------------------------------------
  {
    type = "ammo",
    name = "HeavyTank-multi-storm-rocket",
    icon = "__HeavyTank__/graphics/icons/storm-rocket.png",
    icon_size = 32,
    --flags = {"goes-to-quickbar"},
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
					projectile = "storm-capsule",
					starting_speed = 0.5,
					direction_deviation = 0.3,
					range_deviation = 0.3,
				}
			}
        },
	subgroup = "heavy-tank-rockets",
	order = "k",
    stack_size = 100
  },
--------------------------------
	{
		type = "ammo",
		name = "HeavyTank-uranium-rocket",
		icon = "__HeavyTank__/graphics/icons/ht-uranium-rocket-icon.png",
		icon_size = 32,
		----flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "rocket",
			target_type = "position",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "projectile",
					projectile = "ht-uranium-rocket",
					starting_speed = 0.5,
					direction_deviation = 0.3,
					range_deviation = 0.3,
					min_range = 25,
				}
			},
		},
	subgroup = "heavy-tank-rockets",
		order = "a[basic-clips]-b[piercing-rounds-magazine]",
		stack_size = 200
	},
---------------------------------------------------
  {
    type = "item",
    name = "normal-land-mine",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 32,
    --flags = {"goes-to-quickbar"},
    damage_radius = 6,
	subgroup = "heavy-tank-auto",
    order = "f[land-mine]",
    place_result = "normal-land-mine",
    stack_size = 200,
    trigger_radius = 2.5
  },	
--------------------++++++++
	
	{
    type = "land-mine",
    name = "normal-land-mine",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 32,
    flags =
    {
      "placeable-player",
      "placeable-enemy",
      "player-creation",
      "placeable-off-grid",
      "not-on-map"
    },
    minable = {mining_time = 1, result = "normal-land-mine"},
    mined_sound = { filename = "__core__/sound/deconstruct-small.ogg" },
    max_health = 15,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "explosion-hit",
    picture_safe =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    picture_set =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    picture_set_enemy =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine-set-enemy.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    trigger_radius = 2.5,
    ammo_category = "landmine",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "nested-result",
            affects_target = true,
            action =
            {
              type = "area",
              radius = 6,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = { amount = 300, type = "explosion"}
                  },
                  {
                    type = "create-sticker",
                    sticker = "stun-sticker"
                  }
                }
              }
            }
          },
          {
            type = "create-entity",
            entity_name = "medium-explosion"
          },
          {
            type = "damage",
            damage = { amount = 1000, type = "explosion"}
          }
        }
      }
    }
  },
---------------------------------------------------
  {
    type = "item",
    name = "heavy-land-mine",
    icon = "__HeavyTank__/graphics/icons/heavy_mine_ico.png",
    icon_size = 32,
    --flags = {"goes-to-quickbar"},
    damage_radius = 8,
	subgroup = "heavy-tank-auto",
    order = "f[land-mine]",
    place_result = "heavy-land-mine",
    stack_size = 100,
    trigger_radius = 3
  },
------  +++++
 {
    type = "land-mine",
    name = "heavy-land-mine",
    icon = "__HeavyTank__/graphics/icons/heavy_mine_ico.png",
    icon_size = 32,
    flags =
    {
      "placeable-player",
      "placeable-enemy",
--    "player-creation",
      "placeable-off-grid",
      "not-on-map"
    },
    minable = {mining_time = 1, result = "heavy-land-mine"},
    mined_sound = { filename = "__core__/sound/deconstruct-small.ogg" },
    max_health = 30,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "explosion-hit",
    picture_safe =
    {
     filename = "__HeavyTank__/graphics/icons/heavy_mine.png",
      priority = "medium",
      width = 48,
      height = 48
    },
    picture_set =
    {
     filename = "__HeavyTank__/graphics/icons/heavy_mine_set.png",
      priority = "medium",
      width = 48,
      height = 48
    },
    picture_set_enemy =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine-set-enemy.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    trigger_radius = 3,
    ammo_category = "landmine",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "nested-result",
            affects_target = true,
            action =
            {
              type = "area",
              radius = 8,
              force = "enemy", "neutral",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = { amount = 1000, type = "explosion"}
                  }
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "big-artillery-explosion"
          },
          {
            type = "damage",
            damage = { amount = 1000, type = "explosion"}
          }
        }
      }
    },
  },

  --------------------------------------------------------------------------------
---------------------------- Muzzle fire --------------------------------------
-------------------------------------------- ------------ ------  
    {
    type = "explosion",
    name = "120mm-muzzle-fire1",
    flags = {"not-on-map"},
    animations =
    {
      {
          filename = "__base__/graphics/entity/artillery-cannon-muzzle-flash/hr-muzzle-flash.png",
          line_length = 7,
          width = 276,
          height = 382,
          frame_count = 21,
          scale = 0.5, --0.5
          shift = util.by_pixel(25, -205), --(-25, -82),
          animation_speed = 0.75
      }
    },
    rotate = true,
    shift_by_projectile_height = false,
    correct_rotation = true, --true
    light = {intensity = 1, size = 10, color = {r=1.0, g=1.0, b=1.0}},
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
  
  ---------------------
      {
    type = "explosion",   
    name = "120mm-muzzle-fire2",
    flags = {"not-on-map"},
    animations =
    {
      {
          filename = "__base__/graphics/entity/artillery-cannon-muzzle-flash/hr-muzzle-flash.png",
          line_length = 7,
          width = 276,
          height = 382,
          frame_count = 21,
          scale = 0.5, --0.5
          shift = util.by_pixel(-25, -205), --(-25, -82),
          animation_speed = 0.75
      }
    },
    rotate = true,
    shift_by_projectile_height = false, --false
    correct_rotation = true, --true
    light = {intensity = 1, size = 10, color = {r=1.0, g=1.0, b=1.0}},
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
  
  
  
  
  
  
  

})