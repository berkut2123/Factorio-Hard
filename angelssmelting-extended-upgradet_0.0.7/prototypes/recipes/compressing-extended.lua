data:extend({
    --IRON COMPRESSING
    {
    type = "recipe",
    name = "angels-roll-iron-casting",
    category = "casting",
	  subgroup = "angels-iron-casting",
    energy_required = 2,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=40},
	  },
    results=
    {
      {type="item", name="angels-roll-iron", amount=1},
    },
    order = "ya",
    },
    {
    type = "recipe",
    name = "angels-roll-iron-converting",
    category = "advanced-crafting",
	  subgroup = "angels-iron-casting",
    energy_required = 0.5,
	  enabled = "false",
    ingredients ={
      {type="item", name="angels-roll-iron", amount=1},
	  },
    results=
    {
      {type="item", name="angels-plate-iron", amount=4},
    },
    order = "yb",
    },
    --BRASS COMPRESSING
    {
    type = "recipe",
    name = "angels-roll-brass-casting",
    category = "casting",
	  subgroup = "angels-alloys-casting",
    energy_required = 10,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-brass", amount=40},
	  },
    results=
    {
      {type="item", name="angels-roll-brass", amount=1},
    },
    order = "yo",
    },
    {
    type = "recipe",
    name = "angels-roll-brass-converting",
    category = "advanced-crafting",
	  subgroup = "angels-alloys-casting",
    energy_required = 0.5,
	  enabled = "false",
    ingredients ={
      {type="item", name="angels-roll-brass", amount=1},
	  },
    results=
    {
      {type="item", name="angels-plate-brass", amount=5},
    },
    order = "yp",
    },
    --COPPER COMPRESSING
    {
    type = "recipe",
    name = "angels-roll-copper-casting",
    category = "casting",
	  subgroup = "angels-copper-casting",
    energy_required = 2,
	  enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-copper", amount=40},
	  },
    results=
    {
      {type="item", name="angels-roll-copper", amount=1},
    },
    order = "ya",
    },
    {
    type = "recipe",
    name = "angels-roll-copper-converting",
    category = "advanced-crafting",
	  subgroup = "angels-copper-casting",
    energy_required = 0.5,
	  enabled = "false",
    ingredients ={
      {type="item", name="angels-roll-copper", amount=1},
	  },
    results=
    {
      {type="item", name="angels-plate-copper", amount=4},
    },
    order = "yb",
    },
    -- IRONWORKS
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
      {type="item", name="iron-gear-wheel", amount=2},
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
      {type="item", name="steel-gear-wheel", amount=4},
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
      {type="item", name="brass-gear-wheel", amount=4},
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
      {type="item", name="titanium-gear-wheel", amount=4},
    },
    order = "yc",
    },
})