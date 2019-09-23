local function set_worm_animations(entiy, scale, tint)
  entiy.folded_animation = worm_folded_animation(scale, tint)
  entiy.preparing_animation = worm_preparing_animation(scale, tint, "forward")
  entiy.prepared_animation = worm_prepared_animation(scale, tint)
  entiy.prepared_alternative_animation = worm_prepared_alternative_animation(scale, tint)
  entiy.starting_attack_animation = worm_start_attack_animation(scale, tint)
  entiy.ending_attack_animation = worm_end_attack_animation(scale, tint)
  entiy.folding_animation =  worm_preparing_animation(scale, tint, "backward")
end



data:extend(
{
  util.merge{data.raw.turret["big-worm-turret"],
    {
      name = "bob-big-explosive-worm-turret",
      order="b-b-g",
      corpse = "bob-big-explosive-worm-corpse",
    },
  },
  util.merge{data.raw.turret["big-worm-turret"],
    {
      name = "bob-big-fire-worm-turret",
      order="b-b-g",
      corpse = "bob-big-fire-worm-corpse",
    }
  },
  util.merge{data.raw.turret["big-worm-turret"],
    {
      name = "bob-big-poison-worm-turret",
      order="b-b-g",
      corpse = "bob-big-poison-worm-corpse",
    },
  },
  util.merge{data.raw.turret["big-worm-turret"],
    {
      name = "bob-big-piercing-worm-turret",
      order="b-b-g",
      corpse = "bob-big-piercing-worm-corpse",
    },
  },
  util.merge{data.raw.turret["big-worm-turret"],
    {
      name = "bob-big-electric-worm-turret",
      order="b-b-h",
      corpse = "bob-big-electric-worm-corpse",
    },
  },
}
)


set_worm_animations(data.raw.turret["big-worm-turret"], scale_worm_big, bob_acid_worm_tint)
data.raw.turret["big-worm-turret"].resistances =
{
  {
    type = "physical",
    decrease = 10
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 30
  },
  {
    type = "acid",
    decrease = 5,
    percent = 40
  }
},







set_worm_animations(data.raw.turret["bob-big-explosive-worm-turret"], scale_worm_big, bob_explosive_worm_tint)
data.raw.turret["bob-big-explosive-worm-turret"].resistances =
{
  {
    type = "physical",
    decrease = 8,
  },
  {
    type = "explosion",
    decrease = 15,
    percent = 50,
  }
}
data.raw.turret["bob-big-explosive-worm-turret"].attack_parameters =
{
  type = "projectile",
  ammo_category = "biological",
  cooldown = 60,
  range = 26,
  projectile_creation_distance = 2.1,
  damage_modifier = 5,
  use_shooter_direction = true,
  lead_target_for_projectile_speed = 0.5,
  ammo_type =
  {
    category = "biological",
    target_type = "position",
    clamp_position = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "projectile",
        projectile = "explosive-spit-projectile",
        starting_speed = 0.5,
        max_range = 50
      }
    }
  }
}



set_worm_animations(data.raw.turret["bob-big-fire-worm-turret"], scale_worm_big, bob_fire_worm_tint)
data.raw.turret["bob-big-fire-worm-turret"].resistances =
{
  {
    type = "physical",
    decrease = 8,
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 25,
  },
  {
    type = "fire",
    decrease = 5,
    percent = 40,
  },
}
data.raw.turret["bob-big-fire-worm-turret"].attack_parameters =
{
  type = "projectile",
  ammo_category = "biological",
  cooldown = 60,
  range = 26,
  projectile_creation_distance = 2.1,
  damage_modifier = 5,
  use_shooter_direction = true,
  lead_target_for_projectile_speed = 0.5,
  ammo_type =
  {
    category = "biological",
    target_type = "position",
    clamp_position = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "projectile",
        projectile = "fire-spit-projectile",
        starting_speed = 0.5,
        max_range = 50
      }
    }
  }
}

