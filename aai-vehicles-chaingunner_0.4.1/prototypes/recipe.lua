data:extend({{
  type = "recipe",
  name = "vehicle-chaingunner",
  normal = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="iron-plate", amount=16},
      {type="item", name="iron-gear-wheel", amount=8},
      {type="item", name="gun-turret", amount=1},
    },
    results= { {type="item", name="vehicle-chaingunner", amount=1} },
  },
  expensive = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="iron-plate", amount=20},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="gun-turret", amount=1},
    },
    results= { {type="item", name="vehicle-chaingunner", amount=1} },
  }
}})
