require('util')

data:extend(
{
    {
        type = "fluid",
        name = "apm_dirt_water",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0.399, g=0.246, b=0.155},
        flow_color = {r=0.419, g=0.266, b=0.175},
        icons = apm.lib.utils.icon.generate.fluid({r=0.399, g=0.246, b=0.155}, {r=0.419, g=0.266, b=0.175}),
        icon_size = 32,
        group = "apm_recycling",
        subgroup = "apm_recycling_raw_fluid",
        order = 'aa_a'
    },
})

apm.lib.utils.barrel.generate('apm_dirt_water')