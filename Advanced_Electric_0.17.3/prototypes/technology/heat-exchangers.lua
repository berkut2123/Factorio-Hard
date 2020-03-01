
local heat_exchanger_mk2 = util.table.deepcopy(data.raw.technology["nuclear-power"])
heat_exchanger_mk2.name = "advanced-electric-heat-exchanger"
heat_exchanger_mk2.icon = "__base__/graphics/icons/heat-boiler.png"
heat_exchanger_mk2.icon_size = 32
heat_exchanger_mk2.prerequisites =
{
  "nuclear-power",
}
heat_exchanger_mk2.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-heat-exchanger-2"
  },
}
heat_exchanger_mk2.unit.count = 500
heat_exchanger_mk2.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}
heat_exchanger_mk2.unit.time = 30
heat_exchanger_mk2.upgrade = true
heat_exchanger_mk2.order = "e-p-b-d"
data:extend({heat_exchanger_mk2})
