table.insert(
  data.raw["technology"]["atomic-bomb"].effects,
  {type = "unlock-recipe",recipe = "HeavyTank-atomic-cannon-shell"})
data:extend({
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
	{
		type = "technology",
		name = "HeavyTank-Cannon-Reload-Speed-1",
		icon = "__HeavyTank__/graphics/icons/heavyspeed.png",
		icon_size = 128,
		prerequisites = {"ScrapTank"},
		upgrade = true,
		unit = 
    {
      count_formula = "75*L",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
		max_level = 5,
		effects = {
			{type = "gun-speed", ammo_category = "HeavyTank-cannon-shell", modifier = 0.1},
			{type = "gun-speed", ammo_category = "HeavyTank-autocannon-shell", modifier = 0.1}
		}
	},
----------------------------------------------------------------------------------
	{
		type = "technology",
		name = "HeavyTank-Cannon-Reload-Speed-6",
		icon = "__HeavyTank__/graphics/icons/heavyspeed.png",
		icon_size = 128,
		prerequisites = {"MediumTank","HeavyTank-Cannon-Reload-Speed-1"},
		upgrade = true,
		unit = 
    {
      count_formula = "75*L",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
      },
      time = 30
    },
		max_level = 10,
		effects = {
			{type = "gun-speed", ammo_category = "HeavyTank-cannon-shell", modifier = 0.1},
			{type = "gun-speed", ammo_category = "HeavyTank-autocannon-shell", modifier = 0.1}
		}
	},
----------------------------------------------------------------------------------
	{
		type = "technology",
		name = "HeavyTank-Cannon-Reload-Speed-11",
		icon = "__HeavyTank__/graphics/icons/heavyspeed.png",
		icon_size = 128,
		prerequisites = {"HeavyTank","HeavyTank-Cannon-Reload-Speed-6"},
		upgrade = true,
		unit = 
    {
      count_formula = "75*L",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
	    {"utility-science-pack", 1},
      },
      time = 30
    },
		max_level = 15,
		effects = {
			{type = "gun-speed", ammo_category = "HeavyTank-cannon-shell", modifier = 0.1},
			{type = "gun-speed", ammo_category = "HeavyTank-autocannon-shell", modifier = 0.1}
		}
	},
----------------------------------------------------------------------------------

{
		type = "technology",
		name = "HeavyTank-Cannon-Damage-Boost-1",
		icon = "__HeavyTank__/graphics/icons/heavydamage.png",
		upgrade = true,
		icon_size = 128,
		prerequisites = {"ScrapTank"},
		
		unit = 
    {
	
      count_formula = "75*L",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
		max_level = "10",
		effects = {
		{type = "ammo-damage", ammo_category = "HeavyTank-cannon-shell", modifier = 0.1},
		{type = "ammo-damage", ammo_category = "HeavyTank-autocannon-shell", modifier = 0.1},
		{type = "ammo-damage", ammo_category = "landmine", modifier = 0.05},
		}
},
----------------------------------------------------------------------------------
		{
		type = "technology",
		name = "HeavyTank-Cannon-Damage-Boost-11",
		icon = "__HeavyTank__/graphics/icons/heavydamage.png",
		icon_size = 128,
		prerequisites = {"MediumTank","HeavyTank-Cannon-Damage-Boost-1"},
		upgrade = true,
		unit = 
    {
      count_formula = "75*L",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
      },
      time = 30
    },
		max_level = "20",
		effects = {	
		{type = "ammo-damage", ammo_category = "HeavyTank-cannon-shell", modifier = 0.2},
		{type = "ammo-damage", ammo_category = "HeavyTank-autocannon-shell", modifier = 0.2},
		{type = "ammo-damage", ammo_category = "landmine", modifier = 0.1},
		}
	},
----------------------------------------------------------------------------------
		{
		type = "technology",
		name = "HeavyTank-Cannon-Damage-Boost-21",
		icon = "__HeavyTank__/graphics/icons/heavydamage.png",
		icon_size = 128,
		prerequisites = {"HeavyTank","HeavyTank-Cannon-Damage-Boost-11"},
		upgrade = true,
		unit = 
    {
      count_formula = "75*L",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
	    {"utility-science-pack", 1},
      },
      time = 30
    },
		max_level = "infinite",
		effects = {
		{type = "ammo-damage", ammo_category = "HeavyTank-cannon-shell", modifier = 0.3},
		{type = "ammo-damage", ammo_category = "HeavyTank-autocannon-shell", modifier = 0.3},
		{type = "ammo-damage", ammo_category = "landmine", modifier = 0.15},
		}
	},

