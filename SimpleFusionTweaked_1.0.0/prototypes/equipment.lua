data:extend(
{ 
 {
    type = "generator-equipment",
    name = "small-reactor",
    sprite =
    {
      filename = "__SimpleFusionTweaked__/graphics/arc-reactor.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "250kW",
    categories = {"armor"}
  },
}
)