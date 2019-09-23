
if not data.raw.item["sand"] then
  data:extend({
    {
      icon = "__aai-industry__/graphics/icons/sand.png",
      icon_size = 64,
      name = "sand",
      order = "a[wood]-b-b",
      stack_size = 200,
      subgroup = "raw-material",
      type = "item"
    }
  })
end

if not data.raw.item["glass"] then
  data:extend({
    {
      icon = "__aai-industry__/graphics/icons/glass.png",
      icon_size = 64,
      name = "glass",
      order = "a[wood]-b-c",
      stack_size = 100,
      subgroup = "raw-material",
      type = "item"
    }
  })
end

data:extend({
  {
    type = "item",
    name = "stone-tablet",
    icon = "__aai-industry__/graphics/icons/stone-tablet.png",
    icon_size = 64,
    subgroup = "raw-material",
    order = "a[wood]-b[stone-tablet]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "motor",
    icon = "__aai-industry__/graphics/icons/motor.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "g[engine-unit]-a[motor]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "electric-motor",
    icon = "__aai-industry__/graphics/icons/electric-motor.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "g[engine-unit]-b[electric-motor]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "small-iron-electric-pole",
    icon = "__aai-industry__/graphics/icons/small-iron-electric-pole.png",
    icon_size = 32,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-a[small-electric-pole]",
    place_result = "small-iron-electric-pole",
    stack_size = 50
  },
  {
    type = "item",
    name = "concrete-wall",
    icon = "__aai-industry__/graphics/icons/concrete-wall.png",
    icon_size = 32,
    order = "a[stone-wall]-b[concrete-wall]",
    place_result = "concrete-wall",
    stack_size = 50,
    subgroup = "defensive-structure",
  },
  {
    type = "item",
    name = "steel-wall",
    icon = "__aai-industry__/graphics/icons/steel-wall.png",
    icon_size = 32,
    order = "a[stone-wall]-c[steel-wall]",
    place_result = "steel-wall",
    stack_size = 50,
    subgroup = "defensive-structure",
  },
  {
    type = "item",
    name = "burner-lab",
    icon = "__aai-industry__/graphics/icons/burner-lab.png",
    icon_size = 32,
    flags = data.raw.item.lab.flags,
    subgroup = data.raw.item.lab.subgroup,
    order = data.raw.item.lab.order,
    stack_size = data.raw.item.lab.stack_size,
    place_result = "burner-lab",
  },
  {
    type = "item",
    name = "burner-assembling-machine",
    icon = "__aai-industry__/graphics/icons/burner-assembling-machine.png",
    icon_size = 32,
    flags = data.raw.item["assembling-machine-1"].flags,
    subgroup = data.raw.item["assembling-machine-1"].subgroup,
    order = data.raw.item["assembling-machine-1"].order .. "-a",
    stack_size = data.raw.item["assembling-machine-1"].stack_size,
    place_result = "burner-assembling-machine",
  },
  {
    type = "item",
    name = "burner-turbine",
    icon = "__aai-industry__/graphics/icons/burner-turbine.png",
    icon_size = 32,
    subgroup = "energy",
    order = "a-a",
    place_result = "burner-turbine",
    stack_size = 50
  },
})
data.raw.item["assembling-machine-1"].order = data.raw.item["assembling-machine-1"].order .. "-b"
