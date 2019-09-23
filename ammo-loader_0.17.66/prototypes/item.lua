local names = require("prototypes.names")
local util = require("prototypes.util")

local items = {}
items.alSubgroup = {type = "item-subgroup", name = names.itemSubgroup, group = "logistics", order = "b"}
items.ammoLoader = {
    type = "item",
    name = names.chests.loader,
    icon_size = 32,
    stack_size = 50,
    icon = util.filePath(names.chests.loader, "icon"),
    flags = {},
    subgroup = "ammo-loader-items",
    group = "logistics",
    order = "a[items]-z[mod]-a[basic]-a[ammoLoader]",
    place_result = names.chests.loader
}
items.requester1 = {
    type = "item",
    name = names.chests.requester,
    icon_size = 32,
    stack_size = 50,
    icon = util.filePath(names.chests.requester, "icon"),
    flags = {},
    subgroup = "ammo-loader-items",
    group = "logistics",
    order = "a[items]-z[mod]-a[basic]-ac[ammoLoader]",
    place_result = names.chests.requester
}
-- items.fuelLoader = {
--     type = "item",
--     name = "fuel-loader-chest",
--     icon_size = 32,
--     stack_size = 50,
--     icon = "__ammo-loader__/graphics/icon/FuelLoaderChest.png",
--     flags = {"goes-to-quickbar"},
--     subgroup = "storage",
--     group = "logistics",
--     order = "a[items]-z[mod]-a[basic]-b[fuelLoader]",
--     place_result = "fuel-loader-chest"
-- }
-- items.requester = {
--     type = "item",
--     name = "logistic-requester-loader-chest",
--     icon = "__ammo-loader__/graphics/icon/AmmoLoaderChest.png",
--     icon_size = 32,
--     flags = {"goes-to-quickbar"},
--     group = "logistics",
--     subgroup = "storage",
--     order = "a[items]-z[mod]-b[logistic]-b[requester]",
--     place_result = "logistic-requester-loader-chest",
--     stack_size = 50
-- }
items.storage = {
    type = "item",
    name = names.chests.storage,
    icon = util.filePath(names.chests.storage, "icon"),
    icon_size = 32,
    flags = {},
    group = "logistics",
    subgroup = "ammo-loader-items",
    order = "a[items]-z[mod]-a[basic]-ab[storage]",
    place_result = names.chests.storage,
    stack_size = 50
}
items.passiveProvider = {
    type = "item",
    name = names.chests.passiveProvider,
    icon = util.filePath(names.chests.passiveProvider, "icon"),
    icon_size = 32,
    flags = {},
    group = "logistics",
    subgroup = "ammo-loader-items",
    order = "a[items]-z[mod]-a[basic]-ad[passiveProvider]",
    place_result = names.chests.passiveProvider,
    stack_size = 50
}
-- items.testAmmo = {
--     type = "item",
--     name = "testAmmo",
--     icons = {
--         {
--             icon = "__ammo-loader__/graphics/icon/bulletCase3.png",
--             icon_size = 32
--         },
--         {
--             icon = "__base__/graphics/icons/firearm-magazine.png",
--             icon_size = 32,
--             scale = 0.5,
--             shift = {10, 0}
--         }
--     },
--     -- icon_size = 32,
--     stack_size = 50,
--     ammo_type = {
--         category = "bullet"
--     }
--     -- subgroup = ""
-- }
-- items.superfuel = {
--     type = "item",
--     name = names.superFuel,
--     icon = util.filePath(names.loaderChest, "icon"),
--     icon_size = 32,
--     -- dark_background_icon = "__base__/graphics/icons/coal-dark-background.png",
--     flags = {"hidden"},
--     fuel_category = "chemical",
--     fuel_value = "1000MJ",
--     -- subgroup = "ammo-loader-items",
--     order = "b[coal]",
--     stack_size = 500
-- }
items.ammoSubgroup = {
    type = "item-subgroup",
    name = names.cartridgeAmmoSubgroup,
    group = names.cartridgeItemGroup,
    order = "z-z"
}
items.fuelSubgroup = {
    type = "item-subgroup",
    name = names.cartridgeFuelSubgroup,
    group = names.cartridgeItemGroup,
    order = "z-z"
}
items.itemGroup = {
    type = "item-group",
    name = names.cartridgeItemGroup,
    order = "z",
    icon = util.filePath(names.chests.loader, "icon"),
    icon_size = 32
}
for k, v in pairs(items) do
    data:extend {v}
end
