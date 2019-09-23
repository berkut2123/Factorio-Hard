--Data contains all functions contained in the Factorio stdlib
local Data = require('__stdlib__/stdlib/data/data')
local Recipe = require('__stdlib__/stdlib/data/recipe')
local Tech = require('__stdlib__/stdlib/data/technology')

--Game should be mostly vanilla at this point
Recipe("reverse-factory-1"):add_ingredient({"assembling-machine-1",2})
Recipe("reverse-factory-2"):add_ingredient({"steel-plate",5})
Recipe("reverse-factory-3"):add_ingredient({"stone-brick",10})
Recipe("reverse-factory-4"):add_ingredient({"electric-furnace",2})
Recipe("reverse-factory-2"):replace_ingredient("iron-plate","iron-gear-wheel")
Recipe("reverse-factory-3"):replace_ingredient("iron-plate","pipe")
Recipe("reverse-factory-3"):replace_ingredient("electronic-circuit","advanced-circuit")
Recipe("reverse-factory-4"):replace_ingredient("iron-plate","steel-plate")
Recipe("reverse-factory-4"):remove_ingredient("electronic-circuit")
Recipe("reverse-factory-4"):add_ingredient({"effectivity-module",2})
Tech("reverse-factory-1"):add_prereq("automation")
Tech("reverse-factory-2"):add_prereq("automation-2")
Tech("reverse-factory-3"):add_prereq("advanced-material-processing-2")
Tech("reverse-factory-4"):add_prereq("automation-3")
Tech("reverse-factory-1"):set_field("unit",Tech("automation"):get_field("unit"))
Tech("reverse-factory-2"):set_field("unit",Tech("automation-2"):get_field("unit"))
Tech("reverse-factory-3"):set_field("unit",Tech("advanced-material-processing-2"):get_field("unit"))
Tech("reverse-factory-4"):set_field("unit",Tech("automation-3"):get_field("unit"))


--If bobs intermediates is detected, then check if these items exist, and replace ingredients.
if rf.mods == "bobplates" then
	Recipe("reverse-factory-1"):add_ingredient("iron-gear-wheel",5)
	--Bob Electronics is not guaranteed, but change recipes if it exists
	if data.raw.item["basic-circuit-board"] then
		Recipe("reverse-factory-1"):replace_ingredient("electronic-circuit","basic-circuit-board")
		Recipe("reverse-factory-4"):remove_ingredient("effectivity-module")
		Recipe("reverse-factory-4"):add_ingredient({"processing-unit",5})
	end
	if data.raw.item["steel-gear-wheel"] then
		Recipe("reverse-factory-2"):replace_ingredient("iron-gear-wheel","steel-gear-wheel")
	end
	if data.raw.item["plastic-pipe"] then
		Recipe("reverse-factory-3"):replace_ingredient("pipe","plastic-pipe")
		Tech("reverse-factory-3"):remove_prereq("advanced-material-processing-2")
		Tech("reverse-factory-3"):add_prereq("plastics")
		Tech("reverse-factory-3"):set_field("unit",Tech("plastics"):get_field("unit"))
	end
	if data.raw.technology["tungsten-alloy-processing"] then
		Recipe("reverse-factory-4"):replace_ingredient("steel-plate","titanium-plate")
		Tech("reverse-factory-4"):remove_prereq("automation-3")
		Tech("reverse-factory-4"):add_prereq("titanium-processing")
		Tech("reverse-factory-4"):set_field("unit",Tech("titanium-processing"):get_field("unit"))
	end
end

