require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_dry_mud",
        category = 'apm_coking_2',
        normal = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_wet_mud", amount=10},
            },
            results = { 
                {type='item', name='apm_dry_mud', amount=5},
                {type='fluid', name='steam', amount=50, temperature=120},
            },
            main_product = 'apm_dry_mud',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 3,
            ingredients = {
                {type="item", name="apm_wet_mud", amount=10},
            },
            results = { 
                {type='item', name='apm_dry_mud', amount=5},
                {type='fluid', name='steam', amount=50, temperature=120},
            },
            main_product = 'apm_dry_mud',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_sieve_iron",
        normal = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="iron-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_sieve_iron', amount=1},
            },
            main_product = 'apm_sieve_iron',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="iron-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_sieve_iron', amount=1},
            },
            main_product = 'apm_sieve_iron',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_sieve_copper",
        normal = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="copper-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_sieve_copper', amount=1},
            },
            main_product = 'apm_sieve_copper',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type="item", name="copper-plate", amount=2},
            },
            results = { 
                {type='item', name='apm_sieve_copper', amount=1},
            },
            main_product = 'apm_sieve_copper',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_dry_mud_sifting_iron",
        category = 'apm_sifting_0',
        icons = {
            apm.lib.utils.icon.dynamics.empty_32,
            apm.lib.utils.icon.mod(apm.power.icons.iron_ore, 0.8),
            apm.lib.utils.icon.mod(apm.power.icons.sieve_iron, 0.5, {8, -8})
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_sifting",
        order = 'ac_a',
        normal = {
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type="item", name="apm_dry_mud", amount=8},
                {type="item", name="apm_sieve_iron", amount=1},
            },
            results = { 
                {type='item', name='iron-ore', amount_min=1, amount_max=1, probability=0.25},
                {type='item', name='apm_sieve_iron', amount_min=1, amount_max=1, probability=0.95, catalyst_amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type="item", name="apm_dry_mud", amount=8},
                {type="item", name="apm_sieve_iron", amount=1},
            },
            results = { 
                {type='item', name='iron-ore', amount_min=1, amount_max=1, probability=0.25},
                {type='item', name='apm_sieve_iron', amount_min=1, amount_max=1, probability=0.95, catalyst_amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_dry_mud_sifting_copper",
        category = 'apm_sifting_0',
        icons = {
            apm.lib.utils.icon.dynamics.empty_32,
            apm.lib.utils.icon.mod(apm.power.icons.copper_ore, 0.8),
            apm.lib.utils.icon.mod(apm.power.icons.sieve_copper, 0.5, {8, -8})
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_sifting",
        order = 'ac_b',
        normal = {
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type="item", name="apm_dry_mud", amount=8},
                {type="item", name="apm_sieve_copper", amount=1},
            },
            results = { 
                {type='item', name='copper-ore', amount_min=1, amount_max=1, probability=0.25},
                {type='item', name='apm_sieve_copper', amount_min=1, amount_max=1, probability=0.95, catalyst_amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type="item", name="apm_dry_mud", amount=8},
                {type="item", name="apm_sieve_copper", amount=1},
            },
            results = { 
                {type='item', name='copper-ore', amount_min=1, amount_max=1, probability=0.25},
                {type='item', name='apm_sieve_copper', amount_min=1, amount_max=1, probability=0.95, catalyst_amount=1},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})