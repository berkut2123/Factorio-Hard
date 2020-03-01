data.raw.item["heat-pipe"].order = "b[steam-power]-a[heat-pipe-1]"
data.raw.item["heat-pipe"].subgroup = "advanced-electric-heat-pipe"

local heat_pipe_mk2 = util.table.deepcopy(data.raw.item["heat-pipe"])
heat_pipe_mk2.name = "advanced-electric-heat-pipe-2"
heat_pipe_mk2.subgroup = "advanced-electric-heat-pipe"
heat_pipe_mk2.order= "b[steam-power]-a[heat-pipe-2]"
heat_pipe_mk2.place_result = "advanced-electric-heat-pipe-2"
data:extend({heat_pipe_mk2})