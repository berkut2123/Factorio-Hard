data:extend({
    {
        type = "bool-setting",
        name = "paint-loco",
        setting_type = "runtime-global",
        default_value = true,
    },
    {
        type = "bool-setting",
        name = "paint-cargo-wagon",
        setting_type = "runtime-global",
        default_value = false,
    },
	{
        type = "bool-setting",
        name = "paint-fluid-wagon",
        setting_type = "runtime-global",
        default_value = false,
    },
	{
        type = "bool-setting",
        name = "unpaint-empty",
        setting_type = "runtime-global",
        default_value = true,
    },
    {
        type = "bool-setting",
        name = "loc-eqpm-grid",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "int-setting",
        name = "loc-eqpm-grid-w",
        setting_type = "startup",
        minimum_value = 2,
        default_value = 2,
        maximum_value = 16
    },
    {
        type = "int-setting",
        name = "loc-eqpm-grid-h",
        setting_type = "startup",
        minimum_value = 2,
        default_value = 4,
        maximum_value = 16
    }
})