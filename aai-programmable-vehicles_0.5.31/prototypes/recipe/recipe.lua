-- hand craft engine
if data.raw["recipe"]["engine-unit"] then
    data.raw["recipe"]["engine-unit"].category = "crafting"
    data.raw["recipe"]["engine-unit"].energy_required = 4
end

data:extend{
    {
        type = "recipe",
        name = "unit-remote-control",
        category = "crafting",
        enabled = true,
        energy_required = 2,
        ingredients =
        {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="copper-cable", amount=1}
        },
        results=
        {
            {type="item", name="unit-remote-control", amount=1},
        },
    },
    {
        type = "recipe",
        name = "path-remote-control",
        category = "crafting",
        enabled = true,
        energy_required = 2,
        ingredients =
        {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="copper-cable", amount=1}
        },
        results=
        {
            {type="item", name="path-remote-control", amount=1},
        },
    },
    {
        type = "recipe",
        name = "position-beacon",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"electronic-circuit", 1},
            {"stone-brick", 4}
        },
        result = "position-beacon"
    },
    {
        type = "recipe",
        name = "vehicle-deployer",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"electronic-circuit", 10},
            {"iron-plate", 10},
            {"stone-brick", 10}
        },
        result = "vehicle-deployer"
    },
    {
        type = "recipe",
        name = "vehicle-depot",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"iron-chest", 8},
            {"electronic-circuit", 10},
            {"iron-plate", 20},
            {"stone-brick", 20}
        },
        result = "vehicle-depot"
    },
}
if data.raw["technology"]["programmable-structures"] then
    data:extend{{
        type = "recipe",
        name = "unit-control",
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
            {type="item", name="unit-control", amount=1},
        },
    }}
    data:extend{{
        type = "recipe",
        name = "unitdata-scan",
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
            {type="item", name="unitdata-scan", amount=1},
        },
    }}
    data:extend{{
        type = "recipe",
        name = "unitdata-control",
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
            {type="item", name="unitdata-control", amount=1},
        },
    }}
    data:extend{{
        type = "recipe",
        name = "path-scan",
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
            {type="item", name="path-scan", amount=1},
        },
    }}
    data:extend{{
        type = "recipe",
        name = "path-control",
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
            {type="item", name="path-control", amount=1},
        },
    }}
end
