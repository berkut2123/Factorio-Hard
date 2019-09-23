require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
-- require("prototypes.FuelLoaderChest")

-- local startEnabled = settings.startup["ammo_loader_bypass_research"].value
-- data.raw.recipe["ammo-loader-chest"].enabled = startEnabled
-- data.raw.recipe["fuel-loader-chest"].enabled = startEnabled
-- data.raw.recipe["ammo-loader-storage-loader-chest"].enabled = startEnabled
-- data.raw.recipe["logistic-requester-loader-chest"].enabled = false

controls = {}
controls.resetKey = {
    type = "custom-input",
    name = "ammo-loader-key-reset",
    key_sequence = "CONTROL + SHIFT + ALT + BACKSPACE",
    consuming = "game-only"
}
controls.toggleEnabledKey = {
    type = "custom-input",
    name = "ammo-loader-key-toggle-enabled",
    key_sequence = "CONTROL + SHIFT + ALT + EQUALS",
    consuming = "game-only"
}
-- controls.upgradeKey = {
--     type = "custom-input",
--     name = "ammo-loader-key-upgrade",
--     key_sequence = "CONTROL + SHIFT + Y",
--     consuming = "game-only"
-- }
controls.returnKey = {
    type = "custom-input",
    name = "ammo-loader-key-return",
    key_sequence = "CONTROL + SHIFT + ALT + HOME",
    consuming = "game-only"
}
-- controls.chestGUIKey = {
--     type = "custom-input",
--     name = "ammo-loader-key-chest-filter-GUI",
--     key_sequence = "ALT + W",
--     consuming = "game-only"
-- }
controls.toggleRangesKey = {
    type = "custom-input",
    name = "ammo-loader-key-toggle-chest-ranges",
    key_sequence = "CONTROL + SHIFT + ALT + SLASH",
    consuming = "game-only"
}
for key, val in pairs(controls) do
    data:extend {val}
end
