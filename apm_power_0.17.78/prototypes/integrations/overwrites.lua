require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/overwrites.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))

-----------------------------------------------------------------------------------------
-- vanilla, replace specific ashes with generic ash
-----------------------------------------------------------------------------------------
if settings.startup['apm_power_generic_ash'].value == true then
	--apm.lib.utils.recipe.ingredient.replace('recipe_name', 'ingredient_old', 'apm_generic_ash')
	apm.lib.utils.recipe.ingredient.replace('apm_stone_brick', 'apm_coal_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.ingredient.replace('apm_coal_ash_washing', 'apm_coal_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.ingredient.replace('apm_landfill', 'apm_wood_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.ingredient.replace('apm_fertiliser_1', 'apm_wood_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.ingredient.replace('apm_asphalt_1', 'apm_coal_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.ingredient.replace('apm_asphalt_2', 'apm_coal_ash', 'apm_generic_ash')
	--apm.lib.utils.recipe.result.replace('recipe_name', 'result_old', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_1', 'apm_coal_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_2', 'apm_coal_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_3', 'apm_coal_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_charcoal_1', 'apm_wood_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_charcoal_2', 'apm_wood_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_charcoal_3', 'apm_wood_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_coal_ash_production', 'apm_coal_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_wood_ash_production', 'apm_wood_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_filter_charcoal_used_recycling', 'apm_wood_ash', 'apm_generic_ash')
	apm.lib.utils.recipe.result.replace('apm_dirty_water_purification', 'apm_coal_ash', 'apm_generic_ash')
	--apm.lib.utils.item.mod.burnt_result('item', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('coal', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('apm_coal_crushed', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('apm_coal_briquette', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('wood', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('apm_treated_wood_planks', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('apm_tree_seeds', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('apm_wood_pellets', 'apm_generic_ash')
	apm.lib.utils.item.mod.burnt_result('apm_wood_briquette', 'apm_generic_ash')

	-- kingarthur -----------------------------------------------------------------------------
	--
	--
	-------------------------------------------------------------------------------------------
	if mods.PyCoalTBaA and apm_power_compat_kingarthur then
		apm.lib.utils.item.mod.burnt_result('raw-coal', 'apm_generic_ash')
		apm.lib.utils.item.mod.burnt_result('coarse-coal', 'apm_generic_ash')
		apm.lib.utils.item.mod.burnt_result('crushed-coal', 'apm_generic_ash')
		apm.lib.utils.item.mod.burnt_result('coal-dust', 'apm_generic_ash')
		apm.lib.utils.item.mod.burnt_result('raw-fiber', 'apm_generic_ash')
		apm.lib.utils.item.mod.burnt_result('coal-briquette', 'apm_generic_ash')
	end

	---
	apm.lib.utils.item.remove('apm_coal_ash')
	apm.lib.utils.item.remove('apm_wood_ash')
else
	apm.lib.utils.item.remove('apm_generic_ash')
end