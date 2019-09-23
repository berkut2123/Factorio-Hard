-- Creates 10x versions of each recipe from selected categories
require("__Load-Furn__.prototypes.furnaces.recipesFix")

local function itemGroups()
	for _,v in pairs(table.deepcopy(data.raw["item-group"])) do
		v.localised_name = v.localised_name or {"item-group-name." ..v.name}
		v.name = v.name .. "-AdvFurn"
		if v.type == "item-group" and string.find(v.name, "-AdvFurn") then
			if v.icon or v.icons then
				if v.icon_size == 64 then
					if v.icon then
					v.icons = {	{icon = v.icon},
								{icon = "__Load-Furn__/graphics/icons/logo64.png"}
							}
					v.icon = nil
					elseif v.icons then
					v.icons = v.icons
					end
				elseif v.icon_size == 128 then
					if v.icon then
					v.icons = {	{icon = v.icon},
								{icon = "__Load-Furn__/graphics/icons/logo128.png"}
							}
					v.icon = nil
					elseif v.icons then
					v.icons = v.icons
					end
				end
			end
		end
		v.order = v.order --"y" .. v.order
		data:extend({v})
	end
	for _,v in pairs(table.deepcopy(data.raw["item-subgroup"])) do
		v.localised_name = v.localised_name or {"item-group-name." ..v.name}
		v.name = v.name .. "-AdvFurn"
		v.group = v.group .. "-AdvFurn"
		data:extend({v})
	end
end
itemGroups()

-- Снять ограничение модулей производительности
if settings.startup["module-product-on"].value == true then
	for _, recipeM in pairs (data.raw["recipe"]) do
		local cat_list1 = table.deepcopy(data.raw["assembling-machine"]["furnace-pro-01"]["crafting_categories"])
		local cat = recipeM.category or "crafting"
		if inlist(cat, cat_list1) then
			recipe = table.deepcopy(recipeM)
			if mods["bobmodules"] and settings.startup["bobmods-modules-enableproductivitylimitation"].value == false then return
			elseif mods["bobmodules"] and settings.startup["bobmods-modules-enableproductivitylimitation"].value == true then
				bobmods.lib.module.add_productivity_limitation(recipe.name)
				table.insert(data.raw.module["productivity-module"].limitation, recipe.name)
				table.insert(data.raw.module["productivity-module-2"].limitation, recipe.name)
				table.insert(data.raw.module["productivity-module-3"].limitation, recipe.name)
				if mods["techno"] then
					if settings.startup["module-mo"].value == true then
						table.insert(data.raw.module["modul-mo"].limitation, recipe.name)
						table.insert(data.raw.module["modul-mo2"].limitation, recipe.name)
						table.insert(data.raw.module["modul-mo3"].limitation, recipe.name)
					end
				end 
			end

			if not mods["bobmodules"] then 
				table.insert(data.raw.module["productivity-module"].limitation, recipe.name)
				table.insert(data.raw.module["productivity-module-2"].limitation, recipe.name)
				table.insert(data.raw.module["productivity-module-3"].limitation, recipe.name)
				if mods["techno"] then
					if settings.startup["module-mo"].value == true then
						table.insert(data.raw.module["modul-mo"].limitation, recipe.name)
						table.insert(data.raw.module["modul-mo2"].limitation, recipe.name)
						table.insert(data.raw.module["modul-mo3"].limitation, recipe.name)
					end
				end 
			end 
		end 
	end
end