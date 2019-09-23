data:extend({
{
    type = "projectile",
    name = "120mm-crude-shell",
    flags = {"not-on-map"},
    collision_box = {{-3.00, -0.00}, {3.00, 0.00}},
    acceleration = -0.03,
    direction_only = true,
	piercing_damage = 1000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 500, type = "physical"}
		  },
		  {
		   type = "push-back",
		   distance = 1,
		  },
		  {type = "create-sticker",	sticker = "slow-sticker" }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmCrude.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
  -----------------------------------------------------------------
{
    type = "projectile",
    name = "120mm-shell",
    flags = {"not-on-map"},
    collision_box = {{-3.00, -0.00}, {3.00, 0.00}}, --{{-3.00, -3.00}, {3.00, 3.00}},
    acceleration = 0,
    direction_only = true,
	piercing_damage = 30000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 500, type = "physical"}
		  },
		  {
		  type = "damage",
          damage = {amount = 400, type = "explosion"}
		  },
		  {
		   type = "push-back",
		   distance = 1.5,
		  },
		  {type = "create-sticker",	sticker = "slow-sticker" }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmShells.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
    -----------------------------------------------------------------

{
    type = "projectile",
    name = "120mm-piercing",
    flags = {"not-on-map"},
    collision_box = {{-3.00, -0.00}, {3.00, 0.00}}, --{{-3.00, -3.00}, {3.00, 3.00}},
    acceleration = 0,
    direction_only = true,
	piercing_damage = 30000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 1000, type = "piercing"}
		  },
		  {
		   type = "push-back",
		   distance = 2,
		  },
		  {type = "create-sticker",	sticker = "slow-sticker" }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmShells.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
     -----------------------------------------------------------------

