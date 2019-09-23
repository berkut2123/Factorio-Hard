require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/updates.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

-- apm ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.apm_recycling then
    apm.lib.utils.recycling.scrap.add('apm_fuel_cell_casing', 'steel')
    apm.lib.utils.recycling.scrap.add('apm_fuel_cell_casing_washing', 'steel')
    if not mods.bobplates or not mods.bobores then
        apm.lib.utils.recycling.scrap.add('apm_waste_container', 'iron')
    else
        apm.lib.utils.recycling.scrap.add('apm_waste_container', 'lead')
    end
end