data.raw.item["substation"].order = "a[energy]-d[substation-1]"
data.raw.item["substation"].subgroup = "advanced-electric-poles"

local advancedsubstation = util.table.deepcopy(data.raw.item["substation"])


advancedsubstation.icon = "__AdvancedSubstation__/graphics/icons/substation-2_icon.png"
advancedsubstation.icon_size = 32


advancedsubstation.order = "a[energy]-d[substation-2]"
advancedsubstation.subgroup = "advanced-electric-poles"
advancedsubstation.name = "substation-2"
advancedsubstation.place_result = "substation-2"
data:extend({advancedsubstation})


data.raw.item["substation"].order = "a[energy]-d[substation-1]"
data.raw.item["substation"].subgroup = "advanced-electric-poles"

local atomicsubstation = util.table.deepcopy(data.raw.item["substation"])


atomicsubstation.icon = "__AdvancedSubstation__/graphics/icons/substation-3_icon.png"
atomicsubstation.icon_size = 32


atomicsubstation.order = "a[energy]-e[substation-3]"
atomicsubstation.subgroup = "advanced-electric-poles"
atomicsubstation.name = "substation-3"
atomicsubstation.place_result = "substation-3"
data:extend({atomicsubstation})