----------------------------------------------------------------------------------	
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------	
	
	{
		type = "technology",
		name = "ScrapTank",
		icon = "__HeavyTank__/graphics/icons/scrapicon.png",
		icon_size = 128,
		prerequisites = {"military-2","engine","logistics"},
		unit = {
			count = 100,
			ingredients = 
			    {
					{"automation-science-pack", 3},
					{"logistic-science-pack", 2},
					{"military-science-pack", 1},

				},
			time = 30
		},
		effects = {
			{type = "unlock-recipe", recipe = "HeavyTank_scrap_tank"},
			{type = "unlock-recipe", recipe = "HeavyTank_scrap_track"},
			{type = "unlock-recipe", recipe = "HeavyTank_scrap_frame"},
			{type = "unlock-recipe", recipe = "HeavyTank_scrap_tower"},
			{type = "unlock-recipe", recipe = "HeavyTank_scrap_engine"},
			{type = "unlock-recipe", recipe = "HeavyTank-crude-cannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-crude-autocannon-shell"},
		}
	},	
	
-------------------------------------------------------------------------------------------------------------------------------------------	
	
	{
		type = "technology",
		name = "MediumTank",
		icon = "__HeavyTank__/graphics/icons/mediumicon.png",
		icon_size = 128,
		prerequisites = {"ScrapTank","advanced-electronics","electric-engine","logistics-2","rocketry","fluid-handling","turrets"},
		unit = {
			count = 200,
			ingredients = 
			    {
					{"automation-science-pack", 3},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 1},
					{"military-science-pack", 1},
				},
			time = 45
		},
		effects = {
			{type = "unlock-recipe", recipe = "HeavyTank_medium_tank"},
			{type = "unlock-recipe", recipe = "HeavyTank_medium_track"},
			{type = "unlock-recipe", recipe = "HeavyTank_medium_frame"},
			{type = "unlock-recipe", recipe = "HeavyTank_medium_tower"},
			{type = "unlock-recipe", recipe = "HeavyTank_medium_engine"},
			{type = "unlock-recipe", recipe = "diesel-generator"},
			{type = "unlock-recipe", recipe = "HeavyTank-basic-cannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-explosive-cannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-autocannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-multi-rocket"},
			{type = "unlock-recipe", recipe = "normal-land-mine"},
			{type = "unlock-recipe", recipe = "heavy-diesel"},
			{type = "unlock-recipe", recipe = "light-diesel"},
			{type = "unlock-recipe", recipe = "LPG"},
		}
	},
--------------------------------------------------------------------------------------------------------------------
	
	{
		type = "technology",
		name = "HeavyTank",
		icon = "__HeavyTank__/graphics/icons/heavyicon.png",
		icon_size = 128,
		prerequisites = {"MediumTank","speed-module-2","productivity-module-2","advanced-electronics-2","robotics","nuclear-power"},
		unit = {
			count = 250,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "HeavyTank_heavy_tank"},
			{type = "unlock-recipe", recipe = "HeavyTank_heavy_track"},
			{type = "unlock-recipe", recipe = "HeavyTank_heavy_frame"},
			{type = "unlock-recipe", recipe = "HeavyTank_heavy_tower"},
			{type = "unlock-recipe", recipe = "HeavyTank_heavy_engine"},
			{type = "unlock-recipe", recipe = "secundary-reactor"},
			{type = "unlock-recipe", recipe = "HeavyTank-piercing-cannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-cluster-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-uranium-cannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-fire-autocannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-acid-autocannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-multi-acid-rocket"},
			{type = "unlock-recipe", recipe = "HeavyTank-multi-napalm-rocket"},
			{type = "unlock-recipe", recipe = "HeavyTank-multi-storm-rocket"},
			{type = "unlock-recipe", recipe = "HeavyTank-uranium-rocket"},
			{type = "unlock-recipe", recipe = "heavy-land-mine"},
			{type = "unlock-recipe", recipe = "deep-pump"},
			{type = "unlock-recipe", recipe = "iodine-from-seaweed"},
			{type = "unlock-recipe", recipe = "cyclotron-enrichment-process"},
			{type = "unlock-recipe", recipe = "iodine-fuel-cell"},
			
		}
	},
	
	
