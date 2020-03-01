data.raw.item["small-electric-pole"].order = "a[energy]-a[small-electric-pole-1]"
data.raw.item["small-electric-pole"].subgroup = "advanced-electric-poles"
data.raw.item["medium-electric-pole"].order = "a[energy]-b[medium-electric-pole-1]"
data.raw.item["medium-electric-pole"].subgroup = "advanced-electric-poles"
data.raw.item["big-electric-pole"].order = "a[energy]-c[big-electric-pole-1]"
data.raw.item["big-electric-pole"].subgroup = "advanced-electric-poles"
data.raw.item["substation"].order = "a[energy]-d[substation-1]"
data.raw.item["substation"].subgroup = "advanced-electric-poles"

local small_electric_pole_mk2 = util.table.deepcopy(data.raw.item["small-electric-pole"])
small_electric_pole_mk2.order = "a[energy]-a[small-electric-pole-2]"
small_electric_pole_mk2.subgroup = "advanced-electric-poles"
small_electric_pole_mk2.name = "small-electric-pole-2"
small_electric_pole_mk2.place_result = "small-electric-pole-2"
data:extend({small_electric_pole_mk2})

local medium_electric_pole_mk2 = util.table.deepcopy(data.raw.item["medium-electric-pole"])
medium_electric_pole_mk2.order = "a[energy]-b[medium-electric-pole-2]"
medium_electric_pole_mk2.subgroup = "advanced-electric-poles"
medium_electric_pole_mk2.name = "medium-electric-pole-2"
medium_electric_pole_mk2.place_result = "medium-electric-pole-2"
data:extend({medium_electric_pole_mk2})

local medium_electric_pole_mk3 = util.table.deepcopy(data.raw.item["medium-electric-pole"])
medium_electric_pole_mk3.order = "a[energy]-b[medium-electric-pole-3]"
medium_electric_pole_mk3.subgroup = "advanced-electric-poles"
medium_electric_pole_mk3.name = "medium-electric-pole-3"
medium_electric_pole_mk3.place_result = "medium-electric-pole-3"
data:extend({medium_electric_pole_mk3})

local medium_electric_pole_mk4 = util.table.deepcopy(data.raw.item["medium-electric-pole"])
medium_electric_pole_mk4.order = "a[energy]-b[medium-electric-pole-4]"
medium_electric_pole_mk4.subgroup = "advanced-electric-poles"
medium_electric_pole_mk4.name = "medium-electric-pole-4"
medium_electric_pole_mk4.place_result = "medium-electric-pole-4"
data:extend({medium_electric_pole_mk4})

local big_electric_pole_mk2 = util.table.deepcopy(data.raw.item["big-electric-pole"])
big_electric_pole_mk2.order = "a[energy]-c[big-electric-pole-2]"
big_electric_pole_mk2.subgroup = "advanced-electric-poles"
big_electric_pole_mk2.name = "big-electric-pole-2"
big_electric_pole_mk2.place_result = "big-electric-pole-2"
data:extend({big_electric_pole_mk2})

local big_electric_pole_mk3 = util.table.deepcopy(data.raw.item["big-electric-pole"])
big_electric_pole_mk3.order = "a[energy]-c[big-electric-pole-3]"
big_electric_pole_mk3.subgroup = "advanced-electric-poles"
big_electric_pole_mk3.name = "big-electric-pole-3"
big_electric_pole_mk3.place_result = "big-electric-pole-3"
data:extend({big_electric_pole_mk3})

local big_electric_pole_mk4 = util.table.deepcopy(data.raw.item["big-electric-pole"])
big_electric_pole_mk4.order = "a[energy]-c[big-electric-pole-4]"
big_electric_pole_mk4.subgroup = "advanced-electric-poles"
big_electric_pole_mk4.name = "big-electric-pole-4"
big_electric_pole_mk4.place_result = "big-electric-pole-4"
data:extend({big_electric_pole_mk4})

local substation_mk2 = util.table.deepcopy(data.raw.item["substation"])
substation_mk2.order = "a[energy]-d[substation-2]"
substation_mk2.subgroup = "advanced-electric-poles"
substation_mk2.name = "substation-2"
substation_mk2.place_result = "substation-2"
data:extend({substation_mk2})

local substation_mk3 = util.table.deepcopy(data.raw.item["substation"])
substation_mk3.order = "a[energy]-d[substation-3]"
substation_mk3.subgroup = "advanced-electric-poles"
substation_mk3.name = "substation-3"
substation_mk3.place_result = "substation-3"
data:extend({substation_mk3})

local substation_mk4 = util.table.deepcopy(data.raw.item["substation"])
substation_mk4.order = "a[energy]-d[substation-4]"
substation_mk4.subgroup = "advanced-electric-poles"
substation_mk4.name = "substation-4"
substation_mk4.place_result = "substation-4"
data:extend({substation_mk4})