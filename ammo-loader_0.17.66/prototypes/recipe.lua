local names = require("prototypes.names")
local util = require("prototypes.util")

local recipes = {}
local startEnabled = settings.startup[names.settings.bypassResearch].value
local filterInserterName = "filter-inserter"
if (data.raw["item"]["yellow-filter-inserter"]) then
    filterInserterName = "yellow-filter-inserter"
end
local chestIngredient = {"electronic-circuit", 20}
if (data.raw["item"]["copper-motor"]) then
    chestIngredient = {"copper-motor", 2}
end
recipes.ammoLoader =
    util.modifiedEnt(
    data.raw["recipe"]["iron-chest"],
    {
        type = "recipe",
        name = names.chests.loader,
        enabled = startEnabled,
        energy_required = 2,
        result = names.chests.loader
    },
    {
        ingredients = {
            chestIngredient,
            {"wooden-chest", 5},
            {"burner-inserter", 5}
        }
    }
)
recipes.requester1 =
    util.modifiedEnt(
    data.raw["recipe"]["logistic-chest-requester"],
    {
        type = "recipe",
        name = names.chests.requester,
        enabled = startEnabled,
        energy_required = 2,
        result = names.chests.requester
    },
    {
        ingredients = {
            {"logistic-chest-requester", 2},
            {filterInserterName, 5}
        }
    }
)
recipes.storage =
    util.modifiedEnt(
    data.raw["recipe"]["logistic-chest-storage"],
    {
        type = "recipe",
        name = names.chests.storage,
        enabled = startEnabled,
        result = names.chests.storage
    },
    {
        ingredients = {
            {"wooden-chest", 10},
            chestIngredient
        }
    }
)
recipes.passiveProvider =
    util.modifiedEnt(
    data.raw["recipe"]["logistic-chest-passive-provider"],
    {
        type = "recipe",
        name = names.chests.passiveProvider,
        enabled = startEnabled,
        energy_required = 2,
        result = names.chests.passiveProvider
    },
    {
        ingredients = {
            {"logistic-chest-passive-provider", 2},
            {filterInserterName, 5}
        }
    }
)
-- recipes.testAmmo = {
--     type = "recipe",
--     name = "testAmmo",
--     enabled = true,
--     energy_required = 1,
--     result = "testAmmo",
--     ingredients = {
--         {"iron-plate", 1}
--     }
-- }

for k, v in pairs(recipes) do
    data:extend {v}
end
