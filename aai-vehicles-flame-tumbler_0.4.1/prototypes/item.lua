data:extend({
    {
      	type = "item-with-entity-data",
      	name = "vehicle-flame-tumbler",
      	icon = "__aai-vehicles-flame-tumbler__/graphics/icons/flame-tumbler.png",
        icon_size = 32,
      	subgroup="transport",
          order = "b[personal-transport]-a[car]-c[flame-tumbler]",
      	stack_size = 1,
      	place_result = "vehicle-flame-tumbler",
    },
    {
        type = "gun",
        name = "flame-tumbler-flamethrower",
        icon = "__base__/graphics/icons/flamethrower.png",
        icon_size = 32,
        flags = {"hidden"},
        subgroup = "gun",
        order = "e[flamethrower]",
        attack_parameters =
        {
          type = "stream",
          ammo_category = "flamethrower",
          cooldown = 1,
          movement_slow_down_factor = 0.6,
          projectile_creation_distance = 0.2,
          gun_barrel_length = 0.1,
          gun_center_shift = { 0, -0.8 },
          range = 15,
          min_range = 1,
          cyclic_sound =
          {
            begin_sound =
            {
              {
                filename = "__base__/sound/fight/flamethrower-start.ogg",
                volume = 0.7
              }
            },
            middle_sound =
            {
              {
                filename = "__base__/sound/fight/flamethrower-mid.ogg",
                volume = 0.7
              }
            },
            end_sound =
            {
              {
                filename = "__base__/sound/fight/flamethrower-end.ogg",
                volume = 0.7
              }
            }
          }
        },
        stack_size = 1
    },
})

-- fix ammo after 0.15
data.raw.ammo["flamethrower-ammo"].ammo_type = {
  category = "flamethrower",
  target_type = "position",
  clamp_position = true,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "stream",
      stream = "handheld-flamethrower-fire-stream",
      max_length = 15,
      duration = 160,
    }
  }
}
local flamejet = table.deepcopy(data.raw.ammo["flamethrower-ammo"])
flamejet.name = "flamejet-ammo"
flamejet.icon = "__aai-vehicles-flame-tumbler__/graphics/icons/flamejet-ammo.png"
flamejet.ammo_type = {
  consumption_modifier = 1.125,
  category = "flamethrower",
  target_type = "position",
  clamp_position = true,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "stream",
      stream = "tank-flamethrower-fire-stream",
      max_length = 9,
      duration = 160,
    }
  }
}
data:extend({flamejet})
