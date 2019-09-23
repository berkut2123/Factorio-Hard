data:extend({
  {
      type = "gun",
      name = "electro-bolter-gun",
      icon = "__aai-vehicles-warden__/graphics/icons/electro-bolter.png",
      icon_size = 32,
      flags = {"hidden"},
      subgroup = "gun",
      order = "z[warden]-a[electro-bolter-gun]",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "electro-bolter",
        cooldown = 80,
        movement_slow_down_factor = 0,
        range = 40,
        projectile_center = {0, -1.0},
        projectile_creation_distance = 0.5,
        sound = {
          {
            filename = "__aai-vehicles-warden__/sound/electro-bolter.ogg",
            volume = 0.9
          },
        },
      },
      stack_size = 5,
    }
})
