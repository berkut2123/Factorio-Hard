data.raw["heat-pipe"]["heat-pipe"].fast_replaceable_group = "heat-pipe"

local heat_pipe_mk2 = util.table.deepcopy(data.raw["heat-pipe"]["heat-pipe"])
heat_pipe_mk2.minimum_glow_temperature = 450
heat_pipe_mk2.heat_buffer.max_temperature = 1200
heat_pipe_mk2.heat_buffer.specific_heat = "3MJ"
heat_pipe_mk2.heat_buffer.max_transfer = "3GW"
heat_pipe_mk2.max_health = 300
heat_pipe_mk2.name = "advanced-electric-heat-pipe-2"
heat_pipe_mk2.minable.result =  "advanced-electric-heat-pipe-2"
heat_pipe_mk2.fast_replaceable_group = "heat-pipe"
data:extend({heat_pipe_mk2})  