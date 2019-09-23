local names = require("prototypes.names")
local util = require("prototypes.util")

-- local prereqs = {}
-- if ()
local tech = {}
tech.loader = {
    type = "technology",
    name = names.tech.loader,
    icon = util.filePath(names.tech.loader, "technology"),
    icon_size = 64,
    order = "az",
    unit = {
        count = 20,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 20
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = names.chests.loader
        }
    },
    prerequisites = {"logistics", "turrets"}
}
tech.requester1 = {
    type = "technology",
    name = names.tech.requester,
    icon = util.filePath(names.tech.requester, "technology"),
    icon_size = 64,
    order = "az",
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 20
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = names.chests.requester
        },
        {
            type = "unlock-recipe",
            recipe = names.chests.passiveProvider
        }
    },
    prerequisites = {"logistic-system", names.tech.loader}
}
tech.vehicles = {
    type = "technology",
    name = names.tech.vehicles,
    icon = util.filePath(names.tech.vehicles, "technology"),
    icon_size = 64,
    order = "az",
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    },
    effects = {
        {
            type = "nothing",
            effect_description = {"technology-effect-description.amlo-effect-vehicles"}
        }
    },
    prerequisites = {names.tech.loader, "automobilism"}
}
tech.burners = {
    type = "technology",
    name = names.tech.burners,
    icon = util.filePath(names.tech.burners, "technology"),
    icon_size = 64,
    order = "az",
    unit = {
        count = 35,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 20
    },
    effects = {
        {
            type = "nothing",
            effect_description = {"technology-effect-description.amlo-effect-burners"}
        }
    },
    prerequisites = {names.tech.loader}
}
tech.artillery = {
    type = "technology",
    name = names.tech.artillery,
    icon = util.filePath(names.tech.artillery, "technology"),
    icon_size = 64,
    order = "az",
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"military-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 20
    },
    effects = {
        {
            type = "nothing",
            effect_description = {"technology-effect-description.amlo-effect-artillery"}
        }
    },
    prerequisites = {names.tech.loader, "artillery"}
}
tech.upgrade = {
    type = "technology",
    name = names.tech.upgrade,
    icon = util.filePath(names.tech.upgrade, "technology"),
    icon_size = 64,
    order = "az",
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1}
        },
        time = 20
    },
    effects = {
        {
            type = "nothing",
            effect_description = {"technology-effect-description.amlo-effect-upgrade"}
        }
    },
    prerequisites = {names.tech.returnItems}
}
tech.returnItems = {
    type = "technology",
    name = names.tech.returnItems,
    icon = util.filePath(names.tech.returnItems, "technology"),
    icon_size = 64,
    order = "az",
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = names.chests.storage
        },
        {
            type = "nothing",
            effect_description = {"technology-effect-description.amlo-effect-return-items"}
        }
    },
    prerequisites = {names.tech.loader}
}

-- if (settings.startup["ammo_loader_bypass_research"].value == false) then
for name, t in pairs(tech) do
    data:extend({t})
end
-- end
