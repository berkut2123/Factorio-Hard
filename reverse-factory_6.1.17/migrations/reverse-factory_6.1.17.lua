game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	if force.technologies["deadlock-scrapping"] then
		force.technologies["deadlock-scrapping"].researched = false
	end
	if force.recipes["iron-scrapper"] then
		force.recipes["iron-scrapper"].enabled = false
	end

	local scraplist = {"iron","copper","tin","gold","bronze","steel","lead","glass","titanium","duranium", "tantalum"}
	for _, material in pairs(scraplist) do
		name = material.."-ingot-from-scrap"
		if force.recipes[name] then
			force.recipes[name].enabled = false
		end
	end
end

if settings.global["rf-compati"].value then
	global = {}
	global.recyclers = {}
	global.marks = {}
	for _, surface in pairs(game.surfaces) do
		local r1 = surface.find_entities_filtered{name="reverse-factory-1"}
		local r2 = surface.find_entities_filtered{name="reverse-factory-2"}
		local r3 = surface.find_entities_filtered{name="reverse-factory-3"}
		local r4 = surface.find_entities_filtered{name="reverse-factory-4"}
		local recyclers = {}
		for _, value in pairs (r1) do
			table.insert(global.recyclers, value)
		end
		for _, value in pairs (r2) do
			table.insert(global.recyclers, value)
		end
		for _, value in pairs (r3) do
			table.insert(global.recyclers, value)
		end
		for _, value in pairs (r4) do
			table.insert(global.recyclers, value)
		end
	end
	for i=0, (#global.recyclers) do
		table.insert(global.marks,false)
	end
end