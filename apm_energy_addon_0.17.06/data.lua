if apm == nil then apm = {} end
if apm.energy_addon == nil then apm.energy_addon = {} end

require('lib.definitions')
require('prototypes.energy_addon.entities')
require('prototypes.energy_addon.items.entities')
require('prototypes.energy_addon.items.fuels')
require('prototypes.energy_addon.recipes.entities')
require('prototypes.energy_addon.recipes.fuels')
require('prototypes.energy_addon.technologies')