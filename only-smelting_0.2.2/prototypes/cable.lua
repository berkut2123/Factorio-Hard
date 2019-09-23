require("functions")

angelsmods.functions.OV.remove_unlock("advanced-electronics-3", "gilded-copper-cable")

if recipe("gilded-copper-cable") then
--recipe("gilded-copper-cable").enabled = false
data.raw.recipe["gilded-copper-cable"]=nil
end

if smeltingcable.value == true then
	angelsmods.functions.OV.remove_unlock("electronics", "tinned-copper-cable")
	if recipe("tinned-copper-cable") then
	data.raw.recipe["tinned-copper-cable"]=nil
	end
	if recipe("copper-cable") then
	recipe("copper-cable").enabled = false
	end
	add_technology_unlock("electronics", "tin-cablespc")
end