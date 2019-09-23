data.raw["electric-pole"]["substation"].fast_replaceable_group = "electric-pole"

local advancedsubstation = util.table.deepcopy(data.raw["electric-pole"]["substation"])
advancedsubstation.maximum_wire_distance = 36
advancedsubstation.supply_area_distance = 18

advancedsubstation.pictures =
    {
      filename = "__AdvancedSubstation__/graphics/entity/substation-2/substation-2.png",
	  priority = "high",
	  width = 132,
      height = 158,
      direction_count = 4,
	  shift = {0.75,-0.70}
    }
advancedsubstation.name = "substation-2"
advancedsubstation.minable.result =  "substation-2"
advancedsubstation.fast_replaceable_group = "electric-pole"
data:extend({advancedsubstation})


data.raw["electric-pole"]["substation"].fast_replaceable_group = "electric-pole"

local atomicsubstation = util.table.deepcopy(data.raw["electric-pole"]["substation"])
atomicsubstation.maximum_wire_distance = 50
atomicsubstation.supply_area_distance = 25
atomicsubstation.max_health = 100
atomicsubstation.pictures =
    {
      filename = "__AdvancedSubstation__/graphics/entity/substation-3/substation-3.png",
	  priority = "high",
	  width = 132,
      height = 158,
      direction_count = 4,
	  shift = {0.75,-0.70}
    }
atomicsubstation.name = "substation-3"
atomicsubstation.minable.result =  "substation-3"
atomicsubstation.fast_replaceable_group = "electric-pole"
data:extend({atomicsubstation})

