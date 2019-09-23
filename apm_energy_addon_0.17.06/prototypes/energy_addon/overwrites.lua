require('util')

-- batteries
apm.lib.utils.item.overwrite.battery(1, 'battery', '5MJ', 'apm_discharged_battery_vanilla')

-- car
apm.lib.utils.icon.add_tier_lable('car', 1)
apm.lib.utils.car.overhaul('apm_electric_car', false, false, true)