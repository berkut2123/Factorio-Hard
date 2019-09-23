local zone_data = {
    zone_patterns = {
        "diagonal-left",
        "diagonal-right",
        "horizontal",
        "vertical",
        "box",
        "plus",
        "x",
        "circle",
        "disc",
        "arrow-n",
        "arrow-e",
        "arrow-s",
        "arrow-w",
        "arrow-ne",
        "arrow-se",
        "arrow-sw",
        "arrow-nw"
    },
    zone_colours = {
        "black",
        "green",
        "teal",
        "cyan",
        "blue",
        "purple",
        "magenta",
        "red",
        "orange",
        "yellow",
        "olive",
        "white"
    },
    zones = {},
    zones_by_name = {},
    letter_index = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","v","w","x","y","z","z-a", "z-b"},
}

function zone_data.number_to_letter(i)
    return zone_data.letter_index[i]
end

for _, pattern in ipairs(zone_data.zone_patterns) do
    for _, colour in ipairs(zone_data.zone_colours) do
        local zone = {
            name="zone-" .. pattern .. "-" .. colour,
            localised_name = { "zone-name", { "pattern-"..pattern }, { "colour-"..colour } }
        }
        zone_data.zones[#zone_data.zones + 1] = zone
        zone_data.zones_by_name[zone.name] = zone

    end
end

return zone_data
