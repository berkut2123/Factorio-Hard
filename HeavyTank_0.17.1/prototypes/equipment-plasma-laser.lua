data:extend({


--------------item-----------
   {
    type = "item",
    name = "ht-plasma-mk1",
    icon = "__HeavyTank__/graphics/equipments/plasma/icon-mk1.png",
    icon_size = 32,
    placed_as_equipment_result = "ht-plasma-mk1",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
   {
    type = "item",
    name = "ht-plasma-mk2",
    icon = "__HeavyTank__/graphics/equipments/plasma/icon-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "ht-plasma-mk2",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
   {
    type = "item",
    name = "ht-plasma-mk3",
    icon = "__HeavyTank__/graphics/equipments/plasma/icon-mk3.png",
    icon_size = 32,
    placed_as_equipment_result = "ht-plasma-mk3",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
   {
    type = "item",
    name = "ht-plasma-mk4",
    icon = "__HeavyTank__/graphics/equipments/plasma/icon-mk4.png",
    icon_size = 32,
    placed_as_equipment_result = "ht-plasma-mk4",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
  ----------------------------------recipe

{
	type = "recipe",
	name = "ht-plasma-mk1",
	ingredients =
	{
		{"laser-turret", 10},
		{"flying-robot-frame", 5},
		{"substation", 3},
		{"speed-module", 5},
		{"productivity-module", 5},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "j",
	energy_required = 1,
	results=
	{
	  {type="item", name="ht-plasma-mk1", amount=1},
	}
},
{
	type = "recipe",
	name = "ht-plasma-mk2",
	ingredients =
	{
		{"ht-plasma-mk1", 1},
		{"flying-robot-frame", 5},
		{"substation", 6},
		{"speed-module-2", 5},
		{"productivity-module-2", 5},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "k",
	energy_required = 1,
	results=
	{
	  {type="item", name="ht-plasma-mk2", amount=1},
	}
},
{
	type = "recipe",
	name = "ht-plasma-mk3",
	ingredients =
	{
		{"ht-plasma-mk2", 1},
		{"flying-robot-frame", 5},
		{"substation", 9},
		{"speed-module-3", 5},
		{"productivity-module-3", 5},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "l",
	energy_required = 1,
	results=
	{
	  {type="item", name="ht-plasma-mk3", amount=1},
	}
},
{
	type = "recipe",
	name = "ht-plasma-mk4",
	ingredients =
	{
		{"ht-plasma-mk3", 1},
		{"flying-robot-frame", 5},
		{"substation", 15},
		{"speed-module-3", 15},
		{"productivity-module-3", 15},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "m",
	energy_required = 1,
	results=
	{
	  {type="item", name="ht-plasma-mk4", amount=1},
	}
},
-----------------------------------entity
{
    type = "active-defense-equipment",
    name = "ht-plasma-mk1",
    sprite =  {
      filename = "__HeavyTank__/graphics/equipments/plasma/equipment-mk1.png",
      width = 256, height = 160,
      priority = "medium" },
    shape = { width = 5, height = 3, type = "full" },
    energy_source =  {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "15MJ" },
    attack_parameters =  {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1, ------------<<<<<<
      cooldown = 30,------------<<<<<<
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 30,
	  min_range = 10,
      sound = {  filename = "__base__/sound/fight/pulse.ogg", volume = 0.25  },
      ammo_type =  {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "5000KJ",------------<<<<<<
        speed = 1,
        action =
        {	{	type = "direct",
				action_delivery =
				{type = "projectile",
				projectile = "ht-plasma-projectile-mk1",
                starting_speed = 1.5,
                max_range = 80,------------<<<<<<
				min_range = 10,}------------<<<<<<
		}   }    },   },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},----------------------------------------------------------------------
{
    type = "active-defense-equipment",
    name = "ht-plasma-mk2",
    sprite =  {
      filename = "__HeavyTank__/graphics/equipments/plasma/equipment-mk2.png",
      width = 256, height = 160,
      priority = "medium" },
    shape = { width = 5, height = 3, type = "full" },
    energy_source =  {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "18MJ" },
    attack_parameters =  {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1.5, ------------<<<<<<
      cooldown = 25,------------<<<<<<
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 40,
	  min_range = 10,
      sound = {  filename = "__base__/sound/fight/pulse.ogg", volume = 0.25  },
      ammo_type =  {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "6250KJ",------------<<<<<<
        speed = 1,
        action =
        {	{	type = "direct",
				action_delivery =
				{type = "projectile",
				projectile = "ht-plasma-projectile-mk1",
                starting_speed = 1.5,
                max_range = 80,------------<<<<<<
				min_range = 10,}------------<<<<<<
		}   }    },   },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},----------------------------------------------------------------------
{
    type = "active-defense-equipment",
    name = "ht-plasma-mk3",
    sprite =  {
      filename = "__HeavyTank__/graphics/equipments/plasma/equipment-mk3.png",
      width = 256, height = 160,
      priority = "medium" },
    shape = { width = 5, height = 3, type = "full" },
    energy_source =  {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "30MJ" },
    attack_parameters =  {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 2.2, ------------<<<<<<
      cooldown = 20,------------<<<<<<
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 50,
	  min_range = 10,
      sound = {  filename = "__base__/sound/fight/pulse.ogg", volume = 0.25  },
      ammo_type =  {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "10000KJ",------------<<<<<<
        speed = 1,
        action =
        {	{	type = "direct",
				action_delivery =
				{type = "projectile",
				projectile = "ht-plasma-projectile-mk1",
                starting_speed = 1.5,
                max_range = 90,------------<<<<<<
				min_range = 10,}------------<<<<<<
		}   }    },   },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},----------------------------------------------------------------------
{
    type = "active-defense-equipment",
    name = "ht-plasma-mk4",
    sprite =  {
      filename = "__HeavyTank__/graphics/equipments/plasma/equipment-mk4.png",
      width = 256, height = 160,
      priority = "medium" },
    shape = { width = 5, height = 3, type = "full" },
    energy_source =  {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "50MJ" },
    attack_parameters =  {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 3.5, ------------<<<<<<
      cooldown = 15,------------<<<<<<
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 60,
	  min_range = 10,
      sound = {  filename = "__base__/sound/fight/pulse.ogg", volume = 0.25  },
      ammo_type =  {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "12500KJ",------------<<<<<<
        speed = 1,
        action =
        {	{	type = "direct",
				action_delivery =
				{type = "projectile",
				projectile = "ht-plasma-projectile-mk1",
                starting_speed = 1.5,
                max_range = 100,------------<<<<<<
				min_range = 10,}------------<<<<<<
		}   }    },   },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},
-----------------------------------projectile

{
    type = "projectile",
    name = "ht-plasma-projectile-mk1",
    flags = {"not-on-map"},
    acceleration = 0,
    action =
    {  {type = "direct",
        action_delivery = {
          type = "instant",
          target_effects =  { {
            type = "create-entity",
            entity_name = "ht-plasma-explosion-mk1"
		} 				  } } },
		{type = "area",
         radius = 4,
         action_delivery =
         { type = "instant",
          target_effects =
          { { type = "damage", damage = {amount = 125, type = "electric" }},
            { type = "damage", damage = {amount = 75, type = "laser"    }},
            { type = "damage", damage = {amount = 50, type = "explosion"}},
			{ type = "create-sticker",	sticker = "slow-sticker" }
    }   }}},
    animation = {
      filename = "__HeavyTank__/graphics/entities/plasma-projectile.png",
      tint = {r = 0, g = 0.5, b = 1, a = 1},
      frame_count = 32,
      line_length = 8,
      x = 512,
      y = 0,
      width = 64,
      height = 64,
      priority = "high" },
  },
-----------------------------------explosion
  {
    type = "explosion",
    name = "ht-plasma-explosion-mk1",
    flags = {"not-on-map"},
    animations =
    { { filename = "__HeavyTank__/graphics/entities/plasma-explosion.png",
        tint = {r = 0, g = 0.5, b = 1, a = 1},
        priority = "extra-high",
        width = 128, height = 128, scale = 2,
        frame_count = 64, line_length = 8,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 1   } },
    light = {intensity = 1, size = 50},
    sound = {
      aggregation = { max_count = 1, remove = true},
      variations =
      { { filename = "__base__/sound/fight/large-explosion-1.ogg", volume = 1.0},
        { filename = "__base__/sound/fight/large-explosion-2.ogg", volume = 1.0}}
  },},
  

--------------------------------- gatling Laser Equipment ----------------------------------------

---------------------
   {
    type = "item",
    name = "gatling-laser-mk1",
    icon = "__HeavyTank__/graphics/equipments/laser-mk1-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "gatling-laser-mk1",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
    {
    type = "item",
    name = "gatling-laser-mk2",
    icon = "__HeavyTank__/graphics/equipments/laser-mk2-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "gatling-laser-mk2",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
    {
    type = "item",
    name = "gatling-laser-mk3",
    icon = "__HeavyTank__/graphics/equipments/laser-mk3-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "gatling-laser-mk3",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
      
     ------------------
    {
    type = "item",
    name = "gatling-laser-mk4",
    icon = "__HeavyTank__/graphics/equipments/laser-mk4-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "gatling-laser-mk4",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "ht_laser_plasma",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
  ----------------------------------recipe

{
	type = "recipe",
	name = "gatling-laser-mk1",
	ingredients =
	{
		{"laser-turret", 10},
		{"flying-robot-frame", 5},
		{"substation", 3},
		{"speed-module", 5},
		{"productivity-module", 5},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "f",
	energy_required = 1,
	results=
	{
	  {type="item", name="gatling-laser-mk1", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gatling-laser-mk2",
	ingredients =
	{
		{"gatling-laser-mk1", 1},
		{"flying-robot-frame", 5},
		{"substation", 6},
		{"speed-module-2", 5},
		{"productivity-module-2", 5},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "g",
	energy_required = 1,
	results=
	{
	  {type="item", name="gatling-laser-mk2", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gatling-laser-mk3",
	ingredients =
	{
		{"gatling-laser-mk2", 1},
		{"flying-robot-frame", 5},
		{"substation", 9},
		{"speed-module-3", 5},
		{"productivity-module-3", 5},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "h",
	energy_required = 1,
	results=
	{
	  {type="item", name="gatling-laser-mk3", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gatling-laser-mk4",
	ingredients =
	{
		{"gatling-laser-mk3", 1},
		{"flying-robot-frame", 5},
		{"substation", 15},
		{"speed-module-3", 15},
		{"productivity-module-3", 15},
	},
	enabled = false,
	subgroup = "ht_laser_plasma",
	order = "i",
	energy_required = 1,
	results=
	{
	  {type="item", name="gatling-laser-mk4", amount=1},
	}
},
-------------------------------------------------entity
{
    type = "active-defense-equipment",
    name = "gatling-laser-mk1",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/laser-mk1.png",
      width = 340,
      height = 160,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "10MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 20,
      sound =
      {
         filename = "__base__/sound/fight/pulse.ogg",
         volume = 0.25
      },
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "1000KJ",
        speed = 1,
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
						damage = { amount = 50 , type = "laser"}
						},
						{
						type = "create-explosion",
						entity_name = "yellow-beam"
						},
						{ type = "create-sticker",	sticker = "slow-sticker" }
					}
				}
			}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},
---------------------
{
    type = "active-defense-equipment",
    name = "gatling-laser-mk2",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/laser-mk2.png",
      width = 340,
      height = 160,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 3,
      type = "full"
    },
     energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "30MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 5,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 25,
      sound =
      {
         filename = "__base__/sound/fight/pulse.ogg",
         volume = 0.25
      },
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "1667KJ",
        speed = 1,
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
						damage = { amount = 100 , type = "laser"}
						},
						{
						type = "create-explosion",
						entity_name = "red-beam"
						},
						{ type = "create-sticker",	sticker = "slow-sticker" }
					}
				}
			}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},
----------------- 
{
    type = "active-defense-equipment",
    name = "gatling-laser-mk3",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/laser-mk3.png",
      width = 340,
      height = 160,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "150MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 4,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 30,
      sound =
      {
         filename = "__base__/sound/fight/pulse.ogg",
         volume = 0.25
      },
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "2000KJ",
        speed = 1,
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
						damage = { amount = 150 , type = "laser"}
						},
						{
						type = "create-explosion",
						entity_name = "blue-beam"
						},
						{ type = "create-sticker",	sticker = "slow-sticker" }
					}
				}
			}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},

---------------- 
{
    type = "active-defense-equipment",
    name = "gatling-laser-mk4",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/laser-mk4.png",
      width = 340,
      height = 160,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "90MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 4,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 35,
      sound =
      {
         filename = "__base__/sound/fight/pulse.ogg",
         volume = 0.25
      },
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "3334KJ",
        speed = 1,
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
						damage = { amount = 225 , type = "laser"}
						},
						{
						type = "create-explosion",
						entity_name = "green-beam"
						},
						{ type = "create-sticker",	sticker = "slow-sticker" }
					}
				}
			}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},



----------------beam - explosion
{
    type = "explosion",
    name = "yellow-beam",
    flags = {"not-on-map"},

    rotate = true,
    beam = true,
    animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/1-yellow-beam.png",
        priority = "extra-high",
        width = 20,
        height = 2,
        frame_count = 6,
		animation_speed = 0.4,
      }
    },
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
},
-------------
{
    type = "explosion",
    name = "red-beam",
    flags = {"not-on-map"},

    rotate = true,
    beam = true,
    animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/2-red-beam.png",
        priority = "extra-high",
        width = 20,
        height = 2,
        frame_count = 6,
		animation_speed = 0.4,
      }
    },
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
},
-------------
{
    type = "explosion",
    name = "blue-beam",
    flags = {"not-on-map"},

    rotate = true,
    beam = true,
    animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/3-blue-beam.png",
        priority = "extra-high",
        width = 20,
        height = 2,
        frame_count = 6,
		animation_speed = 0.4,
      }
    },
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
},
  -------------
{
    type = "explosion",
    name = "green-beam",
    flags = {"not-on-map"},

    rotate = true,
    beam = true,
    animations =
    {
      {
        filename = "__HeavyTank__/graphics/entities/4-green-beam.png",
        priority = "extra-high",
        width = 20,
        height = 2,
        frame_count = 6,
		animation_speed = 0.4,
      }
    },
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
},
  
})

