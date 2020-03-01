data.raw["electric-pole"]["small-electric-pole"].fast_replaceable_group = "electric-pole"
data.raw["electric-pole"]["substation"].fast_replaceable_group = "electric-pole"
data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = 11

local small_electric_pole_mk2 = util.table.deepcopy(data.raw["electric-pole"]["small-electric-pole"])
small_electric_pole_mk2.maximum_wire_distance = 9
small_electric_pole_mk2.supply_area_distance = 3.5
small_electric_pole_mk2.name = "small-electric-pole-2"
small_electric_pole_mk2.minable.result =  "small-electric-pole-2"
small_electric_pole_mk2.fast_replaceable_group = "electric-pole"
data:extend({small_electric_pole_mk2})

local medium_electric_pole_mk2 = util.table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
medium_electric_pole_mk2.maximum_wire_distance = 13
medium_electric_pole_mk2.supply_area_distance = 4.5
medium_electric_pole_mk2.name = "medium-electric-pole-2"
medium_electric_pole_mk2.minable.result =  "medium-electric-pole-2"
medium_electric_pole_mk2.fast_replaceable_group = "electric-pole"
data:extend({medium_electric_pole_mk2})

local medium_electric_pole_mk3 = util.table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
medium_electric_pole_mk3.maximum_wire_distance = 15
medium_electric_pole_mk3.supply_area_distance = 5.5
medium_electric_pole_mk3.name = "medium-electric-pole-3"
medium_electric_pole_mk3.minable.result =  "medium-electric-pole-3"
medium_electric_pole_mk3.fast_replaceable_group = "electric-pole"
data:extend({medium_electric_pole_mk3})

local medium_electric_pole_mk4 = util.table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
medium_electric_pole_mk4.maximum_wire_distance = 17
medium_electric_pole_mk4.supply_area_distance = 6.5
medium_electric_pole_mk4.name = "medium-electric-pole-4"
medium_electric_pole_mk4.minable.result =  "medium-electric-pole-4"
medium_electric_pole_mk4.fast_replaceable_group = "electric-pole"
data:extend({medium_electric_pole_mk4})

local big_electric_pole_mk2 = util.table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
big_electric_pole_mk2.maximum_wire_distance = 40
big_electric_pole_mk2.supply_area_distance = 2
big_electric_pole_mk2.name = "big-electric-pole-2"
big_electric_pole_mk2.minable.result =  "big-electric-pole-2"
big_electric_pole_mk2.fast_replaceable_group = "electric-pole"
data:extend({big_electric_pole_mk2})

local big_electric_pole_mk3 = util.table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
big_electric_pole_mk3.maximum_wire_distance = 50
big_electric_pole_mk3.supply_area_distance = 2.25
big_electric_pole_mk3.name = "big-electric-pole-3"
big_electric_pole_mk3.minable.result =  "big-electric-pole-3"
big_electric_pole_mk3.fast_replaceable_group = "electric-pole"
data:extend({big_electric_pole_mk3})

local big_electric_pole_mk4 = util.table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
big_electric_pole_mk4.maximum_wire_distance = 60
big_electric_pole_mk4.supply_area_distance = 2.5
big_electric_pole_mk4.name = "big-electric-pole-4"
big_electric_pole_mk4.minable.result =  "big-electric-pole-4"
big_electric_pole_mk4.fast_replaceable_group = "electric-pole"
data:extend({big_electric_pole_mk4})

local substation_mk2 = util.table.deepcopy(data.raw["electric-pole"]["substation"])
substation_mk2.maximum_wire_distance = 24
substation_mk2.supply_area_distance = 12
substation_mk2.name = "substation-2"
substation_mk2.minable.result =  "substation-2"
substation_mk2.fast_replaceable_group = "electric-pole"
data:extend({substation_mk2})

local substation_mk3 = util.table.deepcopy(data.raw["electric-pole"]["substation"])
substation_mk3.maximum_wire_distance = 30
substation_mk3.supply_area_distance = 15
substation_mk3.name = "substation-3"
substation_mk3.minable.result =  "substation-3"
substation_mk3.fast_replaceable_group = "electric-pole"
data:extend({substation_mk3})

local substation_mk4 = util.table.deepcopy(data.raw["electric-pole"]["substation"])
substation_mk4.maximum_wire_distance = 36
substation_mk4.supply_area_distance = 18
substation_mk4.name = "substation-4"
substation_mk4.minable.result =  "substation-4"
substation_mk4.fast_replaceable_group = "electric-pole"
data:extend({substation_mk4})