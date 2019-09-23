data:extend({
----------------------------------------------------------------
--------------------------------adaptive engines

------------------------------Nuclear mk2
    {
        type = "item",
        name = "upgraded-reactor",
        icon = "__HeavyTank__/graphics/equipments/upgraded_reactor.png",
        icon_size = 32,
        placed_as_equipment_result = "upgraded-reactor",
        ----flags = { "goes-to-main-inventory" },
	subgroup = "ht_equipment",
        order = "c",
        stack_size = 20
    },
----------------
{
	type = "recipe",
	name = "upgraded-reactor",
	category = "advanced-crafting",
	ingredients =
	{
	  {"low-density-structure", 100},
	  {"rocket-control-unit", 100},
      {"processing-unit", 250},
	  {"secundary-reactor", 4},
	},
	enabled = false,
	subgroup = "ht_equipment",
	order = "c",
	energy_required = 30,
	results=
	{
	  {type="item", name="upgraded-reactor", amount=1},
	}
},
---------------
	{
        type = "generator-equipment",
        name = "upgraded-reactor",
        sprite =
        {
            filename = "__HeavyTank__/graphics/equipments/reactor2.png",
            width = 320,
            height = 320,
            priority = "medium"
        },
        shape =
			{
            width = 3,
            height = 3,
            type = "full"
			},
		burner =
			{
			fuel_category = "nuclear",
			effectivity = 1,
			fuel_inventory_size = 2,
			burnt_inventory_size = 2
			},
        energy_source =
        {
            type = "burner",
            usage_priority = "secondary-output"
        },
        power = "50MW",
        categories = { "nuclear" }
    },

------------------------------Nuclear
    {
        type = "item",
        name = "secundary-reactor",
        icon = "__HeavyTank__/graphics/equipments/secondary_reactor.png",
        icon_size = 32,
        placed_as_equipment_result = "secundary-reactor",
        ----flags = { "goes-to-main-inventory" },
	subgroup = "ht_equipment",
        order = "b",
        stack_size = 20
    },
----------------
{
	type = "recipe",
	name = "secundary-reactor",
	category = "advanced-crafting",
	ingredients =
	{
      {"steel-plate", 250},
      {"advanced-circuit", 250},
      {"copper-plate", 250},
	},
	enabled = false,
	subgroup = "ht_equipment",
	order = "b",
	energy_required = 30,
	results=
	{
	  {type="item", name="secundary-reactor", amount=1},
	}
},
---------------
	{
        type = "generator-equipment",
        name = "secundary-reactor",
        sprite =
        {
            filename = "__HeavyTank__/graphics/equipments/reactor.png",
            width = 160,
            height = 160,
            priority = "medium"
        },
        shape =
			{
            width = 2,
            height = 2,
            type = "full"
			},
		burner =
			{
			fuel_category = "nuclear",
			effectivity = 1,
			fuel_inventory_size = 1,
			burnt_inventory_size = 1
			},
        energy_source =
        {
            type = "burner",
            usage_priority = "secondary-output"
        },
        power = "10MW",
        categories = { "nuclear" }
    },
------------------------------------------Diesel
	   {
        type = "item",
        name = "diesel-generator",
        icon = "__HeavyTank__/graphics/equipments/diesel_engine_generator.png",
        icon_size = 32,
        placed_as_equipment_result = "diesel-generator",
        --flags = { "goes-to-main-inventory" },
	subgroup = "ht_equipment",
        order = "a",
        stack_size = 20
    },
----------------
{
	type = "recipe",
	name = "diesel-generator",
	category = "advanced-crafting",
	ingredients =
	{
      {"pump", 10},
      {"advanced-circuit", 25},
      {"engine-unit", 25},
	  {"steel-plate", 10},
	},
	enabled = false,
	subgroup = "ht_equipment",
	order = "a",
	energy_required = 15,
	results=
	{
	  {type="item", name="diesel-generator", amount=1},
	}
},
---------------
	{
        type = "generator-equipment",
        name = "diesel-generator",
        sprite =
        {
            filename = "__HeavyTank__/graphics/equipments/diesel_engine_generator.png",
            width = 32,
            height = 32,
            priority = "medium"
        },
        shape =
			{
            width = 2,
            height = 2,
            type = "full"
			},
		burner =
			{
			fuel_category = "liquid-fuel",
			effectivity = 1,
			fuel_inventory_size = 1,
			burnt_inventory_size = 1
			},
        energy_source =
        {
            type = "burner",
            usage_priority = "secondary-output"
        },
        power = "5MW",
        categories = { "diesel" }
    },
	

------------------------------------------gun turret equipment----------------------------------------------------
------------------------------item
    {
    type = "item",
    name = "gun-turret-equipment-NR",
    icon = "__HeavyTank__/graphics/equipments/gtex.png",
    icon_size = 32,
    placed_as_equipment_result = "gun-turret-equipment-NR",
	flags = {"hidden"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
    {
    type = "item",
    name = "gun-turret-equipment-NR1k",
    icon = "__HeavyTank__/graphics/equipments/gtenr-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "gun-turret-equipment-NR1k",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
    {
    type = "item",
    name = "gun-turret-equipment-PR",
    icon = "__HeavyTank__/graphics/equipments/gtex.png",
    icon_size = 32,
    placed_as_equipment_result = "gun-turret-equipment-PR",
	flags = {"hidden"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
      ------------------
    {
    type = "item",
    name = "gun-turret-equipment-PR1k",
    icon = "__HeavyTank__/graphics/equipments/gtepr-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "gun-turret-equipment-PR1k",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
 {
    type = "item",
    name = "gun-turret-equipment-UR",
    icon = "__HeavyTank__/graphics/equipments/gtex.png",
    icon_size = 32,
    placed_as_equipment_result = "gun-turret-equipment-UR",
	flags = {"hidden"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
 },
  ---------------------
 {
    type = "item",
    name = "gun-turret-equipment-UR1k",
    icon = "__HeavyTank__/graphics/equipments/gteur-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "gun-turret-equipment-UR1k",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
 },
  ----------------------------------recipe
{
	type = "recipe",
	name = "gun-turret-equipment-NRx",
	icon = "__HeavyTank__/graphics/equipments/gtex.png",
    icon_size = 32,
	ingredients =
	{
		{"gun-turret-equipment-NR", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_autocannons_x",
    order = "a",
	energy_required = 1,
	results=
	{
	  {type="item", name="gun-turret", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gun-turret-equipment-NR1k",
	ingredients =
	{
		{"gun-turret", 1},
		{"firearm-magazine", 100},
	},
	enabled = false,
	subgroup = "ht_autocannons",
	order = "a",
	energy_required = 1,
	results=
	{
	  {type="item", name="gun-turret-equipment-NR1k", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gun-turret-equipment-PRx",
	icon = "__HeavyTank__/graphics/equipments/gtex.png",
    icon_size = 32,
	ingredients =
	{
		{"gun-turret-equipment-PR", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_autocannons_x",
    order = "b",
	energy_required = 1,
	results=
	{
	  {type="item", name="gun-turret", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gun-turret-equipment-PR1k",
	ingredients =
	{
		{"gun-turret", 1},
		{"piercing-rounds-magazine", 100},
	},
	enabled = false,
	subgroup = "ht_autocannons",
	order = "b",
	energy_required = 1,
	results=
	{
	  {type="item", name="gun-turret-equipment-PR1k", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gun-turret-equipment-URx",
	icon = "__HeavyTank__/graphics/equipments/gtex.png",
    icon_size = 32,
	ingredients =
	{
		{"gun-turret-equipment-UR", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_autocannons_x",
    order = "c",
	energy_required = 1,
	results=
	{
	  {type="item", name="gun-turret", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "gun-turret-equipment-UR1k",
	ingredients =
	{
		{"gun-turret", 1},
		{"uranium-rounds-magazine", 100},
	},
	enabled = false,
	subgroup = "ht_autocannons",
	order = "c",
	energy_required = 1,
	results=
	{
	  {type="item", name="gun-turret-equipment-UR1k", amount=1},
	}
},
-------------------------------------------------entity
{
    type = "active-defense-equipment",
    name = "gun-turret-equipment-NR",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/gtenr.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "tertiary",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 18,
      sound = make_heavy_gunshot_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "bullet",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			action_delivery =
	------------
          {
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 5 , type = "physical"}
                }
              }
            }
          }
	------------
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
    name = "gun-turret-equipment-PR",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/gtepr.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "tertiary",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 18,
      sound = make_heavy_gunshot_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "bullet",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			action_delivery =
	------------
          {
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 8 , type = "physical"}
                }
              }
            }
          }
	------------
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
    name = "gun-turret-equipment-UR",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/gteur.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "tertiary",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 18,
      sound = make_heavy_gunshot_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "bullet",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			action_delivery =
	------------
          {
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 24 , type = "physical"}
                }
              }
            }
          }
	------------
		}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},
-------------------------------------------------loaded turrets
{
    type = "active-defense-equipment",
    name = "gun-turret-equipment-NR1k",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/gtenr.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "tertiary",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 18,
      sound =
      {
         filename = "__base__/sound/fight/pulse.ogg",
         volume = 0.25
      },
      ammo_type =
      {
        type = "projectile",
        category = "bullet",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			action_delivery =
	------------
          {
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 5 , type = "physical"}
                }
              }
            }
          }
	------------
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
    name = "gun-turret-equipment-PR1k",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/gtepr.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "tertiary",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 18,
      sound =
      {
         filename = "__base__/sound/fight/pulse.ogg",
         volume = 0.25
      },
      ammo_type =
      {
        type = "projectile",
        category = "bullet",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			action_delivery =
	------------
          {
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 8 , type = "physical"}
                }
              }
            }
          }
	------------
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
    name = "gun-turret-equipment-UR1k",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/gteur.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "tertiary",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 18,
      sound =
      {
         filename = "__base__/sound/fight/pulse.ogg",
         volume = 0.25
      },
      ammo_type =
      {
        type = "projectile",
        category = "bullet",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			action_delivery =
	------------
          {
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 24 , type = "physical"}
                }
              }
            }
          }
	------------
		}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},

---------------------------------Autocannons Equipment ----------------------------------------

---------------------
   {
    type = "item",
    name = "autocannons-equipment-normal",
    icon = "__HeavyTank__/graphics/equipments/autocannons/autoitem.png",
    icon_size = 32,
    placed_as_equipment_result = "autocannons-equipment-normal",
	flags = {"hidden"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
    {
    type = "item",
    name = "autocannons-equipment-normal1k",
    icon = "__HeavyTank__/graphics/equipments/autocannons/1-autonormal.png",
    icon_size = 32,
    placed_as_equipment_result = "autocannons-equipment-normal1k",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
    {
    type = "item",
    name = "autocannons-equipment-acid",
    icon = "__HeavyTank__/graphics/equipments/autocannons/autounload.png",
    icon_size = 32,
    placed_as_equipment_result = "autocannons-equipment-acid",
	flags = {"hidden"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
      ------------------
    {
    type = "item",
    name = "autocannons-equipment-acid1k",
    icon = "__HeavyTank__/graphics/equipments/autocannons/3-autoacid.png",
    icon_size = 32,
    placed_as_equipment_result = "autocannons-equipment-acid1k",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
    ------------------
 {
    type = "item",
    name = "autocannons-equipment-fire",
    icon = "__HeavyTank__/graphics/equipments/autocannons/autounload.png",
    icon_size = 32,
    placed_as_equipment_result = "autocannons-equipment-fire",
	flags = {"hidden"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
 },
  ---------------------
 {
    type = "item",
    name = "autocannons-equipment-fire1k",
    icon = "__HeavyTank__/graphics/equipments/autocannons/2-autofire.png",
    icon_size = 32,
    placed_as_equipment_result = "autocannons-equipment-fire1k",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_autocannons",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
 },
  ----------------------------------recipe
-----------
{
	type = "recipe",
	name = "autocannons-equipment-normal",
	ingredients =
	{
		{"steel-plate", 100},
		{"gun-turret", 2},
		{"advanced-circuit", 50},
	},
	enabled = false,
	icon = "__HeavyTank__/graphics/equipments/autocannons/autoitem.png",
	icon_size = 32,
	subgroup = "ht_autocannons_x",
	order = "d",
	energy_required = 1,
	results=
	{
	  {type="item", name="autocannons-equipment-normal", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "autocannons-equipment-normal1k",
	ingredients =
	{
		{"autocannons-equipment-normal", 1},
		{"HeavyTank-autocannon-shell", 100},
	},
	enabled = false,
	icon = "__HeavyTank__/graphics/equipments/autocannons/1-autonormal.png",
	icon_size = 32,
	subgroup = "ht_autocannons",
	order = "d",
	energy_required = 1,
	results=
	{
	  {type="item", name="autocannons-equipment-normal1k", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "autocannons-equipment-acidx",
	ingredients =
	{
		{"autocannons-equipment-acid", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	icon = "__HeavyTank__/graphics/equipments/autocannons/autoitem.png",
	icon_size = 32,
	subgroup = "ht_autocannons_x",
	order = "f",
	energy_required = 1,
	results=
	{
	  {type="item", name="autocannons-equipment-normal", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "autocannons-equipment-acid1k",
	ingredients =
	{
		{"autocannons-equipment-normal", 1},
		{"HeavyTank-acid-autocannon-shell", 100},
	},
	enabled = false,
	icon = "__HeavyTank__/graphics/equipments/autocannons/3-autoacid.png",
	icon_size = 32,
	subgroup = "ht_autocannons",
	order = "f",
	energy_required = 1,
	results=
	{
	  {type="item", name="autocannons-equipment-acid1k", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "autocannons-equipment-firex",
	ingredients =
	{
		{"autocannons-equipment-fire", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	icon = "__HeavyTank__/graphics/equipments/autocannons/autoitem.png",
	icon_size = 32,
	subgroup = "ht_autocannons_x",
	order = "e",
	energy_required = 1,
	results=
	{
	  {type="item", name="autocannons-equipment-normal", amount=1},
	}
},
-----------
{
	type = "recipe",
	name = "autocannons-equipment-fire1k",
	ingredients =
	{
		{"autocannons-equipment-normal", 1},
		{"HeavyTank-fire-autocannon-shell", 100},
	},
	enabled = false,
	icon = "__HeavyTank__/graphics/equipments/autocannons/2-autofire.png",
	icon_size = 32,
	subgroup = "ht_autocannons",
	order = "e",
	energy_required = 1,
	results=
	{
	  {type="item", name="autocannons-equipment-fire1k", amount=1},
	}
},
-------------------------------------------------entity
{
    type = "active-defense-equipment",
    name = "autocannons-equipment-normal",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/autocannons/4-autonormal.png",
      width = 350,
      height = 175,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "secondary-input",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "HeavyTank-autocannon-shell",
      damage_modifier = 1,
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 25,
      sound =
      {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 0.7
      },
      ammo_type =
      {
        type = "projectile",
        category = "HeavyTank-autocannon-shell",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			repeat_count = 2,
			action_delivery =
	------------
			{
				{
					type = "projectile",
					projectile = "25mm-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 35,
					min_range = 0,
				}
			}
	------------
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
    name = "autocannons-equipment-acid",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/autocannons/6-autoacid.png",
      width = 350,
      height = 175,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "secondary-input",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 25,
      sound =
      {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 0.7
      },
      ammo_type =
      {
        type = "projectile",
        category = "HeavyTank-autocannon-shell",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			repeat_count = 2,
			action_delivery =
	------------
			{
				{
					type = "projectile",
					projectile = "25mm-acid-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 35,
					min_range = 0,
				}
			}
	------------
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
    name = "autocannons-equipment-fire",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/autocannons/5-autofire.png",
      width = 350,
      height = 175,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "secondary-input",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 25,
      sound =
      {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 0.7
      },
      ammo_type =
      {
        type = "projectile",
        category = "HeavyTank-autocannon-shell",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			repeat_count = 2,
			action_delivery =
	------------
			{
				{
					type = "projectile",
					projectile = "25mm-fire-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 35,
					min_range = 0,
				}
			}
	------------
		}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},
-------------------------------------------------loaded turrets
{
    type = "active-defense-equipment",
    name = "autocannons-equipment-normal1k",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/autocannons/4-autonormal.png",
      width = 350,
      height = 175,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "secondary-input",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 25,
      sound =
      {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 0.7
      },
      ammo_type =
      {
        type = "projectile",
        category = "HeavyTank-autocannon-shell",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			repeat_count = 2,
			action_delivery =
	------------
			{
				{
					type = "projectile",
					projectile = "25mm-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 35,
					min_range = 0,
				}
			}
	------------
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
    name = "autocannons-equipment-acid1k",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/autocannons/6-autoacid.png",
      width = 350,
      height = 175,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "secondary-input",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 25,
      sound =
      {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 0.7
      },
      ammo_type =
      {
        type = "projectile",
        category = "HeavyTank-autocannon-shell",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			repeat_count = 2,
			action_delivery =
	------------
			{
				{
					type = "projectile",
					projectile = "25mm-acid-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 35,
					min_range = 0,
				}
			}
	------------
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
    name = "autocannons-equipment-fire1k",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/autocannons/5-autofire.png",
      width = 350,
      height = 175,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
	  input_flow_limit = "1W",
      usage_priority = "secondary-input",
      buffer_capacity = "1000KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 1,
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.8,
      range = 25,
      sound =
      {
          filename = "__HeavyTank__/sound/CANLITE2.ogg",
          volume = 0.7
      },
      ammo_type =
      {
        type = "projectile",
        category = "HeavyTank-autocannon-shell",
        energy_consumption = "1KJ",
        speed = 1,
        action =
        {
		{
			type = "direct",
			repeat_count = 2,
			action_delivery =
	------------
			{
				{
					type = "projectile",
					projectile = "25mm-fire-shell",
					starting_speed = 4,
					direction_deviation = 0.03,
					range_deviation = 0,
					max_range = 35,
					min_range = 0,
				}
			}
	------------
		}
        }
      },
    },
    automatic = true,
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
},

---------------------------------------heavy duty battery
--------------item
  {
    type = "item",
    name = "heavy-duty-battery-mk1",
    icon = "__HeavyTank__/graphics/equipments/hdt-1-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk1",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk1-pack",
    icon = "__HeavyTank__/graphics/equipments/hdt-1p-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk1-pack",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery_pack",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk2",
    icon = "__HeavyTank__/graphics/equipments/hdt-2-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk2",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk2-pack",
    icon = "__HeavyTank__/graphics/equipments/hdt-2p-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk2-pack",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery_pack",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk3",
    icon = "__HeavyTank__/graphics/equipments/hdt-3-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk3",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk3-pack",
    icon = "__HeavyTank__/graphics/equipments/hdt-3p-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk3-pack",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery_pack",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk4",
    icon = "__HeavyTank__/graphics/equipments/hdt-4-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk4",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk4-pack",
    icon = "__HeavyTank__/graphics/equipments/hdt-4p-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk4-pack",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery_pack",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk5",
    icon = "__HeavyTank__/graphics/equipments/hdt-5-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk5",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk5-pack",
    icon = "__HeavyTank__/graphics/equipments/hdt-5p-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk5-pack",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery_pack",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk6",
    icon = "__HeavyTank__/graphics/equipments/hdt-6-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk6",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------
   {
    type = "item",
    name = "heavy-duty-battery-mk6-pack",
    icon = "__HeavyTank__/graphics/equipments/hdt-6p-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "heavy-duty-battery-mk6-pack",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_battery_pack",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
 ------------recipe
{	type = "recipe",
	name = "heavy-duty-battery-mk1",
	ingredients =
	{
		{"battery-mk2-equipment", 2},
		{"effectivity-module", 1},
		{"processing-unit", 5},
	},
	enabled = false,
	subgroup = "ht_battery",
	order = "a",
	energy_required = 10,
	results=	{  {type="item", name="heavy-duty-battery-mk1", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk1-pack",
	ingredients =
	{
		{"heavy-duty-battery-mk1", 6},
	},
	enabled = false,
	subgroup = "ht_battery_pack",
	order = "a",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk1-pack", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk1-unpack",
	icon = "__HeavyTank__/graphics/equipments/hdt-1-icon.png",
    icon_size = 32,
	ingredients =
	{
		{"heavy-duty-battery-mk1-pack", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_battery_unpack",
	order = "b",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk1", amount=6}, 	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk2",
	ingredients =
	{
		{"heavy-duty-battery-mk1", 2},
		{"effectivity-module", 2},
		{"processing-unit", 5},
	},
	enabled = false,
	subgroup = "ht_battery",
	order = "b",
	energy_required = 10,
	results=	{  {type="item", name="heavy-duty-battery-mk2", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk2-pack",
	ingredients =
	{
		{"heavy-duty-battery-mk2", 6},
	},
	enabled = false,
	subgroup = "ht_battery_pack",
	order = "b",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk2-pack", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk2-unpack",
	icon = "__HeavyTank__/graphics/equipments/hdt-2-icon.png",
    icon_size = 32,
	ingredients =
	{
		{"heavy-duty-battery-mk2-pack", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_battery_unpack",
	order = "b",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk2", amount=6}, 	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk3",
	ingredients =
	{
		{"heavy-duty-battery-mk2", 2},
		{"effectivity-module-2", 1},
		{"processing-unit", 5},
	},
	enabled = false,
	subgroup = "ht_battery",
	order = "c",
	energy_required = 10,
	results=	{  {type="item", name="heavy-duty-battery-mk3", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk3-pack",
	ingredients =
	{
		{"heavy-duty-battery-mk3", 6},
	},
	enabled = false,
	subgroup = "ht_battery_pack",
	order = "c",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk3-pack", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk3-unpack",
	icon = "__HeavyTank__/graphics/equipments/hdt-3-icon.png",
    icon_size = 32,
	ingredients =
	{
		{"heavy-duty-battery-mk3-pack", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_battery_unpack",
	order = "c",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk3", amount=6}, 	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk4",
	ingredients =
	{
		{"heavy-duty-battery-mk3", 2},
		{"effectivity-module-2", 2},
		{"processing-unit", 5},
	},
	enabled = false,
	subgroup = "ht_battery",
	order = "d",
	energy_required = 10,
	results=	{  {type="item", name="heavy-duty-battery-mk4", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk4-pack",
	ingredients =
	{
		{"heavy-duty-battery-mk4", 6},
	},
	enabled = false,
	subgroup = "ht_battery_pack",
	order = "d",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk4-pack", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk4-unpack",
	icon = "__HeavyTank__/graphics/equipments/hdt-4-icon.png",
    icon_size = 32,
	ingredients =
	{
		{"heavy-duty-battery-mk4-pack", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_battery_unpack",
	order = "d",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk4", amount=6},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk5",
	ingredients =
	{
		{"heavy-duty-battery-mk4", 2},
		{"effectivity-module-3", 1},
		{"processing-unit", 5},
	},
	enabled = false,
	subgroup = "ht_battery",
	order = "e",
	energy_required = 10,
	results=	{  {type="item", name="heavy-duty-battery-mk5", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk5-pack",
	ingredients =
	{
		{"heavy-duty-battery-mk5", 6},
	},
	enabled = false,
	subgroup = "ht_battery_pack",
	order = "e",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk5-pack", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk5-unpack",
	icon = "__HeavyTank__/graphics/equipments/hdt-5-icon.png",
    icon_size = 32,
	ingredients =
	{
		{"heavy-duty-battery-mk5-pack", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_battery_unpack",
	order = "e",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk5", amount=6},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk6",
	ingredients =
	{
		{"heavy-duty-battery-mk5", 2},
		{"effectivity-module-3", 2},
		{"processing-unit", 10},
	},
	enabled = false,
	subgroup = "ht_battery",
	order = "f",
	energy_required = 10,
	results=	{  {type="item", name="heavy-duty-battery-mk6", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk6-pack",
	ingredients =
	{
		{"heavy-duty-battery-mk6", 6},
	},
	enabled = false,
	subgroup = "ht_battery_pack",
	order = "f",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk6-pack", amount=1},	}
},
---------------
{	type = "recipe",
	name = "heavy-duty-battery-mk6-unpack",
	icon = "__HeavyTank__/graphics/equipments/hdt-6-icon.png",
    icon_size = 32,
	ingredients =
	{
		{"heavy-duty-battery-mk6-pack", 1},
	},
	enabled = false,
	allow_as_intermediate = false,
	subgroup = "ht_battery_unpack",
	order = "f",
	energy_required = 1,
	results=	{  {type="item", name="heavy-duty-battery-mk6", amount=6}, 	}
},
---------------
---------------entity
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk1",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-1.png",
      width = 130,
      height = 300,
      priority = "medium"
    },
    shape = {width = 1, height = 2, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "200MJ",
      input_flow_limit = "2000MW",
      output_flow_limit = "2000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk1-pack",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-1p.png",
      width = 310,
      height = 410,
      priority = "medium"
    },
    shape = {width = 2, height = 3, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "1200MJ",
      input_flow_limit = "12000MW",
      output_flow_limit = "12000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk2",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-2.png",
      width = 130,
      height = 300,
      priority = "medium"
    },
    shape = {width = 1, height = 2, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "350MJ",
      input_flow_limit = "3500MJ",
      output_flow_limit = "3500MJ",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk2-pack",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-2p.png",
      width = 310,
      height = 410,
      priority = "medium"
    },
    shape = {width = 2, height = 3, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "2100MJ",
      input_flow_limit = "21000MJ",
      output_flow_limit = "21000MJ",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk3",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-3.png",
      width = 130,
      height = 300,
      priority = "medium"
    },
    shape = {width = 1, height = 2, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "600MJ",
      input_flow_limit = "6000MJ",
      output_flow_limit = "6000MJ",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk3-pack",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-3p.png",
      width = 310,
      height = 410,
      priority = "medium"
    },
    shape = {width = 2, height = 3, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "3600MJ",
      input_flow_limit = "36000MW",
      output_flow_limit = "36000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk4",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-4.png",
      width = 130,
      height = 300,
      priority = "medium"
    },
    shape = {width = 1, height = 2, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "1000MJ",
      input_flow_limit = "10000MW",
      output_flow_limit = "10000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk4-pack",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-4p.png",
      width = 310,
      height = 410,
      priority = "medium"
    },
    shape = {width = 2, height = 3, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "6000MJ",
      input_flow_limit = "60000MW",
      output_flow_limit = "60000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk5",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-5.png",
      width = 130,
      height = 300,
      priority = "medium"
    },
    shape = {width = 1, height = 2, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "1750MJ",
      input_flow_limit = "17500MW",
      output_flow_limit = "17500MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk5-pack",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-5p.png",
      width = 310,
      height = 410,
      priority = "medium"
    },
    shape = {width = 2, height = 3, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "10500MJ",
      input_flow_limit = "105000MW",
      output_flow_limit = "105000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk6",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-6.png",
      width = 130,
      height = 300,
      priority = "medium"
    },
    shape = {width = 1, height = 2, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "3000MJ",
      input_flow_limit = "30000MW",
      output_flow_limit = "30000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
  { type = "battery-equipment",
    name = "heavy-duty-battery-mk6-pack",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/hdt-6p.png",
      width = 310,
      height = 410,
      priority = "medium"
    },
    shape = {width = 2, height = 3, type = "full"},
    energy_source =
    { type = "electric",
      buffer_capacity = "18000MJ",
      input_flow_limit = "180000MW",
      output_flow_limit = "180000MW",
      usage_priority = "tertiary"
    },
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle","armor"}
  },
-----------------
})

