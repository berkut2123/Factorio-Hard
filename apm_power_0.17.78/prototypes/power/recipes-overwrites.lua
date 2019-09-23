require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/recipes-overwrites.lua')
log('-------------------------------------------------------')

apm.lib.utils.recipe.ingredient.mod('iron-gear-wheel', 'iron-plate', 1, 2)

apm.lib.utils.recipe.ingredient.mod('splitter', 'electronic-circuit', 0)
apm.lib.utils.recipe.ingredient.mod('splitter', 'apm_steam_relay', 5)

apm.lib.utils.recipe.ingredient.mod('boiler', 'stone-furnace', 0)
apm.lib.utils.recipe.ingredient.mod('boiler', 'copper-plate', 15, 30)
apm.lib.utils.recipe.ingredient.mod('boiler', 'steel-plate', 10, 15)

apm.lib.utils.recipe.ingredient.mod('repair-pack', 'electronic-circuit', 0)
apm.lib.utils.recipe.ingredient.mod('repair-pack', 'apm_steam_relay', 2)

apm.lib.utils.recipe.ingredient.mod('burner-inserter', 'apm_steam_relay', 1)
apm.lib.utils.recipe.ingredient.mod('burner-inserter', 'apm_gearing', 1)
apm.lib.utils.recipe.ingredient.mod('burner-inserter', 'iron-plate', 0)
apm.lib.utils.recipe.ingredient.mod('burner-inserter', 'iron-gear-wheel', 0)

apm.lib.utils.recipe.ingredient.mod('inserter', 'burner-inserter', 1)

apm.lib.utils.recipe.ingredient.mod('long-handed-inserter', 'iron-stick', 0)
apm.lib.utils.recipe.ingredient.mod('long-handed-inserter', 'iron-plate', 0)
apm.lib.utils.recipe.ingredient.mod('long-handed-inserter', 'apm_gearing', 2)
apm.lib.utils.recipe.ingredient.replace('long-handed-inserter', 'inserter', 'apm_burner_long_inserter')

apm.lib.utils.recipe.ingredient.mod('filter-inserter', 'apm_burner_filter_inserter', 1)
apm.lib.utils.recipe.ingredient.mod('filter-inserter', 'fast-inserter', 0)

apm.lib.utils.recipe.ingredient.mod('transport-belt', 'apm_rubber', 1)
apm.lib.utils.recipe.ingredient.mod('transport-belt', 'iron-stick', 2)
apm.lib.utils.recipe.ingredient.mod('transport-belt', 'iron-plate', 0)
apm.lib.utils.recipe.result.mod('transport-belt', 'transport-belt', 1)

apm.lib.utils.recipe.ingredient.mod('offshore-pump', 'apm_steam_relay', 2)
apm.lib.utils.recipe.ingredient.mod('offshore-pump', 'electronic-circuit', 0)

apm.lib.utils.recipe.ingredient.mod('engine-unit', 'iron-gear-wheel', 0)
apm.lib.utils.recipe.ingredient.mod('engine-unit', 'apm_gearing', 2)

apm.lib.utils.recipe.ingredient.mod('electric-engine-unit', 'apm_electromagnet', 3)

apm.lib.utils.recipe.ingredient.mod('steam-engine', 'iron-gear-wheel', 0)
apm.lib.utils.recipe.ingredient.mod('steam-engine', 'pipe', 5, 10)
apm.lib.utils.recipe.ingredient.mod('steam-engine', 'apm_gearing', 3, 6)
apm.lib.utils.recipe.ingredient.mod('steam-engine', 'apm_electromagnet', 6, 10)
apm.lib.utils.recipe.ingredient.mod('steam-engine', 'iron-plate', 5, 10)
apm.lib.utils.recipe.ingredient.mod('steam-engine', 'steel-plate', 2, 4)

apm.lib.utils.recipe.ingredient.mod('steam-turbine', 'iron-gear-wheel', 0)
apm.lib.utils.recipe.ingredient.mod('steam-turbine', 'apm_electromagnet', 12)
apm.lib.utils.recipe.ingredient.mod('steam-turbine', 'apm_gearing', 6)

apm.lib.utils.recipe.ingredient.mod('locomotive', 'electronic-circuit', 0)
apm.lib.utils.recipe.ingredient.mod('locomotive', 'apm_steam_relay', 20)

apm.lib.utils.recipe.ingredient.mod('train-stop', 'electronic-circuit', 0)
apm.lib.utils.recipe.ingredient.mod('train-stop', 'apm_steam_relay', 20)

apm.lib.utils.recipe.ingredient.mod('pipe', 'apm_sealing_rings', 1)

apm.lib.utils.recipe.ingredient.mod('rail', 'iron-stick', 0)
apm.lib.utils.recipe.ingredient.mod('rail', 'apm_treated_wood_planks', 1)

apm.lib.utils.recipe.ingredient.replace('small-electric-pole', 'wood', 'apm_treated_wood_planks', 2)
apm.lib.utils.recipe.ingredient.replace('combat-shotgun', 'wood', 'apm_treated_wood_planks', 2)

apm.lib.utils.recipe.ingredient.mod('electric-mining-drill', 'iron-gear-wheel', 0)
apm.lib.utils.recipe.ingredient.mod('electric-mining-drill', 'apm_gearing', 2, 4)
apm.lib.utils.recipe.ingredient.mod('electric-mining-drill', 'apm_steam_mining_drill', 1)

apm.lib.utils.recipe.ingredient.mod('empty-barrel', 'apm_sealing_rings', 1)

apm.lib.utils.recipe.ingredient.replace('plastic-bar', 'coal', 'apm_coal_crushed', 2)
apm.lib.utils.recipe.ingredient.replace('explosives', 'coal', 'apm_coal_crushed', 2)
apm.lib.utils.recipe.ingredient.replace('grenade', 'coal', 'apm_coal_crushed', 1)
apm.lib.utils.recipe.ingredient.replace('slowdown-capsule', 'coal', 'apm_coal_crushed', 2)
apm.lib.utils.recipe.ingredient.replace('poison-capsule', 'coal', 'apm_coal_crushed', 1)

apm.lib.utils.recipe.ingredient.replace('automation-science-pack', 'iron-gear-wheel', 'apm_gearing', 1)
apm.lib.utils.recipe.ingredient.replace('automation-science-pack', 'copper-plate', 'apm_electromagnet', 2)
