data:extend{
    {
        type = "projectile",
        name = "cannon-projectile-precision",
        flags = {"not-on-map"},
        acceleration = 0.001,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "damage",
                        damage = { amount = 450 , type = "physical"}
                    },
                    {
                        type = "damage",
                        damage = { amount = 50 , type = "explosion"}
                    },
                    {
                        type = "create-entity",
                        entity_name = "small-scorchmark",
                        check_buildability = true
                    }
                }
            }
        },
        animation =
        {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
    },
    {
        type = "projectile",
        name = "explosive-cannon-projectile-precision",
        flags = {"not-on-map"},
        acceleration = 0.001,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "create-entity",
                        entity_name = "big-explosion",
                        check_buildability = true
                    },
                    {
                        type = "damage",
                        damage = { amount = 150 , type = "physical"}
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            radius = 4,
                            action_delivery =
                            {
                                type = "instant",
                                target_effects =
                                {
                                    {
                                        type = "damage",
                                        damage = {amount = 80, type = "explosion"}
                                    },
                                    {
                                        type = "create-entity",
                                        entity_name = "explosion"
                                    }
                                }
                            }
                        },
                    }
                }
            }
        },
        animation =
        {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
    },
}
