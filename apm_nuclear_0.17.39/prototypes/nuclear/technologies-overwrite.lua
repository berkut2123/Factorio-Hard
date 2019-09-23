require('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/technologies-overwrite.lua')
log('-------------------------------------------------------')

--atomic-bomb
apm.lib.utils.technology.remove.prerequisites('atomic-bomb', 'kovarex-enrichment-process')
apm.lib.utils.technology.add.prerequisites('atomic-bomb', 'apm_nuclear_breeder')

--uranium-processing
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_fluorite_ore')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_yellowcake')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_potassium_bromide_filltration')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_bromine')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_bromine_trifluoride')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_waste_container')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_radioactive_wastewater_recyling')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_002')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_012')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_017')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_022')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_027')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_032')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_037')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_042')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_hexafluoride_centrifuging_047')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_002')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_007')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_012')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_017')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_022')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_027')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_032')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_037')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_042')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-processing', 'apm_nuclear_uranium_oxide_pellet_047')

--nucular power
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-power', 'apm_fuel_cell_casing')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-power', 'apm_nuclear_fuel_cell_032')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-power', 'apm_nuclear_fuel_cell_037')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-power', 'apm_nuclear_fuel_cell_042')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-power', 'apm_nuclear_fuel_cell_047')

--nuclear-fuel-reprocessing
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_fuel_cell_casing_washing')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_fuel_cell_mox')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_rtg_radioisotope_thermoelectric_generator')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_a_032')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_a_037')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_a_042')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_a_047')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_fuel_cell_mox_used_recovery_stage_a')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_b_032')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_b_037')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_b_042')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_used_fuel_cell_recovery_stage_b_047')
apm.lib.utils.technology.add.recipe_for_unlock('nuclear-fuel-reprocessing', 'apm_fuel_cell_mox_used_recovery_stage_b')

-- space-science-pack
apm.lib.utils.technology.add.prerequisites('space-science-pack', 'nuclear-fuel-reprocessing')

--kovarex-enrichment-process
apm.lib.utils.technology.disable('kovarex-enrichment-process')

-- uranium-ammo
apm.lib.utils.technology.add.recipe_for_unlock('uranium-ammo', 'apm_depleted_uranium_ingots_1')
apm.lib.utils.technology.add.recipe_for_unlock('uranium-ammo', 'apm_depleted_uranium_ingots_2')