local util = require("data-util")

data.raw.technology["logistics"].unit.count = 20
data.raw.technology["logistics"].prerequisites = {"basic-logistics"}

data.raw.technology["automation"].unit.count = 100
data.raw.technology["automation"].prerequisites = {"electricity"}

data.raw.technology["automation-2"].prerequisites = {"electronics"}
data.raw.technology["automation-2"].unit.count = 150

data.raw.technology["optics"].prerequisites = {"electricity"}

data.raw.technology["turrets"].prerequisites = {"basic-automation", "military"}

data.raw.technology["solar-energy"].prerequisites = {"optics", "electronics", "logistic-science-pack"}

data.raw.technology["laser"].prerequisites = {"optics", "electronics", "logistic-science-pack"}

data.raw.technology["fluid-handling"].prerequisites = {"basic-fluid-handling", "steel-processing", "logistic-science-pack"}

data.raw.technology["oil-processing"].prerequisites = {"automation", "fluid-handling"}

data.raw.technology["concrete"].prerequisites = {"basic-fluid-handling", "logistic-science-pack"}

data.raw.technology["gates"].prerequisites = {"electronics", "stone-walls", "military", "logistic-science-pack"}

data.raw.technology["electric-energy-distribution-1"].prerequisites = {"electricity", "steel-processing", "logistic-science-pack"}

data.raw.technology["toolbelt"].prerequisites = {}
data.raw.technology["toolbelt"].unit = {
    count = 50,
    ingredients = {
        {"automation-science-pack", 1},
    },
    time = 10
}
data.raw.technology["toolbelt"].effects = { { modifier = 5, type = "character-inventory-slots-bonus" } }

-- effects are added in technology-update
data:extend{
    {
        type = "technology",
        name = "toolbelt-2",
        icon = "__base__/graphics/technology/toolbelt.png",
        icon_size = 128,
        order = "c-k-m",
        prerequisites = { "toolbelt", "logistic-science-pack"
        },
        effects = { { modifier = 5, type = "character-inventory-slots-bonus" } },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "toolbelt-3",
        icon = "__base__/graphics/technology/toolbelt.png",
        icon_size = 128,
        order = "c-k-m",
        prerequisites = { "toolbelt-2", "chemical-science-pack" },
        effects = { { modifier = 5, type = "character-inventory-slots-bonus" } },
        unit = {
            count = 200,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "toolbelt-4",
        icon = "__base__/graphics/technology/toolbelt.png",
        icon_size = 128,
        order = "c-k-m",
        prerequisites = { "toolbelt-3", "utility-science-pack" },
        effects = { { modifier = 5, type = "character-inventory-slots-bonus" } },
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "toolbelt-5",
        icon = "__base__/graphics/technology/toolbelt.png",
        icon_size = 128,
        order = "c-k-m",
        prerequisites = { "toolbelt-4", "production-science-pack" },
        effects = { { modifier = 5, type = "character-inventory-slots-bonus" } },
        unit = {
            count = 1000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "toolbelt-6",
        icon = "__base__/graphics/technology/toolbelt.png",
        icon_size = 128,
        order = "c-k-m",
        prerequisites = { "toolbelt-5", "space-science-pack" },
        effects = { { modifier = 5, type = "character-inventory-slots-bonus" } },
        unit = {
            count = 2000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
                {"production-science-pack", 1},
                {"space-science-pack", 1},
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "basic-automation",
        icon = "__base__/graphics/technology/automation.png",
        icon_size = 128,
        order = "a",
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "basic-logistics",
        icon = "__base__/graphics/technology/logistics.png",
        icon_size = 128,
        order = "a",
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "electricity",
        icon = "__base__/graphics/technology/electric-engine.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"basic-automation"},
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "filter-inserters",
        icon = "__aai-industry__/graphics/technology/filter-inserters.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"automation-2"},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "radar",
        icon = "__aai-industry__/graphics/technology/radar.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"electronics"},
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "basic-fluid-handling",
        icon = "__base__/graphics/technology/fluid-handling.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"electricity"},
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "steam-power",
        icon = "__aai-industry__/graphics/technology/steam-power.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"basic-fluid-handling"},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "electric-lab",
        icon = "__aai-industry__/graphics/technology/electric-lab.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"electronics", "glass-processing"},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "electric-mining",
        icon = "__aai-industry__/graphics/technology/electric-mining.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"electricity"},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "concrete-walls",
        icon = "__base__/graphics/technology/stone-walls.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"stone-walls", "concrete"},
        unit = {
            count = 200,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 20
        },
    },
    {
        type = "technology",
        name = "steel-walls",
        icon = "__base__/graphics/technology/stone-walls.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"concrete-walls", "military-science-pack"},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "fuel-processing",
        icon = "__aai-industry__/graphics/technology/fuel-processing.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"electricity"},
        unit = {
            count = 20,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "sand-processing",
        icon = "__aai-industry__/graphics/technology/sand-processing.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"basic-automation"},
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "glass-processing",
        icon = "__aai-industry__/graphics/technology/glass-processing.png",
        icon_size = 128,
        order = "a",
        prerequisites = {"sand-processing"},
        unit = {
            count = 40,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 10
        },
    },
}
