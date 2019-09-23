data:extend(
{
-----------------------------------------------------------------------------------------------
-------------------------------------------------------------Experimental TANK------------------------
-----------------------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank_experimental_tank",
	energy_required = 120,
    category = "advanced-crafting",
	enabled = false,
    subgroup = "experimental-tank",
	order="a",
    ingredients =
    {
      {"HeavyTank_heavy_tank", 1},
	  {"dark-armor-unworn", 8},
	  {"repair-pack", 400},
	  {"speed-module-3", 25},
	  {"productivity-module-3", 25},
    },
    result = "HeavyTank_experimental_tank",
  },
  
-----------------------------------------------------------------------------------------------
-------------------------------------------------------------HEAVY TANK------------------------
-----------------------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank_heavy_track",
	energy_required = 30,
    category = "advanced-crafting",
    enabled = false,
    subgroup = "heavy-tank",
    ingredients =
    {
      {"express-transport-belt", 20},
	  {"flying-robot-frame", 2},
	  {"steel-plate", 50},
	  {"plastic-bar", 50},
    },
    result = "HeavyTank_heavy_track",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_heavy_frame",
	energy_required = 60,
	category = "advanced-crafting",
    enabled = false,
    subgroup = "heavy-tank",
    ingredients =
    {
      {"substation", 10},
	  {"flying-robot-frame", 10},
	  {"steel-plate", 250},
	  {"plastic-bar", 250},
    },
    result = "HeavyTank_heavy_frame",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_heavy_tower",
	category = "advanced-crafting",
	energy_required = 60,
    enabled = false,
    subgroup = "heavy-tank",
    ingredients =
    {
      {"rocket-launcher", 10},
	  {"speed-module-2", 5},
	  {"productivity-module-2", 5},
	  {"gun-turret", 6},
	  {"steel-plate", 100},
      {"processing-unit", 50},
	  
    },
    result = "HeavyTank_heavy_tower",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_heavy_engine",
    category = "advanced-crafting",
	energy_required = 60,
    enabled = false,
    subgroup = "heavy-tank",
    ingredients =
    {
      {"steel-plate", 500},
      {"advanced-circuit", 500},
      {"copper-plate", 500},
    },
    result = "HeavyTank_heavy_engine",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_heavy_tank",
	energy_required = 120,
    category = "advanced-crafting",
    enabled = false,
    subgroup = "heavy-tank",
    ingredients =
    {
      {"HeavyTank_heavy_track", 4},
	  {"HeavyTank_heavy_frame", 1},
	  {"HeavyTank_heavy_tower", 1},
	  {"HeavyTank_heavy_engine", 1},
	  {"repair-pack", 100},
    },
    result = "HeavyTank_heavy_tank",
  },
  ------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------MEDIUM TANK-------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank_medium_track",
	energy_required = 15,
    enabled = false,
	category = "advanced-crafting",
    subgroup = "medium-tank",
    ingredients =
    {
      {"fast-transport-belt", 20},
	  {"electric-engine-unit", 2},
	  {"steel-plate", 25},
	  {"copper-plate", 25},
    },
    result = "HeavyTank_medium_track",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_medium_frame",
	energy_required = 30,
	category = "advanced-crafting",
    enabled = false,
    subgroup = "medium-tank",
    ingredients =
    {
      {"storage-tank", 3},
	  {"electric-engine-unit", 10},
	  {"steel-plate", 100},
	  {"iron-gear-wheel", 100},
    },
    result = "HeavyTank_medium_frame",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_medium_tower",
	energy_required = 30,
	category = "advanced-crafting",
    enabled = false,
    subgroup = "medium-tank",
    ingredients =
    {
      {"rocket-launcher", 10},
	  {"gun-turret", 6},
	  {"steel-plate", 100},
      {"advanced-circuit", 100},
    },
    result = "HeavyTank_medium_tower",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_medium_engine",
	energy_required = 30,
	category = "advanced-crafting",
    enabled = false,
    subgroup = "medium-tank",
    ingredients =
    {
      {"pump", 20},
      {"advanced-circuit", 50},
      {"engine-unit", 50},
	  {"steel-plate", 25},
    },
    result = "HeavyTank_medium_engine",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_medium_tank",
	energy_required = 60,
	category = "advanced-crafting",
    enabled = false,
    subgroup = "medium-tank",
    ingredients =
    {
      {"HeavyTank_medium_track", 4},
	  {"HeavyTank_medium_frame", 1},
	  {"HeavyTank_medium_tower", 1},
	  {"HeavyTank_medium_engine", 1},
	  {"repair-pack", 50},
    },
    result = "HeavyTank_medium_tank",
  },
