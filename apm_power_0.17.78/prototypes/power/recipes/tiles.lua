require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_asphalt_1",
        category = "crafting-with-fluid",
        icons = {
            apm.power.icons.asphalt,
            apm.lib.utils.icon.dynamics.t1,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_ash",
        order = 'bb_a',
        normal = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
                {type="item", name="apm_coal_ash", amount=30},
                {type="fluid", name="apm_creosote", amount=25},
            },
            results = { 
                {type='item', name='apm_asphalt', amount=2},
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
                {type="item", name="apm_coal_ash", amount=30},
                {type="fluid", name="apm_creosote", amount=25},
            },
            results = { 
                {type='item', name='apm_asphalt', amount=2},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_asphalt_2",
        category = "crafting-with-fluid",
        icons = {
            apm.power.icons.asphalt,
            apm.lib.utils.icon.dynamics.t2,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_ash",
        order = 'bb_b',
        normal = {
            enabled = false,
            energy_required = 4.5,
            ingredients = {
                {type="item", name="stone", amount=15},
                {type="fluid", name="apm_creosote", amount=25},
            },
            results = { 
                {type='item', name='apm_asphalt', amount=2},
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
                {type="item", name="stone", amount=20},
                {type="fluid", name="apm_creosote", amount=25},
            },
            results = { 
                {type='item', name='apm_asphalt', amount=2},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})