set_worm_animations(data.raw.turret["bob-big-poison-worm-turret"], scale_worm_big, bob_poison_worm_tint)
data.raw.turret["bob-big-poison-worm-turret"].resistances =
{
  {
    type = "physical",
    decrease = 8,
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 25,
  },
  {
    type = "poison",
    decrease = 5,
    percent = 40,
  }
}
data.raw.turret["bob-big-poison-worm-turret"].attack_parameters =
{
  type = "projectile",
  ammo_category = "biological",
  cooldown = 60,
  range = 26,
  projectile_creation_distance = 2.1,
  damage_modifier = 5,
  use_shooter_direction = true,
  lead_target_for_projectile_speed = 0.5,
  ammo_type =
  {
    category = "biological",
    target_type = "position",
    clamp_position = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "projectile",
        projectile = "poison-spit-projectile",
        starting_speed = 0.5,
        max_range = 50
      }
    }
  }
}



set_worm_animations(data.raw.turret["bob-big-piercing-worm-turret"], scale_worm_big, bob_piercing_worm_tint)
data.raw.turret["bob-big-piercing-worm-turret"].resistances =
{
  {
    type = "physical",
    decrease = 8,
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 25,
  },
  {
    type = "bob-pierce",
    decrease = 5,
    percent = 40,
  }
}
data.raw.turret["bob-big-piercing-worm-turret"].attack_parameters =
{
  type = "projectile",
  ammo_category = "biological",
  cooldown = 60,
  range = 26,
  projectile_creation_distance = 2.1,
  damage_modifier = 6,
  use_shooter_direction = true,
  lead_target_for_projectile_speed = 0.5,
  ammo_type =
  {
    category = "biological",
    target_type = "position",
    clamp_position = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "projectile",
        projectile = "piercing-spit-projectile",
        starting_speed = 0.5,
        max_range = 50
      }
    }
  }
}


set_worm_animations(data.raw.turret["bob-big-electric-worm-turret"], scale_worm_big, bob_electric_worm_tint)
data.raw.turret["bob-big-electric-worm-turret"].resistances =
{
  {
    type = "physical",
    decrease = 8,
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 25,
  },
  {
    type = "electric",
    decrease = 5,
    percent = 40,
  }
}
data.raw.turret["bob-big-electric-worm-turret"].attack_parameters =
{
  type = "projectile",
  ammo_category = "biological",
  cooldown = 60,
  range = 26,
  projectile_creation_distance = 2.1,
  damage_modifier = 5,
  use_shooter_direction = true,
  lead_target_for_projectile_speed = 0.5,
  ammo_type =
  {
    category = "biological",
    target_type = "position",
    clamp_position = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "projectile",
        projectile = "electric-spit-projectile",
        starting_speed = 0.5,
        max_range = 50
      }
    }
  }
}





data:extend(
{
  util.merge{data.raw.corpse["big-worm-corpse"],
    {
      name = "bob-big-explosive-worm-corpse",
      order = "c[corpse]-c[worm]-c[big2]",
    }
  },
  util.merge{data.raw.corpse["big-worm-corpse"],
    {
      name = "bob-big-fire-worm-corpse",
      order = "c[corpse]-c[worm]-c[big3]",
    }
  },
  util.merge{data.raw.corpse["big-worm-corpse"],
    {
      name = "bob-big-poison-worm-corpse",
      order = "c[corpse]-c[worm]-c[big4]",
    }
  },
  util.merge{data.raw.corpse["big-worm-corpse"],
    {
      name = "bob-big-piercing-worm-corpse",
      order = "c[corpse]-c[worm]-c[big5]",
    }
  },
  util.merge{data.raw.corpse["big-worm-corpse"],
    {
      name = "bob-big-electric-worm-corpse",
      order = "c[corpse]-c[worm]-c[big6]",
    }
  },
}
)

data.raw.corpse["big-worm-corpse"].animation = worm_die_animation(scale_worm_big, bob_acid_worm_tint)
data.raw.corpse["bob-big-explosive-worm-corpse"].animation = worm_die_animation(scale_worm_big, bob_explosive_worm_tint)
data.raw.corpse["bob-big-fire-worm-corpse"].animation = worm_die_animation(scale_worm_big, bob_fire_worm_tint)
data.raw.corpse["bob-big-poison-worm-corpse"].animation = worm_die_animation(scale_worm_big, bob_poison_worm_tint)
data.raw.corpse["bob-big-piercing-worm-corpse"].animation = worm_die_animation(scale_worm_big, bob_piercing_worm_tint)
data.raw.corpse["bob-big-electric-worm-corpse"].animation = worm_die_animation(scale_worm_big, bob_electric_worm_tint)


