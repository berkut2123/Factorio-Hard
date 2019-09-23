data:extend(
{
  {
    type = "item",
    name = "bio-tile",
    icon = "__angelssmelting__/graphics/icons/brick-clay.png",
	icon_size = 32,
    subgroup = "angels-stone",
    order = "f",
    stack_size = 1000,
    place_as_tile =
    {
      result = "bio-tile",
      condition_size = 4,
      condition = { "water-tile" }
    }
  },
  {
    type = "tile",
    name = "bio-tile",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "bio-tile"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.5,
    layer = 80,
    decorative_removal_probability = 1,
    variants =
    {
      main =
      {
        {
          picture = "__angelsindustries__/graphics/entity/tile-bio/bio-tile-small.png",
          count = 16,
		  scale = 0.5,
          size = 1
        },
        -- {
          -- picture = "__angelsindustries__/graphics/entity/tile-bio/bio-tile-small.png",
          -- count = 4,
		  -- scale = 0.5,
          -- size = 2
        -- },
      },
      inner_corner =
      {
        picture = "__angelsindustries__/graphics/entity/tile-bio/bio-tile-corner-inner.png",
		width = 128,
        height = 128,
		scale = 0.5,
        count = 1
      },
      outer_corner =
      {
        picture = "__angelsindustries__/graphics/entity/tile-bio/bio-tile-corner-outer.png",
		width = 128,
        height = 128,
		scale = 0.5,
        count = 1
      },
      side =
      {
        picture = "__angelsindustries__/graphics/entity/tile-bio/bio-tile-side.png",
		scale = 0.5,
        count = 4
      },
      u_transition =
      {
        picture = "__angelsindustries__/graphics/entity/tile-bio/bio-tile-corner-u.png",
		scale = 0.5,
        count = 1
      },
      o_transition =
      {
        picture = "__angelsindustries__/graphics/entity/tile-bio/bio-tile-corner-o.png",
		scale = 0.5,
        count = 1
      }
    },
    walking_sound =
    {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
      }
    },
    map_color={r=50, g=50, b=50},
    ageing=0,
    vehicle_friction_modifier = 1.1
  },
}
)