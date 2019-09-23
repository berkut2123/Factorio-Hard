data:extend(
{
  {
    type = "solar-panel",
    name = "elite-solar",
    icon = "__Advanced-Solar-and-Accumulator__/graphics/elite-solar/elite-solar-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "elite-solar"},
    max_health = 250,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Advanced-Solar-and-Accumulator__/graphics/elite-solar/elite-solar.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "6MW"
  }
}
)