data:extend(
{
  {
    type = "turret",
    name = "bob-giant-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    icon_size = 32,
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 1000,
    order="b-b-i",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 35,
      },
      {
        type = "fire",
        decrease = 3,
        percent = 70
      }
    },
    healing_per_tick = 0.03,
    collision_box = {{-2.1, -1.8}, {2.1, 1.8}},
    selection_box = {{-2.1, -1.8}, {2.1, 1.8}},
    map_generator_bounding_box = {{-3.1, -2.8}, {3.1, 2.8}},
    shooting_cursor_size = 6,
    rotation_speed = 1,
    corpse = "bob-giant-worm-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_speed_secondary = 0.024,
    folded_animation = worm_folded_animation(bob_giant_scale, bob_giant_worm_tint),
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(bob_giant_scale, bob_giant_worm_tint, "forward"),
    preparing_sound = make_worm_standup_sounds(1),
    prepared_speed = 0.015,
    prepared_speed_secondary = 0.012,
    prepared_animation = worm_prepared_animation(bob_giant_scale, bob_giant_worm_tint),
    prepared_sound = make_worm_breath(0.8),
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    prepared_alternative_chance = 0.2,
    prepared_alternative_animation = worm_prepared_alternative_animation(bob_giant_scale, bob_giant_worm_tint),
    prepared_alternative_sound = make_worm_roar_alternative(0.7),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_start_attack_animation(bob_giant_scale, bob_giant_worm_tint),
    starting_attack_sound = make_worm_roars(1.0),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_end_attack_animation(bob_giant_scale, bob_giant_worm_tint),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(bob_giant_scale, bob_giant_worm_tint, "backward"),
    folding_sound = make_worm_fold_sounds(1),
    integration = worm_integration(bob_giant_scale),
    secondary_animation = true,
    random_animation_offset = true,
    attack_from_start_frame = true,
    prepare_range = 70,
    allow_turning_when_starting_attack = true,
    attack_parameters =
    {
      type = "stream",
      ammo_category = "biological",
      damage_modifier = 84,
      cooldown = 4,
      range = 42,
      min_range = 0,
      projectile_creation_parameters = worm_shoot_shiftings(bob_giant_scale, bob_giant_scale * scale_worm_stream),
      use_shooter_direction = true,
      lead_target_for_projectile_speed = 0.2* 0.75 * 1.5 * 1.5, -- this is same as particle horizontal speed of flamethrower fire stream
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "stream",
            stream = "acid-stream-worm-behemoth",
            duration = 160,
            source_offset = {0.15, -0.5}
          }
        }
      },
    },
    build_base_evolution_requirement = 0.75,
    autoplace = enemy_autoplace.enemy_worm_autoplace(7),
    call_for_help_radius = 40
  },

  util.merge{data.raw.corpse["behemoth-worm-corpse"],
    {
      name = "bob-giant-worm-corpse",
      order = "c[corpse]-c[worm]-d[a-giant]",
    }
  },
}
)

data.raw.corpse["bob-giant-worm-corpse"].animation = worm_die_animation(bob_giant_scale, bob_giant_worm_tint)
data.raw.corpse["bob-giant-worm-corpse"].ground_patch = {sheet = worm_integration(bob_giant_scale)}


set_worm_animations(data.raw.turret["behemoth-worm-turret"], bob_behemoth_scale, tint_worm_behemoth)
data.raw.turret["behemoth-worm-turret"].collision_box = {{-2.8, -2.4}, {2.8, 2.4}}
data.raw.turret["behemoth-worm-turret"].selection_box = {{-2.8, -2.4}, {2.8, 2.4}}
data.raw.turret["behemoth-worm-turret"].map_generator_bounding_box = {{-3.8, -3.4}, {3.8, 3.4}}
data.raw.turret["behemoth-worm-turret"].integration = worm_integration(bob_behemoth_scale)
data.raw.turret["behemoth-worm-turret"].max_health = 1500
data.raw.turret["behemoth-worm-turret"].shooting_cursor_size = 8

data.raw.corpse["behemoth-worm-corpse"].animation = worm_die_animation(bob_behemoth_scale, tint_worm_behemoth)
data.raw.corpse["behemoth-worm-corpse"].ground_patch = {sheet = worm_integration(bob_behemoth_scale)}
