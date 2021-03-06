require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_press_plates",
        normal = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="steel-plate", amount=3},
            },
            results = { 
                {type='item', name='apm_press_plates', amount=1},
            },
            main_product = 'apm_press_plates',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="steel-plate", amount=4},
            },
            results = { 
                {type='item', name='apm_press_plates', amount=1},
            },
            main_product = 'apm_press_plates',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_press_plates_used_grind",
        category = "crafting-with-fluid",
        icons = {
                    apm.power.icons.press_plates_used,
                    apm.lib.utils.icon.dynamics.recycling,
                },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ad_b',
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="fluid", name="water", amount=30},
                {type="item", name="apm_press_plates_used", amount=5},
                {type="item", name="stone-brick", amount=1},
            },
            results = { 
                {type="item", name="apm_press_plates", amount=4, catalyst_amount=4},
                {type="item", name="apm_press_plates", amount_min=1, amount_max=1, probability=0.95, catalyst_amount=1},
                {type="fluid", name="apm_dirt_water", amount=30, catalyst_amount=30},
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
            energy_required = 3,
            ingredients = {
                {type="fluid", name="water", amount=30},
                {type="item", name="apm_press_plates_used", amount=5},
                {type="item", name="stone-brick", amount=1},
            },
            results = { 
                {type="item", name="apm_press_plates", amount=4, catalyst_amount=4},
                {type="item", name="apm_press_plates", amount_min=1, amount_max=1, probability=0.90, catalyst_amount=1},
                {type="fluid", name="apm_dirt_water", amount=30, catalyst_amount=30},
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