
local boiler_mk2 = util.table.deepcopy(data.raw.technology["steel-processing"])
boiler_mk2.name = "advanced-electric-boiler-1"
boiler_mk2.icon = "__base__/graphics/icons/boiler.png"
boiler_mk2.icon_size = 32
boiler_mk2.prerequisites =
{
  "advanced-material-processing",
}
boiler_mk2.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-boiler-2"
  },
}
boiler_mk2.unit.count = 50
boiler_mk2.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
boiler_mk2.unit.time = 30
boiler_mk2.upgrade = true
boiler_mk2.order = "[boiler]-1"
data:extend({boiler_mk2})

local boiler_mk3 = util.table.deepcopy(data.raw.technology["steel-processing"])
boiler_mk3.name = "advanced-electric-boiler-2"
boiler_mk3.icon = "__base__/graphics/icons/boiler.png"
boiler_mk3.icon_size = 32
boiler_mk3.prerequisites =
{
  "advanced-electric-boiler-1",
  "electric-energy-distribution-1"
}
boiler_mk3.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-boiler-3"
  },
}
boiler_mk3.unit.count = 50
boiler_mk3.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
boiler_mk3.unit.time = 30
boiler_mk3.upgrade = true
boiler_mk3.order = "[boiler]-2"
data:extend({boiler_mk3})

local boiler_mk4 = util.table.deepcopy(data.raw.technology["steel-processing"])
boiler_mk4.name = "advanced-electric-boiler-3"
boiler_mk4.icon = "__base__/graphics/icons/boiler.png"
boiler_mk4.icon_size = 32
boiler_mk4.prerequisites =
{
  "advanced-electric-boiler-2",
  "advanced-electronics"
}
boiler_mk4.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-boiler-4"
  },
}
boiler_mk4.unit.count = 50
boiler_mk4.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1}
}
boiler_mk4.unit.time = 30
boiler_mk4.upgrade = true
boiler_mk4.order = "[boiler]-3"
data:extend({boiler_mk4})