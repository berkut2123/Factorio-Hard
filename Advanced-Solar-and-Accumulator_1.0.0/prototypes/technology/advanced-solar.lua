data:extend(
{
  {
    type = "technology",
    name = "advanced-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-solar"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 45
    },
    order = "a-h-c",
  }
}
)