--If Industrial Revolution is installed, complete overwrite recipes and technologies
if rf.mods == "DIR" then
	data.raw.recipe["reverse-factory-1"].ingredients = {
	{"assembling-machine-1",1},
	{"bronze-chassis-large",1},
	{"copper-motor",2},
	{"bronze-piston",2},
	{"bronze-gear-wheel",4},
	}
	data.raw.recipe["reverse-factory-2"].ingredients = {
	{"reverse-factory-1",1},
	{"iron-chassis-large",1},
	{"controller-mk1",1},
	{"iron-piston",2},
	{"iron-gear-wheel",4},
	}
	data.raw.recipe["reverse-factory-3"].ingredients = {
	{"reverse-factory-2",1},
	{"steel-chassis-large",1},
	{"controller-mk2",1},
	{"steel-piston",2},
	{"steel-gear-wheel",4},
	}
	data.raw.recipe["reverse-factory-4"].ingredients = {
	{"reverse-factory-3",1},
	{"titanium-chassis-large",1},
	{"controller-mk3",1},
	{"chromium-piston",2},
	{"chromium-gear-wheel",4},
	}
	Data("reverse-factory-1","furnace"):set_field("energy_source",Data("assembling-machine-1","assembling-machine"):get_field("energy_source"))
	Data("reverse-factory-1","furnace"):set_field("energy_usage",Data("assembling-machine-1","assembling-machine"):get_field("energy_usage"))

	Tech("reverse-factory-1"):add_prereq("deadlock-bronze-age")
	Tech("reverse-factory-2"):add_prereq("deadlock-electronics-1")
	Tech("reverse-factory-2"):remove_prereq("automation-2")
	Tech("reverse-factory-3"):add_prereq("deadlock-electronics-2")
	Tech("reverse-factory-3"):remove_prereq("advanced-material-processing-2")
	Tech("reverse-factory-4"):remove_prereq("automation-3")
	Tech("reverse-factory-4"):add_prereq("deadlock-electronics-3")

	Tech("reverse-factory-2"):set_field("unit",Tech("deadlock-electronics-1"):get_field("unit"))
	Tech("reverse-factory-3"):set_field("unit",Tech("deadlock-electronics-2"):get_field("unit"))
	Tech("reverse-factory-4"):set_field("unit",Tech("deadlock-electronics-3"):get_field("unit"))
end

--If Fantario is installed
if rf.mods == "fantario" then
	--Change assembling machines to heat-based power, and balance to heat-based assemblers
	Data("reverse-factory-1","furnace"):set_field("energy_source",Data("assembling-machine-1","assembling-machine"):get_field("energy_source"))
	Data("reverse-factory-1","furnace"):set_field("energy_usage",Data("assembling-machine-1","assembling-machine"):get_field("energy_usage"))
	Data("reverse-factory-2","furnace"):set_field("energy_source",Data("assembling-machine-2","assembling-machine"):get_field("energy_source"))
	Data("reverse-factory-2","furnace"):set_field("energy_usage",Data("assembling-machine-2","assembling-machine"):get_field("energy_usage"))
	Data("reverse-factory-3","furnace"):set_field("energy_source",Data("assembling-machine-3","assembling-machine"):get_field("energy_source"))
	Data("reverse-factory-3","furnace"):set_field("energy_usage",Data("assembling-machine-3","assembling-machine"):get_field("energy_usage"))

	--Change reverse factory recipes and technologies
	Recipe("reverse-factory-2"):replace_ingredient("steel-plate","iron-frame")
	Recipe("reverse-factory-3"):replace_ingredient("stone-brick","steel-frame")
	Recipe("reverse-factory-3"):replace_ingredient("advanced-circuit","effectivity-module")

	Recipe("reverse-factory-4"):replace_ingredient("steel-plate","steel-frame")
	Recipe("reverse-factory-4"):replace_ingredient("effectivity-module","electric-engine-unit")
	Recipe("reverse-factory-4"):replace_ingredient("electric-furnace","assembling-machine-4")

	Tech("reverse-factory-3"):remove_prereq("advanced-material-processing-2")
	Tech("reverse-factory-3"):add_prereq("steel-processing")
	Tech("reverse-factory-3"):set_field("unit",Tech("steel-processing"):get_field("unit"))

	Tech("reverse-factory-4"):remove_prereq("automation-3")
	Tech("reverse-factory-4"):add_prereq("electric-engine")
	Tech("reverse-factory-4"):set_field("unit",Tech("electric-engine"):get_field("unit"))

	--Move reverse factory T4 next to electric assembling machine, in electric machines tab.
	Data("reverse-factory-4","item"):set_field("subgroup",Data("assembling-machine-4","item"):get_field("subgroup"))
	Data("reverse-factory-4","item"):set_field("order",Data("assembling-machine-4","item"):get_field("order").."-z")
end



















