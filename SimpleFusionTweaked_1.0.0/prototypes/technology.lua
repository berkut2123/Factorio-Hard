data:extend(
{
  {
    type = "technology",
    name = "small-reactor-technology",
    icon = "__SimpleFusionTweaked__/graphics/arc-reactor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "small-reactor-equipment"
      },
    },
    unit =
    {
      count = 10,
      ingredients =
      {
        {"automation-science-pack", 1},
      },
      time = 30
    },
    upgrade = false,
    order = "a-f",
	icon_size = 128,
  },
}
)