--Setup for the reverse factory item, entity, recipe, and technology
require("prototypes.pipe-covers")
require("prototypes.reverse-factory")
--Setup for the reverse recipe groups and categories
require("prototypes.catgroups")


--Insantiating tables needed for the rest of the mod to function
rf = {}
rf.recipes = {}
rf.vehicles = settings.startup["rf-vehicles"].value
rf.efficiency = settings.startup["rf-efficiency"].value
rf.norecycle_items = {}
rf.norecycle_categories = {}
rf.norecycle_subgroups = {}
rf.maxResults = {5,5,5,5}

--If certain mods are detected, change some recipes later
if mods["bobplates"] then
	rf.mods = "bobplates"
elseif mods["IndustrialRevolution"] then
	rf.mods = "DIR"
elseif mods["Fantario"] then
	rf.mods = "fantario"
end

require('dbug')

--[[
    Construction Drones adds equipment grid to light armor
    This prevents light armor from being used in reverse recipe
    Robot Army uses light armor in droid-flame recipe
    Therefore, remove droid-flame recipe from being recycled in only this case
]]--
if mods["Construction_Drones"] and mods["robotarmy"] then
	table.insert(rf.norecycle_items, "droid-flame")
end
--Attach notes creates item version of this fluid, which does not have a canon recipe
if mods["bobplates"] and mods["attach-notes"] then
	table.insert(rf.norecycle_items, "heavy-water")
end
if mods["warptorio2"] then
	table.insert(rf.norecycle_items, "warptorio-armor")
end

--Prevent duplication of crushed stone
table.insert(rf.norecycle_items, "stone-crushed")
--Prevent duplication of scrap recipes
table.insert(rf.norecycle_subgroups, "smelting_fantario")
table.insert(rf.norecycle_subgroups, "petrochem-catalysts")
table.insert(rf.norecycle_categories, "seed-extractor")
