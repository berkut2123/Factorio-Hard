data.raw["boiler"]["boiler"].fast_replaceable_group = "boiler"

local boiler_mk2 = util.table.deepcopy(data.raw["boiler"]["boiler"])
boiler_mk2.target_temperature = 215
boiler_mk2.energy_consumption = "3MW"
boiler_mk2.name = "advanced-electric-boiler-2"
boiler_mk2.minable.result =  "advanced-electric-boiler-2"
boiler_mk2.fast_replaceable_group = "boiler"
boiler_mk2.energy_source.effectivity = 1.1
data:extend({boiler_mk2})

local boiler_mk3 = util.table.deepcopy(data.raw["boiler"]["boiler"])
boiler_mk3.target_temperature = 265
boiler_mk3.energy_consumption = "4.8MW"
boiler_mk3.name = "advanced-electric-boiler-3"
boiler_mk3.minable.result =  "advanced-electric-boiler-3"
boiler_mk3.fast_replaceable_group = "boiler"
boiler_mk3.energy_source.effectivity = 1.2
data:extend({boiler_mk3})

local boiler_mk4 = util.table.deepcopy(data.raw["boiler"]["boiler"])
boiler_mk4.target_temperature = 315
boiler_mk4.energy_consumption = "7.2MW"
boiler_mk4.name = "advanced-electric-boiler-4"
boiler_mk4.minable.result =  "advanced-electric-boiler-4"
boiler_mk4.fast_replaceable_group = "boiler"
boiler_mk4.energy_source.effectivity = 1.3
data:extend({boiler_mk4})


   