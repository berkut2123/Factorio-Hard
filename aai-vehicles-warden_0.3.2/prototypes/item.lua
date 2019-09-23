data:extend({{
    type = "item-with-entity-data",
    name = "vehicle-warden",
    icon = "__aai-vehicles-warden__/graphics/icons/warden.png",
    icon_size = 32,
    subgroup="transport",
      order = "ab[industrial]-b[warden]",
      stack_size = 1,
    place_result = "vehicle-warden",
  },
  {
      type = "ammo",
      name = "electroshock-pulse-ammo",
      icon = "__aai-vehicles-warden__/graphics/icons/electroshock-pulse-ammo.png",
      icon_size = 32,
      ammo_type =
      {
        category = "electro-bolter",
        target_type = "position",
        action =
        {
          type = "direct",
          action_delivery =
          {
            projectile = "electroshock-pulse-projectile",
            starting_speed = 0.75,
            max_range = 40,
            type = "projectile"
          }
        }
      },
      magazine_size = 4,
      subgroup = "ammo",
      order = "r[repair-bolter]-a[repair-ammo]",
      stack_size = 50
  }
})
