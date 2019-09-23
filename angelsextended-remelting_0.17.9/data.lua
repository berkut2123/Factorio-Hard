if not aragasmods then aragasmods = {} end

if not aragasmods.functions then aragasmods.functions = {} end

if aragasmods.functions then
	aragasmods.functions.OV = require("prototypes.override-functions")
end

require("prototypes.remelting-category")

require("prototypes.buildings.alloy-mixer")

require("prototypes.recipes.remelting-entity")

require("prototypes.technology.remelting-technology")