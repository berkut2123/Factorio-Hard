require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_electric_car",
        icons = {
            {icon = data.raw.car['car'].icon},
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "transport",
        order = "b[personal-transport]-a[car]b",
        stack_size = 1,
        place_result = "apm_electric_car",
    },
    {
        type = "item",
        name = "apm_battery_charging_station",
        icons = {
            apm.lib.utils.icon.dynamics.machine.t1,
            apm.lib.utils.icon.dynamics.lable_lightning 
        },
        icon_size = 32,
        subgroup = "production-machine",
        order = "d[apm_battery_charging_station]",
        stack_size = 50,
        place_result = "apm_battery_charging_station",
    },
})