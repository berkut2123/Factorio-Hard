require('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/overwrites.lua')
log('-------------------------------------------------------')

-------------------------------------------------------------------------------------------------------------
-- This block should make this mod more compatible with other by setting the basic fuel categories for burners
-- apm.lib.utils.fuel.set.categories_to_all(entity_type, conditional_category, t_categories)
-------------------------------------------------------------------------------------------------------------
log('BEGIN: basic overwrites of the fuel categories')
-- overwrite fuel categorys on all reactor if they hav a burner and uses 'checmical' as fuel category
for reactor_name, _ in pairs(data.raw.reactor) do
    apm.lib.utils.reactor.overhaul(reactor_name)
end
-- apm.lib.utils.fuel.set.categories_to_all('reactor', 'nuclear', {'apm_nuclear_mox'})
log('END: basic overwrites of the fuel categories')

apm.lib.utils.recipe.ingredient.mod('uranium-rounds-magazine', 'uranium-238', 0)
apm.lib.utils.recipe.ingredient.mod('uranium-rounds-magazine', 'apm_depleted_uranium_ingots', 5, 7)
apm.lib.utils.recipe.ingredient.mod('uranium-cannon-shell', 'uranium-238', 0)
apm.lib.utils.recipe.ingredient.mod('uranium-cannon-shell', 'apm_depleted_uranium_ingots', 5, 7)
apm.lib.utils.recipe.ingredient.mod('explosive-uranium-cannon-shell', 'uranium-238', 0)
apm.lib.utils.recipe.ingredient.mod('explosive-uranium-cannon-shell', 'apm_depleted_uranium_ingots', 5, 7)

apm.lib.utils.recipe.ingredient.mod('nuclear-fuel', 'uranium-235', 0)
apm.lib.utils.recipe.ingredient.mod('nuclear-fuel', 'rocket-fuel', 0)
apm.lib.utils.recipe.ingredient.mod('nuclear-fuel', 'apm_nuclear_plutonium_oxide_pellet_2', 1)
apm.lib.utils.recipe.ingredient.mod('nuclear-fuel', 'rocket-fuel', 10)
apm.lib.utils.recipe.result.mod('nuclear-fuel', 'nuclear-fuel', 10)
apm.lib.utils.recipe.ingredient.mod('atomic-bomb', 'uranium-235', 0)
apm.lib.utils.recipe.ingredient.mod('atomic-bomb', 'apm_nuclear_plutonium_oxide_pellet_2', 10, 20)
apm.lib.utils.recipe.ingredient.mod('satellite', 'apm_rtg_radioisotope_thermoelectric_generator', 25, 40)

apm.lib.utils.recipe.remove('nuclear-fuel-reprocessing')
apm.lib.utils.recipe.remove('uranium-fuel-cell')
apm.lib.utils.recipe.remove('uranium-processing')
apm.lib.utils.recipe.remove('kovarex-enrichment-process')

apm.lib.utils.item.overwrite.group('nuclear-reactor', 'apm_nuclear', 'apm_nuclear_machines_1', 'aa_a')
apm.lib.utils.item.overwrite.group('heat-pipe', 'apm_nuclear', 'apm_nuclear_machines_1', 'ab_a')
apm.lib.utils.item.overwrite.group('heat-exchanger', 'apm_nuclear', 'apm_nuclear_machines_1', 'ac_a')
apm.lib.utils.item.overwrite.group('steam-turbine', 'apm_nuclear', 'apm_nuclear_machines_1', 'ad_a')
apm.lib.utils.item.overwrite.group('centrifuge', 'apm_nuclear', 'apm_nuclear_machines_2', 'aa_a')