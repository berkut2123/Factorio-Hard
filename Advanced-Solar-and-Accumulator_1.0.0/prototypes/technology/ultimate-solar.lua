data:extend(
{
  {
    type = "technology",
    name = "ultimate-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-solar"
      }
    },
    prerequisites = {"elite-solar"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    order = "a-h-c",
  }
}
)
