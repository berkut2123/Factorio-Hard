data:extend(
{
  {
    type = "technology",
    name = "ultimate-accumulators",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-accumulator"
      }
    },
    prerequisites = {"elite-accumulators"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    order = "c-e-c",
  }
}
)
