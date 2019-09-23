require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_electric_car",
        normal = {
            enabled = false,
            energy_required = 0.5,
            ingredients = {
                {type="item", name="car", amount=1},
                {type="item", name="electric-engine-unit", amount=4},
                {type="item", name="electronic-circuit", amount=20},
            },
            results = { 
                {type='item', name='apm_electric_car', amount=1},
            },
            main_product = 'apm_electric_car',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 0.5,
            ingredients = {
                {type="item", name="car", amount=1},
                {type="item", name="electric-engine-unit", amount=4},
                {type="item", name="electronic-circuit", amount=20},
            },
            results = { 
                {type='item', name='apm_electric_car', amount=1},
            },
            main_product = 'apm_electric_car',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_battery_charging_station",
        normal = {
            enabled = false,
            energy_required = 0.5,
            ingredients = {
                {type="item", name="assembling-machine-2", amount=1},
                {type="item", name="copper-cable", amount=20},
                {type="item", name="steel-plate", amount=10},
                {type="item", name="electronic-circuit", amount=20},
            },
            results = { 
                {type='item', name='apm_battery_charging_station', amount=1},
            },
            main_product = 'apm_battery_charging_station',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 0.5,
            ingredients = {
                {type="item", name="assembling-machine-2", amount=1},
                {type="item", name="copper-cable", amount=20},
                {type="item", name="steel-plate", amount=10},
                {type="item", name="electronic-circuit", amount=20},
            },
            results = { 
                {type='item', name='apm_battery_charging_station', amount=1},
            },
            main_product = 'apm_battery_charging_station',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
})