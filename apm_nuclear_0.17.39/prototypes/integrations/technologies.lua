require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/technologies.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobplates and apm_nuclear_compat_bob then
    apm.lib.utils.technology.delete('bobingabout-enrichment-process')
end

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------

if mods['space-exploration'] and apm_nuclear_compat_earendel then
    apm.lib.utils.technology.remove.prerequisites('se-rtg-equipment', 'nuclear-power')
    apm.lib.utils.technology.add.prerequisites('se-rtg-equipment', 'nuclear-fuel-reprocessing')
    apm.lib.utils.technology.remove.prerequisites('nuclear-fuel-reprocessing', 'production-science-pack')
    apm.lib.utils.technology.remove.science_pack('nuclear-fuel-reprocessing', 'production-science-pack')
    apm.lib.utils.technology.mod.unit_count('nuclear-fuel-reprocessing', 400)
    apm.lib.utils.technology.add.prerequisites('apm_nuclear_breeder', 'production-science-pack')
    apm.lib.utils.technology.add.prerequisites('rocket-silo', 'nuclear-fuel-reprocessing')
end
