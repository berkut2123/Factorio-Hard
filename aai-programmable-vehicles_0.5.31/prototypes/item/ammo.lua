data:extend{
    {
        type = "ammo",
        name = "cannon-shell-precision",
        icon = "__base__/graphics/icons/cannon-shell.png",
        icon_size = 32,
        flags = {},
        ammo_type =
        {
            category = "cannon-shell",
            action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "projectile",
                    projectile = "cannon-projectile-precision",
                    starting_speed = 1.25,
                    max_range = 30,
                    source_effects =
                    {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    },
                }
            },
        },
        subgroup = "ammo",
        order = "d[cannon-shell]-a[basic]",
        stack_size = 100
    },
    {
        type = "ammo",
        name = "explosive-cannon-shell-precision",
        icon = "__base__/graphics/icons/explosive-cannon-shell.png",
        icon_size = 32,
        flags = {},
        ammo_type =
        {
            category = "cannon-shell",
            action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "projectile",
                    projectile = "explosive-cannon-projectile-precision",
                    starting_speed = 1.25,
                    max_range = 30,
                    source_effects =
                    {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    },
                }
            },
        },
        subgroup = "ammo",
        order = "d[cannon-shell]-b[explosive]",
        stack_size = 100
    },
}
