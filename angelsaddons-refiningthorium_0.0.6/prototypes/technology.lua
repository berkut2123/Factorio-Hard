local advancedorerefining4 = table.deepcopy(data.raw.technology["advanced-ore-refining-4"])

advancedorerefining4.effects = {
	{ type = "unlock-recipe",	recipe="ore-leaching-plant-3" },
	{ type = "unlock-recipe",	recipe="ore-refinery-2" },
	{ type = "unlock-recipe",	recipe="angelsore-pure-mix1-processing" },
	{ type = "unlock-recipe",	recipe="angelsore-pure-mix2-processing" },
	{ type = "unlock-recipe",	recipe="angelsore-pure-mix3-processing" },
	{ type = "unlock-recipe",	recipe="thorium-ore" }
}

data:extend{ advancedorerefining4,technology }