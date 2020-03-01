local boiler_mk2 = util.table.deepcopy(data.raw.recipe["boiler"])
boiler_mk2.name = "advanced-electric-boiler-2"
boiler_mk2.enabled = "false"
boiler_mk2.ingredients =
{
  {"boiler", 1},
  {"steel-furnace", 1},
}
boiler_mk2.result = "advanced-electric-boiler-2"
data:extend({boiler_mk2})

local boiler_mk3 = util.table.deepcopy(data.raw.recipe["boiler"])
boiler_mk3.name = "advanced-electric-boiler-3"
boiler_mk3.enabled = "false"
boiler_mk3.ingredients =
{
  {"advanced-electric-boiler-2", 1},
  {"electronic-circuit", 5},
  {"steel-plate", 5},
}
boiler_mk3.result = "advanced-electric-boiler-3"
data:extend({boiler_mk3})

local boiler_mk4 = util.table.deepcopy(data.raw.recipe["boiler"])
boiler_mk4.name = "advanced-electric-boiler-4"
boiler_mk4.enabled = "false"
boiler_mk4.ingredients =
{
  {"advanced-electric-boiler-3", 1},
  {"electric-furnace", 1},
  {"steel-plate", 10},
}
boiler_mk4.result = "advanced-electric-boiler-4"
data:extend({boiler_mk4})