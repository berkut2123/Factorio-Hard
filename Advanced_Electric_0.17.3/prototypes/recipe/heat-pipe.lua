local heat_pipe_mk2 = util.table.deepcopy(data.raw.recipe["heat-pipe"])
heat_pipe_mk2.name = "advanced-electric-heat-pipe-2"
heat_pipe_mk2.enabled = "false"
heat_pipe_mk2.ingredients =
{
  {"heat-pipe", 1},
  {"copper-plate", 20},
  {"steel-plate", 5}
}
heat_pipe_mk2.result = "advanced-electric-heat-pipe-2"
data:extend({heat_pipe_mk2})