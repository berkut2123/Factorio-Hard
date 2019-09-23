------------------------------------------------------------------------------------------------------------------------------------------------------

-- TURRETS

------------------------------------------------------------------------------------------------------------------------------------------------------

-- alter gun turret

local gun_turret = data.raw["ammo-turret"]["gun-turret"]
gun_turret.fast_replaceable_group = "turret"
gun_turret.attack_parameters.projectile_center = {0,-0.25}
gun_turret.attack_parameters.projectile_creation_distance = 1.4
gun_turret.attack_parameters.lead_target_for_projectile_speed = DIR.projectile_speed.bullet
gun_turret.icon = get_icon_path("gun-turret", DIR.icon_size)
gun_turret.icon_size = DIR.icon_size
gun_turret.prepare_range = 23

gun_turret.base_picture = {
    layers = {
        get_layer("turrets/iron-turret-ammo-base", 1, 1, false, nil, nil, 128, 192, 0, 0, 128, 192, {0,-0.5}, nil, nil, nil, nil),
        get_layer("turrets/iron-turret-ammo-base-mask", 1, 1, false, nil, nil, 128, 192, 0, 0, 128, 192, {0,-0.5}, nil, {"mask"}, nil, nil, true),
    }
}
gun_turret.attacking_animation = {
    layers = {
        get_multi_layer("turrets/iron-gun-turret-shooting-shadow", 4, 2, nil, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
        get_multi_layer("turrets/iron-gun-turret-shooting", 4, 2, nil, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
        get_multi_layer("turrets/iron-gun-turret-shooting-mask", 4, 2, nil, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
    }
}
gun_turret.prepared_animation = {
    layers = {
        get_multi_layer("turrets/iron-gun-turret-shooting-shadow", 4, 1, 1, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
        get_multi_layer("turrets/iron-gun-turret-shooting", 4, 1, nil, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
        get_multi_layer("turrets/iron-gun-turret-shooting-mask", 4, 1, nil, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
    }
}
gun_turret.folded_animation = {
    layers = {
        get_layer("turrets/iron-gun-turret-raising-shadow", 1, 1, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
        get_layer("turrets/iron-gun-turret-raising", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/iron-gun-turret-raising-mask", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}
gun_turret.folding_animation = {
    layers = {
        get_layer("turrets/iron-gun-turret-raising-shadow", 5, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4, false, "backward"),
        get_layer("turrets/iron-gun-turret-raising", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4, nil, "backward"),
        get_layer("turrets/iron-gun-turret-raising-mask", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true, "backward"),
    }
}
gun_turret.preparing_animation = {
    layers = {
        get_layer("turrets/iron-gun-turret-raising-shadow", 5, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
        get_layer("turrets/iron-gun-turret-raising", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/iron-gun-turret-raising-mask", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}

-- copper scattergun turret

local copper_turret = table.deepcopy(gun_turret)

copper_turret.name = "copper-turret"
copper_turret.minable.result = "copper-turret"
copper_turret.icon = get_icon_path("copper-turret", DIR.icon_size)
copper_turret.icon_size = DIR.icon_size
copper_turret.attack_parameters.ammo_category = "shotgun-shell"
copper_turret.attack_parameters.range = DIR.ammo.range.cartridge
copper_turret.attack_parameters.cooldown = DIR.ammo.turret_speed.cartridge
copper_turret.attack_parameters.projectile_center = {0,-0.25}
copper_turret.attack_parameters.projectile_creation_distance = 1.5
copper_turret.attack_parameters.lead_target_for_projectile_speed = DIR.projectile_speed.shotgun
copper_turret.max_health = 325
copper_turret.prepare_range = 20

copper_turret.base_picture = {
    layers = {
        get_layer("turrets/copper-turret-base", 1, 1, false, nil, nil, 128, 192, 0, 0, 128, 192, {0,-0.5}, nil, nil, nil, nil),
        get_layer("turrets/copper-turret-base-mask", 1, 1, false, nil, nil, 128, 192, 0, 0, 128, 192, {0,-0.5}, nil, {"mask"}, nil, nil, true),
    }
}
copper_turret.attacking_animation = {
    layers = {
        get_layer("turrets/copper-turret-shooting-shadow", 1, 8, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
        get_layer("turrets/copper-turret-shooting", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
        get_layer("turrets/copper-turret-shooting-mask", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
    }
}
copper_turret.prepared_animation = {
    layers = {
        get_layer("turrets/copper-turret-shooting-shadow", 1, 8, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
        get_layer("turrets/copper-turret-shooting", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
        get_layer("turrets/copper-turret-shooting-mask", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
    }
}
copper_turret.folded_animation = {
    layers = {
        get_layer("turrets/copper-turret-raising-shadow", 1, 1, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
        get_layer("turrets/copper-turret-raising", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/copper-turret-raising-mask", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}
copper_turret.folding_animation = {
    layers = {
        get_layer("turrets/copper-turret-raising-shadow", 5, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4, false, "backward"),
        get_layer("turrets/copper-turret-raising", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4, nil, "backward"),
        get_layer("turrets/copper-turret-raising-mask", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true, "backward"),
    }
}
copper_turret.preparing_animation = {
    layers = {
        get_layer("turrets/copper-turret-raising-shadow", 5, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
        get_layer("turrets/copper-turret-raising", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/copper-turret-raising-mask", 5, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}
copper_turret.sound = {
    {
        filename = "__base__/sound/pump-shotgun.ogg",
        volume = 0.5
    }
}

data:extend({copper_turret})

-- replace laser turret

local colour = DIR.laser_colours[settings.startup["deadlock-industry-laser-colour"].value].rgb
if not colour then colour = {1,0,0,1} end

data:extend({
    {
        name = "laser-turret",
        type = "electric-turret",
        attack_parameters = {
            ammo_type = {
                action = {
                    action_delivery = {
                        beam = "laser-beam",
                        duration = 40,
                        max_length = 24,
                        source_offset = {0,-1.175},
                        type = "beam"
                    },
                    type = "direct"
                },
                category = "laser-turret",
                energy_consumption = "800kJ"
            },
            cooldown = 20,
            damage_modifier = 2,
            range = 24,
            source_direction_count = 64,
            source_offset = {0,-0.9},
            type = "beam",
        },
        call_for_help_radius = 40,
        collision_box = {{-0.7,-0.7},{0.7,0.7}},
        selection_box = {{-1,-1},{1,1}},
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        energy_source = {
            buffer_capacity = "801kJ",
            drain = "24kW",
            input_flow_limit = "9600kW",
            type = "electric",
            usage_priority = "primary-input"
        },
        fast_replaceable_group = "turret",
        flags = {
            "placeable-player",
            "placeable-enemy",
            "player-creation"
        },
        folding_speed = 0.05,
        glow_light_intensity = 0.5,
        icon = get_icon_path("laser-turret", DIR.icon_size),
        icon_size = DIR.icon_size,
        max_health = 1000,
        minable = {
            mining_time = 0.5,
            result = "laser-turret"
        },
        preparing_speed = 0.05,
		prepare_range = 29,
        rotation_speed = 0.01,
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        base_picture = {
            layers = {
                get_layer("turrets/iron-turret-electric-base", 1, 1, false, nil, nil, 128, 192, 0, 0, 128, 192, {0,-0.5}, nil, nil, nil, nil),
                get_layer("turrets/iron-turret-electric-base-mask", 1, 1, false, nil, nil, 128, 192, 0, 0, 128, 192, {0,-0.5}, nil, {"mask"}, nil, nil, true),
            }
        },
        attacking_animation = {
            layers = {
                get_layer("turrets/laser-turret-shooting-shadow", 1, 8, true, 20, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
                get_layer("turrets/laser-turret-shooting", 1, 8, false, 20, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
                get_layer("turrets/laser-turret-shooting-mask", 1, 8, false, 20, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
            }
        },
        folded_animation = {
            layers = {
                get_layer("turrets/laser-turret-raising-shadow", 1, 1, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
                get_layer("turrets/laser-turret-raising", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
                get_layer("turrets/laser-turret-raising-mask", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
            }
        },
        folding_animation = {
            layers = {
                get_layer("turrets/laser-turret-raising-shadow", 16, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4, false, "backward"),
                get_layer("turrets/laser-turret-raising", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4, nil, "backward"),
                get_layer("turrets/laser-turret-raising-mask", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true, "backward"),
            }
        },
        prepared_animation = {
            layers = {
                get_layer("turrets/laser-turret-shooting-shadow", 1, 8, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
                get_layer("turrets/laser-turret-shooting", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
                get_layer("turrets/laser-turret-shooting-mask", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
            }
        },
        preparing_animation = {
            layers = {
                get_layer("turrets/laser-turret-raising-shadow", 16, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
                get_layer("turrets/laser-turret-raising", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
                get_layer("turrets/laser-turret-raising-mask", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
            }
        },
        energy_glow_animation = {
            layers = {
                get_layer("turrets/laser-turret-shooting-glow", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, "additive", {"light"}, colour, 64, true),
            }
        },
		-- starting_attack_sound = {
			-- filename = string.format("%s/%s.ogg", DIR.sound_path, "new-phaser-start"),
			-- volume = 1
		-- },
    }
})

-- emp turret

data:extend({
    {
      bonus_gui_order = "kb",
      name = "emp-turret",
      type = "ammo-category"
    }
})

local emp_turret = table.deepcopy(data.raw["electric-turret"]["laser-turret"])

emp_turret.name = "steel-emp-turret"
emp_turret.minable.result = "steel-emp-turret"
emp_turret.icon = get_icon_path("steel-emp-turret", DIR.icon_size)
emp_turret.icon_size = DIR.icon_size
emp_turret.max_health = 350
emp_turret.energy_source.buffer_capacity = "5MJ"
emp_turret.energy_source.drain = "50kW"
emp_turret.energy_source.input_flow_limit = "5MW"
emp_turret.attack_parameters.source_offset = {0,-0.69375}
emp_turret.attack_parameters.ammo_type.action.action_delivery.source_offset = {0,-1.25}
emp_turret.attack_parameters.ammo_type.action.action_delivery.beam = "emp-beam"
emp_turret.attack_parameters.ammo_type.action.action_delivery.duration = 20
emp_turret.attack_parameters.ammo_type.action.action_delivery.max_length = 20
emp_turret.attack_parameters.ammo_type.category = "emp-turret"
emp_turret.attack_parameters.ammo_type.energy_consumption = "1600kJ"
--emp_turret.attack_parameters.cooldown = 180
emp_turret.attack_parameters.damage_modifier = 1
emp_turret.attack_parameters.range = 20
emp_turret.prepare_range = 25

emp_turret.attacking_animation = {
    layers = {
        get_layer("turrets/steel-emp-turret-shooting-shadow", 1, 8, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
        get_layer("turrets/steel-emp-turret-shooting", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
        get_layer("turrets/steel-emp-turret-shooting-mask", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
    }
}
emp_turret.prepared_animation = {
    layers = {
        get_layer("turrets/steel-emp-turret-shooting-shadow", 1, 8, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 64),
        get_layer("turrets/steel-emp-turret-shooting", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 64),
        get_layer("turrets/steel-emp-turret-shooting-mask", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 64, true),
    }
}
emp_turret.folded_animation = {
    layers = {
        get_layer("turrets/steel-emp-turret-raising-shadow", 1, 1, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
        get_layer("turrets/steel-emp-turret-raising", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/steel-emp-turret-raising-mask", 1, 1, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}
emp_turret.folding_animation = {
    layers = {
        get_layer("turrets/steel-emp-turret-raising-shadow", 16, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4, false, "backward"),
        get_layer("turrets/steel-emp-turret-raising", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4, nil, "backward"),
        get_layer("turrets/steel-emp-turret-raising-mask", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true, "backward"),
    }
}
emp_turret.preparing_animation = {
    layers = {
        get_layer("turrets/steel-emp-turret-raising-shadow", 16, 0, true, nil, nil, 256, 128, 0, 0, 256, 128, {1,0}, nil, nil, nil, 4),
        get_layer("turrets/steel-emp-turret-raising", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/steel-emp-turret-raising-mask", 16, 0, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}
emp_turret.energy_glow_animation = {
    layers = {
        get_layer("turrets/steel-emp-turret-shooting-glow", 1, 8, false, nil, nil, 128, 128, 0, 0, 128, 128, {0,-1}, "additive", nil, {0.25,0.75,1,1}, 64, true),
    }
}

data:extend({emp_turret})

-- photon turret

local photon_turret = table.deepcopy(data.raw["electric-turret"]["laser-turret"])

photon_turret.name = "chromium-photon-turret"
photon_turret.minable.result = "chromium-photon-turret"
photon_turret.icon = get_icon_path("chromium-photon-turret", DIR.icon_size)
photon_turret.icon_size = DIR.icon_size
photon_turret.collision_box = {{-1.5,-1.5},{1.5,1.5}}
photon_turret.selection_box = {{-2,-2},{2,2}}
photon_turret.corpse = "big-remnants"
photon_turret.dying_explosion = "medium-explosion"
photon_turret.folding_speed = 0.05
photon_turret.preparing_speed = 0.05
photon_turret.rotation_speed = 0.005
photon_turret.max_health = 2000
photon_turret.turret_base_has_direction = true
photon_turret.prepare_range = 65

photon_turret.energy_source = {
    buffer_capacity = DIR.photon.buffer .. "MJ",
    drain = "100kW",
    input_flow_limit = (DIR.photon.torpedo_cost / DIR.photon.charge_time) .. "MW",
    type = "electric",
    usage_priority = "primary-input"
}

photon_turret.attack_parameters = {
    ammo_type = {
        action = {
            action_delivery = {
                projectile = "photon-torpedo",
                type = "projectile",
                starting_speed = 0.5,
                max_range = 60,
                min_range = 12,
                direction_deviation = 0,
                source_effects = {
                    entity_name = "photon-muzzle",
                    type = "create-explosion"
                },
            },
            type = "direct",
        },
        category = "photon-torpedo",
        energy_consumption = DIR.photon.torpedo_cost .. "MJ",
        target_type = "entity",
    },
    cooldown = 20,
    range = 60,
    min_range = 15,
    turn_range = 0.333333,
    projectile_center = {0,-0.475},
    projectile_creation_distance = 2.25,
    lead_target_for_projectile_speed = 0.5,
    sound = {
		filename = string.format("%s/%s.ogg", DIR.sound_path, "new-photon"),
		volume = 1
    },
    type = "projectile"
}

photon_turret.base_picture = {
    layers = {
        get_layer("turrets/chromium-photon-turret-base", 1, 1, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,0}),
        get_layer("turrets/chromium-photon-turret-base-mask", 1, 1, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,0}, nil, {"mask"}, nil, nil, true),
    },
}
photon_turret.attacking_animation = {
    layers = {
        get_layer("turrets/chromium-photon-turret-shooting-shadow", 1, 8, true, nil, nil, 512, 256, 0, 0, 512, 256, {2,0}, nil, nil, nil, 128),
        get_layer("turrets/chromium-photon-turret-shooting", 1, 16, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, nil, nil, 128),
        get_layer("turrets/chromium-photon-turret-shooting-mask", 1, 16, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, {"mask"}, nil, 128, true),
    }
}
photon_turret.prepared_animation = {
    layers = {
        get_layer("turrets/chromium-photon-turret-shooting-shadow", 1, 8, true, nil, nil, 512, 256, 0, 0, 512, 256, {2,0}, nil, nil, nil, 128),
        get_layer("turrets/chromium-photon-turret-shooting", 1, 16, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, nil, nil, 128),
        get_layer("turrets/chromium-photon-turret-shooting-mask", 1, 16, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, {"mask"}, nil, 128, true),
    }
}
photon_turret.folded_animation = {
    layers = {
        get_layer("turrets/chromium-photon-turret-raising-shadow", 1, 1, true, nil, nil, 512, 256, 0, 0, 512, 256, {2,0}, nil, nil, nil, 4),
        get_layer("turrets/chromium-photon-turret-raising", 1, 1, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/chromium-photon-turret-raising-mask", 1, 1, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}
photon_turret.folding_animation = {
    layers = {
        get_layer("turrets/chromium-photon-turret-raising-shadow", 8, 0, true, nil, nil, 512, 256, 0, 0, 512, 256, {2,0}, nil, nil, nil, 4, nil, "backward"),
        get_layer("turrets/chromium-photon-turret-raising", 8, 0, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, nil, nil, 4, nil, "backward"),
        get_layer("turrets/chromium-photon-turret-raising-mask", 8, 0, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, {"mask"}, nil, 4, true, "backward"),
    }
}
photon_turret.preparing_animation = {
    layers = {
        get_layer("turrets/chromium-photon-turret-raising-shadow", 8, 0, true, nil, nil, 512, 256, 0, 0, 512, 256, {2,0}, nil, nil, nil, 4, nil),
        get_layer("turrets/chromium-photon-turret-raising", 8, 0, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, nil, nil, 4),
        get_layer("turrets/chromium-photon-turret-raising-mask", 8, 0, false, nil, nil, 256, 256, 0, 0, 256, 256, {0,-1}, nil, {"mask"}, nil, 4, true),
    }
}
photon_turret.energy_glow_animation = nil

data:extend({photon_turret})

------------------------------------------------------------------------------------------------------------------------------------------------------


