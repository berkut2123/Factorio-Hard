require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_press_plates",
        icons = {
            apm.power.icons.press_plates
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ad_a',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_press_plates_used",
        icons = {
            apm.power.icons.press_plates_used
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_tools",
        order = 'ad_b',
        stack_size = 200,
    },
})