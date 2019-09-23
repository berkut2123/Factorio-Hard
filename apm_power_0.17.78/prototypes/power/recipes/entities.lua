require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_offshore_pump_0",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="pipe", amount=3},
                {type="item", name="apm_gearing", amount=3},
            },
            results = { 
                {type='item', name='apm_offshore_pump_0', amount=1},
            },
            main_product = 'apm_offshore_pump_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="pipe", amount=5},
                {type="item", name="apm_gearing", amount=4},
            },
            results = { 
                {type='item', name='apm_offshore_pump_0', amount=1},
            },
            main_product = 'apm_offshore_pump_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_offshore_pump_1",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_offshore_pump_0", amount=1},
                {type="item", name="apm_electromagnet", amount=6},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="electronic-circuit", amount=5},
            },
            results = { 
                {type='item', name='apm_offshore_pump_1', amount=1},
            },
            main_product = 'apm_offshore_pump_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_offshore_pump_0", amount=1},
                {type="item", name="apm_electromagnet", amount=10},
                {type="item", name="apm_gearing", amount=3},
                {type="item", name="electronic-circuit", amount=8},
            },
            results = { 
                {type='item', name='apm_offshore_pump_1', amount=1},
            },
            main_product = 'apm_offshore_pump_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_burner_miner_drill_2",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="burner-mining-drill", amount=1},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="steel-plate", amount=5},
            },
            results = { 
                {type='item', name='apm_burner_miner_drill_2', amount=1},
            },
            main_product = 'apm_burner_miner_drill_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="burner-mining-drill", amount=1},
                {type="item", name="apm_gearing", amount=3},
                {type="item", name="steel-plate", amount=8},
            },
            results = { 
                {type='item', name='apm_burner_miner_drill_2', amount=1},
            },
            main_product = 'apm_burner_miner_drill_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_steam_mining_drill",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_burner_miner_drill_2", amount=1},
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=5},
                {type="item", name="engine-unit", amount=1},
            },
            results = { 
                {type='item', name='apm_steam_mining_drill', amount=1},
            },
            main_product = 'apm_steam_mining_drill',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_burner_miner_drill_2", amount=1},
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="apm_gearing", amount=5},
                {type="item", name="engine-unit", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_mining_drill', amount=1},
            },
            main_product = 'apm_steam_mining_drill',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_burner_filter_inserter",
        normal = {
            enabled = true,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="burner-inserter", amount=1},
                {type="item", name="apm_steam_relay", amount=2},
                {type="item", name="apm_gearing", amount=1},
            },
            results = { 
                {type='item', name='apm_burner_filter_inserter', amount=1},
            },
            main_product = 'apm_burner_filter_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = true,
            energy_required = 1,
            ingredients = {
                {type="item", name="burner-inserter", amount=1},
                {type="item", name="apm_steam_relay", amount=4},
                {type="item", name="apm_gearing", amount=1},
            },
            results = { 
                {type='item', name='apm_burner_filter_inserter', amount=1},
            },
            main_product = 'apm_burner_filter_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_burner_long_inserter",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="burner-inserter", amount=1},
                {type="item", name="apm_steam_relay", amount=1},
                {type="item", name="apm_gearing", amount=2},
            },
            results = { 
                {type='item', name='apm_burner_long_inserter', amount=1},
            },
            main_product = 'apm_burner_long_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="burner-inserter", amount=1},
                {type="item", name="apm_steam_relay", amount=4},
                {type="item", name="apm_gearing", amount=3},
            },
            results = { 
                {type='item', name='apm_burner_long_inserter', amount=1},
            },
            main_product = 'apm_burner_long_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    --[[
    {
        type = "recipe",
        name = "apm_steam_inserter",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="burner-inserter", amount=1},
                {type="item", name="pipe", amount=4},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_inserter', amount=1},
            },
            main_product = 'apm_steam_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="burner-inserter", amount=1},
                {type="item", name="pipe", amount=4},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_inserter', amount=1},
            },
            main_product = 'apm_steam_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_steam_filter_inserter",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_burner_filter_inserter", amount=1},
                {type="item", name="pipe", amount=4},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_filter_inserter', amount=1},
            },
            main_product = 'apm_steam_filter_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_burner_filter_inserter", amount=1},
                {type="item", name="pipe", amount=4},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_filter_inserter', amount=1},
            },
            main_product = 'apm_steam_filter_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_steam_long_inserter",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_burner_long_inserter", amount=1},
                {type="item", name="pipe", amount=4},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_long_inserter', amount=1},
            },
            main_product = 'apm_steam_long_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_burner_long_inserter", amount=1},
                {type="item", name="pipe", amount=4},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_long_inserter', amount=1},
            },
            main_product = 'apm_steam_long_inserter',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    ]]--
    {
        type = "recipe",
        name = "apm_assembling_machine_0",
        normal = {
            enabled = true,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=3},
                {type="item", name="apm_gearing", amount=3},
                {type="item", name="stone-brick", amount=5},
             },
            results = { 
                {type='item', name='apm_assembling_machine_0', amount=1},
            },
            main_product = 'apm_assembling_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = true,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=3},
                {type="item", name="stone-brick", amount=15},
            },
            results = { 
                {type='item', name='apm_assembling_machine_0', amount=1},
            },
            main_product = 'apm_assembling_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_assembling_machine_1",
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_assembling_machine_0", amount=1},
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=3},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_assembling_machine_1', amount=1},
            },
            main_product = 'apm_assembling_machine_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_assembling_machine_0", amount=1},
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="apm_gearing", amount=3},
                {type="item", name="steel-plate", amount=5},
            },
            results = { 
                {type='item', name='apm_assembling_machine_1', amount=1},
            },
            main_product = 'apm_assembling_machine_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_crusher_machine_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=2},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_crusher_machine_0', amount=1},
            },
            main_product = 'apm_crusher_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_crusher_machine_0', amount=1},
            },
            main_product = 'apm_crusher_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_crusher_machine_1",
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_crusher_machine_0", amount=1},
                {type="item", name="apm_steam_relay", amount=2},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="steel-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_crusher_machine_1', amount=1},
            },
            main_product = 'apm_crusher_machine_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_crusher_machine_0", amount=1},
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="steel-plate", amount=5},
            },
            results = { 
                {type='item', name='apm_crusher_machine_1', amount=1},
            },
            main_product = 'apm_crusher_machine_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_crusher_machine_2",
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_crusher_machine_1", amount=1},
                {type="item", name="electric-engine-unit", amount=5},
                {type="item", name="electronic-circuit", amount=5},
                {type="item", name="steel-plate", amount=10},
            },
            results = { 
                {type='item', name='apm_crusher_machine_2', amount=1},
            },
            main_product = 'apm_crusher_machine_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_crusher_machine_1", amount=1},
                {type="item", name="electric-engine-unit", amount=8},
                {type="item", name="electronic-circuit", amount=8},
                {type="item", name="steel-plate", amount=20},
            },
            results = { 
                {type='item', name='apm_crusher_machine_2', amount=1},
            },
            main_product = 'apm_crusher_machine_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_press_machine_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=3},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_press_machine_0', amount=1},
            },
            main_product = 'apm_press_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_press_machine_0', amount=1},
            },
            main_product = 'apm_press_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_press_machine_1",
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_press_machine_0", amount=1},
                {type="item", name="apm_steam_relay", amount=3},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="steel-plate", amount=3},
            },
            results = { 
                {type='item', name='apm_press_machine_1', amount=1},
            },
            main_product = 'apm_press_machine_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_press_machine_0", amount=1},
                {type="item", name="apm_steam_relay", amount=6},
                {type="item", name="apm_gearing", amount=2},
                {type="item", name="steel-plate", amount=5},
            },
            results = { 
                {type='item', name='apm_press_machine_1', amount=1},
            },
            main_product = 'apm_press_machine_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_press_machine_2",
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_press_machine_1", amount=1},
                {type="item", name="electric-engine-unit", amount=5},
                {type="item", name="electronic-circuit", amount=5},
                {type="item", name="steel-plate", amount=15},
            },
            results = { 
                {type='item', name='apm_press_machine_2', amount=1},
            },
            main_product = 'apm_press_machine_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_press_machine_1", amount=1},
                {type="item", name="electric-engine-unit", amount=6},
                {type="item", name="electronic-circuit", amount=8},
                {type="item", name="steel-plate", amount=25},
            },
            results = { 
                {type='item', name='apm_press_machine_2', amount=1},
            },
            main_product = 'apm_press_machine_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coking_plant_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=3},
                {type="item", name="iron-plate", amount=8},
                {type="item", name="copper-plate", amount=4},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_coking_plant_0', amount=1},
            },
            main_product = 'apm_coking_plant_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="iron-plate", amount=14},
                {type="item", name="copper-plate", amount=6},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_coking_plant_0', amount=1},
            },
            main_product = 'apm_coking_plant_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coking_plant_1",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_coking_plant_0", amount=1},
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="copper-plate", amount=5},
                {type="item", name="steel-plate", amount=10},
            },
            results = { 
                {type='item', name='apm_coking_plant_1', amount=1},
            },
            main_product = 'apm_coking_plant_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_coking_plant_0", amount=1},
                {type="item", name="apm_steam_relay", amount=8},
                {type="item", name="copper-plate", amount=20},
                {type="item", name="steel-plate", amount=15},
            },
            results = { 
                {type='item', name='apm_coking_plant_1', amount=1},
            },
            main_product = 'apm_coking_plant_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coking_plant_2",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_coking_plant_1", amount=1},
                {type="item", name="pipe", amount=25},
                {type="item", name="copper-plate", amount=25},
                {type="item", name="steel-plate", amount=25},
            },
            results = { 
                {type='item', name='apm_coking_plant_2', amount=1},
            },
            main_product = 'apm_coking_plant_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_coking_plant_1", amount=1},
                {type="item", name="pipe", amount=50},
                {type="item", name="copper-plate", amount=60},
                {type="item", name="steel-plate", amount=30},
            },
            results = { 
                {type='item', name='apm_coking_plant_2', amount=1},
            },
            main_product = 'apm_coking_plant_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_lab_0",
        normal = {
            enabled = true,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=4},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_lab_0', amount=1},
            },
            main_product = 'apm_lab_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = true,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="apm_gearing", amount=5},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_lab_0', amount=1},
            },
            main_product = 'apm_lab_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_lab_1",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_lab_0", amount=1},
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="apm_gearing", amount=5},
                {type="item", name="steel-plate", amount=5},
            },
            results = { 
                {type='item', name='apm_lab_1', amount=1},
            },
            main_product = 'apm_lab_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_lab_0", amount=1},
                {type="item", name="apm_steam_relay", amount=20},
                {type="item", name="apm_gearing", amount=8},
                {type="item", name="steel-plate", amount=15},
            },
            results = { 
                {type='item', name='apm_lab_1', amount=1},
            },
            main_product = 'apm_lab_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_puddling_furnace_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="iron-plate", amount=25},
                {type="item", name="copper-plate", amount=10},
                {type="item", name="stone-brick", amount=25},
            },
            results = { 
                {type='item', name='apm_puddling_furnace_0', amount=1},
            },
            main_product = 'apm_puddling_furnace_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=8},
                {type="item", name="iron-plate", amount=50},
                {type="item", name="copper-plate", amount=20},
                {type="item", name="stone-brick", amount=40},
            },
            results = { 
                {type='item', name='apm_puddling_furnace_0', amount=1},
            },
            main_product = 'apm_puddling_furnace_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_steelworks_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_puddling_furnace_0", amount=1},
                {type="item", name="electronic-circuit", amount=25},
                {type="item", name="copper-plate", amount=30},
                {type="item", name="steel-plate", amount=25},
            },
            results = { 
                {type='item', name='apm_steelworks_0', amount=1},
            },
            main_product = 'apm_steelworks_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_puddling_furnace_0", amount=1},
                {type="item", name="electronic-circuit", amount=35},
                {type="item", name="copper-plate", amount=60},
                {type="item", name="steel-plate", amount=35},
            },
            results = { 
                {type='item', name='apm_steelworks_0', amount=1},
            },
            main_product = 'apm_steelworks_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_greenhouse_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="copper-plate", amount=10},
                {type="item", name="iron-plate", amount=5},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_greenhouse_0', amount=1},
            },
            main_product = 'apm_greenhouse_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="copper-plate", amount=30},
                {type="item", name="iron-plate", amount=10},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_greenhouse_0', amount=1},
            },
            main_product = 'apm_greenhouse_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },

    --[[
    {
        type = "recipe",
        name = "apm_power_steam_nexus_0",
        normal = {
            enabled = true,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="iron-plate", amount=10},
                {type="item", name="stone-brick", amount=10},
                {type="item", name="stone-furnace", amount=3},
            },
            results = { 
                {type='item', name='apm_power_steam_nexus_0', amount=1},
            },
            main_product = 'apm_power_steam_nexus_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = true,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="iron-plate", amount=10},
                {type="item", name="stone-brick", amount=10},
                {type="item", name="stone-furnace", amount=3},
            },
            results = { 
                {type='item', name='apm_power_steam_nexus_0', amount=1},
            },
            main_product = 'apm_power_steam_nexus_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    ]]--
    {
        type = "recipe",
        name = "apm_centrifuge_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="pipe", amount=10},
                {type="item", name="apm_gearing", amount=5},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_centrifuge_0', amount=1},
            },
            main_product = 'apm_centrifuge_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=8},
                {type="item", name="pipe", amount=20},
                {type="item", name="apm_gearing", amount=6},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_centrifuge_0', amount=1},
            },
            main_product = 'apm_centrifuge_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_centrifuge_1",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_centrifuge_0", amount=1},
                {type="item", name="apm_steam_relay", amount=5},
                {type="item", name="apm_gearing", amount=10},
                {type="item", name="steel-plate", amount=5},
            },
            results = { 
                {type='item', name='apm_centrifuge_1', amount=1},
            },
            main_product = 'apm_centrifuge_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_centrifuge_0", amount=1},
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="apm_gearing", amount=12},
                {type="item", name="steel-plate", amount=10},
            },
            results = { 
                {type='item', name='apm_centrifuge_1', amount=1},
            },
            main_product = 'apm_centrifuge_1',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_centrifuge_2",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_centrifuge_1", amount=1},
                {type="item", name="electric-engine-unit", amount=10},
                {type="item", name="electronic-circuit", amount=5},
                {type="item", name="steel-plate", amount=5},
            },
            results = { 
                {type='item', name='apm_centrifuge_2', amount=1},
            },
            main_product = 'apm_centrifuge_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_centrifuge_1", amount=1},
                {type="item", name="electric-engine-unit", amount=15},
                {type="item", name="electronic-circuit", amount=8},
                {type="item", name="steel-plate", amount=15},
            },
            results = { 
                {type='item', name='apm_centrifuge_2', amount=1},
            },
            main_product = 'apm_centrifuge_2',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_air_cleaner_machine_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="apm_gearing", amount=10},
                {type="item", name="steel-plate", amount=10},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_air_cleaner_machine_0', amount=1},
            },
            main_product = 'apm_air_cleaner_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=15},
                {type="item", name="apm_gearing", amount=12},
                {type="item", name="steel-plate", amount=12},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_air_cleaner_machine_0', amount=1},
            },
            main_product = 'apm_air_cleaner_machine_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_sieve_0",
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=10},
                {type="item", name="apm_gearing", amount=5},
                {type="item", name="iron-stick", amount=30},
                {type="item", name="stone-brick", amount=10},
            },
            results = { 
                {type='item', name='apm_sieve_0', amount=1},
            },
            main_product = 'apm_sieve_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=20},
                {type="item", name="apm_gearing", amount=6},
                {type="item", name="iron-stick", amount=40},
                {type="item", name="stone-brick", amount=20},
            },
            results = { 
                {type='item', name='apm_sieve_0', amount=1},
            },
            main_product = 'apm_sieve_0',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
})