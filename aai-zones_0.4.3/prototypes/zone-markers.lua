--.15 Can use simple entity picture variations to read/change the zone tile!
local zone_data = require("zones")

-------------------------------------------------------------------------------
--[[GROUPS]]--
-------------------------------------------------------------------------------
data:extend
{
    {
        type = "item-group",
        name = "zones",
        order = "f",
        icon = "__aai-zones__/graphics/zones-group.png",
        icon_size = 64
    },
}

for idx, colour in ipairs(zone_data.zone_colours) do
    data:extend
    {
        {
            type = "item-subgroup",
            name = "zone-"..colour,
            group = "zones",
            order = zone_data.number_to_letter(idx),
        }
    }
end

-------------------------------------------------------------------------------
--[[Entities, Signals]]--
-------------------------------------------------------------------------------
for _, pattern in ipairs(zone_data.zone_patterns) do
    for idx, colour in ipairs(zone_data.zone_colours) do
        local zone = zone_data.zones_by_name["zone-" .. pattern .. "-" .. colour]
        data:extend{
            {
                type = "simple-entity",
                name = zone.name,
                flags = {"placeable-neutral"},
                icon = "__aai-zones__/graphics/icons/zone/"..zone.name..".png",
                icon_size = 32,
                subgroup = "grass",
                order = "b[decorative]-b[zone]",
                collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
                collision_mask = { "doodad-layer"},
                selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                selectable_in_game = false,
                destructible = false,
                max_health = 10000,
                heal_per_tick = 10000,
                render_layer = "floor",
                pictures = {
                    {
                        filename = "__aai-zones__/graphics/entity/zone/"..zone.name..".png",
                        width = 32,
                        height = 32,
                        offset = {2, 4}
                    }
                },
                resistances = {
                    { type = "physical", percent = 100 },
                    { type = "impact", percent = 100 },
                    { type = "poison", percent = 100 },
                    { type = "explosion", percent = 100 },
                    { type = "fire", percent = 100 },
                    { type = "laser", percent = 100 },
                    { type = "acid", percent = 100 },
                    { type = "electric", percent = 100 }
                },
                localised_name = zone.localised_name
            },
            {
                type = "virtual-signal",
                name = zone.name,
                icon = "__aai-zones__/graphics/icons/zone/"..zone.name..".png",
                icon_size = 32,
                subgroup = "zone-"..colour,
                order = zone_data.number_to_letter(idx).."["..colour.."]-"..zone_data.number_to_letter(_).."["..pattern.."]",
                localised_name = zone.localised_name
            }
        }
    end
end
