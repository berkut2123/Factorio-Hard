--Changes the crafting speed of motors to .5 seconds and the crafting speed of electric motors to .75 seconds.
data:extend({
  {
    type = "recipe",
    name = "motor",
    category = "crafting",
    normal = {
      energy_required = 0.5,
      ingredients = {
        {type="item", name="iron-plate", amount=2},
        {type="item", name="iron-gear-wheel", amount=1}
      },
      results= { {type="item", name="motor", amount=1} },
    },
    expensive = {
      energy_required = 0.5,
      ingredients = {
        {type="item", name="iron-plate", amount=2},
        {type="item", name="iron-gear-wheel", amount=1}
      },
      results= { {type="item", name="motor", amount=1} },
    }
  },
  {
    type = "recipe",
    name = "electric-motor",
    category = "crafting",
    normal = {
      enabled = false,
      energy_required = 0.75,
      ingredients = {
        {type="item", name="motor", amount=1},
        {type="item", name="copper-cable", amount=6}
      },
      results= { {type="item", name="electric-motor", amount=1} },
    },
    expensive = {
      enabled = false,
      energy_required = 0.75,
      ingredients = {
        {type="item", name="motor", amount=1},
        {type="item", name="copper-cable", amount=10}
      },
      results= { {type="item", name="electric-motor", amount=1} },
    }
  }
})