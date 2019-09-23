------------------------------------------------------------------------------------------------------------------------------------------------------

require("code.data.globals")
require("code.functions.functions-maths")
require("code.functions.functions-recipes")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- Mark or remove any basic items that aren't used in recipes (must run before disassembly/incineration)

if settings.startup["deadlock-industry-hide-redundancies"].value ~= "show" then	redundancy_scan() end

-- More mod stuff (must run after redundancy)

require("code.mods.mods-datafinalfixes")

-- Generate disassembly and incineration/voiding recipes

require("code.items-recipes.recipes-scrapping")
require("code.items-recipes.recipes-incinerate")

-- Final, final pass on recipes

final_recipes_pass()

------------------------------------------------------------------------------------------------------------------------------------------------------

