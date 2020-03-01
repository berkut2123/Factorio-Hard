local heat_exchanger_mk2 = util.table.deepcopy(data.raw.recipe["heat-exchanger"])
heat_exchanger_mk2.name = "advanced-electric-heat-exchanger-2"
heat_exchanger_mk2.enabled = "false"
heat_exchanger_mk2.ingredients =
{
  {"heat-exchanger", 1},
  {"processing-unit", 2},
}
heat_exchanger_mk2.result = "advanced-electric-heat-exchanger-2"
data:extend({heat_exchanger_mk2})