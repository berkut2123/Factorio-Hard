data.raw.item["heat-exchanger"].order = "b[steam-power]-a[heat-exchanger-1]"
data.raw.item["heat-exchanger"].subgroup = "advanced-electric-heat-exchanger"

local heat_exchanger_mk2 = util.table.deepcopy(data.raw.item["heat-exchanger"])
heat_exchanger_mk2.name = "advanced-electric-heat-exchanger-2"
heat_exchanger_mk2.subgroup = "advanced-electric-heat-exchanger"
heat_exchanger_mk2.order= "b[steam-power]-a[heat-exchanger-2]"
heat_exchanger_mk2.place_result = "advanced-electric-heat-exchanger-2"
data:extend({heat_exchanger_mk2})