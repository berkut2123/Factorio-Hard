require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_stone_brick",
        category = 'apm_coking',
        icons = {
            apm.power.icons.stone_brick,
            apm.lib.utils.icon.mod(apm.power.icons.coal_ash, 0.5, {-8, -8})
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_ash",
        order = 'ba_a',
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="stone", amount=4},
                {type="item", name="apm_coal_ash", amount=10},
            },
            results = { 
                {type='item', name='stone-brick', amount=3},
            },
            main_product = 'stone-brick',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="stone", amount=5},
                {type="item", name="apm_coal_ash", amount=10},
            },
            results = { 
                {type='item', name='stone-brick', amount=3},
            },
            main_product = 'stone-brick',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_landfill",
        category = 'advanced-crafting',
        icons = {
            apm.power.icons.landfill,
            apm.lib.utils.icon.mod(apm.power.icons.wood_ash, 0.5, {-8, -8})
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_ash",
        order = 'bc_a',
        normal = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="stone", amount=15},
                {type="item", name="apm_wood_ash", amount=20},
            },
            results = { 
                {type='item', name='landfill', amount=2},
            },
            main_product = 'landfill',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="stone", amount=25},
                {type="item", name="apm_wood_ash", amount=20},
            },
            results = { 
                {type='item', name='landfill', amount=2},
            },
            main_product = 'landfill',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
    {
        type = "recipe",
        name = "apm_coal_ash_washing",
        category = 'apm_centrifuge_1',
        icons = {
            apm.power.icons.uranium_ore,
            apm.lib.utils.icon.mod(apm.power.icons.coal_ash, 0.5, {-8, -8})
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_ash",
        order = 'bd_a',
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="apm_coal_ash", amount=100},
                {type="fluid", name="sulfuric-acid", amount=50},
            },
            results = { 
                {type='item', name='uranium-ore', amount_min=1, amount_max=1, probability=0.02},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=50},
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
            energy_required = 15,
            ingredients = {
                {type="item", name="apm_coal_ash", amount=100},
                {type="fluid", name="sulfuric-acid", amount=50},
            },
            results = { 
                {type='item', name='uranium-ore', amount_min=1, amount_max=1, probability=0.02},
                {type="fluid", name="apm_coal_saturated_wastewater", amount=50},
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
        name = "apm_coal_ash_production",
        category = 'apm_coking',
        icons = {
            apm.power.icons.coal_ash,
            apm.lib.utils.icon.mod(apm.power.icons.coal, 0.4, {0, 0}),
            apm.lib.utils.icon.dynamics.smelting
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'ba_a',
        emissions_multiplier = 2.0,
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=3},
            },
            results = { 
                {type='item', name='apm_coal_ash', amount=6},
            },
            main_product = 'apm_coal_ash',
            requester_paste_multiplier = 4,
            emissions_multiplier = 2.0,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_coal_crushed", amount=3},
            },
            results = { 
                {type='item', name='apm_coal_ash', amount=6},
            },
            main_product = 'apm_coal_ash',
            requester_paste_multiplier = 4,
            emissions_multiplier = 2.0,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_ash_production",
        category = 'apm_coking',
        icons = {
            apm.power.icons.wood_ash,
            apm.lib.utils.icon.mod(apm.power.icons.wood, 0.5, {0, 0}),
            apm.lib.utils.icon.dynamics.smelting
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ba_a',
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_wood_pellets", amount=3},
            },
            results = { 
                {type='item', name='apm_wood_ash', amount=6},
            },
            main_product = 'apm_wood_ash',
            requester_paste_multiplier = 4,
            emissions_multiplier = 2.0,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_wood_pellets", amount=3},
            },
            results = { 
                {type='item', name='apm_wood_ash', amount=6},
            },
            main_product = 'apm_wood_ash',
            requester_paste_multiplier = 4,
            emissions_multiplier = 2.0,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})