require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/power/fuel.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))

-- Ovewrwrite coal fuel value -------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.lib.utils.fuel.overwrite_coal_fuel_value()

-----------------------------------------------------------------------------------------------------------------------
-- apm.lib.utils.fuel.overhaul(level, item_name, multiplicator, burnt_result, fuel_category)
-----------------------------------------------------------------------------------------------------------------------
apm.lib.utils.fuel.overhaul(2, 'coal', 1.0, 'apm_coal_ash')
apm.lib.utils.fuel.overhaul(1, 'wood', 0.5, 'apm_wood_ash')
apm.lib.utils.fuel.overhaul(1, 'apm_tree_seeds', 0.35, 'apm_wood_ash')
apm.lib.utils.fuel.overhaul(1, 'apm_treated_wood_planks', 0.28, 'apm_wood_ash')

apm.lib.utils.fuel.overhaul(2, 'apm_coal_crushed', 0.75, 'apm_coal_ash') 
apm.lib.utils.fuel.overhaul(1, 'apm_wood_pellets', 0.42, 'apm_wood_ash')

apm.lib.utils.fuel.overhaul(2, 'apm_coal_briquette', 3.5, 'apm_coal_ash')
apm.lib.utils.fuel.overhaul(1, 'apm_wood_briquette', 1.75, 'apm_wood_ash')

apm.lib.utils.fuel.overhaul(3, 'apm_coke', 3.7, nil, 'apm_refined_chemical')							
apm.lib.utils.fuel.overhaul(2, 'apm_charcoal', 1.95, nil, 'apm_refined_chemical')

apm.lib.utils.fuel.overhaul(3, 'apm_coke_crushed', 2.46, nil, 'apm_refined_chemical')

apm.lib.utils.fuel.overhaul(3, 'apm_coke_brick', 14.8, nil, 'apm_refined_chemical')					
apm.lib.utils.fuel.overhaul(2, 'apm_charcoal_brick', 7.8, nil, 'apm_refined_chemical')

apm.lib.utils.fuel.overhaul(4, 'solid-fuel', 5, nil, 'apm_refined_chemical')
apm.lib.utils.fuel.overhaul(6, 'rocket-fuel', 40, nil, 'apm_rocket')
apm.lib.utils.fuel.overhaul(10, 'nuclear-fuel', 200, nil, 'apm_rocket')