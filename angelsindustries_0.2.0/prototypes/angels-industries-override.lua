local OV = angelsmods.functions.OV

OV.disable_technology({ "angels-yellow-loader", "angels-red-loader", "angels-blue-loader" })

if data.raw["equipment-category"]["armoured-vehicle"] then
	table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories,"vehicle")
	table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories,"vehicle")
end

--ADD RECIPES TO SMELTING TECHS
--SILICON
OV.add_unlock( "angels-silicon-wafer", "angels-silicon-smelting-1")

if angelsmods.industry.components then
	require("prototypes.overrides.angels-componets-entity-update")
	
	--MODIFY ASSEMBLING MACHINES
	data.raw["item"]["assembling-machine-1"].subgroup = "angels-assemblers-medium"
	data.raw["item"]["assembling-machine-1"].order = "a"
	data.raw["item"]["assembling-machine-2"].subgroup = "angels-assemblers-medium"
	data.raw["item"]["assembling-machine-2"].order = "a"
	data.raw["item"]["assembling-machine-3"].subgroup = "angels-assemblers-medium"
	data.raw["item"]["assembling-machine-3"].order = "a"
	OV.add_unlock("automation", "angels-assembling-machine-small-1")
	OV.add_unlock("automation", "angels-assembling-machine-big-1")
	OV.add_unlock("automation-2", "angels-assembling-machine-small-2")
	OV.add_unlock("automation-2", "angels-assembling-machine-big-2")
	OV.add_unlock("automation-3", "angels-assembling-machine-small-3")
	OV.add_unlock("automation-3", "angels-assembling-machine-big-3")
	data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 2
	data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 3
	data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 4
	data.raw["item"]["assembling-machine-1"].subgroup = "angels-assemblers-medium"
	data.raw["item"]["assembling-machine-2"].subgroup = "angels-assemblers-medium"
	data.raw["item"]["assembling-machine-3"].subgroup = "angels-assemblers-medium"
end

