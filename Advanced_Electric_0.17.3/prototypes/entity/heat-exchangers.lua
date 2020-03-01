data.raw["boiler"]["heat-exchanger"].fast_replaceable_group = "heat-exchanger"

local heat_exchanger_mk2 = util.table.deepcopy(data.raw["boiler"]["heat-exchanger"])
heat_exchanger_mk2.energy_consumption = "30MW"
heat_exchanger_mk2.target_temperature = 750
heat_exchanger_mk2.max_health = 500
heat_exchanger_mk2.name = "advanced-electric-heat-exchanger-2"
heat_exchanger_mk2.minable.result =  "advanced-electric-heat-exchanger-2"
heat_exchanger_mk2.fast_replaceable_group = "heat-exchanger"
heat_exchanger_mk2.energy_source.min_working_temperature = 750
heat_exchanger_mk2.energy_source.minimum_glow_temperature = 600
heat_exchanger_mk2.energy_source.max_temperature = 1500
heat_exchanger_mk2.energy_source.specific_heat = "3MJ"
heat_exchanger_mk2.energy_source.max_transfer = "6GW"
data:extend({heat_exchanger_mk2})  
