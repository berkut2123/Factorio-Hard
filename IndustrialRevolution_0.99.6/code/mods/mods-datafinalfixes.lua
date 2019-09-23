------------------------------------------------------------------------------------------------------------------------------------------------------

require("code.functions.functions-recipes")
require("code.functions.functions-maths")
require("code.functions.functions-items")
require("code.functions.functions-recipes")
require("code.functions.functions-technology")
require("code.entities.entities-standards")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- DSB/DCM

if mods["deadlock-beltboxes-loaders"] or mods["DeadlockCratingMachine"] then

	local beltboxes = (deadlock ~= nil) and settings.startup["deadlock-enable-beltboxes"].value
	local crates = (deadlock_crating ~= nil)

	local tiers = {
		[1] = {"wood", "rubber-wood", "rubber-natural", "electronic-circuit"}, 
		[2] = {"rubber-vulcanised", "advanced-circuit"},
		[3] = {"processing-unit"},
	}

	local components = {"plate", "plate-heavy", "ingot", "gear-wheel", "cable", "tube", "rod"}
	for material,materialdata in pairs(DIR.materials) do
		for _,component in pairs(components) do
			if materialdata.stacking_tier and materialdata.stacking_tier > 0 then table.insert(tiers[materialdata.stacking_tier], get_item_name(material, component)) end
		end
	end

	if beltboxes then 
		deadlock.destroy_vanilla_stacks()
	end

	if crates then
		deadlock_crating.destroy_vanilla_crates()
	end

	for tier,items in ipairs(tiers) do
		for _,item in pairs(items) do
			if data.raw.item[item] and (not data.raw.recipe[item] or not data.raw.recipe[item].redundant) then
				if beltboxes then deadlock.add_stack(item, string.format("%s/%s/stacked-%s.png", DIR.icon_path, DIR.icon_size, item), "deadlock-stacking-"..tier, DIR.icon_size) end
				if crates then deadlock_crating.add_crate(item, "deadlock-crating-"..tier) end
			end
		end
	end

end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- AAI Industry

if mods["aai-industry"] then
	-- re-apply IR's vanilla replacements
	require("code.items-recipes.items-generated")
	require("code.items-recipes.items-machines")
	require("code.items-recipes.recipes-vanilla")
	require("code.items-recipes.recipes-oil")
	-- hide glitched/redundant alternatives
	disable_recipes({"electronic-circuit-stone","stone-tablet","sand-from-stone","glass-from-sand","motor","electric-motor","burner-assembling-machine","crude-oil-processing","oil-processing-heavy","burner-lab"})
	hide_items({"stone-tablet","glass","burner-assembling-machine"})
	remove_unlock_from_tech("electronics","electronic-circuit-stone")
	replace_recipe_ingredients("electronic-circuit-stone", {{"stone",1}}, 1, "crafting", 1, "electronic-circuit")
	data.raw["assembling-machine"]["burner-assembling-machine"].next_upgrade = nil
	-- replace AAI items with DIR equivalents
	replace_all_ingredients("motor","copper-motor")
	replace_all_ingredients("electric-motor","iron-motor")
	replace_all_ingredients("stone-furnace","stone-age-furnace")
	-- move stuff around
	change_item_subgroup("fuel-processor","deadlock-machines-processing")
	change_item_order("fuel-processor","zzzzzzzzzzzzzzzz")
	replace_recipe_ingredients("fuel-processor", {{"iron-chassis-large",1},{"iron-motor",1},{"stone-brick",10},{"iron-tube",3}}, 1, "crafting", 5)
	-- re-enable things that should be enabled
	enable_recipes({"transport-belt"})
	enable_recipes({"burner-mining-drill"})
	enable_recipes({"burner-inserter"})
	-- hide redundant techs
	disable_technology("basic-automation")
	disable_technology("electric-mining")
	disable_technology("basic-fluid-handling")
	disable_technology("filter-inserters")
	disable_technology("glass-processing")
	disable_technology("sand-processing")
	disable_technology("steam-power")
	disable_technology("basic-logistics")
	disable_technology("electric-lab")
	disable_technology("radar")
	disable_technology("toolbelt-2")
	disable_technology("toolbelt-3")
	disable_technology("toolbelt-4")
	disable_technology("toolbelt-5")
	disable_technology("toolbelt-6")
	-- tech prereqs/unlock adjustments
	remove_unlock_from_tech("deadlock-steam-power", "small-electric-pole")
	remove_unlock_from_tech("deadlock-steam-power", "iron-motor")
	remove_unlock_from_tech("advanced-oil-processing", "oil-processing-heavy")
	replace_all_prereqs("electricity", {"deadlock-iron-age"})
	remove_unlock_from_tech("electricity", "inserter")
	remove_unlock_from_tech("electricity", "electric-motor")
	add_unlock_to_tech("electricity","iron-motor")
	add_unlock_to_tech("deadlock-mining-1","electric-mining-drill")
	replace_all_prereqs("deadlock-steam-power", {"electricity"})
	add_unlock_to_tech("deadlock-steam-power", "steam-engine")
	add_unlock_to_tech("deadlock-steam-power", "boiler")
	add_unlock_to_tech("deadlock-steam-power", "pipe")
	add_unlock_to_tech("deadlock-steam-power", "pipe-to-ground")
	add_unlock_to_tech("deadlock-steam-power", "offshore-pump")
	add_prereq_to_tech("fuel-processing", "deadlock-steam-power")
	add_prereq_to_tech("concrete-walls", "deadlock-concrete-1")
	-- add_prereq_to_tech("steel-walls", "concrete-walls")
	add_prereq_to_tech("steel-walls", "deadlock-steel-age")
	change_recipe_subgroup("glass-from-sand","ingots")
	require("code.technology.technology-recost")
	require("code.fluids.fluids-update")
