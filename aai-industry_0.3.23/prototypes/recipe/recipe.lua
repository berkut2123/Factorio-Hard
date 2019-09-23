local util = require("data-util")

data:extend({
  {
    ingredients = {
      { "stone", 1 }
    },
    name = "sand-from-stone",
    result = "sand",
    result_count = 2,
    type = "recipe",
    enabled = false,
    energy_required = 0.5,
  }
})

data:extend({
  {
    category = "smelting",
    enabled = true,
    energy_required = 4,
    ingredients = {
      { "sand", 4 }
    },
    name = "glass-from-sand",
    result = "glass",
    type = "recipe",
    enabled = false,
  },
})

data:extend({{
    type = "recipe",
    name = "stone-tablet",
    category = "crafting",
    energy_required = 0.5,
    ingredients =
    {
      {type="item", name="stone-brick", amount=1}
    },
    results= { {type="item", name="stone-tablet", amount=4} },
}})

data:extend({{
    type = "recipe",
    name = "motor",
    category = "crafting",
    normal = {
      energy_required = 0.6,
      ingredients = {
        {type="item", name="iron-plate", amount=1},
        {type="item", name="iron-gear-wheel", amount=1}
      },
      results= { {type="item", name="motor", amount=1} },
    },
    expensive = {
      energy_required = 0.6,
      ingredients = {
        {type="item", name="iron-plate", amount=2},
        {type="item", name="iron-gear-wheel", amount=1}
      },
      results= { {type="item", name="motor", amount=1} },
    }
}})

data:extend({{
    type = "recipe",
    name = "electric-motor",
    category = "crafting",
    normal = {
      enabled = false,
      energy_required = 0.8,
      ingredients = {
        {type="item", name="motor", amount=1},
        {type="item", name="copper-cable", amount=6}
      },
      results= { {type="item", name="electric-motor", amount=1} },
    },
    expensive = {
      enabled = false,
      energy_required = 0.8,
      ingredients = {
        {type="item", name="motor", amount=1},
        {type="item", name="copper-cable", amount=10}
      },
      results= { {type="item", name="electric-motor", amount=1} },
    }
}})

data:extend({{
    type = "recipe",
    name = "small-iron-electric-pole",
    category = "crafting",
    energy_required = 0.25,
    normal = {
      enabled = false,
      ingredients =
      {
        {"iron-stick", 2},
        {"copper-cable", 2}
      },
      results= { {type="item", name="small-iron-electric-pole", amount=1}, },
    },
    expensive = {
      enabled = false,
      ingredients =
      {
        {"iron-stick", 2},
        {"copper-cable", 2}
      },
      results= { {type="item", name="small-iron-electric-pole", amount=1}, },
    },
}})

data:extend({{
    type = "recipe",
    name = "concrete-wall",
    category = "crafting",
    enabled = false,
    energy_required = 0.25,
    normal = {
      ingredients =
      {
        { "stone-wall", 1 },
        { "concrete", 12 }
      },
      results= { {type="item", name="concrete-wall", amount=1}, },
    },
    expensive = {
      ingredients =
      {
        { "stone-wall", 1 },
        { "concrete", 12 }
      },
      results= { {type="item", name="concrete-wall", amount=1}, },
    },
}})

data:extend({{
    type = "recipe",
    name = "steel-wall",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    normal = {
      ingredients =
      {
        { "concrete-wall", 1 },
        { "steel-plate", 5 }
      },
      results= { {type="item", name="steel-wall", amount=1}, },
    },
    expensive = {
      ingredients =
      {
        { "concrete-wall", 1 },
        { "steel-plate", 10 }
      },
      results= { {type="item", name="steel-wall", amount=1}, },
    },
}})

data:extend({{
    type = "recipe",
    name = "burner-lab",
    category = "crafting",
    enabled = true,
    energy_required = 0.5,
    normal = {
      ingredients =
      {
        {type="item", name="motor", amount=10},
        {type="item", name="copper-plate", amount=10},
        {type="item", name="stone-brick", amount=5},
      },
      results= { {type="item", name="burner-lab", amount=1}, },
    },
    expensive = {
      ingredients =
      {
        {type="item", name="motor", amount=20},
        {type="item", name="copper-plate", amount=20},
        {type="item", name="stone-brick", amount=10},
      },
      results= { {type="item", name="burner-lab", amount=1}, },
    },
}})

data:extend({{
    type = "recipe",
    name = "burner-turbine",
    category = "crafting",
    normal = {
      enabled = false,
      energy_required = 1,
      ingredients =
      {
        {type="item", name="electric-motor", amount=4},
        {type="item", name="iron-gear-wheel", amount=5},
        {type="item", name="stone-furnace", amount=1},
      },
      results= { {type="item", name="burner-turbine", amount=1}, },
    },
    expensive = {
      enabled = false,
      energy_required = 1,
      ingredients =
      {
        {type="item", name="electric-motor", amount=8},
        {type="item", name="iron-gear-wheel", amount=10},
        {type="item", name="stone-furnace", amount=1},
      },
      results= { {type="item", name="burner-turbine", amount=1}, },
    },
}})

data:extend({{
    type = "recipe",
    name = "burner-assembling-machine",
    category = "crafting",
    normal = {
      enabled = false,
      energy_required = 0.5,
      ingredients = {
        {type="item", name="iron-plate", amount=8},
        {type="item", name="stone-brick", amount=4},
        {type="item", name="motor", amount=1},
      },
      results= { {type="item", name="burner-assembling-machine", amount=1} },
    },
    expensive = {
      enabled = false,
      energy_required = 0.5,
      ingredients = {
        {type="item", name="iron-plate", amount=16},
        {type="item", name="stone-brick", amount=16},
        {type="item", name="motor", amount=4},
      },
      results= { {type="item", name="burner-assembling-machine", amount=1} },
    }
  },
})
