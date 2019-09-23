require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_treated_wood_planks_1",
        icons = {
            apm.power.icons.treated_wood_planks,
            apm.lib.utils.icon.dynamics.t1,
        },
        icon_size = 32,
        category = 'crafting-with-fluid',
        group = "apm_power",
        subgroup = "apm_power_intermediates",
        order = 'ag_a',
        normal = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
            	{type="fluid", name="apm_creosote", amount=50},
                {type="item", name="wood", amount=5},
            },
            results = { 
                {type='item', name='apm_treated_wood_planks', amount=10},
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
                {type="fluid", name="apm_creosote", amount=50},
                {type="item", name="wood", amount=8},
            },
            results = { 
                {type='item', name='apm_treated_wood_planks', amount=10},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_treated_wood_planks_2",
        icons = {
            apm.power.icons.treated_wood_planks,
            apm.lib.utils.icon.dynamics.t2,
        },
        icon_size = 32,
        category = 'crafting-with-fluid',
        group = "apm_power",
        subgroup = "apm_power_intermediates",
        order = 'ag_b',
        normal = {
            enabled = false,
            energy_required = 4.0,
            ingredients = {
                {type="fluid", name="heavy-oil", amount=50},
                {type="item", name="wood", amount=5},
            },
            results = { 
                {type='item', name='apm_treated_wood_planks', amount=10},
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
                {type="fluid", name="heavy-oil", amount=50},
                {type="item", name="wood", amount=8},
            },
            results = { 
                {type='item', name='apm_treated_wood_planks', amount=10},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_refining_creosote_1",
        icons = {
            apm.lib.utils.icon.dynamics.empty_32,
            apm.lib.utils.icon.mod(apm.power.icons.basic_oil_processing, 0.75, {4, 0}),
            apm.power.icons.tar_small_left,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        category = 'oil-processing',
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ba_a',
        normal = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
            	{type="fluid", name="apm_creosote", amount=100},
                {type="fluid", name="steam", amount=50},
            },
            results = { 
                {type='fluid', name='heavy-oil', amount=20},
                {type="fluid", name="light-oil", amount=15},
                {type="fluid", name="petroleum-gas", amount=10} 
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 5.5,
            ingredients = {
                {type="fluid", name="apm_creosote", amount=100},
                {type="fluid", name="steam", amount=50},
            },
            results = { 
                {type='fluid', name='heavy-oil', amount=15},
                {type="fluid", name="light-oil", amount=10},
                {type="fluid", name="petroleum-gas", amount=5} 
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_refining_coke_oven_gas_1",
        icons = {
            apm.lib.utils.icon.dynamics.empty_32,
            apm.lib.utils.icon.mod(apm.power.icons.basic_oil_processing, 0.7, {8, 0}),
            --apm.lib.utils.icon.generate.chemical(nil, {r=0.2, g=0.2, b=0.2}, nil, {icon='__apm_resource_pack__/graphics/icons/apm_coke_oven_gas.png', icon_size=64}, 0.3, {-7,0})
            {icon = apm.lib.utils.icon.path.chemical_flame_1, icon_size=64, scale=0.3, shift={-7,0}},
            {icon = apm.lib.utils.icon.path.chemical_flame_2, icon_size=64, tint={r=0.2, g=0.2, b=0.2}, scale=0.3, shift={-7,0}},
            {icon = apm.lib.utils.icon.path.chemical_flame_3, icon_size=64, scale=0.3, shift={-7,0}},
            {icon='__apm_resource_pack__/graphics/icons/apm_coke_oven_gas.png', icon_size=64, scale=0.3, shift={-7,0}},
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        category = 'chemistry',
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ba_b',
        normal = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
                {type="fluid", name="apm_coke_oven_gas", amount=100},
            },
            results = { 
                {type="fluid", name="petroleum-gas", amount=10} 
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
                {type="fluid", name="apm_coke_oven_gas", amount=100},
            },
            results = { 
                {type="fluid", name="petroleum-gas", amount=8} 
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})