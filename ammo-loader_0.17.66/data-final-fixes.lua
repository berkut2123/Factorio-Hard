local names = require("prototypes/names")
local util = require("prototypes/util")
local Array = require("stdlib/Array")
if (settings.startup[names.settings.useCartridges].value) then
    local items = {}
    local recipes = {}
    local raw = {}
    for groupName, group in pairs(data.raw) do
        for protoName, proto in pairs(group) do
            if (proto.type == "item" and proto.fuel_category) or (proto.type == "ammo") then
                Array.insert(raw, proto)
            end
        end
    end
    for _i, proto in pairs(raw) do
        local protoName = proto.name
        local alName = names.cartridgePrefix .. protoName
        local localisedKey = "item-name." .. protoName
        local subgroup = (proto.fuel_category) and names.cartridgeFuelSubgroup or names.cartridgeAmmoSubgroup
        -- local icon = proto.icon or proto.icons[1].icon or util.invisIcon
        items[alName] =
            util.modifiedEnt(
            proto,
            {},
            {
                name = alName,
                localised_name = {"", {"item-name." .. names.cartridgeNameKey}, " ", {localisedKey}},
                localised_description = {"item-description." .. names.cartridgeDescriptionKey},
                icon = "nil",
                icons = util.ammoIcons(proto),
                icon_size = 32,
                order = "z",
                subgroup = subgroup
            }
        )
        local rawRec = data.raw.recipe[protoName]
        local energy = 1
        local enabled = false
        if (rawRec) then
            rawRec = rawRec.normal or rawRec
            energy = rawRec.energy
            enabled = rawRec.enabled
        end
        recipes[alName] = {
            -- {}, -- rawRec, -- util.modifiedEnt(
            name = alName,
            type = "recipe",
            enabled = enabled,
            energy_required = energy,
            ingredients = {{protoName, 2}, {"electronic-circuit", 1}},
            result = alName,
            -- hide_from_player_crafting = true,
            order = proto.order
        }
        -- )
        local techEffect = {type = "unlock-recipe", recipe = alName}
        local hasTech = false
        for techName, tech in pairs(data.raw.technology) do
            local effects = tech.effects or {}
            for _, effect in pairs(effects) do
                if (effect.type == "unlock-recipe") and (effect.recipe == protoName) then
                    table.insert(effects, techEffect)
                    hasTech = true
                end
            end
        end
        if not hasTech then
            recipes[alName].enabled = true
        end
    end
    -- end
    for k, v in pairs(items) do
        data:extend {v}
    end
    for k, v in pairs(recipes) do
        data:extend {v}
    end
end

local logConts = data.raw["logistic-container"]
data.raw["container"][names.chests.loader].next_upgrade = nil
logConts[names.chests.requester].next_upgrade = nil
logConts[names.chests.storage].next_upgrade = nil
logConts[names.chests.passiveProvider].next_upgrade = nil