{
    type = "projectile",
    name = "120mm-uranium-piercing",
    flags = {"not-on-map"},
    collision_box = {{-3.00, -0.00}, {3.00, 0.00}}, --{{-3.00, -3.00}, {3.00, 3.00}},
    acceleration = 0,
    direction_only = true,
	piercing_damage = 50000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 1000, type = "piercing"}
		  },
		  {
		  type = "damage",
          damage = {amount = 1000, type = "pure"}
		  },
		  {
		   type = "push-back",
		   distance = 3,
		  },
		  {type = "create-sticker",	sticker = "slow-sticker" }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmUranium.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
  -----------------------------------------------------------------
  {
    type = "projectile",
    name = "120mm-explosive-shell",
    flags = {"not-on-map"},
    collision_box = {{-3.00, -3.00}, {3.00, 3.00}},
    acceleration = 0,
	piercing_damage = 500,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 500, type = "physical"}
		  },
		  {
		   type = "push-back",
		   distance = 3,
		  }
        }
      }
    },
	final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {
			type = "destroy-cliffs",
			radius = 8,
		  },
          {
            type = "create-entity",
            entity_name = "big-shell-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 8,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 2000, type = "explosion"}
                  },
                }
              }
            }
          },
		  {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
			  trigger_from_target = true,
              repeat_count = 1000,
              radius = 12,
              action_delivery =
              {
                type = "projectile",
                projectile = "shockwave",
                starting_speed = 0.75
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmExplosive.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
  -----------------------------------------------------------------
  {
    type = "projectile",
    name = "120mm-plasma-shell",
    flags = {"not-on-map"},
    collision_box = {{-3.00, -3.00}, {3.00, 3.00}},
    acceleration = 0,
	piercing_damage = 1000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 500, type = "physical"}
		  },
		  {
		   type = "push-back",
		   distance = 4,
		  }
        }
      }
    },
	final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {
			type = "destroy-cliffs",
			radius = 8,
		  },
          {
            type = "create-entity",
            entity_name = "big-plasma-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 8,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 1500, type = "electric"}
                  },
				  {
                    type = "damage",
                    damage = {amount = 1500, type = "fire"}
                  },
                }
              }
            }
          },
		  {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
			  trigger_from_target = true,
              repeat_count = 1000,
              radius = 18,
              action_delivery =
              {
                type = "projectile",
                projectile = "shockwave",
                starting_speed = 0.75
              }
            }
          },
		  {
          type = "nested-result",
          show_in_tooltip = true,
          action =
			{
				type = "area",
				target_entities = false,
				trigger_from_target = true,
				repeat_count = 150,				
				radius = 10,
				action_delivery =
				{
					type = "projectile",
					projectile = "ht-napalm-projectile",
					starting_speed = 0.5
				},
			}
          }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmExplosive.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
  -----------------------------------------------------------------
  {
    type = "projectile",
    name = "120mm-concussive-shell",
    flags = {"not-on-map"},
    collision_box = {{-3.00, -3.00}, {3.00, 3.00}},
    acceleration = 0,
	piercing_damage = 1000,
	action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 1000, type = "physical"}
		  },
		  {
		   type = "push-back",
		   distance = 4,
		  }
        }
      }
    },
	final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {
			type = "destroy-cliffs",
			radius = 4,
		  },
          {
            type = "create-entity",
            entity_name = "big-concussive-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 8,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 2000, type = "pure"}
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
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
			  trigger_from_target = true,
              repeat_count = 1500,
              radius = 30,
              action_delivery =
              {
                type = "projectile",
                projectile = "shockwave",
                starting_speed = 0.75
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmConcussive.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
  
  
  -----------------------------------------------------------------
  {
    type = "projectile",
    name = "heavytank-cluster-shell",
    flags = {"not-on-map"},
	collision_box = {{-1.05, -1.00}, {1.05, 1.00}},
    acceleration = 0,
    action =
    {
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "create-entity",
						entity_name = "explosion"
					},
				}
			}
		},
	    {
			type = "area",
			radius = 4,
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = {amount = 80, type = "explosion"}
					},
					{
						type = "create-entity",
						entity_name = "explosion"
					},
					{
					type = "push-back",
					distance = 1,
					}
				}
			}
		},
      {
        type = "cluster",
        cluster_count = 3,
        distance = 3,
        distance_deviation = 0,
        action_delivery =
        {
          type = "projectile",
          projectile = "heavytank-cluster",
          direction_deviation = 0.6,
          starting_speed = 2,
          starting_speed_deviation = 0
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
   {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmCluster.png",
      frame_count = 1,
      width = 200,
      height = 500,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
   -----------------------------------------------------------------
  {
    type = "projectile",
    name = "heavytank-uranium-cluster-shell",
    flags = {"not-on-map"},
	collision_box = {{-1.05, -1.00}, {1.05, 1.00}},
    acceleration = 0,
    action =
    {
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "create-entity",
						entity_name = "explosion"
					},
				}
			}
		},
	    {
			type = "area",
			radius = 5,
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = {amount = 120, type = "pure"}
					},
					{
						type = "create-entity",
						entity_name = "explosion"
					},
					{
					type = "push-back",
					distance = 1.5,
					}
				}
			}
		},
      {
        type = "cluster",
        cluster_count = 5,
        distance = 3.5,
        distance_deviation = 0,
        action_delivery =
        {
          type = "projectile",
          projectile = "heavytank-cluster",
          direction_deviation = 0.6,
          starting_speed = 3,
          starting_speed_deviation = 0
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
   {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmUranium.png",
      frame_count = 1,
      width = 200,
      height = 500,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
   -----------------------------------------------------------------
  {
    type = "projectile",
    name = "120mm-uranium-shell",
    flags = {"not-on-map"},
    collision_box = {{-0.00, -0.00}, {0.00, 0.00}},
    acceleration = 0,
	--piercing_damage = 5000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
		  type = "damage",
          damage = {amount = 1000, type = "physical"}
		  },
		  {
		   type = "push-back",
		   distance = 4,
		  }
        }
      }
    },
	final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {
			type = "destroy-cliffs",
			radius = 10,
		  },
          {
            type = "create-entity",
            entity_name = "big-uranium-explosion"
          },
		  {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 10,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 5000, type = "explosion"}
                  },
                }
              }
            }
          },
          {
            type = "damage",
            damage = {amount = 2000, type = "physical"}
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
			  trigger_from_target = true,
              repeat_count = 1500,
              radius = 20,
              action_delivery =
              {
                type = "projectile",
                projectile = "shockwave",
                starting_speed = 0.75
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmUranium.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
   -----------------------------------------------------------------
  {
    type = "projectile",
    name = "120mm-atomic-shell",
    flags = {"not-on-map"},
    collision_box = {{-0.00, -0.00}, {0.00, 0.00}},
    acceleration = 0,
	--piercing_damage = 5000,
    -- action =
    -- {
      -- type = "direct",
      -- action_delivery =
      -- {
        -- type = "instant",
        -- target_effects =
        -- {
          -- {
		  -- type = "damage",
          -- damage = {amount = 1000, type = "physical"}
		  -- }
        -- }
      -- }
    -- },
	final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {
			type = "destroy-cliffs",
			radius = 30,
		  },
          {
            type = "create-entity",
            entity_name = "big-atomic-explosion"
          },
		  {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 20,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10000, type = "explosion"}
                  },
                }
              }
            }
          },
          {
            type = "damage",
            damage = {amount = 4000, type = "physical"}
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
			  trigger_from_target = true,
              repeat_count = 3000,
              radius = 45,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave",
                starting_speed = 0.5
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
			  trigger_from_target = true,
              repeat_count = 6000,
              radius = 80,
              action_delivery =
              {
                type = "projectile",
                projectile = "shockwave",
                starting_speed = 1.5
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/Projectiles/120mmAtomic.png",
      frame_count = 1,
      width = 200,
      height = 1000,
	  shift = util.by_pixel(0,30),
	  scale = 0.3,
      priority = "high"
    },
  },
  ---------shock wave
  {
    type = "projectile",
    name = "shockwave",
    flags = {"not-on-map"},
    acceleration = 0,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "shockwave-wave"
            }
          }
        }
      },
      {
        type = "area",
        radius = 0.7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {{
            type = "damage",
            damage = {amount = 50, type = "impact"}
          },
		  {type = "create-sticker",	sticker = "slow-sticker" }
		  },
        }
      }
    },
    animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    },
    shadow =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    }
  },
  
  
  {
    type = "sticker",
    name = "slow-sticker",
    flags = {"not-on-map"},
    duration_in_ticks = 5*60,
    target_movement_modifier = 0.5
  },
  
  
