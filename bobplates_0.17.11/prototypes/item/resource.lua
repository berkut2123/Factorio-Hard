data:extend(
{
  {
    type = "item",
    name = "carbon",
    icon = "__bobplates__/graphics/icons/carbon.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[carbon]",
    fuel_category = "chemical",
    fuel_value = "2MJ", --"4MJ",
    fuel_emissions_multiplier = 0.9,
    stack_size = 100
  },

  {
    type = "item",
    name = "resin",
    icon = "__bobplates__/graphics/icons/resin.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[resin]",
    stack_size = 100
  },

  {
    type = "item",
    name = "rubber",
    icon = "__bobplates__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[rubber]",
    stack_size = 100
  },

  {
    type = "item",
    name = "glass",
    icon = "__bobplates__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[glass]",
    stack_size = 100
  }, 

  {
    type = "item",
    name = "silicon-wafer",
    icon = "__bobplates__/graphics/icons/silicon-wafer.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[silicon-wafer]",
    stack_size = 500
  },

  {
    type = "item",
    name = "lithium-cobalt-oxide",
    icon = "__bobplates__/graphics/icons/lithium-cobalt-oxide.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "c-b[lithium-cobalt-oxide]",
    stack_size = 100
  },

  {
    type = "item",
    name = "polishing-compound",
    icon = "__bobplates__/graphics/icons/polishing-compound.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[polishing-compound]",
    stack_size = 100
  },


  {
    type = "item",
    name = "gas-canister",
    icon = "__bobplates__/graphics/icons/gas-canister.png",
    icon_size = 32,
    subgroup = "bob-gas-bottle",
    order = "f-b[gas-canister]",
    stack_size = 10
  },

  {
    type = "item",
    name = "empty-canister",
    icon = "__bobplates__/graphics/icons/empty-canister.png",
    icon_size = 32,
    subgroup = "bob-barrel",
    order = "f-c[empty-canister]",
    stack_size = 10
  },


  {
    type = "item",
    name = "void",
    icon = "__bobplates__/graphics/icons/void.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "void",
    order = "void",
    stack_size = 100
  },


  {
    type = "item",
    name = "enriched-fuel",
    icon = "__bobplates__/graphics/icons/enriched-fuel.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "50MJ", --"100MJ",
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 1.1,
    fuel_emissions_multiplier = 0.7,
    subgroup = "bob-resource",
    order = "d[enriched-fuel]",
    stack_size = 20
  },
}
)

