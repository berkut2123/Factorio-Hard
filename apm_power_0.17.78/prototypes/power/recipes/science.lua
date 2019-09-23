require('util')

data:extend(
{
    {
        type = "recipe",
        name = "apm_industrial_science_pack_0",
        category = 'apm_handcrafting_only',
        icons = {
            apm.power.icons.sciencepack,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = "apm_power_science",
        order = "aa_a",
        normal = {
            enabled = true,
            energy_required = 10,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=2},
                {type="item", name="stone-brick", amount=2},
            },
            results = { 
                {type='item', name='apm_industrial_science_pack', amount=1},
            },
            main_product = 'apm_industrial_science_pack',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = true,
            energy_required = 10,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=3},
                {type="item", name="stone-brick", amount=3},
            },
            results = { 
                {type='item', name='apm_industrial_science_pack', amount=1},
            },
            main_product = 'apm_industrial_science_pack',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_industrial_science_pack_1",
        category = 'advanced-crafting',
        icons = {
            apm.power.icons.sciencepack,
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = "apm_power_science",
        order = "aa_b",
        normal = {
            enabled = true,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=1},
                {type="item", name="stone-brick", amount=1},
            },
            results = { 
                {type='item', name='apm_industrial_science_pack', amount=1},
            },
            main_product = 'apm_industrial_science_pack',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = true,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_steam_relay", amount=2},
                {type="item", name="stone-brick", amount=2},
            },
            results = { 
                {type='item', name='apm_industrial_science_pack', amount=1},
            },
            main_product = 'apm_industrial_science_pack',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
})