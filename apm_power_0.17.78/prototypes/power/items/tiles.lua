require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_asphalt",
        icons = {
            apm.power.icons.asphalt
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_ash",
        order = 'ae_a',
        stack_size = 200,
	    place_as_tile =
	    {
	      result = "apm_asphalt",
	      condition_size = 1,
	      condition = { "water-tile" }
	    }
    },
})