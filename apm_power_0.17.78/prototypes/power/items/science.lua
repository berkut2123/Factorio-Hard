require('util')

data:extend(
{
    {
        type = "tool",
        name = "apm_industrial_science_pack",
        localised_description = {"item-description.apm_industrial_science_pack"},
        icons = {
            apm.power.icons.sciencepack
        },
        icon_size = 32,
        group = 'apm_power',
        subgroup = "apm_power_science",
        order = "aa_a",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
})