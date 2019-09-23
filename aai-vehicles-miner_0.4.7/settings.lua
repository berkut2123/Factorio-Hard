data:extend{
    {
        type = "bool-setting",
        name = "start-with-vehicle-miner",
        setting_type = "startup",
        default_value = true,
    },
    {
        type = "int-setting",
        name = "vehicle-mining-multiplier",
        setting_type = "runtime-global",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 10000,
    },
    {
        type = "string-setting",
        name = "vehicle-mining-disallow-resources",
        setting_type = "runtime-global",
        default_value = "",
        allow_blank = true,
    },
    {
        type = "int-setting",
        name = "vehicle-mining-interval",
        setting_type = "runtime-global",
        default_value = 60,
        minimum_value = 1,
        maximum_value = 600,
    },
    {
        type = "int-setting",
        name = "vehicle-collection-interval",
        setting_type = "runtime-global",
        default_value = 30,
        minimum_value = 1,
        maximum_value = 600,
    },
}