-----------------------------------------------------------------
  {
    type = "projectile",
    name = "25mm-crude-shell",
    flags = {"not-on-map"},
	collision_box = {{-1.00, -1.00}, {1.00, 1.00}},
    acceleration = 0,
 -- direction_only = true,
    action =
	{
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = {amount = 50, type = "physical"}
					}
				}
			}
		}
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/25mmShell.png",
      frame_count = 1,
      width = 12,
      height = 125,
      priority = "high"
    },
  },
-----------------------------------------------------------------
  {
    type = "projectile",
    name = "25mm-shell",
    flags = {"not-on-map"},
	collision_box = {{-1.00, -1.00}, {1.00, 1.00}},
    acceleration = 0,
 -- direction_only = true,
    action =
	{
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = {amount = 150, type = "physical"}
					}
				}
			}
		}
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/25mmShell.png",
      frame_count = 1,
      width = 12,
      height = 125,
      priority = "high"
    },
  },
    -----------------------------------------------------------------
  {
    type = "projectile",
    name = "25mm-fire-shell",
    flags = {"not-on-map"},
	collision_box = {{-1.00, -1.00}, {1.00, 1.00}},
    acceleration = 0,
    action =
	{
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = {amount = 100, type = "fire"}
					},
					{
						type = "create-entity",
						show_in_tooltip = true,
						entity_name = "ht-napalm-flame"
					},
					{
						type = "create-sticker", 
						show_in_tooltip = true,
						sticker = "fire-sticker"
					}
				}
			}
		}
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/25mmShell.png",
      frame_count = 1,
      width = 12,
      height = 125,
      priority = "high"
    },
  },
     -----------------------------------------------------------------
  {
    type = "projectile",
    name = "25mm-acid-shell",
    flags = {"not-on-map"},
	collision_box = {{-1.00, -1.00}, {1.00, 1.00}},
    acceleration = 0,
    action =
	{
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = {amount = 100, type = "acid"}
					},
					{
						type = "create-entity",
						show_in_tooltip = true,
						entity_name = "ht-poison-cloud-small"
					}
				}
			}
		}
    },
    animation =
    {
      filename = "__HeavyTank__/graphics/entities/25mmShell.png",
      frame_count = 1,
      width = 12,
      height = 125,
      priority = "high"
    },
  },
  -----------------------------------------------------------------
    {
    type = "projectile",
    name = "heavytank-cluster",
    flags = {"not-on-map"},
    acceleration = 0,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            },
          }
        }
      },
      {
        type = "area",
        radius = 4,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "damage",
            damage = {amount = 100, type = "explosion"}
            },
            {
            type = "create-entity",
            entity_name = "explosion"
            }
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/grenade/grenade.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    },
  },
  
   -----------------------------------------------------------------
        {
    type = "projectile",
    name = "ht-explosive-rocket",
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
		  {
              type = "destroy-cliffs",
              radius = 6,
          },
          {
            type = "create-entity",
            entity_name = "big-artillery-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 6,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 2000, type = "explosion"}
                  },
                }
              }
            }
          }
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
     {
    type = "projectile",
    name = "ht-poison-rocket",
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
          entity_name = "ht-poison-cloud"
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
        {
	type = "projectile",
    name = "ht-napalm-rocket",
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
          type = "nested-result",
          show_in_tooltip = true,
          action =
			{
				type = "area",
				target_entities = false,
				trigger_from_target = true,
				repeat_count = 50,				
				radius = 10,
				action_delivery =
				{
					type = "projectile",
					projectile = "ht-napalm-projectile",
					starting_speed = 0.5
				},
			}
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
   {
    type = "projectile",
    name = "ht-napalm-projectile",
	flags = {"not-on-map"},
    acceleration = 0,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
			type = "create-entity",
			entity_name = "ht-napalm-flame"
          }
        }
      },
    },
	animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    },
    shadow =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    }
  },
