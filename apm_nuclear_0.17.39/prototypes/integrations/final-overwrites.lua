require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/final-overwrites.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

apm.lib.utils.recipe.ingredient.replace_all('uranium-238', 'apm_nuclear_uranium_oxide_pellet_002')
apm.lib.utils.recipe.ingredient.replace_all('uranium-235', 'apm_nuclear_plutonium_oxide_pellet')
apm.lib.utils.recipe.ingredient.replace_all('uranium-fuel-cell', 'apm_nuclear_fuel_cell_047')

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobpower and apm_nuclear_compat_bob then
    apm.lib.utils.recipe.ingredient.replace_all('thorium-232', 'apm_nuclear_thorium_oxide_pellet')
    apm.lib.utils.recipe.ingredient.replace_all('plutonium-239', 'apm_nuclear_plutonium_oxide_pellet')
    apm.lib.utils.recipe.ingredient.replace_all('thorium-fuel-cell', 'apm_nuclear_fuel_cell_thorium')
    apm.lib.utils.recipe.ingredient.replace_all('used-up-thorium-fuel-cell', 'apm_nuclear_fuel_cell_used_thorium')  
    apm.lib.utils.recipe.ingredient.replace_all('deuterium-fuel-cell', 'apm_nuclear_fuel_cell_deuterium')
    apm.lib.utils.recipe.ingredient.replace_all('used-up-deuterium-fuel-cell', 'apm_nuclear_fuel_cell_used_deuterium')
end

-- entity description updates -------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
apm.lib.utils.description.entities.include_list.add('apm_nuclear_breeder')
apm.lib.utils.description.entities.update()

-- recipes allow productivity modules -----------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
apm.lib.utils.recipe.allow_productivity('apm_fuel_cell_casing')
apm.lib.utils.recipe.allow_productivity('apm_waste_container')
apm.lib.utils.recipe.allow_productivity('apm_fluorite_ore')
apm.lib.utils.recipe.allow_productivity('apm_nuclear_yellowcake')