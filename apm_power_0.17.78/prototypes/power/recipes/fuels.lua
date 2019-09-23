require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_coal_crushed_1",
        localised_description = {"", {"apm_info_burnt_result_0"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.chemical"}}},
        icons = {
            apm.power.icons.coal_crushed,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'aa_a',
        category = 'apm_crusher',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="coal", amount=2},
            },
            results = { 
                {type='item', name='apm_coal_crushed', amount=3},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="coal", amount=3},
            },
            results = { 
                {type='item', name='apm_coal_crushed', amount=4},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coal_crushed_2",
        localised_description = {"", {"apm_info_burnt_result_0"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.chemical"}}},
        icons = {
            apm.power.icons.coal_crushed,
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'aa_b',
        category = 'apm_crusher_with_fluid',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="coal", amount=2},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_crushed', amount=3},
                {type='item', name='apm_coal_crushed', amount_min=1, amount_max=1, probability=0.5},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=15, catalyst_amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="coal", amount=3},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_crushed', amount=4},
                {type='item', name='apm_coal_crushed', amount_min=1, amount_max=1, probability=0.5},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=15, catalyst_amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coal_crushed_3",
        localised_description = {"", {"apm_info_burnt_result_0"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.chemical"}}},
        icons = {
            apm.power.icons.coal_crushed,
            apm.lib.utils.icon.dynamics.t3
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'aa_c',
        category = 'apm_crusher_with_tool',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="coal", amount=2},
                {type="item", name="apm_crusher_drumms", amount=1},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_crushed', amount=4},
                {type='item', name='apm_crusher_drumms_used', amount=1, catalyst_amount=1},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=20, catalyst_amount=20},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="coal", amount=3},
                {type="item", name="apm_crusher_drumms", amount=1},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_crushed', amount=5},
                {type='item', name='apm_crusher_drumms_used', amount=1, catalyst_amount=1},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=20, catalyst_amount=20},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coal_briquette_pressed_1",
        localised_description = {"", {"apm_info_burnt_result_0"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.chemical"}}},
        icons = {
            apm.power.icons.coal_brick,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'ab_a',
        category = 'apm_press',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=4},
            },
            results = { 
                {type='item', name='apm_coal_briquette', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=4},
            },
            results = { 
                {type='item', name='apm_coal_briquette', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coal_briquette_pressed_2",
        localised_description = {"", {"apm_info_burnt_result_0"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.chemical"}}},
        icons = {
            apm.power.icons.coal_brick,
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'ab_b',
        category = 'apm_press_with_fluid',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=4},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_briquette', amount=1},
                {type='item', name='apm_coal_briquette', amount_min=1, amount_max=1, probability=0.5},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=15, catalyst_amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=4},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_briquette', amount=1},
                {type='item', name='apm_coal_briquette', amount_min=1, amount_max=1, probability=0.5},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=15, catalyst_amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coal_briquette_pressed_3",
        localised_description = {"", {"apm_info_burnt_result_0"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.chemical"}}},
        icons = {
            apm.power.icons.coal_brick,
            apm.lib.utils.icon.dynamics.t3
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'ab_c',
        category = 'apm_press_with_tool',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=4},
                {type="item", name="apm_press_plates", amount=1},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_briquette', amount=2},
                {type="item", name="apm_press_plates_used", amount=1, catalyst_amount=1},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=20, catalyst_amount=20},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=4},
                {type="item", name="apm_press_plates", amount=1},
                {type="fluid", name="water", amount=20},
            },
            results = { 
                {type='item', name='apm_coal_briquette', amount=2},
                {type="item", name="apm_press_plates_used", amount=1, catalyst_amount=1},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=20, catalyst_amount=20},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_coke_1",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.coke_chunk,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        category = 'apm_coking',
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'aa_a',
        normal = {
            enabled = false,
            energy_required = 3.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=2},
            },
            results = { 
                {type='item', name='apm_coke', amount=2},
                {type='item', name='apm_coal_ash', amount=3},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=2},
            },
            results = { 
                {type='item', name='apm_coke', amount=2},
                {type='item', name='apm_coal_ash', amount=3},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_coke_2",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.coke_chunk,
            apm.lib.utils.icon.dynamics.t2,
        },
        icon_size = 32,
        category = 'apm_coking',
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'aa_b',
        normal = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=2},
            },
            results = { 
                {type='item', name='apm_coke', amount=2},
                {type='item', name='apm_coke', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='apm_coal_ash', amount=2},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=2},
            },
            results = { 
                {type='item', name='apm_coke', amount=2},
                {type='item', name='apm_coke', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='apm_coal_ash', amount=2},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_coke_3",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.coke_chunk,
            apm.lib.utils.icon.dynamics.t3,
        },
        icon_size = 32,
        category = 'apm_coking_2',
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'aa_c',
        normal = {
            enabled = false,
            energy_required = 5.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=3},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_coke', amount=3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.45},
                {type='fluid', name='apm_creosote', amount=5},
                {type='item', name='apm_coal_ash', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 5.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=3},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_coke', amount=3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.45},
                {type='fluid', name='apm_creosote', amount=5},
                {type='item', name='apm_coal_ash', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_coke_4",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.coke_chunk,
            apm.lib.utils.icon.dynamics.t4,
        },
        icon_size = 32,
        category = 'apm_coking_3',
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'aa_d',
        normal = {
            enabled = false,
            energy_required = 6.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=3},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_coke', amount=4},
                --{type='item', name='apm_coke', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.5},
                {type='fluid', name='apm_creosote', amount=15},
                {type='fluid', name='apm_coke_oven_gas', amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 6.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=3},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_coke', amount=4},
                --{type='item', name='apm_coke', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.5},
                {type='fluid', name='apm_creosote', amount=15},
                {type='fluid', name='apm_coke_oven_gas', amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_coke_5",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.coke_chunk,
            apm.lib.utils.icon.dynamics.t5,
        },
        icon_size = 32,
        category = 'apm_coking_3',
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'aa_e',
        normal = {
            enabled = false,
            energy_required = 7.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=3},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_coke', amount=4},
                {type='item', name='apm_coke', amount_min=1, amount_max=1, probability=0.6},
                {type='item', name='sulfur', amount=1},
                {type='fluid', name='apm_creosote', amount=30},
                {type='fluid', name='apm_coke_oven_gas', amount=30},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 7.0,
            ingredients = {
                {type="item", name="apm_coal_briquette", amount=3},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_coke', amount=4},
                {type='item', name='apm_coke', amount_min=1, amount_max=1, probability=0.6},
                {type='item', name='sulfur', amount=1},
                {type='fluid', name='apm_creosote', amount=30},
                {type='fluid', name='apm_coke_oven_gas', amount=30},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coke_crushed",
        category = 'apm_crusher',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_coke", amount=2},
            },
            results = { 
                {type='item', name='apm_coke_crushed', amount=3},
            },
            main_product = 'apm_coke_crushed',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="apm_coke", amount=3},
            },
            results = { 
                {type='item', name='apm_coke_crushed', amount=4},
            },
            main_product = 'apm_coke_crushed',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coke_brick",
        category = 'apm_press',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_coke", amount=4},
            },
            results = { 
                {type='item', name='apm_coke_brick', amount=1},
            },
            main_product = 'apm_coke_brick',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_coke", amount=4},
            },
            results = { 
                {type='item', name='apm_coke_brick', amount=1},
            },
            main_product = 'apm_coke_brick',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_pellets_1",
        category = 'apm_crusher',
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ac_a',
        icons = {
            apm.power.icons.wood_crushed,
            apm.lib.utils.icon.dynamics.t1,
        },
        icon_size = 32,
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="wood", amount=2},
            },
            results = { 
                {type='item', name='apm_wood_pellets', amount=3},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="wood", amount=3},
            },
            results = { 
                {type='item', name='apm_wood_pellets', amount=4},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_pellets_2",
        category = 'apm_crusher_with_tool',
        icons = {
            apm.power.icons.wood_crushed,
            apm.lib.utils.icon.dynamics.t2,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ac_c',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="wood", amount=2},
                {type="item", name="apm_crusher_drumms", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_pellets', amount=4},
                {type='item', name='apm_wood_pellets', amount_min=1, amount_max=1, probability=0.5},
                {type="item", name="apm_crusher_drumms_used", amount=1, catalyst_amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="item", name="wood", amount=3},
                {type="item", name="apm_crusher_drumms", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_pellets', amount=4},
                {type='item', name='apm_wood_pellets', amount_min=1, amount_max=1, probability=0.5},
                {type="item", name="apm_crusher_drumms_used", amount=1, catalyst_amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_briquette_1",
        category = 'apm_press',
        icons = {
            apm.power.icons.wood_brick,
            apm.lib.utils.icon.dynamics.t1,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ad_a',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_wood_pellets", amount=4},
            },
            results = { 
                {type='item', name='apm_wood_briquette', amount=1},
            },
            main_product = 'apm_wood_briquette',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_wood_pellets", amount=4},
            },
            results = { 
                {type='item', name='apm_wood_briquette', amount=1},
            },
            main_product = 'apm_wood_briquette',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_briquette_2",
        category = 'apm_press_with_tool',
        icons = {
            apm.power.icons.wood_brick,
            apm.lib.utils.icon.dynamics.t2,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ad_b',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_wood_pellets", amount=4},
                {type="item", name="apm_press_plates", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_briquette', amount=2},
                {type="item", name="apm_press_plates_used", amount=1, catalyst_amount=1},
            },
            main_product = 'apm_wood_briquette',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_wood_pellets", amount=4},
                {type="item", name="apm_press_plates", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_briquette', amount=2},
                {type="item", name="apm_press_plates_used", amount=1, catalyst_amount=1},
            },
            main_product = 'apm_wood_briquette',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_charcoal_1",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.charcoal_chunk,
            apm.lib.utils.icon.dynamics.t1,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ae_a',
        category = 'apm_coking',
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=2},
                {type='item', name='apm_wood_ash', amount=3},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=2},
                {type='item', name='apm_wood_ash', amount=3},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_charcoal_2",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.charcoal_chunk,
            apm.lib.utils.icon.dynamics.t2,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ae_b',
        category = 'apm_coking_2',
        normal = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.25},
                {type='item', name='apm_wood_ash', amount=2},
                {type='fluid', name='apm_creosote', amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.25},
                {type='item', name='apm_wood_ash', amount=2},
                {type='fluid', name='apm_creosote', amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_charcoal_3",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.charcoal_chunk,
            apm.lib.utils.icon.dynamics.t3,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ae_c',
        category = 'apm_coking_3',
        normal = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=3},
                {type='item', name='apm_charcoal', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.35},
                {type='item', name='apm_wood_ash', amount=1},
                {type='fluid', name='apm_creosote', amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=3},
                {type='item', name='apm_charcoal', amount_min=1, amount_max=1, probability=0.3},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.35},
                {type='item', name='apm_wood_ash', amount=1},
                {type='fluid', name='apm_creosote', amount=15},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_pyrolysis_charcoal_4",
        localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name.apm_refined_chemical"}}},
        icons = {
            apm.power.icons.charcoal_chunk,
            apm.lib.utils.icon.dynamics.t4,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ae_d',
        category = 'apm_coking_3',
        normal = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=3},
                {type='item', name='apm_charcoal', amount_min=1, amount_max=1, probability=0.6},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.45},
                {type='fluid', name='apm_creosote', amount=20},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
                {type="item", name="apm_wood_briquette", amount=2},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='apm_charcoal', amount=3},
                {type='item', name='apm_charcoal', amount_min=1, amount_max=1, probability=0.6},
                {type='item', name='sulfur', amount_min=1, amount_max=1, probability=0.45},
                {type='fluid', name='apm_creosote', amount=20},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_charcoal_brick",
        category = 'apm_press',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_charcoal", amount=4},
            },
            results = { 
                {type='item', name='apm_charcoal_brick', amount=1},
            },
            main_product = 'apm_charcoal_brick',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_charcoal", amount=4},
            },
            results = { 
                {type='item', name='apm_charcoal_brick', amount=1},
            },
            main_product = 'apm_charcoal_brick',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})