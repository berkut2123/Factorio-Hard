--This is where the magic happens
require('func')
local Recipe = require('__stdlib__/stdlib/data/recipe')
local Technology = require('__stdlib__/stdlib/data/technology')

if mods["IndustrialRevolution"] then
	--Remove the scrapper technology
	data.raw.technology["deadlock-scrapping"].hidden = true
	data.raw.technology["deadlock-scrapping"].enabled = true
	--Hide and disable the scrapper recipe
	Recipe("iron-scrapper"):set_enabled(false)
	data.raw.recipe["iron-scrapper"].hidden = true

	local scraplist = {"iron","copper","tin","gold","bronze","steel","lead","glass","titanium","duranium"}
	if data.raw.item["tantalum-ingot"] and data.raw.item["tantalum-scrap"] then table.insert(scraplist,"tantalum") end
	for _, material in pairs(scraplist) do
		name = material.."-ingot-from-scrap"
		Recipe(name):set_enabled(false)
		Recipe(name):set_field("hidden", true)
		--data.raw.recipe[name].hidden = true
		for _, tech in pairs(data.raw.technology) do
			if tech.effects then
				for _, unlock in pairs(tech.effects) do
					if unlock.type == "unlock-recipe" then
						if unlock.recipe == name then
							Recipe(unlock.recipe):remove_unlock(tech)
							Technology(tech):remove_effect(tech, "unlock-recipe",unlock.recipe)
						end
					end
				end
			end
		end
	end
	--rf.debug(data.raw.recipe["iron-ingot-from-scrap"])

	--[[
	Recipe("disassemble-tin-chest"):set_enabled(false)
	Recipe("disassemble-transport-belt"):set_enabled(false)
	Recipe("disassemble-burner-inserter"):set_enabled(false)
	Recipe("disassemble-long-handed-burner-inserter"):set_enabled(false)
	Recipe("disassemble-burner-mining-drill"):set_enabled(false)
	Recipe("disassemble-copper-incinerator"):set_enabled(false)
	Recipe("disassemble-stone-age-furnace"):set_enabled(false)
	Recipe("disassemble-copper-lab"):set_enabled(false)
	Recipe("disassemble-pistol"):set_enabled(false)
	Recipe("disassemble-shotgun"):set_enabled(false)
	Recipe("disassemble-light-armor"):set_enabled(false)
	data.raw.recipe["disassemble-wooden-chest"].hidden = true
	data.raw.recipe["disassemble-transport-belt"].hidden = true
	data.raw.recipe["disassemble-burner-inserter"].hidden = true
	data.raw.recipe["disassemble-pistol"].hidden = true
	
	--Go through every technology and remove all disassemble recipes
	for _, tech in pairs(data.raw.technology) do
		if tech.effects then
			for x=1,5 do
				for _, unlock in pairs(tech.effects) do
					if unlock.type == "unlock-recipe" then
						name = strReplace(unlock.recipe, "-", "")
						if string.find(name, "disassemble") then
							Recipe(unlock.recipe):remove_unlock(tech)
							Recipe(unlock.recipe):set_enabled(false)
							Technology(tech):remove_effect(tech, "unlock-recipe",unlock.recipe)
						end
					end
				end
			end
		end
	end
	]]--
	--error(serpent.block(data.raw.furnace["iron-disassembler"]))
end

--List of item types to be recycled
local itemTypes = {
	"ammo","armor","item","gun","capsule","module","tool","repair-tool","fluid"
}
if rf.vehicles then 
	table.insert(itemTypes,"item-with-entity-data")
end

for _, itemType in pairs(itemTypes) do
	addRecipes(itemType, data.raw[itemType])
end

fixMaxResults()

--Set result size of entities based on largest recipe count in current game
for n=1,4 do
	data.raw["furnace"]["reverse-factory-"..n].result_inventory_size = rf.maxResults[n]
end

--log(serpent.block(data.raw.recipe["advanced-foundry-mk01"]))
--rf.debug(data.raw.recipe["rf-n-power"])
--rf.debug(data.raw.module["productivity-module"].limitation)
