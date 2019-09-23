data:extend(
{
  {
    type = "technology",
    name = "advanced-accumulators",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-accumulator"
      }
    },
    prerequisites = {"electric-energy-accumulators"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 45
    },
    order = "c-e-b",
  }
}
)
