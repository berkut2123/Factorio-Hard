data:extend{
    {
        type = "recipe",
        name = "cannon-shell-precision",
        enabled = data.raw["technology"]["tanks"] == nil,
        energy_required = 8,
        ingredients =
        {
            {"steel-plate", 4},
            {"plastic-bar", 2},
            {"explosives", 1},
        },
        results = {{"cannon-shell-precision", 2}}
    },
    {
        type = "recipe",
        name = "explosive-cannon-shell-precision",
        enabled = data.raw["technology"]["tanks"] == nil,
        energy_required = 8,
        ingredients =
        {
            {"steel-plate", 3},
            {"plastic-bar", 2},
            {"explosives", 4},
        },
        result = "explosive-cannon-shell-precision"
    }
}
