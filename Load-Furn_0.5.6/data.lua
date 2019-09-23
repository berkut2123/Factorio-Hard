require("prototypes.furnaces.category")
require("prototypes.furnaces.items")
require("prototypes.furnaces.recipes")
require("prototypes.furnaces.technologies")
require("prototypes.furnaces.furnaces")

if settings.startup["logist"].value == true then
require("prototypes.loader.entity")
require("prototypes.loader.items")
require("prototypes.loader.recipes")
require("prototypes.belt.entity")
require("prototypes.belt.items")
require("prototypes.belt.recipes")
end