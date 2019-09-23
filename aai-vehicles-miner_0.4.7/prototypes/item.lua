local order = {"a", "b", "c", "d", "e"}
for i=1,5 do
    local suffix = (i > 1) and ("-mk"..i) or ""
    data:extend{
        {
            type = "item-with-entity-data",
            name = "vehicle-miner"..suffix,
            icon = "__aai-vehicles-miner__/graphics/icons/miner"..suffix..".png",
            icon_size = 32,
            subgroup="transport",
            order = "ab[industrial]-a[miner]-"..order[i].."[vehicle-miner"..suffix.."]",
            stack_size = 1,
            place_result = "vehicle-miner"..suffix,
        }
    }
end
