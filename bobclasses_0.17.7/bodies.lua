data:extend(
{
  {
    type = "item",
    name = "character",
    icon = data.raw.character["character"].icon,
    icon_size = 32,
    subgroup = "bodies",
    order = "a[character]",
    place_result = "character",
    stack_size = 10
  },
  {
    type = "item",
    name = "bob-character-miner",
    icons = {
      {icon = "__bobclasses__/icons/player.png", shift = {-5, 0}},
      {icon = "__bobclasses__/icons/miner.png", scale = 0.5, shift = {8, 0}} 
    },
    icon_size = 32,
    subgroup = "bodies",
    order = "a[character]-miner",
    place_result = "bob-character-miner",
    stack_size = 10
  },
  {
    type = "item",
    name = "bob-character-fighter",
    icons = {
      {icon = "__bobclasses__/icons/player.png", shift = {-5, 0}},
      {icon = "__bobclasses__/icons/fighter.png", scale = 0.5, shift = {8, 0}} 
    },
    icon_size = 32,
    subgroup = "bodies",
    order = "a[character]-fighter",
    place_result = "bob-character-fighter",
    stack_size = 10
  },
  {
    type = "item",
    name = "bob-character-builder",
    icons = {
      {icon = "__bobclasses__/icons/player.png", shift = {-5, 0}},
      {icon = "__bobclasses__/icons/builder.png", scale = 0.5, shift = {8, 0}} 
    },
    icon_size = 32,
    subgroup = "bodies",
    order = "a[character]-builder",
    place_result = "bob-character-builder",
    stack_size = 10
  },
}
)


data:extend
{
  {
    type = "item",
    name = "player-brain",
    icon = "__bobclasses__/icons/bodies/brain.png",
    icon_size = 32,
    
    subgroup = "body-parts",
    order = "a[player]-brain",
    stack_size = 100
  },
  {
    type = "item",
    name = "player-head",
    icon = "__bobclasses__/icons/bodies/head.png",
    icon_size = 32,
    
    subgroup = "body-parts",
    order = "a[player]-head",
    stack_size = 20
  },
  {
    type = "item",
    name = "player-boots",
    icon = "__bobclasses__/icons/bodies/boots.png",
    icon_size = 45,
    
    subgroup = "body-parts",
    order = "a[player]-boots",
    stack_size = 20
  },
  {
    type = "item",
    name = "player-gloves",
    icon = "__bobclasses__/icons/bodies/gloves.png",
    icon_size = 45,
    
    subgroup = "body-parts",
    order = "a[player]-gloves",
    stack_size = 20
  },
  {
    type = "item",
    name = "player-power-core",
    icon = "__bobclasses__/icons/bodies/fusion-core.png",
    icon_size = 128,
    
    subgroup = "body-parts",
    order = "a[player]-power-core",
    stack_size = 20
  },
  {
    type = "item",
    name = "player-frame",
    icon = "__bobclasses__/icons/bodies/shell.png",
    icon_size = 128,
    
    subgroup = "body-parts",
    order = "a[player]-power-core",
    stack_size = 20
  },

  {
    type = "recipe",
    name = "player-brain",
    energy_required = 3.5,
    enabled = false,
    ingredients =
    {
      {"iron-plate", 5},
    },
    result = "player-brain",
  },
  {
    type = "recipe",
    name = "player-head",
    energy_required = 3.5,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"player-brain", 1},
    },
    result = "player-head"
  },
  {
    type = "recipe",
    name = "player-boots",
    energy_required = 3.5,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"plastic-bar", 15},
    },
    result = "player-boots"
  },
  {
    type = "recipe",
    name = "player-gloves",
    energy_required = 3.5,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 15},
    },
    result = "player-gloves"
  },
  {
    type = "recipe",
    name = "player-power-core",
    energy_required = 3.5,
    enabled = false,
    ingredients =
    {
      {"battery", 15},
      {"processing-unit", 50},
    },
    result = "player-power-core"
  },
  {
    type = "recipe",
    name = "player-frame",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"player-head", 1},
      {"player-boots", 1},
      {"player-gloves", 1},
      {"player-power-core", 1},
      {"steel-plate", 5},
      {"advanced-circuit", 15},
    },
    result = "player-frame"
  },
}



data:extend
{
  {
    type = "recipe",
    name = "character",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"player-frame", 1},
      {"steel-chest", 1},
      {"assembling-machine-2", 1},
      {"electric-engine-unit", 8},
    },
    result = "character"
  },
  {
    type = "recipe",
    name = "bob-character-miner",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"player-frame", 1},
      {"steel-chest", 1},
      {"assembling-machine-2", 1},
      {"electric-engine-unit", 8},
      {"electric-furnace", 1}
    },
    result = "bob-character-miner"
  },
  {
    type = "recipe",
    name = "bob-character-fighter",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"player-frame", 1},
      {"steel-chest", 1},
      {"assembling-machine-2", 1},
      {"electric-engine-unit", 8},
    },
    result = "bob-character-fighter"
  },
  {
    type = "recipe",
    name = "bob-character-builder",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"player-frame", 1},
      {"steel-chest", 1},
      {"assembling-machine-3", 1},
      {"electric-engine-unit", 8},
    },
    result = "bob-character-builder"
  },
}


data:extend
{
  {
    type = "technology",
    name = "bodies",
    icon_size = 128,
    icon = "__bobclasses__/icons/bodies/body.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "character"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-character-miner"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-character-fighter"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-character-builder"
      },
      {
        type = "unlock-recipe",
        recipe = "player-brain"
      },
      {
        type = "unlock-recipe",
        recipe = "player-head"
      },
      {
        type = "unlock-recipe",
        recipe = "player-boots"
      },
      {
        type = "unlock-recipe",
        recipe = "player-gloves"
      },
      {
        type = "unlock-recipe",
        recipe = "player-power-core"
      },
      {
        type = "unlock-recipe",
        recipe = "player-frame"
      }
    },
    prerequisites =
    {
      "robotics",
      "advanced-electronics-2"
    },
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 60
    },
    order = "bodies",
  },
}

