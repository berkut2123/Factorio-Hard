data:extend(
{
  {
    type = "item",
    name = "solid-glass-mixture",
    icon = "__angelssmelting__/graphics/icons/glass-mixture.png",
	icon_size = 32,
    subgroup = "angels-glass",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-plate-glass",
    icon = "__angelssmelting__/graphics/icons/plate-glass.png",
	icon_size = 32,
    subgroup = "angels-glass",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-coil-glass-fiber",
    icon = "__angelssmelting__/graphics/icons/wire-coil-glass.png",
	icon_size = 32,
    subgroup = "angels-glass",
    order = "c",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-glass",
    icon = "__angelssmelting__/graphics/icons/molten-glass.png",
	icon_size = 32,
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 130/255, g = 127/255, b = 127/255},
    flow_color = {r = 130/255, g = 127/255, b = 127/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
}
)