if mods["AsphaltRoads"] then
    local recipe = util.table.deepcopy(data.raw["recipe"]["Arci-asphalt"])
    recipe.name = "parkingzone-asphalt"
    recipe.ingredients = {{"Arci-asphalt", 10}}
    recipe.result = "parkingzone-asphalt"
    recipe.result_count = 10

    local item = util.table.deepcopy(data.raw["item"]["Arci-asphalt"])
    item.name = "parkingzone-asphalt"
    item.icon = "__Shinys-parkingzone_A16__/graphics/icons/parkingzone-asphalt.png"
    item.subgroup = "terrain"
    item.order = "b[concrete]-c[parking-3]"
    item.place_as_tile.result = "parkingzone-asphalt"
    
    local tile = util.table.deepcopy(data.raw["tile"]["Arci-asphalt"])
    tile.name = "parkingzone-asphalt"
    tile.minable.result = "Arci-asphalt"
    tile.vehicle_friction_modifier = settings.startup['Shinyparkingzonespeed'].value
    
    data:extend(
        {
            recipe,
            item,
            tile
        }
    )

    --Technology
    table.insert(
        data.raw["technology"]["Arci-asphalt"]["effects"], 
        {
            type = "unlock-recipe",
            recipe = "parkingzone-asphalt"
        }
    )

    recipe  = nil
    item    = nil
    tile    = nil
end