require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_generic_ash",
        icons = {
            apm.power.icons.generic_ash
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_ash",
        order = 'aa_a',
        stack_size = 2000,
    },
    {
        type = "item",
        name = "apm_coal_ash",
        icons = {
        	apm.power.icons.coal_ash
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_coal",
        order = 'ba_a',
        stack_size = 2000,
    },
    {
        type = "item",
        name = "apm_wood_ash",
        icons = {
        	apm.power.icons.wood_ash
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_wood",
        order = 'ba_a',
        stack_size = 2000,
    },
})