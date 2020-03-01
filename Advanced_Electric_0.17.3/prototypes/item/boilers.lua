data.raw.item["boiler"].order = "b[steam-power]-a[boiler-1]"
data.raw.item["boiler"].subgroup = "advanced-electric-steam-boiler"

local boiler_mk2 = util.table.deepcopy(data.raw.item["boiler"])
boiler_mk2.name = "advanced-electric-boiler-2"
boiler_mk2.subgroup = "advanced-electric-steam-boiler"
boiler_mk2.order= "b[steam-power]-a[boiler-2]"
boiler_mk2.place_result = "advanced-electric-boiler-2"
data:extend({boiler_mk2})

local boiler_mk3 = util.table.deepcopy(data.raw.item["boiler"])
boiler_mk3.name = "advanced-electric-boiler-3"
boiler_mk3.subgroup = "advanced-electric-steam-boiler"
boiler_mk3.order= "b[steam-power]-a[boiler-3]"
boiler_mk3.place_result = "advanced-electric-boiler-3"
data:extend({boiler_mk3})

local boiler_mk4 = util.table.deepcopy(data.raw.item["boiler"])
boiler_mk4.name = "advanced-electric-boiler-4"
boiler_mk4.subgroup = "advanced-electric-steam-boiler"
boiler_mk4.order= "b[steam-power]-a[boiler-4]"
boiler_mk4.place_result = "advanced-electric-boiler-4"
data:extend({boiler_mk4})