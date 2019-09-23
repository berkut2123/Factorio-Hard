require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/overwrites.lua')
log('-------------------------------------------------------')

-------------------------------------------------------------------------------------------------------------
-- This block should make this mod more compatible with other by setting the basic fuel categories for burners
-- apm.lib.utils.fuel.set.categories_to_all(entity_type, conditional_category, t_categories)
-------------------------------------------------------------------------------------------------------------
log('BEGIN: basic overwrites of the fuel categories')
-- define name that excluded from the following overwrites:
--apm.lib.utils.fuel.add.to_exlude_list('apm_coking_plant_0')
--apm.lib.utils.fuel.add.to_exlude_list('apm_coking_plant_2')
--apm.lib.utils.fuel.add.to_exlude_list('apm_coking_plant_3')
-- overwrite fuel categorys on all assembling-machine if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('assembling-machine', 'chemical', {'apm_refined_chemical'})
-- overwrite fuel categorys on all inserter if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('inserter', 'chemical', {'apm_refined_chemical'})
-- overwrite fuel categorys on all labs if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('lab', 'chemical', {'apm_refined_chemical'})
-- overwrite fuel categorys on all furnace if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('furnace', 'chemical', {'apm_refined_chemical'})
-- overwrite fuel categorys on all generators if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('generator', 'chemical', {'apm_refined_chemical'})
-- overwrite fuel categorys on all boiler if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('boiler', 'chemical', {'apm_refined_chemical'})
-- overwrite fuel categorys on all car if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.car.overhaul_all(true, false, false)
-- overwrite fuel categorys on all locomotive if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('locomotive', 'chemical', {'apm_refined_chemical', 'apm_vehicle_only', 'apm_rocket'})
-- overwrite fuel categorys on all mining-drill if they hav a burner and uses 'checmical' as fuel category
apm.lib.utils.fuel.set.categories_to_all('mining-drill', 'chemical', {'apm_refined_chemical'})
--
log('END: basic overwrites of the fuel categories')
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

-- Boilers
apm.lib.utils.boiler.overhaul('boiler', 1)

-- Generators
apm.lib.utils.generator.overhaul('steam-engine', 1)

-- Furnaces
apm.lib.utils.furnace.overhaul('stone-furnace')
apm.lib.utils.furnace.overhaul('steel-furnace', nil, true)

-- Burner inserter
apm.lib.utils.inserter.burner.overhaul('burner-inserter')
apm.lib.utils.item.overwrite.group('burner-inserter', 'apm_power', 'apm_power_inserter', 'aa_a')
apm.lib.utils.inserter.burner.overhaul('apm_burner_filter_inserter')
apm.lib.utils.inserter.burner.overhaul('apm_burner_long_inserter')

-- Miner
apm.lib.utils.mining_drill.burner.overhaul('burner-mining-drill', 1)
apm.lib.utils.icon.add_tier_lable('burner-mining-drill', 1)
apm.lib.utils.mining_drill.burner.overhaul('apm_burner_miner_drill_2', 2)

--labs
apm.lib.utils.lab.overhaul('lab')

-- science-packs
apm.lib.utils.recipe.disable('automation-science-pack')

-- miner
apm.lib.utils.item.overwrite.group('burner-mining-drill', 'apm_power', 'apm_power_machines_miner', 'aa_a')

-- bots 
apm.lib.utils.bot.logistic.overhaul('logistic-robot', 1)
apm.lib.utils.bot.construction.overhaul('construction-robot', 1)