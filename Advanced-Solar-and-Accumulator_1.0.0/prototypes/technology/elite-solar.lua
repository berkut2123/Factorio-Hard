data:extend(
{
  {
    type = "technology",
    name = "elite-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "elite-solar"
      }
    },
    prerequisites = {"advanced-solar"},
    unit =
    {
      count = 200,
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
