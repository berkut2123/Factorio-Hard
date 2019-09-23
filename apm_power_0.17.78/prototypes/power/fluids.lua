require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/fluids.lua')
log('-------------------------------------------------------')

data:extend(
{
    {
        type = "fluid",
        name = "apm_sea_water",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0.216, g=0.566, b=0.819},
        flow_color = {r=0.326, g=0.209, b=0.111},
        icons = apm.lib.utils.icon.generate.fluid({r=0.216, g=0.566, b=0.819}, {r=0.326, g=0.209, b=0.111}, nil),
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'aa_a'
    },
    {
        type = "fluid",
        name = "apm_dirt_water",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0.399, g=0.246, b=0.155},
        flow_color = {r=0.419, g=0.266, b=0.175},
        icons = apm.lib.utils.icon.generate.fluid({r=0.399, g=0.246, b=0.155}, {r=0.419, g=0.266, b=0.175}, nil),
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ab_a'
    },
    {
        type = "fluid",
        name = "apm_coal_saturated_wastewater",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0.192, g=0.216, b=0.254},
        flow_color = {r=0.222, g=0.236, b=0.274},
        icons = apm.lib.utils.icon.generate.fluid({r=0.192, g=0.216, b=0.254}, {r=0.222, g=0.236, b=0.274}, nil),
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ac_b'
    },
    {
        type = "fluid",
        name = "apm_creosote",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0.187, g=0.135, b=0.104},
        flow_color = {r=0.197, g=0.145, b=0.114},
        icons = apm.lib.utils.icon.generate.fluid({r=0.187, g=0.135, b=0.104}, {r=0.197, g=0.145, b=0.114}, nil),
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ad_c'
    },
    {
        type = "fluid",
        name = "apm_coke_oven_gas",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0.244, g=0.141, b=0.141},
        flow_color = {r=0.254, g=0.151, b=0.151},
        icons = apm.lib.utils.icon.generate.chemical({r=1, g=1, b=1}, {r=0.2, g=0.2, b=0.2}, {r=1, g=1, b=1}, {icon='__apm_resource_pack__/graphics/icons/apm_coke_oven_gas.png', icon_size=64}),
        icon_size = 32,
        fuel_value = '0.5MJ',
        group = "apm_power",
        subgroup = "apm_power_fluid",
        order = 'ae_d'
    },
})

apm.lib.utils.barrel.generate('apm_sea_water')
apm.lib.utils.barrel.generate('apm_coal_saturated_wastewater')
apm.lib.utils.barrel.generate('apm_creosote')
apm.lib.utils.barrel.generate('apm_coke_oven_gas')