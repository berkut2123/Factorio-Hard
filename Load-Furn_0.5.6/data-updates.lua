if data.raw.technology["steel-processing"] then
	table.insert(data.raw.technology["steel-processing"].effects, {type="unlock-recipe", recipe="steel-plate2"})
end
for k=1,5 do
	local v = "0"..k
	if mods["pycoalprocessing"] then
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "advanced-foundry")
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "hpf") 
		data.raw["assembling-machine"]["furnace-pro-"..v].ingredient_count = 20
	end
	if mods["IndustrialRevolution"] then
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "incinerating")
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "smelting-1")
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "smelting-2")
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "smelting-3")
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "smelting-4")
		table.insert(data.raw["assembling-machine"]["furnace-pro-"..v].crafting_categories, "smelting-5")
		data.raw.recipe["furnace-pro-01"].ingredients = 
			{
				{"fast-inserter", 5},
				{"steel-plate", 50},
				{"iron-furnace", 24},
				{"electronic-circuit", 20},
				{"iron-gear-wheel", 20},
			
			}
		data.raw.recipe["furnace-pro-02"].ingredients = 
			{
				{"fast-inserter", 10},
				{"steel-plate", 50},
				{"furnace-pro-01", 2},
				{"advanced-circuit", 5},
				{"iron-gear-wheel", 20},
			
			}
		data.raw.recipe["furnace-pro-03"].ingredients = 
			{
				{"fast-inserter", 20},
				{"furnace-pro-02", 2},
				{"advanced-circuit", 25},
				{"speed-module", 10},
				{type = "fluid", name = "lubricant", amount = 120}
			
			}
		data.raw.recipe["furnace-pro-04"].ingredients = 
			{
				{"stack-inserter", 5},
				{"furnace-pro-03", 2},
				{"advanced-circuit", 50},
				{"speed-module-2", 5},
				{type = "fluid", name = "lubricant", amount = 120}
			
			}
		data.raw.recipe["furnace-pro-05"].ingredients = 
			{
				{"stack-inserter", 10},
				{"furnace-pro-04", 2},
				{"advanced-circuit", 100},
				{"speed-module-3", 2},
				{type = "fluid", name = "lubricant", amount = 120}
			
			}
	end
end

if settings.startup["logist"].value == true then
	table.insert(data.raw.technology["furnace-pro-3"].effects,{type = "unlock-recipe",recipe = "loader-pro-02",})
	table.insert(data.raw.technology["furnace-pro-3"].effects,{type = "unlock-recipe",recipe = "transport-belt-pro",})
	table.insert(data.raw.technology["furnace-pro-3"].effects,{type = "unlock-recipe",recipe = "underground-belt-pro",})
	table.insert(data.raw.technology["furnace-pro-3"].effects,{type = "unlock-recipe",recipe = "splitter-pro",})
	table.insert(data.raw.technology["furnace-pro-4"].effects,{type = "unlock-recipe",recipe = "loader-pro-03",})
	table.insert(data.raw.technology["furnace-pro-4"].effects,{type = "unlock-recipe",recipe = "transport-belt-pro2",})
	table.insert(data.raw.technology["furnace-pro-4"].effects,{type = "unlock-recipe",recipe = "underground-belt-pro2",})
	table.insert(data.raw.technology["furnace-pro-4"].effects,{type = "unlock-recipe",recipe = "splitter-pro2",})
	if not mods["LoaderRedux"] and not mods["Krastorio"] then
		table.insert(data.raw.technology["logistics"].effects,{type = "unlock-recipe",recipe = "loader-pro-001",})
		table.insert(data.raw.technology["logistics-2"].effects,{type = "unlock-recipe",recipe = "loader-pro-002",})
		table.insert(data.raw.technology["logistics-3"].effects,{type = "unlock-recipe",recipe = "loader-pro-01",})
	end
end