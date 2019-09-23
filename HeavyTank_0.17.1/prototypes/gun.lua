data:extend({
-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------Experimental TANK-------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------

  {
    type = "gun",
    name = "120mm-Twin-Cannons-Gauss-mode-exp",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-cannon-shell",
      cooldown = 160,
	  damage_modifier = 4,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 0, --6
	  projectile_center = {0,-0.2},--{-0.15625, 1},
      range = 120,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANNHVY4.ogg",
          volume = 1.4
        }
      },
    },
    stack_size = 1
  },
----------------------------------------------------------------
  {
    type = "gun",
    name = "120mm-Twin-Cannons-Fast-Reload-mode-exp",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-cannon-shell",
      cooldown = 48,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0, --6
	  projectile_center = {0,-0.2},--{-0.15625, 1},
      range = 90,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANNHVY4.ogg",
          volume = 1
        }
      },
    },
    stack_size = 5
  },
  ----------------------------------------------------------------
    {
    type = "gun",
    name = "25mm-Twin-AutoCannons-Gauss-mode-exp",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-autocannon-shell",
      cooldown = 12,
      movement_slow_down_factor = 0.0,
      damage_modifier = 3,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.15,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.2,		
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {-0.5, .2},
--	  projectile_center = {-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance = 1,
      range = 75,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 1
  },
  
    ----------------------------------------------------------------
  {
    type = "gun",
    name = "HT-Rocket-Pad-3-exp",
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 15,
      movement_slow_down_factor = 0,
      damage_modifier = 1.5,
      projectile_center = {-0.5, .2}, --{-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance =  -1,
      range = 200,
	  min_range = 10,
      sound =
      {{filename = "__base__/sound/fight/rocket-launcher.ogg",volume = 1.0}},
    },
    stack_size = 1
  },
------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------HEAVY TANK-------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

  {
    type = "gun",
    name = "120mm-Twin-Cannons-Gauss-mode",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-cannon-shell",
      cooldown = 240,
	  damage_modifier = 3,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 0, --6
	  projectile_center = {0,-0.2},--{-0.15625, 1},
      range = 120,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANNHVY4.ogg",
          volume = 1.4
        }
      },
    },
    stack_size = 5
  },
----------------------------------------------------------------
  {
    type = "gun",
    name = "120mm-Twin-Cannons-Fast-Reload-mode",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-cannon-shell",
      cooldown = 60,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0, --6
	  projectile_center = {0,-0.2},--{-0.15625, 1},
      range = 90,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANNHVY4.ogg",
          volume = 1
        }
      },
    },
    stack_size = 5
  },
  ----------------------------------------------------------------
    {
    type = "gun",
    name = "25mm-Twin-AutoCannons-Gauss-mode",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-autocannon-shell",
      cooldown = 12,
      movement_slow_down_factor = 0.0,
      damage_modifier = 2,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.15,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.2,		
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {-0.5, .2},
--	  projectile_center = {-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance = 1,
      range = 75,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 1
  },
  
    ----------------------------------------------------------------
  {
    type = "gun",
    name = "HT-Rocket-Pad-3",
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 15,
      movement_slow_down_factor = 0,
      damage_modifier = 1,
      projectile_center = {-0.5, .2}, --{-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance =  -1,
      range = 200,
	  min_range = 10,
      sound =
      {{filename = "__base__/sound/fight/rocket-launcher.ogg",volume = 1.0}},
    },
    stack_size = 1
  },
------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------MEDIUM TANK-------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
  
  {
    type = "gun",
    name = "120mm-Twin-Cannons",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-cannon-shell",
      cooldown = 120,
	  damage_modifier = 1,
      movement_slow_down_factor = 0.0,
      projectile_creation_distance = 0, --6
	  projectile_center = {0,-0.2},--{-0.15625, 1},
      range = 90,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANNHVY4.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 5
  },
----------------------------------------------------------------
  {
    type = "gun",
    name = "25mm-Twin-AutoCannons",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-autocannon-shell",
      cooldown = 12,
      movement_slow_down_factor = 0.7,
      damage_modifier = 1,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.15,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.2,		
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {0, .2},
--	  projectile_center = {-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance = 1,
      range = 50,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 1
  },
  ----------------------------------------------------------------
  {
    type = "gun",
    name = "HT-Rocket-Pad-2",
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 30,
      movement_slow_down_factor = 0,
      damage_modifier = 1,
      projectile_center = {-0.5, .2}, --{-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance =  -1,
      range = 100,
	  min_range = 10,
      sound =
      {{filename = "__base__/sound/fight/rocket-launcher.ogg",volume = 1.0}},
    },
    stack_size = 1
  },
 ------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------SCRAP TANK-------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "gun",
    name = "prototype-120mm-Twin-Cannons",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-cannon-shell",
      cooldown = 180,
	  damage_modifier = 0.8,
      movement_slow_down_factor = 0.0,
      projectile_creation_distance = 0, --6
	  projectile_center = {0,-0.2},--{-0.15625, 1},
      range = 60,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 5
  },
  
  ----------------------------------------------------------------
    {
    type = "gun",
    name = "25mm-crude-Twin-AutoCannons",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-autocannon-shell",
      cooldown = 15,
      movement_slow_down_factor = 0.7,
      damage_modifier = 1,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.15,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.2,		
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {-0.5, .2},
--	  projectile_center = {-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance = 1,
      range = 35,
      sound =
      {
        {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 1
  },
    ----------------------------------------------------------------
  {
    type = "gun",
    name = "HT-Rocket-Pad-1",
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 32,
	flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 60,
      movement_slow_down_factor = 0,
      damage_modifier = 1,
      projectile_center = {-0.5, .2}, --{-0.15625, -0.07812}, (<>,AV)
      projectile_creation_distance =  -1,
      range = 50,
	  min_range = 10,
      sound =
      {{filename = "__base__/sound/fight/rocket-launcher.ogg",volume = 1.0}},
    },
    stack_size = 1
  },
})