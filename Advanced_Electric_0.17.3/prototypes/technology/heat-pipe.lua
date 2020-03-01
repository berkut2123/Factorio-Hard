
local heat_pipe_mk2 = util.table.deepcopy(data.raw.technology["nuclear-power"])
heat_pipe_mk2.name = "advanced-electric-heat-pipe"
heat_pipe_mk2.icon = "__base__/graphics/icons/heat-pipe.png"
heat_pipe_mk2.icon_size = 32
heat_pipe_mk2.prerequisites =
{
  "nuclear-power",
}
heat_pipe_mk2.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-heat-pipe-2"
  },
}
heat_pipe_mk2.unit.count = 250
heat_pipe_mk2.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}
heat_pipe_mk2.unit.time = 20
heat_pipe_mk2.upgrade = true
heat_pipe_mk2.order = "e-p-b-d"
data:extend({heat_pipe_mk2})
