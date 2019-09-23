require ('util')

local apm_recycler_compat_bob = settings.startup["apm_recycler_compat_bob"].value
local apm_recycler_compat_angel = settings.startup["apm_recycler_compat_angel"].value
local apm_recycler_compat_earendel = settings.startup["apm_recycler_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/entities.lua')
log('apm_recycler_compat_bob: ' .. tostring(apm_recycler_compat_bob))
log('apm_recycler_compat_angel: ' .. tostring(apm_recycler_compat_angel))
log('apm_recycler_compat_earendel: ' .. tostring(apm_recycler_compat_earendel))
log('-------------------------------------------------------')

if mods['space-exploration'] and apm_recycler_compat_earendel then
	apm.lib.utils.assembler.mod.category.add('se-space-recycling-facility', 'apm_recycling_1')
	apm.lib.utils.assembler.mod.category.add('se-space-recycling-facility', 'apm_recycling_2')
    apm.lib.utils.assembler.mod.category.add('se-space-recycling-facility', 'apm_recycling_3')
    apm.lib.utils.assembler.mod.category.add('se-space-recycling-facility', 'apm_recycling_4')
end