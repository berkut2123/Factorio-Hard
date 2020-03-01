--secondary load engines
local steam_engine_mk2 = util.table.deepcopy(data.raw.recipe["steam-engine"])
steam_engine_mk2.name = "advanced-electric-steam-engine-2"
steam_engine_mk2.normal.enabled = "false"
steam_engine_mk2.normal.ingredients =
{
  {"steam-engine", 1},
  {"steel-plate", 5},
  {"copper-plate", 10},
  {"electronic-circuit", 5}
}
steam_engine_mk2.normal.result = "advanced-electric-steam-engine-2"
steam_engine_mk2.expensive.enabled = "false"
steam_engine_mk2.expensive.ingredients =
{
  {"steam-engine", 1},
  {"steel-plate", 10},
  {"copper-plate", 20},
  {"electronic-circuit", 12}
}
steam_engine_mk2.expensive.result = "advanced-electric-steam-engine-2"
data:extend({steam_engine_mk2})

local steam_engine_mk3 = util.table.deepcopy(data.raw.recipe["steam-engine"])
steam_engine_mk3.name = "advanced-electric-steam-engine-3"
steam_engine_mk3.normal.enabled = "false"
steam_engine_mk3.normal.ingredients =
{
  {"advanced-electric-steam-engine-2", 1},
  {"advanced-circuit", 5},
  {"steel-plate", 5},
  {"iron-gear-wheel", 5},
}
steam_engine_mk3.normal.result = "advanced-electric-steam-engine-3"
steam_engine_mk3.expensive.enabled = "false"
steam_engine_mk3.expensive.ingredients =
{
  {"advanced-electric-steam-engine-2", 1},
  {"advanced-circuit", 20},
  {"steel-plate", 25},
  {"iron-gear-wheel", 10},
}
steam_engine_mk3.expensive.result = "advanced-electric-steam-engine-3"
data:extend({steam_engine_mk3})

local steam_engine_mk4 = util.table.deepcopy(data.raw.recipe["steam-engine"])
steam_engine_mk4.name = "advanced-electric-steam-engine-4"
steam_engine_mk4.normal.enabled = "false"
steam_engine_mk4.normal.ingredients =
{
  {"advanced-electric-steam-engine-3", 1},
  {"processing-unit", 5},
  {"steel-plate", 5},
  {"iron-gear-wheel", 5},
}
steam_engine_mk4.normal.result = "advanced-electric-steam-engine-4"
steam_engine_mk4.expensive.enabled = "false"
steam_engine_mk4.expensive.ingredients =
{
  {"advanced-electric-steam-engine-3", 1},
  {"processing-unit", 20},
  {"steel-plate", 25},
  {"iron-gear-wheel", 10},
}
steam_engine_mk4.expensive.result = "advanced-electric-steam-engine-4"
data:extend({steam_engine_mk4})

--primary load engines
local primary_load_steam_engine = util.table.deepcopy(data.raw.recipe["steam-engine"])
primary_load_steam_engine.name = "advanced-electric-primary-steam-engine-1"
primary_load_steam_engine.normal.enabled = "true"
primary_load_steam_engine.normal.ingredients =

{
  {"iron-gear-wheel", 8},
  {"pipe", 5},
  {"iron-plate", 10}
}
primary_load_steam_engine.normal.result = "advanced-electric-primary-steam-engine-1"
primary_load_steam_engine.expensive.enabled = "true"
primary_load_steam_engine.expensive.ingredients =
{
  {"iron-gear-wheel", 10},
  {"pipe", 5},
  {"iron-plate", 50}
}
primary_load_steam_engine.expensive.result = "advanced-electric-primary-steam-engine-1"
data:extend({primary_load_steam_engine})

local steam_engine_mk2 = util.table.deepcopy(data.raw.recipe["steam-engine"])
steam_engine_mk2.name = "advanced-electric-primary-steam-engine-2"
steam_engine_mk2.normal.enabled = "false"
steam_engine_mk2.normal.ingredients =
{
  {"advanced-electric-primary-steam-engine-1", 1},
  {"steel-plate", 5},
  {"copper-plate", 10},
  {"electronic-circuit", 5}
}
steam_engine_mk2.normal.result = "advanced-electric-primary-steam-engine-2"
steam_engine_mk2.expensive.enabled = "false"
steam_engine_mk2.expensive.ingredients =
{
  {"advanced-electric-primary-steam-engine-1", 1},
  {"steel-plate", 10},
  {"copper-plate", 20},
  {"electronic-circuit", 12}
}
steam_engine_mk2.expensive.result = "advanced-electric-primary-steam-engine-2"
data:extend({steam_engine_mk2})

local steam_engine_mk3 = util.table.deepcopy(data.raw.recipe["steam-engine"])
steam_engine_mk3.name = "advanced-electric-primary-steam-engine-3"
steam_engine_mk3.normal.enabled = "false"
steam_engine_mk3.normal.ingredients =
{
  {"advanced-electric-primary-steam-engine-2", 1},
  {"advanced-circuit", 5},
  {"steel-plate", 5},
  {"iron-gear-wheel", 5},
}
steam_engine_mk3.normal.result = "advanced-electric-primary-steam-engine-3"
steam_engine_mk3.expensive.enabled = "false"
steam_engine_mk3.expensive.ingredients =
{
  {"advanced-electric-primary-steam-engine-2", 1},
  {"advanced-circuit", 20},
  {"steel-plate", 25},
  {"iron-gear-wheel", 10},
}
steam_engine_mk3.expensive.result = "advanced-electric-primary-steam-engine-3"
data:extend({steam_engine_mk3})

local steam_engine_mk4 = util.table.deepcopy(data.raw.recipe["steam-engine"])
steam_engine_mk4.name = "advanced-electric-primary-steam-engine-4"
steam_engine_mk4.normal.enabled = "false"
steam_engine_mk4.normal.ingredients =
{
  {"advanced-electric-primary-steam-engine-3", 1},
  {"processing-unit", 5},
  {"steel-plate", 5},
  {"iron-gear-wheel", 5},
}
steam_engine_mk4.normal.result = "advanced-electric-primary-steam-engine-4"
steam_engine_mk4.expensive.enabled = "false"
steam_engine_mk4.expensive.ingredients =
{
  {"advanced-electric-primary-steam-engine-3", 1},
  {"processing-unit", 20},
  {"steel-plate", 25},
  {"iron-gear-wheel", 10},
}
steam_engine_mk4.expensive.result = "advanced-electric-primary-steam-engine-4"
data:extend({steam_engine_mk4})