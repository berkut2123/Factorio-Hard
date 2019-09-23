require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/items.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobpower and apm_nuclear_compat_bob then
	apm.lib.utils.item.overwrite.group('heat-exchanger-2', 'apm_nuclear', 'apm_nuclear_machines_1', 'ac_b')
	apm.lib.utils.item.overwrite.group('heat-exchanger-3', 'apm_nuclear', 'apm_nuclear_machines_1', 'ac_c')
	apm.lib.utils.item.overwrite.group('steam-turbine-2', 'apm_nuclear', 'apm_nuclear_machines_1', 'ad_b')
	apm.lib.utils.item.overwrite.group('steam-turbine-3', 'apm_nuclear', 'apm_nuclear_machines_1', 'ad_c')
end