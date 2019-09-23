data:extend({
    {
    type = "technology",
    name = "angels-alloys-smelting-1",
    icon = "__angelssmelting-extended-upgradet__/graphics/technology/smelting-bronze.png",
	  icon_size = 128,
	  upgrade = true,
	  prerequisites =
    {
	  "angels-copper-smelting-1",
    "angels-tin-smelting-1",
    "angels-zinc-smelting-1",
	  "alloy-processing-1",
    },
    effects =
    {
    {
      type = "unlock-recipe",
      recipe = "angels-bronze-smelting-1"
    },
	  {
      type = "unlock-recipe",
      recipe = "angels-plate-bronze"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-brass-smelting-1"
    },
	  {
      type = "unlock-recipe",
      recipe = "angels-plate-brass"
    },      
    },
    unit =
    {
      count = 100,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  },
      time = 30
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "angels-alloys-smelting-2",
    icon = "__angelssmelting-extended-upgradet__/graphics/technology/smelting-bronze.png",
	  icon_size = 128,
	  upgrade = true,
	  prerequisites =
    {
	  "angels-alloys-smelting-1",
    "angels-steel-smelting-1",
    "angels-cobalt-smelting-1",
    "angels-nickel-smelting-1",
	  },
    effects =
    {
    {
      type = "unlock-recipe",
      recipe = "angels-gunmetal-smelting-1"
    },
	  {
      type = "unlock-recipe",
      recipe = "angels-plate-gunmetal"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-invar-smelting-1"
    },
	  {
      type = "unlock-recipe",
      recipe = "angels-plate-invar"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-plate-cobalt-steel-1"
    },      
    },
    unit =
    {
      count = 150,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
	  },
      time = 30
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "angels-alloys-smelting-3",
    icon = "__angelssmelting-extended-upgradet__/graphics/technology/smelting-bronze.png",
	  icon_size = 128,
	  upgrade = true,
	  prerequisites =
    {
	  "angels-alloys-smelting-2",
    "angels-gold-smelting-1",
    "angels-silver-smelting-1",
    "angels-titanium-smelting-1",
	  },
    effects =
    {
    {
      type = "unlock-recipe",
      recipe = "angels-nitinol-smelting-1"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-plate-nitinol"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-plate-cobalt-steel-2"
    },	       
    },
    unit =
    {
      count = 300,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
	  },
      time = 30
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "angels-ironworks-1",
    icon = "__angelssmelting-extended-upgradet__/graphics/technology/smelting-iron.png",
	  icon_size = 128,
	  upgrade = true,
	  prerequisites =
    {
	  "angels-iron-smelting-1",
	  },
    effects =
    {
	  {
      type = "unlock-recipe",
      recipe = "angels-roll-iron-casting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-roll-iron-converting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-iron-gear-wheel-casting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-iron-pipe-casting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-iron-pipe-to-ground-casting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-roll-copper-casting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-roll-copper-converting"
    },    	       
    },
    unit =
    {
      count = 150,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  },
      time = 30
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "angels-ironworks-2",
    icon = "__angelssmelting-extended-upgradet__/graphics/technology/smelting-steel.png",
	  icon_size = 128,
	  upgrade = true,
	  prerequisites =
    {
	  "angels-steel-smelting-1",
    "angels-alloys-smelting-1",
    "angels-ironworks-1",
	  },
    effects =
    {
	  {
      type = "unlock-recipe",
      recipe = "angels-steel-gear-wheel-casting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-brass-gear-wheel-casting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-roll-brass-converting"
    },
    {
      type = "unlock-recipe",
      recipe = "angels-roll-brass-casting"
    },	       
    },
    unit =
    {
      count = 300,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  },
      time = 30
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "angels-ironworks-3",
    icon = "__angelssmelting-extended-upgradet__/graphics/technology/smelting-titanium.png",
	  icon_size = 128,
	  upgrade = true,
	  prerequisites =
    {
	  "angels-titanium-smelting-1",
    "angels-ironworks-2",
	  },
    effects =
    {
	  {
      type = "unlock-recipe",
      recipe = "angels-titanium-gear-wheel-casting"
    },	       
    },
    unit =
    {
      count = 300,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
	  },
      time = 30
    },
    order = "c-a"
    },
})
    