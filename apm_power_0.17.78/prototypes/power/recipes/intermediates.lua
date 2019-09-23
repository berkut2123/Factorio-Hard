require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_electromagnet",
        category = 'advanced-crafting',
        normal = {
            enabled = false,
            energy_required = 1.25,
            ingredients = {
                {type="item", name="copper-cable", amount=3},
                {type="item", name="iron-plate", amount=1},
            },
            results = { 
                {type='item', name='apm_electromagnet', amount=2},
            },
            main_product = 'apm_electromagnet',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1.25,
            ingredients = {
                {type="item", name="copper-cable", amount=5},
                {type="item", name="iron-plate", amount=1},
            },
            results = { 
                {type='item', name='apm_electromagnet', amount=2},
            },
            main_product = 'apm_electromagnet',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_resin",
        category = 'apm_crusher',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="wood", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_pellets', amount=1},
                {type='item', name='apm_resin', amount=2},
            },
            main_product = 'apm_resin',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="wood", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_pellets', amount=1},
                {type='item', name='apm_resin', amount=1},
            },
            main_product = 'apm_resin',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_rubber_1",
        category = 'smelting',
        icons = {
                    apm.power.icons.rubber,
                    apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_intermediates",
        order = 'aa_a',
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="apm_resin", amount=2},
            },
            results = { 
                {type='item', name='apm_rubber', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="apm_resin", amount=3},
            },
            results = { 
                {type='item', name='apm_rubber', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_rubber_2",
        category = 'apm_coking',
        icons = {
                    apm.power.icons.rubber,
                    apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_intermediates",
        order = 'aa_b',
        normal = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_resin", amount=5},
                {type="item", name="sulfur", amount=2},
            },
            results = { 
                {type='item', name='apm_rubber', amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_resin", amount=6},
                {type="item", name="sulfur", amount=2},
            },
            results = { 
                {type='item', name='apm_rubber', amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_gearing",
        normal = {
            enabled = true,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="iron-gear-wheel", amount=3},
                {type="item", name="iron-stick", amount=1},
            },
            results = { 
                {type='item', name='apm_gearing', amount=1},
            },
            main_product = 'apm_gearing',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = true,
            energy_required = 2,
            ingredients = {
                {type="item", name="iron-gear-wheel", amount=4},
                {type="item", name="iron-stick", amount=1},
            },
            results = { 
                {type='item', name='apm_gearing', amount=1},
            },
            main_product = 'apm_gearing',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_wood_board_1",
        icons = {
                    apm.power.icons.wood_board,
                    apm.lib.utils.icon.mod(apm.power.icons.wood, 0.5, {-6, 0}),
                    apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_intermediates",
        order = 'ac_a',
        normal = {
            enabled = true,
            energy_required = 3,
            ingredients = {
                {type="item", name="wood", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_board', amount=2},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = true,
            energy_required = 3,
            ingredients = {
                {type="item", name="wood", amount=1},
            },
            results = { 
                {type='item', name='apm_wood_board', amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },  
    {
        type = "recipe",
        name = "apm_wood_board_2",
        category = "apm_press",
        icons = {
                    apm.power.icons.wood_board,
                    apm.lib.utils.icon.mod(apm.power.icons.wood_crushed, 0.5, {-6, 0}),
                    apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_intermediates",
        order = 'ac_b',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_wood_pellets", amount=4},
            },
            results = { 
                {type='item', name='apm_wood_board', amount=4},
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
                {type="item", name="apm_wood_pellets", amount=4},
            },
            results = { 
                {type='item', name='apm_wood_board', amount=3},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },    
    {
        type = "recipe",
        name = "apm_steam_relay",
        normal = {
            enabled = true,
            energy_required = 1.25,
            ingredients = {
                {type="item", name="apm_wood_board", amount=1},
                {type="item", name="copper-plate", amount=2},
                {type="item", name="iron-stick", amount=1},
            },
            results = { 
                {type='item', name='apm_steam_relay', amount=1},
            },
            main_product = 'apm_steam_relay',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = true,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="apm_wood_board", amount=1},
                {type="item", name="copper-plate", amount=2},
                {type="item", name="iron-stick", amount=2},
            },
            results = { 
                {type='item', name='apm_steam_relay', amount=1},
            },
            main_product = 'apm_steam_relay',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_sealing_rings",
        category = 'advanced-crafting',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_rubber", amount=1},
            },
            results = { 
                {type='item', name='apm_sealing_rings', amount=5},
            },
            main_product = 'apm_sealing_rings',
            requester_paste_multiplier = 4,
            always_show_products = true,
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="apm_rubber", amount=1},
            },
            results = { 
                {type='item', name='apm_sealing_rings', amount=4},
            },
            main_product = 'apm_sealing_rings',
            requester_paste_multiplier = 4,
            always_show_products = true,
        }
    },
})