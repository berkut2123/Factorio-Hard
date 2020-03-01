data.raw["reactor"]["nuclear-reactor"].fast_replaceable_group = "nuclear-reactor"

local reactor_mk2 = util.table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
reactor_mk2.consumption = "120MW"
reactor_mk2.max_health = 1500
reactor_mk2.heat_buffer.max_temperature = 1200
reactor_mk2.heat_buffer.specific_heat = "30MJ"
reactor_mk2.name = "advanced-electric-nuclear-reactor-2"
reactor_mk2.minable.result =  "advanced-electric-nuclear-reactor-2"
reactor_mk2.fast_replaceable_group = "nuclear-reactor"
data:extend({reactor_mk2})