--------------------------------------------------------------------------------------------------------------------
	
	{
		type = "technology",
		name = "ExperimentalTank",
		icon = "__HeavyTank__/graphics/icons/Experimentalicon.png",
		icon_size = 128,
		prerequisites = {"HeavyTank","speed-module-3","productivity-module-3","space-science-pack","dark-armor",},
		unit = {
			count = 1000,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 2},
					{"utility-science-pack", 1},
					{"space-science-pack", 1},
				},
			time = 60
		},
		effects = {

			{type = "unlock-recipe", recipe = "HeavyTank_experimental_tank"},
			{type = "unlock-recipe", recipe = "HeavyTank-concussive-cannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-plasma-cannon-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-uranium-cluster-shell"},
			{type = "unlock-recipe", recipe = "HeavyTank-uranium-piercing-cannon-shell"},
			{type = "unlock-recipe", recipe = "upgraded-reactor"},
			
		}
	},
-------------------------------------------------------------------------------------------------
------------------------------------Equipments------------------------------------------
-------------------------------------------------------------------------------------------------

----------------------armors
	{
		type = "technology",
		name = "wood-armor",
		icon = "__HeavyTank__/graphics/equipments/shield/scrap_armor_equipment.png",
		icon_size = 64,
		prerequisites = {"ScrapTank"},
		unit = {
			count = 50,
			ingredients = 
			    {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
--					{"chemical-science-pack", 2},
--					{"military-science-pack", 1},
--					{"utility-science-pack", 1},
				},
			time = 30
		},
		effects = {
			{type = "unlock-recipe", recipe = "scrap-armor"},
			{type = "unlock-recipe", recipe = "scrap-armor-unworn"},
		}
	},
-------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "steel-armor",
		icon = "__HeavyTank__/graphics/equipments/shield/steel_armor_equipment.png",
		icon_size = 64,
		prerequisites = {"wood-armor"},
		unit = {
			count = 50,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
--					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
--					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "steel-armor"},
			{type = "unlock-recipe", recipe = "steel-armor-unworn"},
		}
	},
-------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "dark-armor",
		icon = "__HeavyTank__/graphics/equipments/shield/dark_armor_equipment.png",
		icon_size = 64,
		prerequisites = {"steel-armor"},
		unit = {
			count = 100,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
--					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "dark-armor"},
			{type = "unlock-recipe", recipe = "dark-armor-unworn"},
		}
	},
-------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "uranium-armor",
		icon = "__HeavyTank__/graphics/equipments/shield/uranium_armor_equipment.png",
		icon_size = 64,
		prerequisites = {"dark-armor"},
		unit = {
			count = 150,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
					{"utility-science-pack", 1},
				},
			time = 75
		},
		effects = {
			{type = "unlock-recipe", recipe = "ht-uranium-armor"},
			{type = "unlock-recipe", recipe = "ht-uranium-armor-unworn"},
		}
	},
-------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "dark-nano-armor",
		icon = "__HeavyTank__/graphics/equipments/shield/dark_nano_armor_equipment.png",
		icon_size = 64,
		prerequisites = {"dark-armor"},
		unit = {
			count = 200,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
					{"utility-science-pack", 3},
				},
			time = 90
		},
		effects = {
			{type = "unlock-recipe", recipe = "dark-nano-armor"},
		}
	},
-------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "uranium-nano-armor",
		icon = "__HeavyTank__/graphics/equipments/shield/uranium_nano_armor_equipment.png",
		icon_size = 64,
		prerequisites = {"uranium-armor"},
		unit = {
			count = 300,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
					{"utility-science-pack", 3},
				},
			time = 90
		},
		effects = {
			{type = "unlock-recipe", recipe = "uranium-nano-armor"},
		}
	},
