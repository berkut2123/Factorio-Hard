if not angelsmods then angelsmods = {} end
if not angelsmods.addons then angelsmods.addons = {} end
if not angelsmods.addons.warehouses then angelsmods.addons.warehouses = {} end


require("prototypes.buildings.warehouses")
require("prototypes.recipes.recipes")

-- ** --
if mods["bobplates"] then
require("prototypes.technology.warehouses-technology")
end
require("prototypes.subgroups")