end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- Dectorio

if mods["Dectorio"] then
	-- return icon sizes to 32
	local symbols = {
		"red",
		"green",
		"blue",
		"cyan",
		"yellow",
		"pink",
		"black",
		"white",
		"grey",
		"orange",
	}
	for _,symbol in pairs(symbols) do
		if data.raw["virtual-signal"]["signal-"..symbol] then
			data.raw["virtual-signal"]["signal-"..symbol].icon_size = 32
		end
	end
	-- optional bits
	if DECT.ENABLED["wood-floor"] then
		replace_recipe_ingredients("dect-wood-floor", {{"wood-beam", 20}})
	end
	if DECT.ENABLED["landscaping"] then
		replace_recipe_ingredients("dect-base-red-desert-0", {{"sand", 2}})
		replace_recipe_ingredients("dect-base-red-desert-1", {{"sand", 2}})
		replace_recipe_ingredients("dect-base-red-desert-2", {{"sand", 2}})
		replace_recipe_ingredients("dect-base-red-desert-3", {{"sand", 2}})
		replace_recipe_ingredients("dect-base-sand-1", {{"sand", 2}})
		replace_recipe_ingredients("dect-base-sand-2", {{"sand", 2}})
		replace_recipe_ingredients("dect-base-sand-3", {{"sand", 2}})
	end
	if DECT.ENABLED["signs"] then
		replace_recipe_ingredients("dect-sign-wood", {{"wood-beam", 4}})
		replace_recipe_ingredients("dect-sign-steel", {{"steel-rod", 1},{"steel-plate",1}})
	end
	if DECT.CONFIG.GRAVEL_VARIANTS then
		for _, variant in pairs(DECT.CONFIG.GRAVEL_VARIANTS) do
			if data.raw.recipe["dect-"..variant.name.."-gravel"] then
				data.raw.recipe["dect-"..variant.name.."-gravel"].enabled = false
				data.raw.recipe["dect-"..variant.name.."-gravel"].hidden = true
			end
			if data.raw.item["dect-"..variant.name.."-gravel"] then
				data.raw.item["dect-"..variant.name.."-gravel"].flags = {"hidden"}
			end
		end
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------

