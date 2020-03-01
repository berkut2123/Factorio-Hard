local reactor_mk2 = util.table.deepcopy(data.raw.recipe["nuclear-reactor"])
reactor_mk2.name = "advanced-electric-nuclear-reactor-2"
reactor_mk2.enabled = "false"
reactor_mk2.ingredients =
{
  {"nuclear-reactor", 1},
  {"steel-plate", 500},
  {"copper-plate", 500},
  {"processing-unit", 500},
}
reactor_mk2.result = "advanced-electric-nuclear-reactor-2"
data:extend({reactor_mk2})