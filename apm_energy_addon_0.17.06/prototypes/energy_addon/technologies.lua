require('util')

-- Technologie ----------------------------------------------------------------
-- 
--
-------------------------------------------------------------------------------

-- Automobilism II
local electric_car = {}
electric_car.type = 'technology'
electric_car.name = 'automobilism-2'
electric_car.icon = '__base__/graphics/technology/automobilism.png'
electric_car.icon_size = 128
electric_car.effects = {
    {type = 'unlock-recipe', recipe = 'apm_electric_car'},
}
electric_car.prerequisites = {'automobilism', 'electric-engine', 'battery'}
electric_car.unit = {}
electric_car.unit.count = 125
electric_car.unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}}
electric_car.unit.time = 30
electric_car.order = 'aa_a'
data:extend({electric_car})