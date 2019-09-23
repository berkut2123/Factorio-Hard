require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/recipes.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))

-- apm ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.apm_recycling then
	apm.lib.utils.assembler.burner.overhaul('apm_recycling_machine_0')
	apm.lib.utils.recipe.ingredient.mod('apm_recycling_machine_0', 'apm_steam_relay', 5)
	apm.lib.utils.recipe.ingredient.mod('apm_recycling_machine_0', 'electronic-circuit', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_recycling_machine_0', 'basic-circuit-board', 0)
end

-- ExpensiveLandFillRecipe -------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.ExpensiveLandfillRecipe and apm_power_compat_expensivelandfillrecipe then
	apm.lib.utils.recipe.ingredient.mod('apm_landfill', 'stone', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_landfill', 'gravel-pile', 150)
	apm.lib.utils.recipe.energy_required.mod('apm_landfill', 10)
	apm.lib.utils.recipe.result.mod('apm_landfill', 'landfill', 1)
	if settings.startup['apm_power_generic_ash'].value == true then
		apm.lib.utils.recipe.ingredient.mod('apm_landfill', 'apm_generic_ash', 1500)
	else
		apm.lib.utils.recipe.ingredient.mod('apm_landfill', 'apm_wood_ash', 1500)
	end
end

-- bio_industries -------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.Bio_Industries and apm_power_compat_bio_industries then
	apm.lib.utils.recipe.remove('bi_recipe_stone_crusher')
	apm.lib.utils.recipe.remove('bi_recipe_charcoal')
	apm.lib.utils.recipe.remove('bi_recipe_charcoal_2')
	apm.lib.utils.recipe.remove('bi_recipe_ash_1')
	apm.lib.utils.recipe.remove('bi_recipe_ash_2')
	apm.lib.utils.recipe.remove('bi_recipe_stone_brick')
	apm.lib.utils.recipe.remove('bi_recipe_cokery')
	apm.lib.utils.recipe.remove('bi_recipe_coal')
	apm.lib.utils.recipe.remove('bi_recipe_coke_coal')
	apm.lib.utils.recipe.remove('bi_recipe_coal_2')
	apm.lib.utils.recipe.remove('bi_recipe_resin_wood')
	apm.lib.utils.recipe.ingredient.replace('bi_recipe_rail_wood', 'wood', 'apm_treated_wood_planks')
	apm.lib.utils.recipe.ingredient.replace('bi_recipe_rail_wood_bridge', 'wood', 'apm_treated_wood_planks')
	apm.lib.utils.recipe.ingredient.replace('bi_recipe_wood_pipe', 'wood', 'apm_treated_wood_planks')
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_wood_pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.replace('bi_recipe_big_wooden_pole', 'wood', 'apm_treated_wood_planks')
	apm.lib.utils.recipe.ingredient.replace('bi_recipe_huge_wooden_pole', 'wood', 'apm_treated_wood_planks')
	apm.lib.utils.recipe.result.mod('bi_recipe_seed_1', 'bi-seed', 40/5)
	apm.lib.utils.recipe.result.mod('bi_recipe_seed_2', 'bi-seed', 50/5)
	apm.lib.utils.recipe.result.mod('bi_recipe_seed_3', 'bi-seed', 60/5)
	apm.lib.utils.recipe.result.mod('bi_recipe_seed_4', 'bi-seed', 80/5)
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_seedling_mk1', 'bi-seed', 20/5)
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_seedling_mk2', 'bi-seed', 20/5)
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_seedling_mk3', 'bi-seed', 20/5)
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_seedling_mk4', 'bi-seed', 20/5)
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_seed_bomb_basic', 'bi-seed', 400/5)
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_seed_bomb_standard', 'bi-seed', 400/5)
	apm.lib.utils.recipe.ingredient.mod('bi_recipe_seed_bomb_advanced', 'bi-seed', 400/5)
	apm.lib.utils.recipe.ingredient.replace('bi_recipe_plastic_1', 'wood', 'apm_wood_pellets', 2)
end

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods['aai-industry'] and apm_power_compat_earendel then
	-- integrate motors
	apm.lib.utils.recipe.energy_required.mod('iron-gear-wheel', 1.25)
	apm.lib.utils.recipe.ingredient.mod('motor', 'iron-plate', 1)
	apm.lib.utils.recipe.ingredient.mod('motor', 'iron-gear-wheel', 0)
	apm.lib.utils.recipe.ingredient.mod('motor', 'apm_gearing', 1)

	apm.lib.utils.recipe.ingredient.mod('engine-unit', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('engine-unit', 'iron-gear-wheel', 0)
	apm.lib.utils.recipe.ingredient.mod('engine-unit', 'apm_electromagnet', 0)
	apm.lib.utils.recipe.ingredient.mod('engine-unit', 'motor', 3)

	apm.lib.utils.recipe.ingredient.mod('electric-engine-unit', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('electric-engine-unit', 'apm_electromagnet', 0)
	apm.lib.utils.recipe.ingredient.mod('electric-engine-unit', 'electric-motor', 3)

	apm.lib.utils.recipe.ingredient.mod('burner-inserter', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('burner-inserter', 'apm_steam_relay', 1)
	apm.lib.utils.recipe.ingredient.mod('inserter', 'electric-motor', 2)
	apm.lib.utils.recipe.ingredient.mod('long-handed-inserter', 'electric-motor', 2)
	apm.lib.utils.recipe.ingredient.mod('filter-inserter', 'electric-motor', 2)

	apm.lib.utils.recipe.ingredient.mod('apm_offshore_pump_0', 'apm_gearing', 2)
	apm.lib.utils.recipe.ingredient.mod('apm_offshore_pump_0', 'motor', 1)

	apm.lib.utils.recipe.ingredient.mod('apm_offshore_pump_1', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_offshore_pump_1', 'apm_electromagnet', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_offshore_pump_1', 'electric-motor', 3)

	apm.lib.utils.recipe.ingredient.replace('small-electric-pole', 'wood', 'apm_treated_wood_planks', 2)
	apm.lib.utils.recipe.ingredient.mod('small-iron-electric-pole', 'steel-plate', 1)

	apm.lib.utils.recipe.ingredient.mod('steam-engine', 'iron-gear-wheel', 0)
	apm.lib.utils.recipe.ingredient.mod('steam-engine', 'electric-motor', 0)
	apm.lib.utils.recipe.ingredient.mod('steam-engine', 'pipe', 5, 10)
	apm.lib.utils.recipe.ingredient.mod('steam-engine', 'apm_gearing', 3, 6)
	apm.lib.utils.recipe.ingredient.mod('steam-engine', 'apm_electromagnet', 6, 10)
	apm.lib.utils.recipe.ingredient.mod('steam-engine', 'iron-plate', 5, 10)
	apm.lib.utils.recipe.ingredient.mod('steam-engine', 'steel-plate', 2, 4)
	
	apm.lib.utils.recipe.ingredient.replace('lab', 'burner-lab', 'apm_lab_1')
	apm.lib.utils.recipe.remove('burner-lab')
	apm.lib.utils.recipe.remove('burner-assembling-machine')
	-- integrate electric motors
	apm.lib.utils.recipe.ingredient.mod('electric-mining-drill', 'burner-mining-drill', 0)

	apm.lib.utils.recipe.ingredient.mod('apm_assembling_machine_0', 'motor', 3)
	apm.lib.utils.recipe.ingredient.mod('apm_assembling_machine_0', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_crusher_machine_0', 'motor', 3)
	apm.lib.utils.recipe.ingredient.mod('apm_crusher_machine_0', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_press_machine_0', 'motor', 3)
	apm.lib.utils.recipe.ingredient.mod('apm_press_machine_0', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_lab_0', 'motor', 4)
	apm.lib.utils.recipe.ingredient.mod('apm_lab_0', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_centrifuge_0', 'motor', 10)
	apm.lib.utils.recipe.ingredient.mod('apm_centrifuge_0', 'apm_gearing', 0)
	apm.lib.utils.recipe.ingredient.mod('apm_air_cleaner_machine_0', 'motor', 10)
	apm.lib.utils.recipe.ingredient.mod('apm_air_cleaner_machine_0', 'apm_gearing', 0)
	-- integrate electric motors
	apm.lib.utils.recipe.ingredient.mod('electric-motor', 'copper-cable', 0)
	apm.lib.utils.recipe.ingredient.mod('electric-motor', 'apm_electromagnet', 2, 4)
	-- offshore pump
	apm.lib.utils.recipe.ingredient.mod('offshore-pump', 'electric-motor', 0)
	-- integrate glass
	apm.lib.utils.recipe.ingredient.mod('apm_greenhouse_0', 'glass', 25)
	apm.lib.utils.recipe.ingredient.mod('apm_lab_1', 'glass', 10)
	-- integrate burner-assembling-machine
	apm.lib.utils.recipe.ingredient.replace('assembling-machine-1', 'burner-assembling-machine', 'apm_assembling_machine_1')

	apm.lib.utils.recipe.ingredient.mod('offshore-pump', 'apm_steam_relay', 0)

	if not mods.bobelectronics then
		apm.lib.utils.recipe.ingredient.replace('electronic-circuit', 'wood', 'apm_wood_board')
		apm.lib.utils.recipe.ingredient.mod('apm_offshore_pump_1', 'electronic-circuit', 0)
		apm.lib.utils.recipe.ingredient.mod('electric-mining-drill', 'electronic-circuit', 3)
		apm.lib.utils.recipe.ingredient.mod('electronic-circuit', 'stone-tablet', 1)
	else
		apm.lib.utils.recipe.ingredient.mod('apm_offshore_pump_1', 'basic-circuit-board', 0)
		apm.lib.utils.recipe.ingredient.mod('electric-mining-drill', 'basic-circuit-board', 3)
		apm.lib.utils.recipe.ingredient.mod('basic-circuit-board', 'stone-tablet', 1)
	end
	
    apm.lib.utils.recipe.remove('electronic-circuit-stone')
end

if mods['aai-vehicles-hauler'] and apm_power_compat_earendel then
	if not mods['aai-industry'] then
		apm.lib.utils.recipe.ingredient.mod('vehicle-hauler', 'iron-plate', 10)
		apm.lib.utils.recipe.ingredient.replace('vehicle-hauler', 'iron-gear-wheel', 'engine-unit')
		apm.lib.utils.recipe.ingredient.mod('vehicle-hauler', 'engine-unit', 1)
	else
		apm.lib.utils.recipe.ingredient.mod('vehicle-hauler', 'iron-plate', 10)
		apm.lib.utils.recipe.ingredient.replace('vehicle-hauler', 'motor', 'engine-unit')
		apm.lib.utils.recipe.ingredient.mod('vehicle-hauler', 'engine-unit', 1)
	end
end

if mods['space-exploration'] and apm_power_compat_earendel then
	apm.lib.utils.recipe.ingredient.mod('se-space-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.replace('se-lifesupport-canister-coal', 'coal', 'apm_coal_crushed', 2)
	apm.lib.utils.recipe.ingredient.replace('se-meteor-point-defence-ammo', 'coal', 'apm_coal_crushed', 2)
	apm.lib.utils.recipe.ingredient.replace('se-nutrient-gel', 'coal', 'apm_coal_crushed', 2)
	apm.lib.utils.recipe.ingredient.replace('se-observation-frame-blank', 'coal', 'apm_coal_briquette', 1)
	apm.lib.utils.recipe.ingredient.replace('se-bio-sludge-from-wood', 'wood', 'apm_wood_pellets', 2)
	apm.lib.utils.recipe.ingredient.replace('se-lifesupport-canister-fish', 'wood', 'apm_wood_pellets', 1)
end

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobpower and apm_power_compat_bob then
	apm.lib.utils.recipe.ingredient.mod('steam-engine-2', 'apm_electromagnet', 6, 10)
	apm.lib.utils.recipe.ingredient.mod('steam-engine-3', 'apm_electromagnet', 6, 10)
	apm.lib.utils.recipe.ingredient.mod('steam-engine-4', 'apm_electromagnet', 6, 10)
	apm.lib.utils.recipe.ingredient.mod('steam-engine-5', 'apm_electromagnet', 6, 10)
	apm.lib.utils.recipe.ingredient.mod('steam-turbine-2', 'apm_electromagnet', 12, 18)
	apm.lib.utils.recipe.ingredient.mod('steam-turbine-3', 'apm_electromagnet', 12, 18)
	apm.lib.utils.recipe.ingredient.mod('fluid-generator', 'apm_electromagnet', 12, 18)
	apm.lib.utils.recipe.ingredient.mod('fluid-generator-2', 'apm_electromagnet', 12, 18)
	apm.lib.utils.recipe.ingredient.mod('fluid-generator-3', 'apm_electromagnet', 12, 18)
	apm.lib.utils.recipe.ingredient.mod('hydrazine-generator', 'apm_electromagnet', 12, 18)
end

if mods.boblogistics and apm_power_compat_bob then
	apm.lib.utils.recipe.ingredient.mod('copper-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('steel-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('stone-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('plastic-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('bronze-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('brass-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('ceramic-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('titanium-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('tungsten-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('nitinol-pipe', 'apm_sealing_rings', 1)
	apm.lib.utils.recipe.ingredient.mod('copper-tungsten-pipe', 'apm_sealing_rings', 1)
	if apm.lib.utils.setting.get.starup('bobmods-logistics-beltoverhaul') then
		apm.lib.utils.recipe.ingredient.mod('splitter', 'apm_steam_relay', 0)
		apm.lib.utils.recipe.ingredient.mod('basic-underground-belt', 'wood', 0)
		apm.lib.utils.recipe.ingredient.mod('basic-underground-belt', 'stone', 0)
		apm.lib.utils.recipe.ingredient.mod('basic-underground-belt', 'iron-gear-wheel', 5)
		apm.lib.utils.recipe.ingredient.mod('basic-underground-belt', 'iron-plate', 5)
		apm.lib.utils.recipe.ingredient.mod('basic-splitter', 'wood', 0)
		apm.lib.utils.recipe.ingredient.mod('basic-splitter', 'copper-cable', 0)
		apm.lib.utils.recipe.ingredient.mod('basic-splitter', 'apm_steam_relay', 4)
		apm.lib.utils.recipe.ingredient.mod('basic-transport-belt', 'apm_rubber', 1)
		apm.lib.utils.recipe.ingredient.mod('basic-transport-belt', 'iron-stick', 2)
		apm.lib.utils.recipe.ingredient.mod('basic-transport-belt', 'iron-plate', 0)
		apm.lib.utils.recipe.ingredient.mod('transport-belt', 'iron-plate', 2)
		apm.lib.utils.recipe.ingredient.mod('transport-belt', 'apm_rubber', 0)
		apm.lib.utils.recipe.ingredient.mod('transport-belt', 'iron-stick', 0)
	end
	if apm.lib.utils.setting.get.starup('bobmods-logistics-inserteroverhaul') then
		apm.lib.utils.recipe.ingredient.mod('long-handed-inserter', 'apm_burner_long_inserter', 0)
		apm.lib.utils.recipe.ingredient.mod('long-handed-inserter', 'apm_gearing', 0)
		apm.lib.utils.recipe.ingredient.mod('long-handed-inserter', 'inserter', 1)
		apm.lib.utils.recipe.ingredient.mod('yellow-filter-inserter', 'inserter', 0)
		apm.lib.utils.recipe.ingredient.mod('yellow-filter-inserter', 'apm_burner_filter_inserter', 1)
		apm.lib.utils.recipe.ingredient.mod('filter-inserter', 'apm_burner_filter_inserter', 0)
		apm.lib.utils.recipe.ingredient.mod('filter-inserter', 'fast-inserter', 1)
	end
	if apm.lib.utils.setting.get.starup('bobmods-logistics-inserterrequireprevious') then
		apm.lib.utils.recipe.ingredient.mod('filter-inserter', 'fast-inserter', 0)
	end
end

if mods.bobplates and apm_power_compat_bob then
	apm.lib.utils.recipe.ingredient.mod('enriched-fuel-from-liquid-fuel', 'solid-fuel', 1)
	apm.lib.utils.recipe.ingredient.replace('solid-fuel-from-hydrogen', 'coal', 'apm_coal_crushed', 2)
	apm.lib.utils.recipe.ingredient.replace('polishing-wheel', 'wood', 'apm_wood_pellets', 1)
end

if mods.bobwarfare and apm_power_compat_bob then
	apm.lib.utils.recipe.ingredient.replace('poison-rocket-warhead', 'coal', 'apm_coal_crushed', 2)
	apm.lib.utils.recipe.ingredient.replace('poison-artillery-shell', 'coal', 'apm_coal_crushed', 1)
	apm.lib.utils.recipe.ingredient.replace('poison-bullet-projectile', 'coal', 'apm_coal_crushed', 1)
	apm.lib.utils.recipe.ingredient.replace('shotgun-poison-shell', 'coal', 'apm_coal_crushed', 2)
	apm.lib.utils.recipe.ingredient.replace('gun-cotton', 'wood', 'apm_wood_pellets', 2)
	apm.lib.utils.recipe.ingredient.replace('sniper-rifle', 'wood', 'apm_treated_wood_planks', 1)
end

if mods.bobelectronics and apm_power_compat_bob then
	apm.lib.utils.recipe.ingredient.mod('repair-pack', 'basic-circuit-board', 0)
	apm.lib.utils.recipe.ingredient.mod('carbon', 'coal', 0)
	apm.lib.utils.recipe.ingredient.mod('carbon', 'apm_coke', 1, 2)
	apm.lib.utils.recipe.ingredient.mod('offshore-pump', 'basic-circuit-board', 0)
	apm.lib.utils.recipe.ingredient.mod('rail-signal', 'basic-circuit-board', 1)
	apm.lib.utils.recipe.ingredient.mod('rail-signal', 'electronic-circuit', 0)
	apm.lib.utils.recipe.ingredient.mod('rail-chain-signal', 'basic-circuit-board', 1)
	apm.lib.utils.recipe.ingredient.mod('rail-chain-signal', 'electronic-circuit', 1)
	apm.lib.utils.recipe.ingredient.replace('phenolic-board', 'wood', 'apm_wood_pellets', 2)
end


if not mods.boblogistics and mods.bobelectronics and apm_power_compat_bob then
	apm.lib.utils.recipe.ingredient.mod('splitter', 'basic-circuit-board', 0)
end

if mods.boblogistics and mods.bobelectronics and apm_power_compat_bob then
	if apm.lib.utils.setting.get.starup('bobmods-logistics-beltoverhaul') then
		apm.lib.utils.recipe.ingredient.mod('splitter', 'basic-circuit-board', 0)
	end
end

if mods.bobplates and apm_power_compat_bob and not mods.angelsrefining and not mods['aai-industry'] then
	apm.lib.utils.recipe.ingredient.mod('apm_lab_0', 'glass', 5)
	apm.lib.utils.recipe.ingredient.mod('apm_lab_1', 'glass', 10)
	apm.lib.utils.recipe.ingredient.mod('apm_greenhouse_0', 'glass', 25)
end

if mods.bobelectronics and mods.angelsrefining and apm_power_compat_bob then
	apm.lib.utils.recipe.ingredient.mod('clarifier', 'electronic-circuit', 0)
	apm.lib.utils.recipe.ingredient.mod('clarifier', 'basic-circuit-board', 4)
end

if mods.bobmining and apm_power_compat_bob then
	apm.lib.utils.recipe.remove('steam-mining-drill')
end

-- angel ----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelsrefining and apm_power_compat_angel then
	apm.lib.utils.recipe.ingredient.replace('filter-coal', 'coal', 'apm_coal_briquette', 1)

	apm.lib.utils.recipe.result.replace('apm_dry_mud_sifting_iron', 'iron-ore', 'angels-ore1')
	apm.lib.utils.recipe.result.replace('apm_dry_mud_sifting_copper', 'copper-ore', 'angels-ore3')
	apm.lib.utils.recipe.ingredient.replace('apm_steel_0', 'iron-ore', 'angels-ore1-crushed')
	apm.lib.utils.recipe.ingredient.replace('apm_steel_1', 'iron-ore', 'angels-ore1-crushed')
	apm.lib.utils.recipe.remove('burner-ore-crusher')
	apm.lib.utils.recipe.ingredient.replace('ore-crusher', 'burner-ore-crusher', 'apm_crusher_machine_0')
	-- angelsmods.functions.make_void(fluid_name, void_category) --categories: chemical (flare-stack), water(clarifier)
	angelsmods.functions.make_void('apm_sea_water', 'water')
	angelsmods.functions.make_void('apm_dirt_water', 'water')
	angelsmods.functions.make_void('apm_coal_saturated_wastewater', 'water')
	angelsmods.functions.make_void('apm_creosote', 'water')
end

if mods.angelssmelting and apm_power_compat_angel then
	apm.lib.utils.recipe.ingredient.mod('apm_steel_0', 'angels-ore1-crushed', 24, 36)
	apm.lib.utils.recipe.ingredient.mod('apm_steel_0', 'apm_stone_crucibel', 2)
	apm.lib.utils.recipe.ingredient.mod('apm_steel_0', 'apm_coke_crushed', 6, 12)
	apm.lib.utils.recipe.result.mod('apm_steel_0', 'steel-plate', 2)
	apm.lib.utils.recipe.energy_required.mod('apm_steel_0', 24, 36)
	--apm.lib.utils.recipe.ingredient.mod('apm_steel_1', 'angels-ore1-crushed', 30) -- is deactivated if angels smelting is active.
end

if mods.angelspetrochem and apm_power_compat_angel then
	-- angelsmods.functions.make_void(fluid_name, void_category) --categories: chemical (flare-stack), water(clarifier)
	angelsmods.functions.make_void('apm_coke_oven_gas', 'chemical')

	apm.lib.utils.recipe.ingredient.replace('carbon-separation-2', 'coal', 'apm_coal_crushed', 2)
	apm.lib.utils.recipe.ingredient.replace('solid-nitroglycerin', 'coal', 'apm_coal_crushed', 2)

	apm.lib.utils.recipe.result.mod('apm_refining_coke_oven_gas_1', 'gas-hydrogen', 20)
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_1', 'apm_coke', 'solid-coke')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_2', 'apm_coke', 'solid-coke')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_3', 'apm_coke', 'solid-coke')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_4', 'apm_coke', 'solid-coke')
	apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_5', 'apm_coke', 'solid-coke')
	apm.lib.utils.recipe.ingredient.replace('apm_coke_crushed', 'apm_coke', 'solid-coke')
	apm.lib.utils.recipe.ingredient.replace('apm_coke_brick', 'apm_coke', 'solid-coke')

	apm.lib.utils.recipe.remove('solid-coke')
	apm.lib.utils.recipe.remove('solid-coke-sulfur')

    apm.lib.utils.recipe.ingredient.replace('apm_pyrolysis_coke_5', 'water', 'water-purified')
    apm.lib.utils.recipe.result.replace('apm_pyrolysis_coke_5', 'sulfur', 'water-yellow-waste')
    apm.lib.utils.recipe.result.mod('apm_pyrolysis_coke_5', 'water-yellow-waste', 100)
    apm.lib.utils.technology.add.recipe_for_unlock('angels-coal-processing-2', 'apm_pyrolysis_coke_5')
    apm.lib.utils.technology.add.prerequisites('angels-coal-processing-2', 'apm_coking_plant_2')
    apm.lib.utils.technology.add.prerequisites('angels-coal-processing-2', 'apm_fuel-4')

	apm.lib.utils.recipe.remove('pellet-coke')
	apm.lib.utils.recipe.remove('coal-crushed')
	
	apm.lib.utils.recipe.result.mod('coal-cracking-1', 'solid-coke', 2)
	apm.lib.utils.recipe.result.mod('coal-cracking-2', 'solid-coke', 2)
	apm.lib.utils.recipe.result.mod('condensates-refining', 'solid-coke', 1)
end

if mods.angelsbioprocessing and apm_power_compat_angel then
	apm.lib.utils.recipe.overwrite.group('wooden-board-paper', 'apm_power', 'apm_power_intermediates', 'ac_b')

	local icons = {
		apm.power.icons.wood_board,
		apm.lib.utils.icon.mod(apm.power.icons.angel_solid_paper, 0.5, {-6, 0}),
		apm.lib.utils.icon.dynamics.t3
	}
	apm.lib.utils.recipe.set.icons('wooden-board-paper', icons)
	apm.lib.utils.recipe.set.always_show_products('wooden-board-paper', true)
	apm.lib.utils.recipe.set.always_show_made_in('wooden-board-paper', true)
	apm.lib.utils.recipe.energy_required.mod('wooden-board-paper', 1)
	apm.lib.utils.recipe.result.replace('wooden-board-paper', 'wooden-board', 'apm_wood_board', 2)

	local recipe = table.deepcopy(data.raw.recipe['apm_wood_pellets_1'])
	recipe.name = 'apm_wood_pellets_cellulose'
	recipe.category = 'apm_press'
	recipe.icons = {
        apm.power.icons.wood_crushed,
        apm.lib.utils.icon.mod(apm.power.icons.angel_cellulose_fiber, 0.5, {-8, -6}),
        apm.lib.utils.icon.dynamics.t1
    }
    recipe.icon_size = 32
    recipe.group = "apm_power"
    recipe.subgroup = "apm_power_wood"
    recipe.order = 'ac_b'
    recipe.normal.ingredients = {
		{type="item", name="cellulose-fiber", amount=8},
    }
    recipe.expensive.results = recipe.normal.results
    data:extend({recipe})
    apm.lib.utils.technology.add.recipe_for_unlock('bio-processing-brown', 'apm_wood_pellets_cellulose')

	local icons = {
        apm.power.icons.wood_crushed,
        apm.lib.utils.icon.mod(apm.power.icons.wood, 0.5, {-8, -6}),
        apm.lib.utils.icon.dynamics.t1
	}
	apm.lib.utils.recipe.set.icons('apm_wood_pellets_1', icons)
end

if mods.angelsbioprocessing and mods.angelsrefining and apm_power_compat_angel then

end

-- sctm -----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.ScienceCostTweakerM and apm_power_compat_sctm then
	apm.lib.utils.recipe.ingredient.replace('sct-lab-t2', 'lab', 'apm_lab_1')
	apm.lib.utils.recipe.ingredient.replace('automation-science-pack', 'sct-t1-ironcore', 'apm_gearing', 1)
	apm.lib.utils.recipe.ingredient.replace('automation-science-pack', 'sct-t1-magnet-coils', 'apm_electromagnet', 1)
	apm.lib.utils.recipe.ingredient.replace_all('sct-t1-magnet-coils', 'apm_electromagnet')
	apm.lib.utils.recipe.remove('lab')
    apm.lib.utils.recipe.remove('sct-t1-ironcore')
    apm.lib.utils.recipe.remove('sct-t1-magnet-coils')
end

-- kingarthur -----------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.PyCoalTBaA and apm_power_compat_kingarthur then
	apm.lib.utils.recipe.result.mod('coal-gas', 'solid-coke', 4)
	apm.lib.utils.recipe.result.mod('coal-gas-from-wood', 'coal', 5)
	apm.lib.utils.recipe.result.mod('coarse-coal', 'coal', 1)
	apm.lib.utils.recipe.remove('coke-coal')
	apm.lib.utils.recipe.remove('treated-wood')

	--apm.lib.utils.recipe.ingredient.mod_temperature('recipe_name', 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("sodium-chlorate", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("vpulp1", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("vpulp5", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("clay", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("fiberboard", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("fiberglass", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("stone-wool", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("benzene-aromatics", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("bone-fat", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("glycerol2", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("nylon", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("collagen", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("plastics-3", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("phosphoric-acid", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("propene", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("raw-ralesia-extract", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("al-pulp-02", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("nickel-pulp-04", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("u-pulp-01", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("u-pulp-02", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("u-rich-pulp", 'steam', 165, 120)
	apm.lib.utils.recipe.ingredient.mod_temperature("fiberboard-2", 'steam', 165, 120)
end
