

--substations--
local advancedsubstation = util.table.deepcopy(data.raw.recipe["substation"])
advancedsubstation.name = "substation-2"
advancedsubstation.enabled = "false"
advancedsubstation.energy_required = 15
advancedsubstation.ingredients =
{
  {"substation", 1},
  {"big-electric-pole",1},
  {"advanced-circuit", 10},
  {"steel-plate", 40},
  {"copper-plate", 20},
}
advancedsubstation.result = "substation-2"
data:extend({advancedsubstation})

local atomicsubstation = util.table.deepcopy(data.raw.recipe["substation"])
atomicsubstation.name = "substation-3"
atomicsubstation.enabled = "false"
atomicsubstation.energy_required = 60
atomicsubstation.ingredients =
{
  {"substation-2", 1},
  {"big-electric-pole",1},
  {"processing-unit", 20},
  {"refined-concrete", 100},
  {"copper-plate", 50},
  {"uranium-fuel-cell",5},
}
atomicsubstation.result = "substation-3"
data:extend({atomicsubstation})