require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/recipes.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------

if mods['space-exploration'] and apm_nuclear_compat_earendel then
    apm.lib.utils.recipe.ingredient.replace('se-rtg-equipment', 'uranium-fuel-cell', 'apm_rtg_radioisotope_thermoelectric_generator')
    apm.lib.utils.recipe.ingredient.mod('se-rtg-equipment', 'apm_rtg_radioisotope_thermoelectric_generator', 5, 10)
    apm.lib.utils.recipe.ingredient.mod('se-rtg-equipment', 'apm_rtg_radioisotope_thermoelectric_generator', 5, 10)
    apm.lib.utils.recipe.ingredient.mod('satellite', 'accumulator', 0)
end

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobplates and apm_nuclear_compat_bob then
    apm.lib.utils.recipe.ingredient.mod('apm_fuel_cell_casing', 'glass', 5, 10)
    apm.lib.utils.recipe.ingredient.replace('apm_waste_container', 'iron-plate', 'lead-plate')
    apm.lib.utils.recipe.ingredient.mod('apm_fuel_cell_casing', 'lead-plate', 5, 10)
    apm.lib.utils.recipe.ingredient.mod('satellite', 'silver-zinc-battery', 0)
    apm.lib.utils.recipe.remove('bobingabout-enrichment-process')
end

if mods.bobplates and not mods.angelspetrochem and apm_nuclear_compat_bob then
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_bromine', 'water', 'chlorine')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_032', 'sulfuric-acid', 'nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_037', 'sulfuric-acid', 'nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_042', 'sulfuric-acid', 'nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_047', 'sulfuric-acid', 'nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_fuel_cell_mox_used_recovery_stage_a', 'sulfuric-acid', 'nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_plutonium_seperation_process_a', 'sulfuric-acid', 'nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_uranium_seperation_process_a', 'sulfuric-acid', 'nitric-acid')
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_032', 'nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_037', 'nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_042', 'nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_047', 'nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_fuel_cell_mox_used_recovery_stage_a', 'nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_plutonium_seperation_process_a', 'nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_seperation_process_a', 'nitric-acid', 50)
end

if mods.bobwarfare and apm_nuclear_compat_bob then
    apm.lib.utils.recipe.ingredient.mod('uranium-rounds-magazine', 'apm_depleted_uranium_ingots', 0)
    apm.lib.utils.recipe.ingredient.mod('uranium-bullet-projectile', 'uranium-238', 0)
    apm.lib.utils.recipe.ingredient.mod('uranium-bullet-projectile', 'apm_depleted_uranium_ingots', 1, 2)    
    apm.lib.utils.recipe.ingredient.replace('shotgun-uranium-shell', 'uranium-238', 'apm_depleted_uranium_ingots')
    apm.lib.utils.recipe.ingredient.mod('shotgun-uranium-shell', 'apm_depleted_uranium_ingots', 5, 7)
end

-- angel ----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelspetrochem and apm_nuclear_compat_angel then
    apm.lib.utils.recipe.result.replace('apm_fluorite_ore', 'apm_fluorite_ore', 'fluorite-ore')
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_bromine_trifluoride', 'apm_fluorite_ore', 'fluorite-ore')
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_bromine', 'water', 'gas-chlorine')
    --
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_032', 'sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_037', 'sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_042', 'sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_047', 'sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_fuel_cell_mox_used_recovery_stage_a', 'sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_plutonium_seperation_process_a', 'sulfuric-acid', 'liquid-nitric-acid')
    --
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_032', 'liquid-sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_037', 'liquid-sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_042', 'liquid-sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_used_fuel_cell_recovery_stage_a_047', 'liquid-sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_fuel_cell_mox_used_recovery_stage_a', 'liquid-sulfuric-acid', 'liquid-nitric-acid')
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_plutonium_seperation_process_a', 'liquid-sulfuric-acid', 'liquid-nitric-acid')
    --
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_032', 'liquid-nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_037', 'liquid-nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_042', 'liquid-nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_used_fuel_cell_recovery_stage_a_047', 'liquid-nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_fuel_cell_mox_used_recovery_stage_a', 'liquid-nitric-acid', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_plutonium_seperation_process_a', 'liquid-nitric-acid', 50)

    if mods.bobplates then
        apm.lib.utils.recipe.ingredient.replace('apm_nuclear_uranium_seperation_process_a', 'sulfuric-acid', 'liquid-nitric-acid')
        apm.lib.utils.recipe.ingredient.replace('apm_nuclear_uranium_seperation_process_a', 'liquid-sulfuric-acid', 'liquid-nitric-acid')
        apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_seperation_process_a', 'liquid-nitric-acid', 50)
    end
end

if mods.angelspetrochem and mods.angelsrefining and apm_nuclear_compat_angel then
    apm.lib.utils.recipe.result.mod('apm_nuclear_bromine_trifluoride', 'water-greenyellow-waste', 10)
    apm.lib.utils.recipe.result.mod('apm_used_fuel_cell_recovery_stage_b_032', 'water-red-waste', 50)
    apm.lib.utils.recipe.result.mod('apm_used_fuel_cell_recovery_stage_b_037', 'water-red-waste', 50)
    apm.lib.utils.recipe.result.mod('apm_used_fuel_cell_recovery_stage_b_042', 'water-red-waste', 50)
    apm.lib.utils.recipe.result.mod('apm_used_fuel_cell_recovery_stage_b_047', 'water-red-waste', 50)
    apm.lib.utils.recipe.result.mod('apm_fuel_cell_mox_used_recovery_stage_b', 'water-red-waste', 50)
    apm.lib.utils.recipe.result.mod('apm_nuclear_plutonium_seperation_process_b', 'water-red-waste', 50)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_002', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_007', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_012', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_017', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_022', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_027', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_032', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_037', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_042', 'water-purified', 25)
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_uranium_oxide_pellet_047', 'water-purified', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_002', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_007', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_012', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_017', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_022', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_027', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_032', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_037', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_042', 'water-greenyellow-waste', 25)
    apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_oxide_pellet_047', 'water-greenyellow-waste', 25)

    if mods.bobplates then
        apm.lib.utils.recipe.result.mod('apm_nuclear_thorium_oxide_pellet', 'water-yellow-waste', 50)
        apm.lib.utils.recipe.result.mod('apm_fuel_cell_thorium_used_recovery_stage_b', 'water-red-waste', 100)
        apm.lib.utils.recipe.result.mod('apm_nuclear_uranium_seperation_process_b', 'water-red-waste', 50)
    end

end

if mods.angelsrefining and apm_nuclear_compat_angel then
    apm.lib.utils.recipe.ingredient.replace('apm_nuclear_potassium_bromide_filltration', 'water', 'water-saline')
    apm.lib.utils.recipe.category.change('apm_radioactive_wastewater_recyling', 'water-treatment')
    apm.lib.utils.recipe.result.replace('apm_radioactive_wastewater_recyling', 'water', 'water-purified')
end

if mods.angelssmelting and mods.angelspetrochem and mods.bobplates and apm_nuclear_compat_angel then
    apm.lib.utils.recipe.remove('apm_fluorite_ore')
end