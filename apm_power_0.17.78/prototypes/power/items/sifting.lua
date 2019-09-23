require('util')

data:extend(
{
    {
        type = "item",
        name = "apm_dry_mud",
        icons = {
            apm.power.icons.mud_dry,
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_sifting",
        order = 'aa_a',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_sieve_iron",
        icons = {
            apm.power.icons.sieve_iron
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_sifting",
        order = 'ab_a',
        stack_size = 200,
    },
    {
        type = "item",
        name = "apm_sieve_copper",
        icons = {
            apm.power.icons.sieve_copper
        },
        icon_size = 32,
        group = "apm_power",
        subgroup = "apm_power_sifting",
        order = 'ab_b',
        stack_size = 200,
    },
})