-------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "uranium-nano-armor-multilayer",
		icon = "__HeavyTank__/graphics/equipments/shield/uranium_nano_armor_equipment.png",
		icon_size = 64,
		prerequisites = {"uranium-nano-armor","space-science-pack"},
		unit = {
			count = 500,
			ingredients = 
			    {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"military-science-pack", 1},
					{"utility-science-pack", 1},
					{"space-science-pack", 1},
				},
			time = 90
		},
		effects = {
			{type = "unlock-recipe", recipe = "uranium-nano-armor-x2"},
			{type = "unlock-recipe", recipe = "uranium-nano-armor-x3"},
			{type = "unlock-recipe", recipe = "uranium-nano-armor-x4"},
			{type = "unlock-recipe", recipe = "uranium-nano-armor-x5"},
		}
	},
-------------------------------------------------------------------------------------------------
------------------------------------Turrets
	{
		type = "technology",
		name = "mounted-turrets",
		icon = "__HeavyTank__/graphics/equipments/turret.png",
		icon_size = 128,
		prerequisites = {"turrets","ScrapTank"},
		unit = {
			count = 75,
			ingredients = 
			    {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
--					{"chemical-science-pack", 2},
--					{"military-science-pack", 1},
--					{"utility-science-pack", 3},
				},
			time = 30
		},
		effects = {
			{type = "unlock-recipe", recipe = "gun-turret-equipment-NR1k"},
			{type = "unlock-recipe", recipe = "gun-turret-equipment-PR1k"},
			{type = "unlock-recipe", recipe = "gun-turret-equipment-UR1k"},
			{type = "unlock-recipe", recipe = "gun-turret-equipment-NRx"},
			{type = "unlock-recipe", recipe = "gun-turret-equipment-PRx"},
			{type = "unlock-recipe", recipe = "gun-turret-equipment-URx"},
		}
	},
-------------------------------------------------------------------------------------------------
------------------------------------autocannons
	{
		type = "technology",
		name = "mounted-autocannons",
		icon = "__HeavyTank__/graphics/equipments/autocannons.png",
		icon_size = 128,
		prerequisites = {"mounted-turrets","MediumTank"},
		unit = {
			count = 150,
			ingredients = 
			    {
					{"automation-science-pack", 3},
					{"logistic-science-pack", 3},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
--					{"utility-science-pack", 3},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "autocannons-equipment-normal"},
			{type = "unlock-recipe", recipe = "autocannons-equipment-normal1k"},
			{type = "unlock-recipe", recipe = "autocannons-equipment-fire1k"},
			{type = "unlock-recipe", recipe = "autocannons-equipment-acid1k"},
			{type = "unlock-recipe", recipe = "autocannons-equipment-firex"},
			{type = "unlock-recipe", recipe = "autocannons-equipment-acidx"},
		}
	},
-------------------------------------------------------------------------------------------------
------------------------------------laser
	{
		type = "technology",
		name = "laser-gatling-gun-mk1",
		icon = "__HeavyTank__/graphics/equipments/laser1.png",
		icon_size = 128,
		prerequisites = {"MediumTank"},
		unit = {
			count = 150,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
					--{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "gatling-laser-mk1"},

		}
	},
	------------------------------------
	{
		type = "technology",
		name = "laser-gatling-gun-mk2",
		icon = "__HeavyTank__/graphics/equipments/laser2.png",
		icon_size = 128,
		prerequisites = {"laser-gatling-gun-mk1"},
		unit = {
			count = 200,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "gatling-laser-mk2"},

		}
	},
	------------------------------------
	{
		type = "technology",
		name = "laser-gatling-gun-mk3",
		icon = "__HeavyTank__/graphics/equipments/laser3.png",
		icon_size = 128,
		prerequisites = {"laser-gatling-gun-mk2","HeavyTank"},
		unit = {
			count = 250,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 2},
					{"utility-science-pack", 2},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "gatling-laser-mk3"},

		}
	},
	------------------------------------
	{
		type = "technology",
		name = "laser-gatling-gun-mk4",
		icon = "__HeavyTank__/graphics/equipments/laser4.png",
		icon_size = 128,
		prerequisites = {"laser-gatling-gun-mk3","ExperimentalTank"},
		unit = {
			count = 500,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 2},
					{"utility-science-pack", 2},
					{"space-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "gatling-laser-mk4"},

		}
	},

