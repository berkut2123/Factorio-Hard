data:extend({{
  type = "recipe",
  name = "vehicle-hauler",
  normal = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="iron-plate", amount=20},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="iron-chest", amount=5},
    },
    results= { {type="item", name="vehicle-hauler", amount=1} },
  },
  expensive = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="iron-plate", amount=30},
      {type="item", name="iron-gear-wheel", amount=20},
      {type="item", name="iron-chest", amount=10},
    },
    results= { {type="item", name="vehicle-hauler", amount=1} },
  }
}})
