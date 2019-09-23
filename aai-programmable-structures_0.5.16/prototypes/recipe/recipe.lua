data:extend{
    {
        type = "recipe",
        name = "zone-scan",
        category = "crafting",
        enabled = data.raw["technology"]["circuit-network"] == nil,
        energy_required = 2,
        ingredients =
        {
            {"electronic-circuit", 10},
            {"stone-brick", 10}
        },
        results=
        {
            {type="item", name="zone-scan", amount=1},
        },
    },
    {
        type = "recipe",
        name = "zone-control",
        category = "crafting",
        enabled = data.raw["technology"]["circuit-network"] == nil,
        energy_required = 2,
        ingredients =
        {
            {"electronic-circuit", 10},
            {"stone-brick", 10}
        },
        results=
        {
            {type="item", name="zone-control", amount=1},
        },
    },
    {
        type = "recipe",
        name = "tile-scan",
        category = "crafting",
        enabled = data.raw["technology"]["circuit-network"] == nil,
        energy_required = 2,
        ingredients =
        {
            {"electronic-circuit", 10},
            {"stone-brick", 10}
        },
        results=
        {
            {type="item", name="tile-scan", amount=1},
        },
    },
}

data:extend{{
    type = "recipe",
    name = "unit-scan",
    category = "crafting",
    enabled = data.raw["technology"]["circuit-network"] == nil,
    energy_required = 2,
    ingredients =
    {
        {"electronic-circuit", 10},
        {"stone-brick", 10}
    },
    results=
    {
        {type="item", name="unit-scan", amount=1},
    },
}}
