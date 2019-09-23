require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_tree_seeds",
        icons = {
            apm.power.icons.tree_seeds
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'ab_a',
        fuel_category='chemical',
        fuel_value = '1MJ',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_fertiliser_1",
        icons = {
            apm.power.icons.fertiliser_1
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'ac_a',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_fertiliser_2",
        icons = {
            apm.power.icons.fertiliser_2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'ac_b',
        stack_size = 200,
    },
})