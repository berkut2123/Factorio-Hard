data:extend{
    {
        type = "recipe",
        name = "vehicle-miner",
        normal = {
          ingredients = {
              {"burner-mining-drill", 5},
              {"iron-plate", 20},
              {"iron-gear-wheel", 10},
          },
          enabled = false,
          energy_required = 4,
          results= { {type="item", name="vehicle-miner", amount=1} }
        },
        expensive = {
          ingredients = {
              {"burner-mining-drill", 5},
              {"iron-plate", 20},
              {"iron-gear-wheel", 10},
          },
          enabled = false,
          energy_required = 4,
          results= { {type="item", name="vehicle-miner", amount=1} }
        }
    },
    {
        type = "recipe",
        name = "vehicle-miner-mk2",
        normal = {
          ingredients = {
              {"vehicle-miner", 1},
              {"electric-mining-drill", 5},
              {"engine-unit", 5},
              {"steel-plate", 20},
          },
          enabled = false,
          energy_required = 4,
          results= { {type="item", name="vehicle-miner-mk2", amount=1} }
        },
        expensive = {
          ingredients = {
              {"vehicle-miner", 1},
              {"electric-mining-drill", 5},
              {"engine-unit", 5},
              {"steel-plate", 20},
          },
          enabled = false,
          energy_required = 6,
          results= { {type="item", name="vehicle-miner-mk2", amount=1} }
        }
    },
    {
        type = "recipe",
        name = "vehicle-miner-mk3",
        normal = {
          ingredients = {
              {"vehicle-miner-mk2", 1},
              {"speed-module", 5},
              {"electric-engine-unit", 10},
              {"steel-plate", 30},
          },
          enabled = false,
          energy_required = 8,
          results= { {type="item", name="vehicle-miner-mk3", amount=1} }
        },
        expensive = {
          ingredients = {
              {"vehicle-miner-mk2", 1},
              {"speed-module", 5},
              {"electric-engine-unit", 10},
              {"steel-plate", 30},
          },
          enabled = false,
          energy_required = 8,
          results= { {type="item", name="vehicle-miner-mk3", amount=1} }
        },
    },
    {
        type = "recipe",
        name = "vehicle-miner-mk4",
        normal = {
          ingredients = {
              {"vehicle-miner-mk3", 1},
              {"speed-module-2", 10},
              {"processing-unit", 20},
              {"electric-engine-unit", 20},
              {"steel-plate", 40},
          },
          enabled = false,
          energy_required = 10,
          results= { {type="item", name="vehicle-miner-mk4", amount=1} }
        },
        expensive = {
          ingredients = {
              {"vehicle-miner-mk3", 1},
              {"speed-module-2", 10},
              {"processing-unit", 20},
              {"electric-engine-unit", 20},
              {"steel-plate", 40},
          },
          enabled = false,
          energy_required = 10,
          results= { {type="item", name="vehicle-miner-mk4", amount=1} }
        },
    },
    {
        type = "recipe",
        name = "vehicle-miner-mk5",
        normal = {
          ingredients = {
              {"vehicle-miner-mk4", 1},
              {"fusion-reactor-equipment", 1},
              {"speed-module-3", 20},
              {"steel-plate", 50},
              {"electric-engine-unit", 100},
          },
          enabled = false,
          energy_required = 12,
          results= { {type="item", name="vehicle-miner-mk5", amount=1} }
        },
        expensive = {
          ingredients = {
              {"vehicle-miner-mk4", 1},
              {"fusion-reactor-equipment", 1},
              {"speed-module-3", 20},
              {"steel-plate", 50},
              {"electric-engine-unit", 100},
          },
          enabled = false,
          energy_required = 12,
          results= { {type="item", name="vehicle-miner-mk5", amount=1} }
        },
    },
}
