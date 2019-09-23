--Ironworks recipes
    -- IRONWORKS -- This needs rebalancing, and extension to cobalt-steel gears etc...
data:extend({
  {
    type = "recipe",
    name = "angels-iron-pipe-casting",
    category = "casting",
	  subgroup = "angels-iron-casting",
    energy_required = 4,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=40},
	  },
    results=
    {
      {type="item", name="pipe", amount=4},
    },
    order = "yd",
    },
    {
    type = "recipe",
    name = "angels-iron-pipe-to-ground-casting",
    category = "casting",
	  subgroup = "angels-iron-casting",
    energy_required = 2,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=150},
	  },
    results=
    {
      {type="item", name="pipe-to-ground", amount=2},
    },
    order = "ye",
    },
    {
    type = "recipe",
    name = "angels-iron-gear-wheel-casting",
    category = "casting",
	  subgroup = "angels-iron-casting",
    energy_required = 2,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=40},
	  },
    results=
    {
      {type="item", name="iron-gear-wheel", amount=12},
    },
    order = "yc",
    },
    {
    type = "recipe",
    name = "angels-steel-gear-wheel-casting",
    category = "casting",
	  subgroup = "angels-steel-casting",
    energy_required = 4,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=40},
	  },
    results=
    {
      {type="item", name="steel-gear-wheel", amount=12},
    },
    order = "yc",
    },
    {
    type = "recipe",
    name = "angels-brass-gear-wheel-casting",
    category = "casting",
	  subgroup = "angels-alloys-casting",
    energy_required = 20,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-brass", amount=40},
	  },
    results=
    {
      {type="item", name="brass-gear-wheel", amount=12},
    },
    order = "yc",
    },
    {
    type = "recipe",
    name = "angels-titanium-gear-wheel-casting",
    category = "casting",
	  subgroup = "angels-titanium-casting",
    energy_required = 4,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-titanium", amount=40},
	  },
    results=
    {
      {type="item", name="titanium-gear-wheel", amount=12},
    },
    order = "yc",
    },
})
