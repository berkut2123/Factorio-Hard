require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/final-overwrites.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))


-- bio_industries -------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.Bio_Industries and apm_power_compat_bio_industries then
	apm.lib.utils.recipe.result.replace_all('bi-seed', 'apm_tree_seeds')
	apm.lib.utils.recipe.ingredient.replace_all('bi-seed', 'apm_tree_seeds')

	if settings.startup['apm_power_generic_ash'].value == true then
		apm.lib.utils.recipe.result.replace_all('bi-ash', 'apm_generic_ash')
		apm.lib.utils.recipe.ingredient.replace_all('bi-ash', 'apm_generic_ash')
	else
		apm.lib.utils.recipe.result.replace_all('bi-ash', 'apm_wood_ash')
		apm.lib.utils.recipe.ingredient.replace_all('bi-ash', 'apm_wood_ash')
	end
end

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if (mods.bobplates or mods.bobelectronics) and apm_power_compat_bob then
	apm.lib.utils.recipe.disable('bob-resin-wood')
	apm.lib.utils.recipe.disable('bob-rubber')
end

-- wooden boards
apm.lib.utils.recipe.result.replace_all('wooden-board', 'apm_wood_board')
apm.lib.utils.recipe.ingredient.replace_all('wooden-board', 'apm_wood_board')
apm.lib.utils.item.remove('wooden-board')
-- resin
apm.lib.utils.recipe.result.replace_all('resin', 'apm_resin')
apm.lib.utils.recipe.ingredient.replace_all('resin', 'apm_resin')
apm.lib.utils.item.remove('resin')
-- rubber
apm.lib.utils.recipe.result.replace_all('rubber', 'apm_rubber')
apm.lib.utils.recipe.ingredient.replace_all('rubber', 'apm_rubber')
apm.lib.utils.item.remove('rubber')

-- angel ----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelsrefining and apm_power_compat_angel then
	apm.lib.utils.item.remove('burner-ore-crusher')
end

if mods.angelspetrochem and apm_power_compat_angel then
	apm.lib.utils.recipe.result.replace_all('solid-resin', 'apm_resin')
	apm.lib.utils.recipe.ingredient.replace_all('solid-resin', 'apm_resin')
	apm.lib.utils.item.remove('solid-resin')
	apm.lib.utils.recipe.result.replace_all('solid-rubber', 'apm_rubber')
	apm.lib.utils.recipe.ingredient.replace_all('solid-rubber', 'apm_rubber')
	apm.lib.utils.item.remove('solid-rubber')
	apm.lib.utils.recipe.ingredient.replace_all('coal-crushed', 'apm_coal_crushed')
	apm.lib.utils.recipe.ingredient.replace_all('pellet-coke', 'apm_coke_brick')
	apm.lib.utils.item.remove('coal-crushed')
	apm.lib.utils.item.remove('pellet-coke')
end

if mods.angelsbioprocessing and apm_power_compat_angel then
	apm.lib.utils.recipe.ingredient.replace_all('wood-pellets', 'apm_wood_pellets')
	apm.lib.utils.recipe.ingredient.replace_all('wood-bricks', 'apm_wood_briquette')
	apm.lib.utils.item.remove('wood-pellets')
	apm.lib.utils.item.remove('wood-bricks')
end

-- kingarthur -----------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.PyCoalTBaA and apm_power_compat_kingarthur then
	apm.lib.utils.recipe.result.replace_all('py-asphalt', 'apm_asphalt')
	apm.lib.utils.recipe.ingredient.replace_all('py-asphalt', 'apm_asphalt')
	--apm.lib.utils.item.remove('py-asphalt')
	apm.lib.utils.item.delete_hard('py-asphalt')

	apm.lib.utils.recipe.result.replace_all('apm_creosote', 'creosote')
	apm.lib.utils.recipe.ingredient.replace_all('apm_creosote', 'creosote')
	--apm.lib.utils.fluid.remove('creosote')
	apm.lib.utils.fluid.delete_hard('apm_creosote')

	apm.lib.utils.recipe.result.replace_all('treated-wood', 'apm_treated_wood_planks')
	apm.lib.utils.recipe.ingredient.replace_all('treated-wood', 'apm_treated_wood_planks')
	--apm.lib.utils.item.remove('treated-wood')
	apm.lib.utils.item.delete_hard('treated-wood')
end

-- entity description updates -------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
apm.lib.utils.description.entities.include_list.add('apm_offshore_pump_0')
apm.lib.utils.description.entities.include_list.add('apm_offshore_pump_1')
apm.lib.utils.description.entities.include_list.add('apm_air_cleaner_machine_0')
apm.lib.utils.description.entities.include_list.add('apm_lab_0')
apm.lib.utils.description.entities.include_list.add('apm_lab_1')
apm.lib.utils.description.entities.include_list.add('apm_offshore_pump_burner')
apm.lib.utils.description.entities.include_list.add('apm_greenhouse_0')
apm.lib.utils.description.entities.include_list.add('apm_sieve_0')

if mods.apm_energy_addon then
	apm.lib.utils.description.entities.include_list.add('apm_electric_car')
end

if mods['space-exploration'] and apm_power_compat_earendel then
	apm.lib.utils.description.entities.exclude_list.add('se-space-capsule-_-vehicle')
end

apm.lib.utils.description.entities.update()

-- fix offshore-pump
local apm_offshore_pump_0 = data.raw['offshore-pump']['apm_offshore_pump_0']
local apm_offshore_pump_burner = data.raw['assembling-machine']['apm_offshore_pump_burner']
apm_offshore_pump_0.localised_description = apm_offshore_pump_burner.localised_description

-- recipes allow productivity modules -----------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
apm.lib.utils.recipe.allow_productivity('apm_electromagnet')
apm.lib.utils.recipe.allow_productivity('apm_resin')
apm.lib.utils.recipe.allow_productivity('apm_rubber_1')
apm.lib.utils.recipe.allow_productivity('apm_rubber_2')
apm.lib.utils.recipe.allow_productivity('apm_gearing')
apm.lib.utils.recipe.allow_productivity('apm_wood_board_1')
apm.lib.utils.recipe.allow_productivity('apm_wood_board_2')
apm.lib.utils.recipe.allow_productivity('apm_steam_relay')
apm.lib.utils.recipe.allow_productivity('apm_sealing_rings')
apm.lib.utils.recipe.allow_productivity('apm_steel_1')
apm.lib.utils.recipe.allow_productivity('apm_dry_mud_sifting_iron')
apm.lib.utils.recipe.allow_productivity('apm_dry_mud_sifting_copper')