-----------------------------------------------------------------
  {
    type = "projectile",
    name = "ht-uranium-rocket",
    flags = {"not-on-map"},
    acceleration = 0,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {
              type = "destroy-cliffs",
              radius = 6,
          },
          {
		  type = "damage",
          damage = {amount = 1000, type = "physical"}
		  }
        }
      }
    },
	final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "big-uranium-explosion"
          },
		  {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 10,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 5000, type = "explosion"}
                  },
                }
              }
            }
          },
          {
            type = "damage",
            damage = {amount = 2000, type = "physical"}
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
			  trigger_from_target = true,
              repeat_count = 1500,
              radius = 20,
              action_delivery =
              {
                type = "projectile",
                projectile = "shockwave",
                starting_speed = 0.75
              }
            }
          }
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
--------------------------------------------------- storm capsule
{
    type = "projectile",
    name = "storm-capsule",
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
          entity_name = "ht-storm-cloud"
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
	
	------------------------------


	
{
    type = "explosion",
    name = "storm-lightning",
    flags = {"not-on-map"},

    rotate = true,
    beam = true,
	---------
	animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/beam-body-1.png",
        line_length = 1,
        width = 39,
        height = 45,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__HeavyTank__/graphics/entities/beam-body-2.png",
        line_length = 1,
        width = 39,
        height = 45,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__HeavyTank__/graphics/entities/beam-body-3.png",
        line_length = 1,
        width = 39,
        height = 45,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__HeavyTank__/graphics/entities/beam-body-4.png",
        line_length = 1,
        width = 39,
        height = 45,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__HeavyTank__/graphics/entities/beam-body-5.png",
        line_length = 1,
        width = 39,
        height = 45,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__HeavyTank__/graphics/entities/beam-body-6.png",
        line_length = 1,
        width = 39,
        height = 45,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
    }
	----
	
}
})