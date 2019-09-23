require('util')

data:extend(
{ 
    {
        type = "item",
        name = "apm_offshore_pump_0",
        icons = {
            {icon = "__base__/graphics/icons/offshore-pump.png"},
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_miner",
        order = 'ab_a',
        stack_size = 50,
        place_result = "apm_offshore_pump_0",
    },
    {
        type = "item",
        name = "apm_offshore_pump_1",
        icons = {
            {icon = "__base__/graphics/icons/offshore-pump.png"},
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_miner",
        order = 'ab_b',
        stack_size = 50,
        place_result = "apm_offshore_pump_1",
    },
    {
        type = "item",
        name = "apm_burner_miner_drill_2",
        icons = {
            {icon = data.raw['mining-drill']['burner-mining-drill'].icon},
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_miner",
        order = 'aa_b',
        stack_size = 50,
        place_result = "apm_burner_miner_drill_2",
    },
    {
        type = "item",
        name = "apm_steam_mining_drill",
        icons = {
            {icon = data.raw['mining-drill']['electric-mining-drill'].icon},
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_miner",
        order = 'ac_b',
        stack_size = 50,
        place_result = "apm_steam_mining_drill",
    },
    {
        type = "item",
        name = "apm_assembling_machine_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t0,
            apm.lib.utils.icon.dynamics.lable_a
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_0",
        order = 'aa_a',
        stack_size = 50,
        place_result = "apm_assembling_machine_0",
    },
    {
        type = "item",
        name = "apm_assembling_machine_1",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_a
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_1",
        order = 'aa_a',
        stack_size = 50,
        place_result = "apm_assembling_machine_1",
    },
    {
        type = "item",
        name = "apm_crusher_machine_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t0,
            apm.lib.utils.icon.dynamics.lable_c
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_0",
        order = 'ab_a',
        stack_size = 50,
        place_result = "apm_crusher_machine_0",
    },
    {
        type = "item",
        name = "apm_crusher_machine_1",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_c
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_1",
        order = 'ab_a',
        stack_size = 50,
        place_result = "apm_crusher_machine_1",
    },   
    {
        type = "item",
        name = "apm_crusher_machine_2",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t2,
            apm.lib.utils.icon.dynamics.lable_c
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_3",
        order = 'aa_a',
        stack_size = 50,
        place_result = "apm_crusher_machine_2",
    },
    {
        type = "item",
        name = "apm_press_machine_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t0,
            apm.lib.utils.icon.dynamics.lable_p
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_0",
        order = 'ac_a',
        stack_size = 50,
        place_result = "apm_press_machine_0",
    },
    {
        type = "item",
        name = "apm_press_machine_1",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_p
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_1",
        order = 'ac_a',
        stack_size = 50,
        place_result = "apm_press_machine_1",
    },
    {
        type = "item",
        name = "apm_press_machine_2",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t2,
            apm.lib.utils.icon.dynamics.lable_p
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_3",
        order = 'ab_a',
        stack_size = 50,
        place_result = "apm_press_machine_2",
    },
    {
        type = "item",
        name = "apm_coking_plant_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t0,
            apm.lib.utils.icon.dynamics.lable_cp
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_0",
        order = 'ad_a',
        stack_size = 50,
        place_result = "apm_coking_plant_0",
    },
    {
        type = "item",
        name = "apm_coking_plant_1",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_cp
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_1",
        order = 'ad_a',
        stack_size = 50,
        place_result = "apm_coking_plant_1",
    },
    {
        type = "item",
        name = "apm_coking_plant_2",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t2,
            apm.lib.utils.icon.dynamics.lable_cp
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_3",
        order = 'ad_a',
        stack_size = 50,
        place_result = "apm_coking_plant_2",
    },
    {
        type = "item",
        name = "apm_lab_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t0,
            apm.lib.utils.icon.dynamics.lable_l
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_0",
        order = 'ae_a',
        stack_size = 50,
        place_result = "apm_lab_0",
    },
    {
        type = "item",
        name = "apm_lab_1",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_l
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_1",
        order = 'ae_a',
        stack_size = 50,
        place_result = "apm_lab_1",
    },
    {
        type = "item",
        name = "apm_puddling_furnace_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t0,
            apm.lib.utils.icon.dynamics.lable_pf
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_0",
        order = 'ag_a',
        stack_size = 50,
        place_result = "apm_puddling_furnace_0",
    },
    {
        type = "item",
        name = "apm_steelworks_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t2,
            apm.lib.utils.icon.dynamics.lable_sw
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_3",
        order = 'ag_a',
        stack_size = 50,
        place_result = "apm_steelworks_0",
    },
    --[[
    {
        type = "item",
        name = "apm_power_steam_nexus_0",
        icon = '__apm_resource_pack__/graphics/icons/apm_power_steam_nexus_0.png',
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_2",
        order = 'aa_a',
        stack_size = 50,
        place_result = "apm_power_steam_nexus_0",
    },
    ]]--
    {
        type = "item",
        name = "apm_greenhouse_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_gh
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_2",
        order = 'aa_a',
        stack_size = 50,
        place_result = "apm_greenhouse_0",
    },
    {
        type = "item",
        name = "apm_centrifuge_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t0,
            apm.lib.utils.icon.dynamics.lable_ce
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_0",
        order = 'af_a',
        stack_size = 50,
        place_result = "apm_centrifuge_0",
    },
    {
        type = "item",
        name = "apm_centrifuge_1",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_ce
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_1",
        order = 'af_a',
        stack_size = 50,
        place_result = "apm_centrifuge_1",
    },
    {
        type = "item",
        name = "apm_centrifuge_2",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t2,
            apm.lib.utils.icon.dynamics.lable_ce
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_3",
        order = 'af_a',
        stack_size = 50,
        place_result = "apm_centrifuge_2",
    },
    {
        type = "item",
        name = "apm_sieve_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_si
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_2",
        order = 'ad_a',
        stack_size = 50,
        place_result = "apm_sieve_0",
    },
    {
        type = "item",
        name = "apm_air_cleaner_machine_0",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_ac
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_machines_2",
        order = 'ac_a',
        stack_size = 50,
        place_result = "apm_air_cleaner_machine_0",
    },
    {
        type = "item",
        name = "apm_burner_filter_inserter",
        icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png',
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_inserter",
        order = 'ab_a',
        stack_size = 50,
        place_result = "apm_burner_filter_inserter",
    },
    {
        type = "item",
        name = "apm_burner_long_inserter",
        icon = '__apm_resource_pack__/graphics/icons/apm_burner_long_inserter.png',
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_inserter",
        order = 'ac_a',
        stack_size = 50,
        place_result = "apm_burner_long_inserter",
    },
    --[[
    {
        type = "item",
        name = "apm_steam_inserter",
        icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png',
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_inserter",
        order = 'ba_a',
        stack_size = 50,
        place_result = "apm_steam_inserter",
    },
    {
        type = "item",
        name = "apm_steam_filter_inserter",
        icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png',
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_inserter",
        order = 'bb_a',
        stack_size = 50,
        place_result = "apm_steam_filter_inserter",
    },
    {
        type = "item",
        name = "apm_steam_long_inserter",
        icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png',
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_inserter",
        order = 'bc_a',
        stack_size = 50,
        place_result = "apm_steam_long_inserter",
    },
    ]]--
})