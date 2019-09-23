require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/technology.lua')
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
if mods.apm_recycling then
	apm.lib.utils.technology.add.science_pack('apm_recycling-0', 'apm_industrial_science_pack', 1)
	apm.lib.utils.technology.remove.science_pack('apm_recycling-0', 'automation-science-pack')
	apm.lib.utils.technology.add.prerequisites('apm_recycling-0', 'apm_power_steam')
end

-- bio_industries -------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.Bio_Industries and apm_power_compat_bio_industries then
	apm.lib.utils.technology.delete('apm_fertiliser_2')
	apm.lib.utils.technology.delete('bi-tech-coal-processing-2')
	apm.lib.utils.technology.delete('bi-tech-coal-processing-3')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_crusher_machine_0', 'bi_recipe_crushed_stone')
	apm.lib.utils.technology.remove.recipe_from_unlock('apm_crusher_machine_0', 'bi_recipe_crushed_stone')
	apm.lib.utils.technology.remove.recipe_from_unlock("logistics", "bi_recipe_big_wooden_pole")
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_electricity', 'bi_recipe_big_wooden_pole')

	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'bi_recipe_wood_pipe')
	apm.lib.utils.recipe.disable('bi_recipe_wood_pipe')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'bi_recipe_pipe_to_ground_wood')
	apm.lib.utils.recipe.disable('bi_recipe_pipe_to_ground_wood')
end

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods['aai-industry'] and apm_power_compat_earendel then
	apm.lib.utils.technology.delete('basic-logistics')

	apm.lib.utils.technology.remove.recipe_from_unlock('basic-automation', 'burner-inserter')
	apm.lib.utils.recipe.enable('burner-inserter')
	
	apm.lib.utils.technology.delete('basic-automation')
	apm.lib.utils.technology.add.recipe_for_unlock('automation', 'inserter')
	apm.lib.utils.recipe.disable('inserter')

	apm.lib.utils.technology.add.prerequisites('sand-processing', 'apm_crusher_machine_0')
	apm.lib.utils.technology.add.science_pack('sand-processing', 'apm_industrial_science_pack', 1)
	apm.lib.utils.technology.remove.science_pack('sand-processing', 'automation-science-pack')

	apm.lib.utils.technology.add.science_pack('glass-processing', 'apm_industrial_science_pack', 1)
	apm.lib.utils.technology.remove.science_pack('glass-processing', 'automation-science-pack')

	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_electricity', 'electric-motor')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_electricity', 'small-iron-electric-pole')
	apm.lib.utils.technology.remove.recipe_from_unlock('apm_power_electricity', 'electronic-circuit')

	apm.lib.utils.technology.add.prerequisites('fuel-processing', 'apm_power_electricity')

	apm.lib.utils.technology.delete('electricity')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_electricity', 'small-electric-pole')
	apm.lib.utils.recipe.disable('small-electric-pole')

	apm.lib.utils.technology.delete('basic-fluid-handling')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'pipe')
	apm.lib.utils.recipe.disable('pipe')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'pipe-to-ground')
	apm.lib.utils.recipe.disable('pipe-to-ground')

	apm.lib.utils.technology.delete('electric-mining')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_electric_mining_drills', 'electric-mining-drill')
	apm.lib.utils.technology.delete('steam-power')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'boiler')
	apm.lib.utils.recipe.disable('boiler')	

	apm.lib.utils.technology.add.prerequisites('apm_greenhouse', 'glass-processing')
	apm.lib.utils.technology.add.prerequisites('apm_lab_1', 'glass-processing')
	apm.lib.utils.technology.add.prerequisites('fluid-handling', 'automation-2')

	if mods.bobelectronics then
		apm.lib.utils.technology.remove.recipe_from_unlock('electronics', 'wooden-board')
		apm.lib.utils.technology.remove.recipe_from_unlock('electronics', 'basic-circuit-board')
	end

	if not mods.bobelectronics and mods.angelsrefining then
		-- we need this circuit here, for the progression (the player was long enough locked behind non-electric)
		apm.lib.utils.technology.add.recipe_for_unlock('apm_power_electricity', 'electronic-circuit')
	end