------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------SCRAP TANK-------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank_scrap_track",
	energy_required = 10,
    enabled = false,
    subgroup = "scrap-tank",
    ingredients =
    {
      {"transport-belt", 20},
	  {"engine-unit", 2},
	  {"iron-plate", 25},
	  {"copper-plate", 20},
    },
    result = "HeavyTank_scrap_track",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_scrap_frame",
	energy_required = 20,
    enabled = false,
    subgroup = "scrap-tank",
    ingredients =
    {
      {"boiler", 10},
	  {"engine-unit", 10},
	  {"iron-plate", 200},
	  {"copper-plate", 200},
    },
    result = "HeavyTank_scrap_frame",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_scrap_tower",
	energy_required = 20,
    enabled = false,
    subgroup = "scrap-tank",
    ingredients =
    {
	  {"submachine-gun", 2},
      {"pipe", 20},
      {"iron-plate", 150},
	  {"copper-plate", 75},
    },
    result = "HeavyTank_scrap_tower",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_scrap_engine",
	energy_required = 20,
    enabled = false,
    subgroup = "scrap-tank",
    ingredients =
    {
      {"steam-engine", 4},
      {"electronic-circuit", 50},
	  {"iron-gear-wheel", 25},
	  {"copper-plate", 75},
    },
    result = "HeavyTank_scrap_engine",
  },
  -------------------------------------------------------------
    {
    type = "recipe",
    name = "HeavyTank_scrap_tank",
	energy_required = 30,
    enabled = false,
    subgroup = "scrap-tank",
    ingredients =
    {
      {"HeavyTank_scrap_track", 4},
	  {"HeavyTank_scrap_frame", 1},
	  {"HeavyTank_scrap_tower", 1},
	  {"HeavyTank_scrap_engine", 1},
	  {"repair-pack", 10},
    },
    result = "HeavyTank_scrap_tank",
  },
------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------FUEL-------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "heavy-diesel",
    category = "chemistry",
	energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=10}
    },
    results=
    {
      {type="item", name="heavy-diesel", amount=10}
    },
	main_product= "",
    icon = "__HeavyTank__/graphics/icons/heavyfuel.png",
    icon_size = 32,
    subgroup = "heavy-tank-fuel",
    order = "a",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  --------------------------------------------------------------------------------
   {
    type = "recipe",
    name = "light-diesel",
    category = "chemistry",
	energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="light-oil", amount=10}
    },
    results=
    {
      {type="item", name="light-diesel", amount=10}
    },
	main_product= "",
    icon = "__HeavyTank__/graphics/icons/lightfuel.png",
    icon_size = 32,
    subgroup = "heavy-tank-fuel",
    order = "b",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
    --------------------------------------------------------------------------------
   {
    type = "recipe",
    name = "LPG",
    category = "chemistry",
	energy_required = 1,
    enabled = false,
	    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=10}
    },
    results=
    {
      {type="item", name="LPG", amount=10}
    },
	main_product= "",
    icon = "__HeavyTank__/graphics/icons/gasfuel.png",
    icon_size = 32,
    subgroup = "heavy-tank-fuel",
    order = "c",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
--------------------------------------------------------------------------------
    {
    type = "recipe",
    name = "iodine-from-seaweed",
    energy_required = 2,
    enabled = false,
    category = "chemistry",
    ingredients = {{type="fluid", name="deep-water", amount=100}},
    icon = "__HeavyTank__/graphics/icons/iodine.png",
    icon_size = 32,
	subgroup = "heavy-tank-fuel",
	order = "e",
    results =
    {
      {
        name = "iodine-powder",
        probability = 0.01,--0.05
        amount = 1
      },
--	  {"",0}
--	  {
 --       name = "iodine-123",
 --       probability = 0.01,
  --      amount = 1
  --    },
    },
	crafting_machine_tint =
    {
      primary = {r = 0.970, g = 0.0, b = 0.000, a = 0.000},
      secondary = {r = 0.350, g = 0.0, b = 0.0, a = 0.0}, 
      tertiary = {r = 0.430, g = 0.0, b = 0.0, a = 0.000}, 
    }
  },
  --------------------------------------------------------------------------------
    {
    type = "recipe",
    name = "cyclotron-enrichment-process",
    energy_required = 20,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"iodine-powder", 10}},
    icon = "__HeavyTank__/graphics/icons/iodine-123.png",
    icon_size = 32,
	subgroup = "heavy-tank-fuel",
	order = "f",
    result = "iodine-123",
  },
    --------------------------------------------------------------------------------
    {
    type = "recipe",
    name = "iodine-fuel-cell",
    energy_required = 20,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"iodine-123", 5},{"iron-plate", 2}},
    icon = "__HeavyTank__/graphics/icons/iodine-cell.png",
    icon_size = 32,
	subgroup = "heavy-tank-fuel",
	order = "g",
    result = "iodine-fuel-cell",
  },
 --------------------------------------------------------------------------------
 --   {
 --   type = "recipe",
 --   name = "water-dump",
 --   energy_required = 0.1,
 --   enabled = false,
 --   category = "crafting-with-fluid",
 --   ingredients = {{type="fluid", name="water", amount=1000}},
 --   icon = "__base__/graphics/icons/fluid/water.png",
 --   icon_size = 32,
--	subgroup = "raw-resource",
--	order = "f",
--   results =
--    {{"",0}}
--  },
   --------------------------------------------------------------------------------
    -- {
    -- type = "recipe",
    -- name = "offshore-dump",
    -- energy_required = 1,
    -- enabled = false,
    -- ingredients = {{"pipe", 3}},
    -- icon = "__base__/graphics/icons/offshore-pump.png",
    -- icon_size = 32,
	-- subgroup = "heavy-tank-fuel",
	-- order = "f",
    -- result = "offshore-dump",
  -- },
--------------------------------------------------------------------------------
    {
    type = "recipe",
    name = "deep-pump",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"pipe", 10},
      {"pump", 1}
    },
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 32,
	subgroup = "heavy-tank-fuel",
	order = "d",
    result = "deep-pump",
  },

})