local wooden_poles_2 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-1"])
wooden_poles_2.name = "small-electric-pole-2"
wooden_poles_2.effects = {{}}
wooden_poles_2.effects[1].type = "unlock-recipe"
wooden_poles_2.effects[1].recipe = "small-electric-pole-2"
wooden_poles_2.prerequisites[1] = "electronics"
wooden_poles_2.unit.count = 75
wooden_poles_2.unit.ingredients = {{}}
wooden_poles_2.unit.ingredients[1] = {"automation-science-pack", 1}
wooden_poles_2.unit.time = 30
wooden_poles_2.order = "c-e-b-2"
wooden_poles_2.upgrade = true
data:extend({wooden_poles_2})

local metal_poles_2 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-1"])
metal_poles_2.name = "electric-pole-2"
metal_poles_2.effects[1].type = "unlock-recipe"
metal_poles_2.effects[1].recipe = "medium-electric-pole-2"
metal_poles_2.effects[2].type = "unlock-recipe"
metal_poles_2.effects[2].recipe = "big-electric-pole-2"
metal_poles_2.prerequisites[1] = "electric-energy-distribution-1"
metal_poles_2.prerequisites[2] = "small-electric-pole-2"
metal_poles_2.unit.count = 75
metal_poles_2.unit.ingredients[1] = {"automation-science-pack", 1}
metal_poles_2.unit.ingredients[2] = {"logistic-science-pack", 1}
metal_poles_2.unit.time = 30
metal_poles_2.order = "c-e-b-3"
metal_poles_2.upgrade = true
data:extend({metal_poles_2})

local metal_poles_3 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-1"])
metal_poles_3.name = "electric-pole-3"
metal_poles_3.effects[1].type = "unlock-recipe"
metal_poles_3.effects[1].recipe = "medium-electric-pole-3"
metal_poles_3.effects[2].type = "unlock-recipe"
metal_poles_3.effects[2].recipe = "big-electric-pole-3"
metal_poles_3.prerequisites[1] = "electric-pole-2"
metal_poles_3.unit.count = 100
metal_poles_3.unit.ingredients[1] = {"automation-science-pack", 1}
metal_poles_3.unit.ingredients[2] = {"logistic-science-pack", 1}
metal_poles_3.unit.ingredients[3] = {"chemical-science-pack", 1}
metal_poles_3.unit.time = 30
metal_poles_3.order = "c-e-b-4"
metal_poles_3.upgrade = true
data:extend({metal_poles_3})

local metal_poles_4 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-1"])
metal_poles_4.name = "electric-pole-4"
metal_poles_4.effects[1].type = "unlock-recipe"
metal_poles_4.effects[1].recipe = "medium-electric-pole-4"
metal_poles_4.effects[2].type = "unlock-recipe"
metal_poles_4.effects[2].recipe = "big-electric-pole-4"
metal_poles_4.prerequisites[1] = "electric-pole-3"
metal_poles_4.unit.count = 150
metal_poles_4.unit.ingredients[1] = {"automation-science-pack", 1}
metal_poles_4.unit.ingredients[2] = {"logistic-science-pack", 1}
metal_poles_4.unit.ingredients[3] = {"chemical-science-pack", 1}
metal_poles_4.unit.ingredients[4] = {"production-science-pack", 1}
metal_poles_4.unit.time = 30
metal_poles_4.order = "c-e-b-5"
metal_poles_4.upgrade = true
data:extend({metal_poles_4})

--substations--
local substations_2 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-2"])
substations_2.name = "electric-substation-2"
substations_2.effects[1].type = "unlock-recipe"
substations_2.effects[1].recipe = "substation-2"
substations_2.prerequisites[1] = "electric-energy-distribution-2"
substations_2.prerequisites[2] = "advanced-electronics"
substations_2.unit.count = 150
substations_2.unit.ingredients[1] = {"automation-science-pack", 1}
substations_2.unit.ingredients[2] = {"logistic-science-pack", 1}
substations_2.unit.ingredients[3] = {"chemical-science-pack", 1}
substations_2.unit.time = 45
substations_2.order = "c-e-c-2"
substations_2.upgrade = true
data:extend({substations_2})

local substations_3 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-2"])
substations_3.name = "electric-substation-3"
substations_3.effects[1].type = "unlock-recipe"
substations_3.effects[1].recipe = "substation-3"
substations_3.prerequisites[1] = "electric-substation-2"
substations_3.prerequisites[2] = "advanced-electronics-2"
substations_3.unit.count = 200
substations_3.unit.ingredients[1] = {"automation-science-pack", 1}
substations_3.unit.ingredients[2] = {"logistic-science-pack", 1}
substations_3.unit.ingredients[3] = {"chemical-science-pack", 1}
substations_3.unit.time = 45
substations_3.order = "c-e-c-3"
substations_3.upgrade = true
data:extend({substations_3})

local substations_4 = util.table.deepcopy(data.raw.technology["electric-energy-distribution-2"])
substations_4.name = "electric-substation-4"
substations_4.effects[1].type = "unlock-recipe"
substations_4.effects[1].recipe = "substation-4"
substations_4.prerequisites[1] = "electric-substation-3"
substations_4.unit.count = 200
substations_4.unit.ingredients[1] = {"automation-science-pack", 1}
substations_4.unit.ingredients[2] = {"logistic-science-pack", 1}
substations_4.unit.ingredients[3] = {"chemical-science-pack", 1}
substations_4.unit.ingredients[4] = {"production-science-pack", 1}
substations_4.unit.time = 45
substations_4.order = "c-e-c-4"
substations_4.upgrade = true
data:extend({substations_4})