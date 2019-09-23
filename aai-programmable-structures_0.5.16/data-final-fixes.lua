if data.raw["technology"]["circuit-network"] then
    data.raw["technology"]["programmable-structures"].prerequisites = {"circuit-network"}
    data.raw["technology"]["circuit-network"].prerequisites = {"electronics"}
    data.raw["technology"]["circuit-network"].unit = {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
        },
        time = 10
    }
end
