
local reactor_mk2 = util.table.deepcopy(data.raw.technology["nuclear-power"])
reactor_mk2.name = "advanced-electric-nuclear-reactor"
reactor_mk2.prerequisites =
{
  "nuclear-power",
}
reactor_mk2.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-nuclear-reactor-2"
  },
}
reactor_mk2.unit.count = 2500
reactor_mk2.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}
reactor_mk2.unit.time = 30
reactor_mk2.upgrade = true
reactor_mk2.order = "[nuclear-reactor]-1"
data:extend({reactor_mk2})