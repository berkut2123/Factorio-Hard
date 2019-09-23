require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/fuel.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))

-----------------------------------------------------------------------------------------------------------------------
-- apm.lib.utils.fuel.overhaul(item_name, multiplicator)
-----------------------------------------------------------------------------------------------------------------------

-- apm ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.apm_starfall then
	apm.lib.utils.fuel.overhaul(4.5, 'apm_meteorite_enriched_mixture', 2.75, nil, 'apm_refined_chemical')
	apm.lib.utils.fuel.overhaul(4.5, 'apm_meteorite_enriched_block', 8.5, nil, 'apm_refined_chemical')
end


-- bio_industries -------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.Bio_Industries and apm_power_compat_bio_industries then
	if settings.startup['apm_power_generic_ash'].value == true then
		apm.lib.utils.fuel.overhaul(1, 'bi-woodpulp', 0.25, 'apm_generic_ash', 'chemical')
	else
		apm.lib.utils.fuel.overhaul(1, 'bi-woodpulp', 0.25, 'apm_wood_ash', 'chemical')
	end
	apm.lib.utils.item.mod.remove_fuel_value('seedling')
	apm.lib.utils.item.mod.remove_fuel_value('bi-big-wooden-pole')
	apm.lib.utils.item.mod.remove_fuel_value('bi-huge-wooden-pole')
	apm.lib.utils.item.mod.remove_fuel_value('bi-wooden-fence')
	apm.lib.utils.item.mod.remove_fuel_value('bi-wood-pipe')
	apm.lib.utils.item.mod.remove_fuel_value('bi-pipe-to-ground-wood')
	apm.lib.utils.item.mod.remove_fuel_value('bi-large-wooden-chest')
	apm.lib.utils.item.mod.remove_fuel_value('bi-huge-wooden-chest')
	apm.lib.utils.item.mod.remove_fuel_value('bi-giga-wooden-chest')
end

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobplates and apm_power_compat_bob then
	apm.lib.utils.fuel.overhaul(5, 'enriched-fuel', 8, nil, 'apm_refined_chemical')
end

-- angel -----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelspetrochem and apm_power_compat_angel then
	apm.lib.utils.fuel.overhaul(3, 'solid-coke', 3.7, nil, 'apm_refined_chemical')
	apm.lib.utils.fuel.overhaul(5, 'solid-carbon', 2.5, nil, 'apm_refined_chemical')
	apm.lib.utils.fuel.overhaul(6, 'rocket-booster', 4, nil, 'apm_rocket')
end

if mods.angelsbioprocessing and apm_power_compat_angel then
	apm.lib.utils.fuel.overhaul(1, 'cellulose-fiber', 0.125, 'apm_wood_ash')
end

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods['aai-industry'] and apm_power_compat_earendel then
	apm.lib.utils.fuel.overhaul(5, 'vehicle-fuel', 1, nil, 'apm_vehicle_only')
	for _, recipe in pairs(data.raw.recipe) do
    	if string.match(recipe.name, "vehicle%-fuel%-from%-") then
        	apm.lib.utils.recipe.remove(recipe.name)
    	end
	end
	apm.lib.utils.patch.aai.generate_vehicle_fuel()
end

-- kingarthur -----------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.PyCoalTBaA and apm_power_compat_kingarthur then
	apm.lib.utils.fuel.overhaul(1, 'raw-coal', 0.85, 'apm_coal_ash', 'chemical')
	apm.lib.utils.fuel.overhaul(2, 'crushed-coal', 0.75, 'apm_coal_ash', 'chemical')
	apm.lib.utils.fuel.overhaul(2, 'coarse-coal', 0.75, 'apm_coal_ash', 'chemical')
	apm.lib.utils.fuel.overhaul(2, 'coal-dust', 0.5, 'apm_coal_ash', 'chemical')
	apm.lib.utils.fuel.overhaul(1, 'raw-fiber', 0.2, 'apm_wood_ash', 'chemical')
	apm.lib.utils.fuel.overhaul(2, 'coal-briquette', 5, 'apm_coal_ash', 'chemical')
end