end

if mods['aai-vehicles-miner'] and apm_power_compat_earendel then
	apm.lib.utils.technology.add.science_pack('vehicle-miner', 'apm_industrial_science_pack', 1)
	apm.lib.utils.technology.remove.science_pack('vehicle-miner', 'automation-science-pack')
	apm.lib.utils.technology.add.science_pack('vehicle-miner-2', 'apm_industrial_science_pack', 1)
	apm.lib.utils.technology.remove.science_pack('vehicle-miner-2', 'automation-science-pack')
end

if mods['aai-programmable-vehicles'] and apm_power_compat_earendel then
	apm.lib.utils.technology.add.prerequisites('position-beacon', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('vehicle-depot', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('vehicle-deployment', 'apm_power_electricity')
end

if mods['aai-vehicles-hauler'] and apm_power_compat_earendel then
	apm.lib.utils.technology.add.prerequisites('basic-vehicles', 'engine')
	apm.lib.utils.technology.add.science_pack('basic-vehicles', 'apm_industrial_science_pack', 1)
	apm.lib.utils.technology.remove.science_pack('basic-vehicles', 'automation-science-pack')
end

-- Bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobinserters and apm_power_compat_bob then
	if mods.boblogistics then
		if apm.lib.utils.setting.get.starup('bobmods-logistics-inserteroverhaul') then
			apm.lib.utils.technology.add.prerequisites('apm_inserter_capacity_bonus', 'long-inserters-1')
			apm.lib.utils.technology.remove.prerequisites('apm_inserter_capacity_bonus', 'apm_burner_long_inserter')
			apm.lib.utils.technology.delete('apm_burner_long_inserter')
			apm.lib.utils.technology.add.prerequisites('long-inserters-1', 'apm_puddling_furnace_0')
			apm.lib.utils.technology.remove.prerequisites('long-inserters-1', 'logistics')
			apm.lib.utils.technology.add.science_pack('long-inserters-1', 'apm_industrial_science_pack', 1)
			apm.lib.utils.technology.remove.science_pack('long-inserters-1', 'automation-science-pack')
			apm.lib.utils.technology.mod.unit_count('long-inserters-1', 75)
			apm.lib.utils.technology.mod.unit_time('long-inserters-1', 25)
		else
			apm.lib.utils.technology.add.prerequisites('long-inserters-1', 'apm_burner_long_inserter')
		end
	else
		apm.lib.utils.technology.add.prerequisites('apm_inserter_capacity_bonus', 'long-inserters-1')
		apm.lib.utils.technology.remove.prerequisites('apm_inserter_capacity_bonus', 'apm_burner_long_inserter')
		apm.lib.utils.technology.delete('apm_burner_long_inserter')
		apm.lib.utils.technology.add.prerequisites('long-inserters-1', 'apm_puddling_furnace_0')
		apm.lib.utils.technology.remove.prerequisites('long-inserters-1', 'logistics')
		apm.lib.utils.technology.add.science_pack('long-inserters-1', 'apm_industrial_science_pack', 1)
		apm.lib.utils.technology.remove.science_pack('long-inserters-1', 'automation-science-pack')
		apm.lib.utils.technology.mod.unit_count('long-inserters-1', 75)
		apm.lib.utils.technology.mod.unit_time('long-inserters-1', 25)
		if not apm.lib.utils.setting.get.starup('bobmods-logistics-inserteroverhaul') then
			apm.lib.utils.technology.add.recipe_for_unlock('long-inserters-1', 'apm_burner_long_inserter')
		end
	end
end

if mods.bobplates and apm_power_compat_bob then
	apm.lib.utils.technology.add.prerequisites('alloy-processing-1', 'apm_power_automation_science_pack')
	apm.lib.utils.technology.add.prerequisites('chemical-processing-1', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('electrolysis-1', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('air-compressor-1', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('water-bore-1', 'apm_power_electricity')
end

if mods.bobmining and apm_power_compat_bob then
	apm.lib.utils.technology.add.prerequisites('bob-drills-1', 'apm_electric_mining_drills')
	apm.lib.utils.technology.add.prerequisites('bob-area-drills-1', 'apm_electric_mining_drills')
	apm.lib.utils.technology.add.prerequisites('water-miner-1', 'apm_electric_mining_drills')
	apm.lib.utils.technology.add.prerequisites('bob-pumpjacks-1', 'apm_electric_mining_drills')
	apm.lib.utils.technology.add.prerequisites('bob-pumpjacks-1', 'logistic-science-pack')
	apm.lib.utils.technology.add.prerequisites('steel-axe-2', 'logistic-science-pack')
end

if mods.bobrevamp and apm_power_compat_bob then
	apm.lib.utils.technology.add.prerequisites('pumpjack', 'logistic-science-pack')
end

if mods.boblogistics and apm_power_compat_bob then
	if not mods.bobinserters then
		if apm.lib.utils.setting.get.starup('bobmods-logistics-inserteroverhaul') then
			apm.lib.utils.technology.add.prerequisites('apm_inserter_capacity_bonus', 'long-inserters-1')
			apm.lib.utils.technology.remove.prerequisites('apm_inserter_capacity_bonus', 'apm_burner_long_inserter')
			apm.lib.utils.technology.delete('apm_burner_long_inserter')
			apm.lib.utils.technology.add.prerequisites('long-inserters-1', 'apm_puddling_furnace_0')
			apm.lib.utils.technology.remove.prerequisites('long-inserters-1', 'logistics')
			apm.lib.utils.technology.add.science_pack('long-inserters-1', 'apm_industrial_science_pack', 1)
			apm.lib.utils.technology.remove.science_pack('long-inserters-1', 'automation-science-pack')
			apm.lib.utils.technology.mod.unit_count('long-inserters-1', 75)
			apm.lib.utils.technology.mod.unit_time('long-inserters-1', 25)
		else
			apm.lib.utils.technology.add.recipe_for_unlock('long-inserters-1', 'apm_burner_long_inserter')
		end
	end
	if apm.lib.utils.setting.get.starup('bobmods-logistics-beltoverhaul') then
		apm.lib.utils.technology.remove.prerequisites('apm_power_steam', 'logistics')
		apm.lib.utils.technology.add.prerequisites('apm_power_steam', 'logistics-0')
		apm.lib.utils.technology.remove.prerequisites('logistics', 'apm_power_electricity')
		apm.lib.utils.technology.remove.prerequisites('logistics', 'apm_crusher_machine_0')
		apm.lib.utils.technology.add.prerequisites('logistics-0', 'apm_crusher_machine_0')
		apm.lib.utils.technology.add.science_pack('logistics-0', 'apm_industrial_science_pack', 1)
		apm.lib.utils.technology.remove.science_pack('logistics-0', 'automation-science-pack')
		apm.lib.utils.technology.add.recipe_for_unlock('logistics-0', 'basic-transport-belt')
		apm.lib.utils.recipe.disable('basic-transport-belt')
		apm.lib.utils.technology.add.science_pack('logistics', 'automation-science-pack', 1)
		apm.lib.utils.technology.remove.science_pack('logistics', 'apm_industrial_science_pack')
		apm.lib.utils.technology.add.prerequisites('logistics', 'apm_power_electricity')
		apm.lib.utils.technology.mod.order('logistics-0', 'a-a-a')
	end
	--- --- ---
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'copper-pipe')
	apm.lib.utils.recipe.disable('copper-pipe')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'copper-pipe-to-ground')
	apm.lib.utils.recipe.disable('copper-pipe-to-ground')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'stone-pipe')
	apm.lib.utils.recipe.disable('stone-pipe')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_steam', 'stone-pipe-to-ground')
	apm.lib.utils.recipe.disable('stone-pipe-to-ground')
end

if mods.bobelectronics and apm_power_compat_bob then
	apm.lib.utils.technology.add.prerequisites('electronics', 'chemical-processing-1')
	apm.lib.utils.recipe.disable('wooden-board')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_power_electricity', 'basic-circuit-board')
	apm.lib.utils.recipe.disable('basic-circuit-board')
	apm.lib.utils.technology.remove.recipe_from_unlock('apm_power_electricity', 'electronic-circuit')
end

if mods.bobtech and apm_power_compat_bob then
	if not mods.PyCoalTBaA then
		apm.lib.utils.technology.mod.icon('apm_power_automation_science_pack', '__apm_resource_pack__/graphics/technologies/apm_power_bob_automation_science_pack.png')
	end
end

if mods.bobwarfare and apm_power_compat_bob then
	apm.lib.utils.technology.remove.prerequisites('radars', 'military')
	apm.lib.utils.technology.add.prerequisites('radars', 'military-2')
end

if mods.bobpower and apm_power_compat_bob then
	apm.lib.utils.technology.add.prerequisites('bob-steam-engine-2', 'apm_power_electricity')
	apm.lib.utils.technology.mod.unit_count('bob-steam-engine-2', 100)
	apm.lib.utils.technology.mod.unit_count('bob-steam-engine-3', 125)
	apm.lib.utils.technology.mod.unit_count('bob-steam-engine-4', 150)
	apm.lib.utils.technology.mod.unit_count('bob-steam-engine-5', 200)
	apm.lib.utils.technology.add.prerequisites('bob-boiler-2', 'apm_power_electricity')
	apm.lib.utils.technology.mod.unit_count('bob-boiler-2', 100)
	apm.lib.utils.technology.mod.unit_count('bob-boiler-3', 125)
	apm.lib.utils.technology.mod.unit_count('bob-boiler-4', 150)
	apm.lib.utils.technology.mod.unit_count('bob-boiler-5', 200)
end

if mods.bobwarfare and apm_power_compat_bob then
	apm.lib.utils.technology.add.prerequisites('bob-turrets-2', 'logistic-science-pack')
	apm.lib.utils.technology.add.prerequisites('bob-sniper-turrets-1', 'military-science-pack')
end

if mods.bobgreenhouse and apm_power_compat_bob then
	apm.lib.utils.technology.add.prerequisites('bob-greenhouse', 'apm_power_electricity')
end


-- Angel ----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelsrefining and apm_power_compat_angel then
	apm.lib.utils.technology.add.prerequisites('ore-crushing', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('water-treatment', 'apm_power_electricity')
end

if mods.angelssmelting and apm_power_compat_angel then
	apm.lib.utils.technology.delete('apm_steelworks_0')
	apm.lib.utils.technology.add.prerequisites('angels-metallurgy-1', 'apm_power_electricity')
end

if mods.angelspetrochem and apm_power_compat_angel then
	apm.lib.utils.technology.add.prerequisites('basic-chemistry', 'apm_power_electricity')
	apm.lib.utils.technology.add.recipe_for_unlock('angels-oil-processing', 'apm_treated_wood_planks_2')
end

if mods['angelsaddons-warehouses'] and apm_power_compat_angel then
	apm.lib.utils.technology.add.prerequisites('angels-warehouses', 'apm_power_automation_science_pack')
	apm.lib.utils.technology.add.science_pack('angels-warehouses', 'apm_industrial_science_pack', 1)
end

if mods.angelsbioprocessing and apm_power_compat_angel then
	apm.lib.utils.technology.delete('apm_fertiliser_2')
	apm.lib.utils.technology.add.prerequisites('gardens', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('bio-arboretum-1', 'apm_power_electricity')

	apm.lib.utils.technology.delete('bio-wood-processing')
	apm.lib.utils.technology.delete('bio-wood-processing-2')
	apm.lib.utils.technology.delete('bio-wood-processing-3')
end

if mods.angelsindustries and apm_power_compat_angel then
	apm.lib.utils.technology.add.prerequisites('angels-vequipment-1', 'apm_power_electricity')
	apm.lib.utils.technology.add.prerequisites('cargo-robots', 'apm_power_electricity')
end

if mods['angelsaddons-smeltingtrain'] and apm_power_compat_angel then
	apm.lib.utils.technology.add.prerequisites('angels-smelting-train', 'apm_power_electricity')
end

if mods['angelsaddons-petrotrain'] and apm_power_compat_angel then
	apm.lib.utils.technology.add.prerequisites('angels-petro-train', 'apm_power_electricity')
end

-- sctm -----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.ScienceCostTweakerM and apm_power_compat_sctm then

	apm.lib.utils.technology.delete('sct-lab-t1')
	apm.lib.utils.technology.remove.recipe_from_unlock('apm_power_automation_science_pack', 'apm_electromagnet')
	apm.lib.utils.technology.delete('apm_power_automation_science_pack')

	apm.lib.utils.technology.remove.prerequisites('apm_power_electricity', 'automation-science-pack')
	apm.lib.utils.technology.remove.prerequisites('turrets', 'sct-automation-science-pack')
	apm.lib.utils.technology.remove.prerequisites('stone-walls', 'sct-automation-science-pack')

	apm.lib.utils.technology.add.recipe_for_unlock('sct-automation-science-pack', 'apm_electromagnet')
	apm.lib.utils.technology.add.prerequisites('sct-automation-science-pack', 'apm_lab_1')
	apm.lib.utils.technology.add.science_pack('sct-automation-science-pack', 'apm_industrial_science_pack', 1)
	apm.lib.utils.technology.mod.unit_count('sct-automation-science-pack', 50)
	apm.lib.utils.technology.mod.unit_time('sct-automation-science-pack', 30)

	if mods.apm_recycling then
		apm.lib.utils.technology.remove.prerequisites('apm_recycling-0', 'sct-automation-science-pack')
	end

	if mods.boblogistics then
		if apm.lib.utils.setting.get.starup('bobmods-logistics-beltoverhaul') then
			apm.lib.utils.technology.remove.prerequisites('logistics-0', 'sct-automation-science-pack')
		else
    		apm.lib.utils.technology.remove.prerequisites('logistics', 'sct-automation-science-pack')
    	end
    else
    	apm.lib.utils.technology.remove.prerequisites('logistics', 'sct-automation-science-pack')
    end

	if mods.bobinserters then
		apm.lib.utils.technology.remove.prerequisites('long-inserters-1', 'sct-automation-science-pack')
	end

    if mods['aai-industry'] then
    	apm.lib.utils.technology.add.recipe_for_unlock('fuel-processing', 'fuel-processor')
    	apm.lib.utils.technology.remove.prerequisites('sand-processing', 'sct-automation-science-pack')
    	apm.lib.utils.technology.add.science_pack('electric-mining', 'automation-science-pack', 1)
    	apm.lib.utils.technology.remove.science_pack('electric-mining', 'sct-science-pack-0')
    	apm.lib.utils.technology.remove.science_pack('sct-automation-science-pack', 'sct-science-pack-0')
    	apm.lib.utils.technology.delete('sct-aai-basic-fuel-processing')
    	apm.lib.utils.technology.delete('sct-aai-advanced-fuel-processing')
    	apm.lib.utils.technology.delete('sct-aai-nuclear-fuel-processing')
    	apm.lib.utils.technology.delete('sct-aai-rocket-fuel-processing')
    	apm.lib.utils.recipe.disable('sct-t0-crate')
    	apm.lib.utils.recipe.disable('sct-t0-solvent')
    	apm.lib.utils.recipe.disable('sct-science-pack-0')
    end
end

-- kingarthur -----------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.PyCoalTBaA and apm_power_compat_kingarthur then
	apm.lib.utils.technology.remove.prerequisites('engine', 'coal-processing-1')
end
