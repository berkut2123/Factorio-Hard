data:extend({{
  type = "recipe",
  name = "vehicle-warden",
  normal = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="iron-plate", amount=20},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="iron-chest", amount=5},
      {type="item", name="electronic-circuit", amount=50},
      {type="item", name="radar", amount=1},
    },
    results= { {type="item", name="vehicle-warden", amount=1} },
  },
  expensive = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="iron-plate", amount=30},
      {type="item", name="iron-gear-wheel", amount=20},
      {type="item", name="iron-chest", amount=10},
      {type="item", name="electronic-circuit", amount=100},
      {type="item", name="radar", amount=1},
    },
    results= { {type="item", name="vehicle-warden", amount=1} },
  }
},{
  type = "recipe",
  name = "electroshock-pulse-ammo",
  normal = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="electronic-circuit", amount=4},
      {type="item", name="coal", amount=1},
    },
    results= { {type="item", name="electroshock-pulse-ammo", amount=1} },
  },
  expensive = {
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="electronic-circuit", amount=8},
      {type="item", name="coal", amount=2},
    },
    results= { {type="item", name="electroshock-pulse-ammo", amount=1} },
  }
}})
