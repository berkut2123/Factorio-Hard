require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_filter_charcoal",
        normal = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="steel-plate", amount=1},
                {type="item", name="apm_charcoal_brick", amount=1},
            },
            results = { 
                {type='item', name='apm_filter_charcoal', amount=3},
            },
            main_product = 'apm_filter_charcoal',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="steel-plate", amount=2},
                {type="item", name="apm_charcoal_brick", amount=1},
            },
            results = { 
                {type='item', name='apm_filter_charcoal', amount=3},
            },
            main_product = 'apm_filter_charcoal',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_filter_charcoal_used_recycling",
        category = "crafting-with-fluid",
        icons = {
                    apm.power.icons.filter_charcoal_used,
                    apm.lib.utils.icon.dynamics.recycling,
                },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ab_b',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="fluid", name="water", amount=30},
                {type="item", name="apm_filter_charcoal_used", amount=3},
                {type="item", name="apm_charcoal_brick", amount=1},
            },
            results = { 
                {type="item", name="apm_filter_charcoal", amount=2, catalyst_amount=2},
                {type="item", name="apm_filter_charcoal", amount_min=1, amount_max=1, probability=0.95, catalyst_amount=1},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=30, catalyst_amount=30},
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
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="water", amount=30},
                {type="item", name="apm_filter_charcoal_used", amount=5},
                {type="item", name="apm_charcoal_brick", amount=2},
            },
            results = { 
                {type="item", name="apm_filter_charcoal", amount=4, catalyst_amount=4},
                {type="item", name="apm_filter_charcoal", amount_min=1, amount_max=1, probability=0.90, catalyst_amount=1},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=30, catalyst_amount=30},
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
    {
        type = "recipe",
        name = "apm_air_cleaning_1",
        category = "apm_air_cleaner",
        icons = {
                    apm.lib.utils.icon.dynamics.air,
                    apm.lib.utils.icon.dynamics.t1,
                },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ca_a',
        normal = {
            enabled = false,
            energy_required = 25,
            ingredients = {
                {type="item", name="apm_filter_charcoal", amount=1},
            },
            results = { 
                {type="item", name="apm_filter_charcoal_used", amount=1, catalyst_amount=1},
                {type="fluid", name="apm_dirt_water", amount=25},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="apm_filter_charcoal", amount=1},
            },
            results = { 
                {type="item", name="apm_filter_charcoal_used", amount=1, catalyst_amount=1},
                {type="fluid", name="apm_dirt_water", amount=25},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_air_cleaning_2",
        category = "apm_air_cleaner",
        icons = {
                    apm.lib.utils.icon.dynamics.air,
                    apm.lib.utils.icon.dynamics.t2,
                },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ca_b',
        normal = {
            enabled = false,
            energy_required = 25,
            ingredients = {
                {type="item", name="apm_filter_charcoal", amount=1},
                {type="fluid", name="sulfuric-acid", amount=30},
            },
            results = { 
                {type="item", name="apm_filter_charcoal_used", amount=1, catalyst_amount=1},
                {type="item", name="apm_ammonium_sulfate", amount=15},
                {type="fluid", name="apm_dirt_water", amount=25},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="apm_filter_charcoal", amount=1},
                {type="fluid", name="sulfuric-acid", amount=30},
            },
            results = { 
                {type="item", name="apm_filter_charcoal_used", amount=1, catalyst_amount=1},
                {type="item", name="apm_ammonium_sulfate", amount=10},
                {type="fluid", name="apm_dirt_water", amount=25},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})