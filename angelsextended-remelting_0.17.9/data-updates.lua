if angelsmods and  angelsmods.refining then
	--Fallbacks for the recipe builder
	angelsmods.functions.RB.set_fallback("item", "alloym-1", { { "block-production-1", 1 } } )
	angelsmods.functions.RB.set_fallback("item", "alloym-2", { { "block-production-2", 1 }, { "alloy-mixer" } } )
	angelsmods.functions.RB.set_fallback("item", "alloym-3", { { "block-mprocessing-3", 1 }, { "alloy-mixer-2" } } )
	angelsmods.functions.RB.set_fallback("item", "alloym-4", { { "block-mprocessing-4", 1 }, { "alloy-mixer-3" } } )
end

if angelsmods and angelsmods.smelting then
	require("prototypes.recipes.angelssmelting.remelting-aluminium")
	require("prototypes.recipes.angelssmelting.remelting-chrome")
	require("prototypes.recipes.angelssmelting.remelting-cobalt")
	require("prototypes.recipes.angelssmelting.remelting-copper")
	require("prototypes.recipes.angelssmelting.remelting-glass")
	require("prototypes.recipes.angelssmelting.remelting-gold")
	require("prototypes.recipes.angelssmelting.remelting-iron")
	require("prototypes.recipes.angelssmelting.remelting-lead")
	require("prototypes.recipes.angelssmelting.remelting-manganese")
	require("prototypes.recipes.angelssmelting.remelting-nickel")
	require("prototypes.recipes.angelssmelting.remelting-platinum")
	require("prototypes.recipes.angelssmelting.remelting-silicon")
	require("prototypes.recipes.angelssmelting.remelting-silver")
	require("prototypes.recipes.angelssmelting.remelting-solder")
	require("prototypes.recipes.angelssmelting.remelting-steel")
	require("prototypes.recipes.angelssmelting.remelting-tin")
	require("prototypes.recipes.angelssmelting.remelting-titanium")
	require("prototypes.recipes.angelssmelting.remelting-tungsten")
	require("prototypes.recipes.angelssmelting.remelting-zinc")

	require("prototypes.remelting-override-angelssmelting")
end

if bobmods and bobmods.plates then
	require("prototypes.remelting-category-bobplates")

	require("prototypes.recipes.bobplates.remelting-brass")
	require("prototypes.recipes.bobplates.remelting-bronze")
	require("prototypes.recipes.bobplates.remelting-cobalt-steel")
	require("prototypes.recipes.bobplates.remelting-gunmetal")
	require("prototypes.recipes.bobplates.remelting-invar")
	require("prototypes.recipes.bobplates.remelting-nitinol")

	require("prototypes.remelting-override-bobplates")
end

if mods["Clowns-Processing"] then
	require("prototypes.recipes.clowns.remelting-magnesium")

	require("prototypes.remelting-override-clowns")
end

if mods["ShinyAngelGFX"] and iconset then -- Check if iconset exist as it could be edited in the future
	require("prototypes.remelting-override-shinygfx")
end