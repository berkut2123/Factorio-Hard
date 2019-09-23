require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_seawater_centrifuging",
        category = "apm_centrifuge_0",
        icons = apm.lib.utils.icon.generate.fluid({r=0.216, g=0.566, b=0.819}, {r=0.326, g=0.209, b=0.111}, apm.lib.utils.icon.dynamics.recycling),
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ad_a',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="fluid", name="apm_sea_water", amount=200},
            },
            results = { 
                {type="item", name="apm_wet_mud", amount_min=1, amount_max=1, probability=0.5},
                {type="fluid", name="water", amount=195},
                {type="item", name="raw-fish", amount_min=1, amount_max=1, probability=0.0001},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="fluid", name="apm_sea_water", amount=200},
            },
            results = { 
                {type="item", name="apm_wet_mud", amount_min=1, amount_max=1, probability=0.5},
                {type="fluid", name="water", amount=195},
                {type="item", name="raw-fish", amount_min=1, amount_max=1, probability=0.0001},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_dirty_water_purification",
        category = "apm_centrifuge_0",
        icons = apm.lib.utils.icon.generate.fluid({r=0.399, g=0.246, b=0.155}, {r=0.419, g=0.266, b=0.175}, apm.lib.utils.icon.dynamics.recycling),
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ad_b',
        normal = {
            enabled = false,
            energy_required = 6.5,
            ingredients = {
                {type="fluid", name="apm_dirt_water", amount=100},
            },
            results = { 
                {type="fluid", name="water", amount=80},
                {type="item", name="apm_coal_ash", amount=2},
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
            energy_required = 6.5,
            ingredients = {
                {type="fluid", name="apm_dirt_water", amount=100},
            },
            results = { 
                {type="fluid", name="water", amount=80},
                {type="item", name="apm_coal_ash", amount=1},
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
        name = "apm_coal_saturated_wastewater_seperation",
        category = "apm_centrifuge_0",
        icons = apm.lib.utils.icon.generate.fluid({r=0.192, g=0.216, b=0.254}, {r=0.222, g=0.236, b=0.274}, apm.lib.utils.icon.dynamics.recycling),
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ad_c',
        normal = {
            enabled = false,
            energy_required = 6.5,
            ingredients = {
                {type="fluid", name="apm_coal_saturated_wastewater", amount=100},
            },
            results = { 
                {type="fluid", name="water", amount=80},
                {type="item", name="coal", amount=2},
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
            energy_required = 6.5,
            ingredients = {
                {type="fluid", name="apm_coal_saturated_wastewater", amount=100},
            },
            results = { 
                {type="fluid", name="water", amount=90},
                {type="item", name="coal", amount=1},
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