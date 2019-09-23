require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_tree_seeds",
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="wood", amount=4},
            },
            results = { 
                {type='item', name='apm_tree_seeds', amount=1},
            },
            main_product = 'apm_tree_seeds',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="wood", amount=5},
            },
            results = { 
                {type='item', name='apm_tree_seeds', amount=1},
            },
            main_product = 'apm_tree_seeds',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_fertiliser_1",
        category = 'advanced-crafting',
        icons = {
            apm.power.icons.fertiliser_1,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'ac_a',
        normal = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="sulfur", amount=1},
                {type="item", name="apm_wood_pellets", amount=2},
                {type="item", name="apm_wet_mud", amount=10},
                {type="item", name="apm_wood_ash", amount=10}
            },
            results = { 
                {type='item', name='apm_fertiliser_1', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="sulfur", amount=1},
                {type="item", name="apm_wood_pellets", amount=2},
                {type="item", name="apm_wet_mud", amount=10},
                {type="item", name="apm_wood_ash", amount=10}
            },
            results = { 
                {type='item', name='apm_fertiliser_1', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_fertiliser_2",
        category = 'advanced-crafting',
        icons = {
            apm.power.icons.fertiliser_2,
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'ac_b',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type='item', name='apm_fertiliser_1', amount=1},
                {type='item', name='apm_ammonium_sulfate', amount=5},
            },
            results = { 
                {type='item', name='apm_fertiliser_2', amount=1},
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
                {type='item', name='apm_fertiliser_1', amount=1},
                {type='item', name='apm_ammonium_sulfate', amount=7},
            },
            results = { 
                {type='item', name='apm_fertiliser_2', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_1",
        icons = {
            apm.power.icons.wood,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        category = 'apm_greenhouse',
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'aa_b',
        normal = {
            enabled = false,
            energy_required = 275,
            ingredients = {
                {type="item", name="apm_tree_seeds", amount=4},
                {type="item", name="apm_fertiliser_1", amount=4},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='wood', amount=55},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
        },
        expensive = {
            enabled = false,
            energy_required = 275,
            ingredients = {
                {type="item", name="apm_tree_seeds", amount=4},
                {type="item", name="apm_fertiliser_1", amount=4},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='wood', amount=55},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_2",
        icons = {
            apm.power.icons.wood,
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        category = 'apm_greenhouse',
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'aa_c',
        normal = {
            enabled = false,
            energy_required = 175,
            ingredients = {
                {type="item", name="apm_tree_seeds", amount=4},
                {type="item", name="apm_fertiliser_2", amount=4},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='wood', amount=55},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
        },
        expensive = {
            enabled = false,
            energy_required = 175,
            ingredients = {
                {type="item", name="apm_tree_seeds", amount=4},
                {type="item", name="apm_fertiliser_2", amount=4},
                {type="fluid", name="water", amount=100},
            },
            results = { 
                {type='item', name='wood', amount=55},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
        }
    },
})