local steam_turbine_mk2 = util.table.deepcopy(data.raw.recipe["steam-turbine"])
steam_turbine_mk2.name = "advanced-electric-steam-turbine-2"
steam_turbine_mk2.enabled = "false"
steam_turbine_mk2.ingredients =
{
  {"steam-turbine", 1},
  {"steel-plate", 10}, 
  {"copper-plate", 10}, 
  {"processing-unit", 5}
}
steam_turbine_mk2.result = "advanced-electric-steam-turbine-2"
data:extend({steam_turbine_mk2})

local primary_steam_turbine = util.table.deepcopy(data.raw.recipe["steam-turbine"])
primary_steam_turbine.name = "advanced-electric-primary-steam-turbine-1"
primary_steam_turbine.enabled = "false"
primary_steam_turbine.result = "advanced-electric-primary-steam-turbine-1"
data:extend({primary_steam_turbine})


local primary_steam_turbine_mk2 = util.table.deepcopy(data.raw.recipe["steam-turbine"])
primary_steam_turbine_mk2.name = "advanced-electric-primary-steam-turbine-2"
primary_steam_turbine_mk2.enabled = "false"
primary_steam_turbine_mk2.ingredients =
{
  {"advanced-electric-primary-steam-turbine-1", 1},
  {"steel-plate", 10}, 
  {"copper-plate", 10},
  {"processing-unit", 5}
}
primary_steam_turbine_mk2.result = "advanced-electric-primary-steam-turbine-2"
data:extend({primary_steam_turbine_mk2})