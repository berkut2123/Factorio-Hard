require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_battery_charging_vanilla",
        icons = {
            {icon='__base__/graphics/icons/battery.png'},
            apm.energy_addon.icons.depleted_battery_1,
            apm.lib.utils.icon.dynamics.recycling
        },
        icon_size = 32,
        subgroup = "raw-material",
        order = "h[battery-discharged]",
        category = 'apm_electric_charging',
        normal = {
            enabled = false,
            energy_required = 15.0,
            ingredients = {
                {type="item", name="apm_discharged_battery_vanilla", amount=3},
            },
            results = { 
                {type='item', name='battery', amount=2},
                {type='item', name='battery', amount_min=1, amount_max=1, probability=0.95},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
            allow_as_intermediate = false,
            allow_intermediates = false,
        },
        expensive = {
            enabled = false,
            energy_required = 5.0,
            ingredients = {
                {type="item", name="apm_discharged_battery_vanilla", amount=10},
            },
            results = { 
                {type='item', name='battery', amount=9},
                {type='item', name='battery', amount_min=1, amount_max=1, probability=0.5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
            allow_as_intermediate = false,
            allow_intermediates = false,
        }
    },
})