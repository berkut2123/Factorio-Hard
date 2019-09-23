require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/disable.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

--apm.lib.utils.recipe.remove('apm_nuclear_uranium_oxide_pellet_007')
apm.lib.utils.recipe.remove('apm_nuclear_uranium_oxide_pellet_012')
apm.lib.utils.recipe.remove('apm_nuclear_uranium_oxide_pellet_017')
apm.lib.utils.recipe.remove('apm_nuclear_uranium_oxide_pellet_022')
apm.lib.utils.recipe.remove('apm_nuclear_uranium_oxide_pellet_027')

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobpower and apm_nuclear_compat_bob then
    apm.lib.utils.item.remove('thorium-232')
    apm.lib.utils.item.remove('plutonium-239')
    apm.lib.utils.item.remove('thorium-fuel-cell')
    apm.lib.utils.item.remove('used-up-thorium-fuel-cell')
    apm.lib.utils.item.remove('deuterium-fuel-cell')
    apm.lib.utils.item.remove('used-up-deuterium-fuel-cell')
    
    apm.lib.utils.recipe.remove('thorium-plutonium-fuel-cell')
    apm.lib.utils.recipe.remove('thorium-fuel-cell')
    apm.lib.utils.recipe.remove('thorium-processing')
    apm.lib.utils.recipe.remove('thorium-fuel-reprocessing')

    apm.lib.utils.recipe.remove('deuterium-fuel-cell')
    apm.lib.utils.recipe.remove('deuterium-fuel-reprocessing')
end