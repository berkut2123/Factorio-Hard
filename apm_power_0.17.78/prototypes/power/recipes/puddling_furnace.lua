require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_steel_0",
        icons = {
            {icon='__base__/graphics/icons/steel-plate.png'},
            apm.lib.utils.icon.dynamics.t1,
            apm.lib.utils.icon.dynamics.smelting
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = 'apm_power_smelting',
        order = 'ab_a',
        category = 'apm_puddling_furnace',
        normal = {
            enabled = false,
            energy_required = 35,
            ingredients = {
                {type="item", name="apm_stone_crucibel", amount=4},
                {type="item", name="apm_coke_crushed", amount=12},
                {type="item", name="iron-ore", amount=25},
            },
            results = { 
                {type='item', name='steel-plate', amount=4},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 70,
            ingredients = {
                {type="item", name="apm_stone_crucibel", amount=4},
                {type="item", name="apm_coke_crushed", amount=20},
                {type="item", name="iron-ore", amount=50},
            },
            results = { 
                {type='item', name='steel-plate', amount=4},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})