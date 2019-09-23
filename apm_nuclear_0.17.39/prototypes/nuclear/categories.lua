require('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/categories.lua')
log('-------------------------------------------------------')

-- Action ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.lib.utils.category.create.group('apm_nuclear', '__apm_resource_pack__/graphics/categories/apm_nuclear.png', '70')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_chemistry', 'a_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_hexafluoride', 'b_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_oxide_pellets_uranium', 'c_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_fuel', 'd_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_used_fuel', 'e_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_recycling_stage_a', 'f_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_recycling_stage_b', 'f_b')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_oxide_pellets_plutonium', 'g_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_products', 'h_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_waste_products', 'i_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_machines_1', 'j_a')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_machines_2', 'j_b')
    apm.lib.utils.category.create.subgroup('apm_nuclear', 'apm_nuclear_other', 'k_a')