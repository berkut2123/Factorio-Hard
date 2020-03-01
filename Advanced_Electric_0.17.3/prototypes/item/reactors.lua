data.raw.item["nuclear-reactor"].order = "c[nuclear-reactor-1]"
data.raw.item["nuclear-reactor"].subgroup = "advanced-electric-nuclear-reactor"

local reactor_mk2 = util.table.deepcopy(data.raw.item["nuclear-reactor"])
reactor_mk2.name = "advanced-electric-nuclear-reactor-2"
reactor_mk2.subgroup = "advanced-electric-nuclear-reactor"
reactor_mk2.order= "c[nuclear-reactor-2]"
reactor_mk2.place_result = "advanced-electric-nuclear-reactor-2"
data:extend({reactor_mk2})