data:extend({
  {
    type = "technology",
    name = "aai-signal-transmission",
    effects = {
      { type = "unlock-recipe", recipe = "aai-signal-sender", },
      { type = "unlock-recipe", recipe = "aai-signal-receiver", },
    },
    icon = "__aai-signal-transmission__/graphics/technology/signal-transmission.png",
    icon_size = 128,
    order = "e-g",
    prerequisites = {
      "advanced-electronics-2",
      "electric-engine"
    },
    unit = {
     count = 100,
     time = 10,
     ingredients = {
       { "automation-science-pack", 1 },
       { "logistic-science-pack", 1 },
       { "chemical-science-pack", 1 },
     }
    },
  }
})
