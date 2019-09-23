require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_raw_crucibel_0",
        icons = {
            apm.power.icons.crucibel_raw,
            apm.lib.utils.icon.mod(apm.power.icons.stone_brick, 0.5, {-8, 8}),
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = 'apm_power_smelting',
        order = 'aa_a',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="stone-brick", amount=2},
            },
            results = { 
                {type='item', name='apm_stone_crucibel_raw', amount=1},
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
                {type="item", name="stone-brick", amount=3},
            },
            results = { 
                {type='item', name='apm_stone_crucibel_raw', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_raw_crucibel_1",
        icons = {
            apm.power.icons.crucibel_raw,
            apm.lib.utils.icon.mod(apm.power.icons.mud_wet, 0.5, {-8, 8}),
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = 'apm_power_smelting',
        order = 'aa_b',
        normal = {
            enabled = false,
            energy_required = 2.0,
            ingredients = {
                {type="item", name="apm_wet_mud", amount=5},
            },
            results = { 
                {type='item', name='apm_stone_crucibel_raw', amount=1},
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
                {type="item", name="apm_wet_mud", amount=10},
            },
            results = { 
                {type='item', name='apm_stone_crucibel_raw', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_stone_crucibel",
        category = "smelting",
        icons = {
            apm.power.icons.crucibel,
            apm.lib.utils.icon.dynamics.smelting
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = 'apm_power_smelting',
        order = 'aa_c',
        normal = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="apm_stone_crucibel_raw", amount=1},
            },
            results = { 
                {type='item', name='apm_stone_crucibel', amount=1},
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
                {type="item", name="apm_stone_crucibel_raw", amount=1},
            },
            results = { 
                {type='item', name='apm_stone_crucibel', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})