------------------------------------plasma
	{
		type = "technology",
		name = "ht-plasma-mk1",
		icon = "__HeavyTank__/graphics/equipments/plasma/mk1.png",
		icon_size = 128,
		prerequisites = {"MediumTank"},
		unit = {
			count = 150,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 1},
					--{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "ht-plasma-mk1"},

		}
	},
	------------------------------------
	{
		type = "technology",
		name = "ht-plasma-mk2",
		icon = "__HeavyTank__/graphics/equipments/plasma/mk2.png",
		icon_size = 128,
		prerequisites = {"ht-plasma-mk1"},
		unit = {
			count = 200,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "ht-plasma-mk2"},

		}
	},
	------------------------------------
	{
		type = "technology",
		name = "ht-plasma-mk3",
		icon = "__HeavyTank__/graphics/equipments/plasma/mk3.png",
		icon_size = 128,
		prerequisites = {"ht-plasma-mk2","HeavyTank"},
		unit = {
			count = 250,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 2},
					{"utility-science-pack", 2},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "ht-plasma-mk3"},

		}
	},
	------------------------------------
	{
		type = "technology",
		name = "ht-plasma-mk4",
		icon = "__HeavyTank__/graphics/equipments/plasma/mk4.png",
		icon_size = 128,
		prerequisites = {"ht-plasma-mk3","ExperimentalTank"},
		unit = {
			count = 500,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"military-science-pack", 2},
					{"utility-science-pack", 2},
					{"space-science-pack", 1},
				},
			time = 60
		},
		effects = {
			{type = "unlock-recipe", recipe = "ht-plasma-mk4"},

		}
	},
-----------------------------------------------------Battery

	{
		type = "technology",
		name = "heavy-duty-battery-mk1",
		icon = "__HeavyTank__/graphics/equipments/hdt-1p.png",
		icon_size = 310,
		prerequisites = {"battery-mk2-equipment","effectivity-module"},
		unit = {
			count = 100,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = 
		{
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk1"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk1-pack"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk1-unpack"},
		}
	},
------------------------------------------------

	{
		type = "technology",
		name = "heavy-duty-battery-mk2",
		icon = "__HeavyTank__/graphics/equipments/hdt-2p.png",
		icon_size = 310,
		prerequisites = {"heavy-duty-battery-mk1"},
		unit = {
			count = 200,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = 
		{
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk2"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk2-pack"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk2-unpack"},
		}
	},
------------------------------------------------

	{
		type = "technology",
		name = "heavy-duty-battery-mk3",
		icon = "__HeavyTank__/graphics/equipments/hdt-3p.png",
		icon_size = 310,
		prerequisites = {"heavy-duty-battery-mk2","effectivity-module-2"},
		unit = {
			count = 300,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = 
		{
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk3"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk3-pack"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk3-unpack"},
		}
	},
------------------------------------------------

	{
		type = "technology",
		name = "heavy-duty-battery-mk4",
		icon = "__HeavyTank__/graphics/equipments/hdt-4p.png",
		icon_size = 310,
		prerequisites = {"heavy-duty-battery-mk3"},
		unit = {
			count = 400,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = 
		{
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk4"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk4-pack"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk4-unpack"},
		}
	},
------------------------------------------------

	{
		type = "technology",
		name = "heavy-duty-battery-mk5",
		icon = "__HeavyTank__/graphics/equipments/hdt-5p.png",
		icon_size = 310,
		prerequisites = {"heavy-duty-battery-mk4","effectivity-module-3"},
		unit = {
			count = 500,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = 
		{
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk5"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk5-pack"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk5-unpack"},
		}
	},
------------------------------------------------

	{
		type = "technology",
		name = "heavy-duty-battery-mk6",
		icon = "__HeavyTank__/graphics/equipments/hdt-6p.png",
		icon_size = 310,
		prerequisites = {"heavy-duty-battery-mk5"},
		unit = {
			count = 600,
			ingredients = 
			    {
					{"automation-science-pack", 2},
					{"logistic-science-pack", 2},
					{"chemical-science-pack", 2},
					{"utility-science-pack", 1},
				},
			time = 60
		},
		effects = 
		{
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk6"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk6-pack"},
			{type = "unlock-recipe", recipe = "heavy-duty-battery-mk6-unpack"},
		}
	},
------------------------------------------------
})
