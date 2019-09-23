local recipe = util.table.deepcopy(data.raw["recipe"]["concrete"])
recipe.name = "parkingzone"
recipe.ingredients = {{"concrete", 10}}
recipe.result = "parkingzone"
recipe.result_count = 10

local item = util.table.deepcopy(data.raw["item"]["concrete"])
item.name = "parkingzone"
item.icon = "__Shinys-parkingzone_A16__/graphics/icons/parkingzone.png"
item.subgroup = "terrain"
item.order = "b[concrete]-c[parking-1]"
item.place_as_tile.result = "parkingzone"

local tile = util.table.deepcopy(data.raw["tile"]["concrete"])
tile.name = "parkingzone"
tile.minable.result = "concrete"
tile.vehicle_friction_modifier = settings.startup['Shinyparkingzonespeed'].value

data:extend(
    {
        recipe,
        item,
        tile
    }
)

local recipe = util.table.deepcopy(data.raw["recipe"]["refined-concrete"])
recipe.name = "refined-parkingzone"
recipe.ingredients = {{"refined-concrete", 10}}
recipe.result = "refined-parkingzone"
recipe.result_count = 10

local item = util.table.deepcopy(data.raw["item"]["refined-concrete"])
item.name = "refined-parkingzone"
item.icon = "__Shinys-parkingzone_A16__/graphics/icons/parkingzone.png"
item.subgroup = "terrain"
item.order = "b[concrete]-c[parking-2]"
item.place_as_tile.result = "refined-parkingzone"

local tile = util.table.deepcopy(data.raw["tile"]["refined-concrete"])
tile.name = "refined-parkingzone"
tile.minable.result = "refined-concrete"
tile.vehicle_friction_modifier = settings.startup['Shinyparkingzonespeed'].value

data:extend(
    {
        recipe,
        item,
        tile
    }
)

--Technology
table.insert(data.raw["technology"]["concrete"]["effects"], {type = "unlock-recipe", recipe = "parkingzone"})
table.insert(data.raw["technology"]["concrete"]["effects"], {type = "unlock-recipe", recipe = "refined-parkingzone"})

recipe  = nil
item    = nil
tile    = nil