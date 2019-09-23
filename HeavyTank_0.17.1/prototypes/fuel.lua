data:extend({
------------------------------------------------------------------------------------------------------------
  {
    type = "item",
    name = "heavy-diesel",
    icon = "__HeavyTank__/graphics/icons/heavyfuel.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    fuel_category = "liquid-fuel",
    fuel_value = "20MJ",
    fuel_acceleration_multiplier = 0.75,
    fuel_top_speed_multiplier = 0.75,
    subgroup = "heavy-tank-fuel",
    order = "a[fluid]",
    stack_size = 1000
  },
  ------------------------------------------------------------------------------------------------------------
    {
    type = "item",
    name = "light-diesel",
    icon = "__HeavyTank__/graphics/icons/lightfuel.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    fuel_category = "liquid-fuel",
    fuel_value = "10MJ",
    fuel_acceleration_multiplier = 1,
    fuel_top_speed_multiplier = 1,
    subgroup = "heavy-tank-fuel",
    order = "b[fluid]",
    stack_size = 1000
	},
	------------------------------------------------------------------------------------------------------------
	{
    type = "item",
    name = "LPG",
    icon = "__HeavyTank__/graphics/icons/gasfuel.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    fuel_category = "liquid-fuel",
    fuel_value = "5MJ",
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 1.5,
    subgroup = "heavy-tank-fuel",
    order = "c[fluid]",
    stack_size = 1000
	},
	------------------------------------------------------------------------------------------------------------
	{
    type = "item",
    name = "iodine-fuel-cell",
    icon = "__HeavyTank__/graphics/icons/iodine-cell.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    fuel_category = "nuclear",
    fuel_value = "500MJ",
    fuel_acceleration_multiplier = 0.75,
    fuel_top_speed_multiplier = 0.9,
    subgroup = "heavy-tank-fuel",
    order = "f[fluid]",
    stack_size = 50
	},
	-------------------------------------------------------------
	{
    type = "item",
    name = "iodine-123",
    icon = "__HeavyTank__/graphics/icons/iodine-123.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank-fuel",
    order = "e[fluid]",
    stack_size = 50
	},
-------------------------------------------------------------
	{
    type = "item",
    name = "iodine-powder",
    icon = "__HeavyTank__/graphics/icons/iodine.png",
    icon_size = 32,
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank-fuel",
    order = "d[fluid]",
    stack_size = 200
	},
-------------------------------------------------------------
  {
    type = "fluid",
    name = "deep-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2KJ",
    base_color = {r=0, g=0.5, b=0.3},
    flow_color = {r=0.0, g=0.5, b=0.0},
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 32,
    order = "a[fluid]-a[water]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
  },	
})