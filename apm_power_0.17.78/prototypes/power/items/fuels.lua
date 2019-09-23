require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_coal_crushed",
        icons = {
            apm.power.icons.coal_crushed
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'aa_a',
        fuel_category='chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_coal_briquette",
        icons = {
            apm.power.icons.coal_brick
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'ab_a',
        fuel_category='chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_coke",
        icons = {
            apm.power.icons.coke_chunk
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'aa_a',
        fuel_category='apm_refined_chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_coke_crushed",
        icons = {
            apm.power.icons.coke_crushed
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'ab_a',
        fuel_category='apm_refined_chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_coke_brick",
        icons = {
            apm.power.icons.coke_brick
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coke",
        order = 'ac_a',
        fuel_category='apm_refined_chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_wood_pellets",
        icons = {
            apm.power.icons.wood_crushed
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ac_a',
        fuel_category='chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_wood_briquette",
        icons = {
            apm.power.icons.wood_brick
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ad_a',
        fuel_category='chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_charcoal",
        icons = {
            apm.power.icons.charcoal_chunk
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ae_a',
        fuel_category='chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_charcoal_brick",
        icons = {
            apm.power.icons.charcoal_brick
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'af_a',
        fuel_category='chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
})