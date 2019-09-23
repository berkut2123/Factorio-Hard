require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_discharged_battery_vanilla",
        icons = {
            {icon='__base__/graphics/icons/battery.png'},
            apm.energy_addon.icons.depleted_battery_1
        },
        icon_size = 32,
        subgroup = "raw-material",
        order = "h[battery-discharged]",
        stack_size = 200,
    },
})