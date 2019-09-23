data:extend({
  {
    type = "item-with-entity-data",
    name = "HeavyTank_experimental_tank",
    icon = "__HeavyTank__/graphics/icons/experimentaltank.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "experimental-tank",
    order = "a",
    place_result = "HeavyTank_experimental_tank",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "HeavyTank_heavy_tank",
    icon = "__HeavyTank__/graphics/icons/heavytank.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank",
    order = "a",
    place_result = "HeavyTank_heavy_tank",
    stack_size = 1
  },
    {
    type = "item-with-entity-data",
    name = "HeavyTank_medium_tank",
    icon = "__HeavyTank__/graphics/icons/mediumtank.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "medium-tank",
    order = "a",
    place_result = "HeavyTank_medium_tank",
    stack_size = 1
  },
    {
    type = "item-with-entity-data",
    name = "HeavyTank_scrap_tank",
    icon = "__HeavyTank__/graphics/icons/scraptank.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "scrap-tank",
    order = "a",
    place_result = "HeavyTank_scrap_tank",
    stack_size = 1
  },
  

  ---------------------------------------------------------------------------------------------------------------
  -------------------------------------SCRAP PARTS---------------------------------------------------------------
  ---------------------------------------------------------------------------------------------------------------

	{
    type = "item",
    name = "HeavyTank_scrap_track",
    icon = "__HeavyTank__/graphics/icons/tankparts/strack.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "scrap-tank",
    order = "b",
    stack_size = 4
	},
  	{
    type = "item",
    name = "HeavyTank_scrap_frame",
    icon = "__HeavyTank__/graphics/icons/tankparts/sframe.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "scrap-tank",
    order = "c",
    stack_size = 1
	},
	{
    type = "item",
    name = "HeavyTank_scrap_tower",
    icon = "__HeavyTank__/graphics/icons/tankparts/stower.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "scrap-tank",
    order = "d",
    stack_size = 1
	},
  	{
    type = "item",
    name = "HeavyTank_scrap_engine",
    icon = "__HeavyTank__/graphics/icons/tankparts/steam-engine.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "scrap-tank",
    order = "e",
    stack_size = 1
	},
  
    ---------------------------------------------------------------------------------------------------------------
  -------------------------------------MEDIUM PARTS---------------------------------------------------------------
  ---------------------------------------------------------------------------------------------------------------
 	{
    type = "item",
    name = "HeavyTank_medium_track",
    icon = "__HeavyTank__/graphics/icons/tankparts/mtrack.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "medium-tank",
    order = "b",
    stack_size = 4
	},
  	{
    type = "item",
    name = "HeavyTank_medium_frame",
    icon = "__HeavyTank__/graphics/icons/tankparts/mframe.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "medium-tank",
    order = "c",
    stack_size = 1
	},
	{
    type = "item",
    name = "HeavyTank_medium_tower",
    icon = "__HeavyTank__/graphics/icons/tankparts/mtower.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "medium-tank",
    order = "d",
    stack_size = 1
	},
  	{
    type = "item",
    name = "HeavyTank_medium_engine",
    icon = "__HeavyTank__/graphics/icons/tankparts/m-diesel-engine.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "medium-tank",
    order = "e",
    stack_size = 1
	},
  
    ---------------------------------------------------------------------------------------------------------------
  -------------------------------------HEAVY PARTS---------------------------------------------------------------
  ---------------------------------------------------------------------------------------------------------------
 	{
    type = "item",
    name = "HeavyTank_heavy_track",
    icon = "__HeavyTank__/graphics/icons/tankparts/htrack.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank",
    order = "b",
    stack_size = 4
	},
  	{
    type = "item",
    name = "HeavyTank_heavy_frame",
    icon = "__HeavyTank__/graphics/icons/tankparts/hframe.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank",
    order = "c",
    stack_size = 1
	},
	{
    type = "item",
    name = "HeavyTank_heavy_tower",
    icon = "__HeavyTank__/graphics/icons/tankparts/htower.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank",
    order = "d",
    stack_size = 1
	},
  	{
    type = "item",
    name = "HeavyTank_heavy_engine",
    icon = "__HeavyTank__/graphics/icons/tankparts/h-nuclear-engine.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank",
    order = "e",
    stack_size = 1
	},  
      ---------------------------------------------------------------------------------------------------------------
  -------------------------------------Dump and Pump---------------------------------------------------------------
  -----------------------------------------------------------------------------------
  
  
  
    -- {
    -- type = "item",
    -- name = "offshore-dump",
    -- icon = "__base__/graphics/icons/offshore-pump.png",
    -- icon_size = 32,
  --  flags = {"goes-to-quickbar"},
    -- subgroup = "extraction-machine",
    -- order = "b[fluids]-a[offshore-pump]",
    -- place_result = "offshore-dump",
    -- stack_size = 20
  -- },
  
    {
    type = "item",
    name = "deep-pump",
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 32,
    --flags = {"goes-to-quickbar"},
    subgroup = "heavy-tank-fuel",
    order = "b[fluids]-a[offshore-pump]",
    place_result = "deep-pump",
    stack_size = 20
  },
  
})