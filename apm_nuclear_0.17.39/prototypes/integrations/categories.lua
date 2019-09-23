require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/categories.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

if mods.bobpower and apm_nuclear_compat_bob then
    apm.lib.utils.item.overwrite.group('nuclear-reactor-2', 'apm_nuclear', 'apm_nuclear_machines_1', 'aa_b')
    apm.lib.utils.item.overwrite.group('nuclear-reactor-3', 'apm_nuclear', 'apm_nuclear_machines_1', 'aa_c')
    apm.lib.utils.item.overwrite.group('heat-pipe-2', 'apm_nuclear', 'apm_nuclear_machines_1', 'ab_b')
    apm.lib.utils.item.overwrite.group('heat-pipe-3', 'apm_nuclear', 'apm_nuclear_machines_1', 'ab_c')
end