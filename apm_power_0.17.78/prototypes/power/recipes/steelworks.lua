require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_steel_1",
        icons = {
            {icon='__base__/graphics/icons/steel-plate.png'},
            apm.lib.utils.icon.dynamics.t2,
            apm.lib.utils.icon.dynamics.smelting
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = 'apm_power_smelting',
        order = 'ab_b',
        category = 'apm_steelworks',
        normal = {
            enabled = false,
            energy_required = 35,
            ingredients = {
                {type="item", name="apm_stone_crucibel", amount=4},
                {type="item", name="apm_coke_crushed", amount=10},
                {type="item", name="iron-ore", amount=23},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='steel-plate', amount=4},
                {type="fluid", name="steam", amount=200, temperature=120},
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
                {type="item", name="apm_coke_crushed", amount=15},
                {type="item", name="iron-ore", amount=46},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='steel-plate', amount=4},
                {type="fluid", name="steam", amount=200, temperature=120},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})