require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_filter_charcoal",
        icons = {
            apm.power.icons.filter_charcoal
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ab_a',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_filter_charcoal_used",
        icons = {
            apm.power.icons.filter_charcoal_used
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ab_b',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_ammonium_sulfate",
        icons = {
            apm.power.icons.ammonium_sulfate
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_greenhouse",
        order = 'ab_c',
        stack_size = 200,
    },
})