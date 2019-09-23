data:extend{
    {
        type = "bool-setting",
        name = "start-with-unit-remote-control",
        setting_type = "startup",
        default_value = true,
    },
    {
        type = "bool-setting",
        name = "start-with-random-color",
        setting_type = "startup",
        default_value = true,
    },
    {
        type = "int-setting",
        name = "pathfinding-visualisation-cutoff",
        setting_type = "runtime-global",
        default_value = 256,
    },
    {
        type = "string-setting",
        name = "hand-deploy-vehicle-ai-default",
        setting_type = "runtime-per-user",
        default_value = 'Auto',
        allowed_values = {'Auto', 'On', 'Off'}
    },
    {
        type = "bool-setting",
        name = "passenger-no-control-alert",
        setting_type = "runtime-per-user",
        default_value = true,
    },
    {
        type = "string-setting",
        name = "exclude-vehicles",
        setting_type = "startup",
        default_value = "",
        allow_blank = true,
    },
    {
        type = "string-setting",
        name = "restrict-remote-actions-to-player-ids",
        setting_type = "runtime-global",
        default_value = "",
        allow_blank = true,
    },
}
