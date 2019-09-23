local util = require("data-util")

local basic_circuit = data.raw.item["basic-circuit-board"] and "basic-circuit-board" or "electronic-circuit"

-- Bobs

-- Angels

util.conditional_modify({
  type = "recipe",
  name = "burner-ore-crusher",
  normal = {
    ingredients = {
      {type="item", name="stone-brick", amount=4},
      {type="item", name="iron-plate", amount=4},
      {type="item", name="motor", amount=1},
    },
  },
  expensive = {
    ingredients = {
      {type="item", name="stone-brick", amount=8},
      {type="item", name="iron-plate", amount=8},
      {type="item", name="motor", amount=2},
    },
  }
})

util.conditional_modify({
  type = "recipe",
  name = "ore-crusher",
  normal = {
    ingredients = {
      {type="item", name="stone-brick", amount=8},
      {type="item", name="iron-gear-wheel", amount=8},
      {type="item", name="electric-motor", amount=2},
      {type="item", name="burner-ore-crusher", amount=1},
    },
  },
  expensive = {
    ingredients = {
      {type="item", name="stone-brick", amount=16},
      {type="item", name="iron-gear-wheel", amount=16},
      {type="item", name="electric-motor", amount=4},
      {type="item", name="burner-ore-crusher", amount=1},
    },
  }
})

util.conditional_modify({
  type = "recipe",
  name = "ore-sorting-facility",
  normal = {
    ingredients = {
      {type="item", name="stone-brick", amount=30},
      {type="item", name="iron-plate", amount=15},
      {type="item", name="electric-motor", amount=5},
    },
  },
  expensive = {
    ingredients = {
      {type="item", name="stone-brick", amount=50},
      {type="item", name="iron-plate", amount=30},
      {type="item", name="electric-motor", amount=10},
    },
  }
})

util.conditional_modify({
  type = "recipe",
  name = "ore-sorting-facility",
  normal = {
    ingredients = {
      {type="item", name="stone-brick", amount=30},
      {type="item", name="iron-plate", amount=15},
      {type="item", name="electric-motor", amount=5},
    },
  },
  expensive = {
    ingredients = {
      {type="item", name="stone-brick", amount=50},
      {type="item", name="iron-plate", amount=30},
      {type="item", name="electric-motor", amount=10},
    },
  }
})

util.conditional_modify({
  type = "recipe",
  name = "ore-floatation-cell",
  normal = {
    ingredients = {
      {type="item", name="steel-plate", amount=10},
      {type="item", name="stone-brick", amount=20},
      {type="item", name=basic_circuit, amount=10},
      {type="item", name="electric-motor", amount=5},
    },
  },
  expensive = {
    ingredients = {
      {type="item", name="steel-plate", amount=30},
      {type="item", name="stone-brick", amount=30},
      {type="item", name=basic_circuit, amount=20},
      {type="item", name="electric-motor", amount=10},
    },
  }
})


util.allow_productivity("electronic-circuit-stone")
util.allow_productivity("circuit-stone")
util.allow_productivity("stone-tablet")
util.allow_productivity("motor")
util.allow_productivity("electric-motor")
util.allow_productivity("sand-from-stone")
util.allow_productivity("glass-from-sand")
util.allow_productivity("sand-to-solid-sand")
util.allow_productivity("sand-to-solid-sand")
util.allow_productivity("oil-processing-heavy")
