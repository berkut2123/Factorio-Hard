require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_crusher_drumms",
        icons = {
            apm.power.icons.crusher_drumms
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ac_a',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_crusher_drumms_used",
        icons = {
            apm.power.icons.crusher_drumms_used
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ac_b',
        stack_size = 200,
    },
})