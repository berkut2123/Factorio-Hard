local list = {10, 5, 2}
function inlist(value, scanlist)
	if type(scanlist) ~= "table" then return end
	for _,v in pairs(scanlist) do
		if value == v then
			return true
		end
	end
	return false
end

-- Game crashes if ingredient amount is higher than this
local maxIngredient = 65535

-- Output size maximum for fluid, 100 x (base_area=10)
local maxFluid = 1800

-- Lookup table for finding subgroup and stack_size which can be in various locations in data.raw
local dataRawLookup = {}
for _, class in pairs(data.raw) do
	for className, classData in pairs(class) do
		dataRawLookup[className] = dataRawLookup[className] or {}
		if classData.subgroup then
			dataRawLookup[className].subgroup = classData.subgroup
		end
		if classData.stack_size then
			dataRawLookup[className].stack_size = classData.stack_size
		end
	end
end

-- Provides the lowest value from list that works
local function findfactor(min_value)
	for _, factor in pairs(list) do
		if factor <= min_value then
			return factor
		end
	end
	-- Edge case for some recipes that ALREADY exceed max stack size, such as creative mode mod
	return 1
end

local function getStackSize(item)
	if dataRawLookup[item].stack_size then
		return math.min(maxIngredient, dataRawLookup[item].stack_size)
	end
	log("No stacksize found for " .. item)
	return 100
end

-- Figures out max ingredient amount to ensure nothing goes over the max allowable of 65535
local function maxRecipeAmount(ingredients)
	local maxAmount = 0
	for _, ingredient in pairs(ingredients) do
		local amount = ingredient.amount or ingredient.amount_max or ingredient[2]

		if amount then
			maxAmount = math.max(maxAmount, amount)
		else
			log("Recipe with no amount registered " .. serpent.line(ingredient))
		end
	end
	return maxAmount
end

-- Figures out max result amount to ensure the machine doesn't try to output more than the stacksize
local function maxRecipeOutputFactor(recipeOutputs)
	local minAmount = list[1]
	for _, recipeOutput in pairs(recipeOutputs) do
		if recipeOutput.amount then
			if recipeOutput.type == "fluid" then
				minAmount = math.min(maxFluid / recipeOutput.amount, minAmount)
			else
				minAmount = math.min(getStackSize(recipeOutput.name) / recipeOutput.amount, minAmount)
			end
		else
			if recipeOutput[2] then
				minAmount = math.min(getStackSize(recipeOutput[1]) / recipeOutput[2], minAmount)
			end
		end
	end
	return minAmount
end

-- Multiplies the ingredient factors by a set factor
local function setFactorIngredients(ary, factor)
	for k,v in pairs(ary) do
		if v.amount then
			v.amount = v.amount * factor
		elseif v.amount_max then
			v.amount_max = v.amount_max * factor
			if v.amount_min then
				v.amount_min = v.amount_min * factor
			end
		elseif v[2] then
			v[2] = v[2] * factor
		else
			log("Recipe with no amount registered " .. serpent.line(v))
		end
	end
	return ary
end

-- Checks all locations for potential main product results
local function checkForProduct(recipe)
	if type(recipe) ~= "table" then
		return
	elseif recipe.result then
		return recipe.result
	elseif type(recipe.results) == "table" and #recipe.results == 1 and type(recipe.results[1]) == "table" and recipe.results[1].name then
		return recipe.results[1].name
	elseif type(recipe.results) == "table" and #recipe.results == 1 and type(recipe.results[1]) == "table" and recipe.results[1][1] then
		return recipe.results[1][1]
	end
end

-- Find the subgroup for a given item
local function findSubgroup(recipe)
	if type(recipe) ~= "table" then return end
	if recipe.subgroup then
		return recipe.subgroup
	end

	-- Search all possible locations where the "main product" where recipes inherit their subgroup can be found
	local product = checkForProduct(recipe)
	product = product or checkForProduct(recipe.normal)
	product = product or checkForProduct(recipe.expensive)
	product = product or recipe.main_product

	if product == nil then
		log("No main product found " .. recipe.name .. serpent.dump(recipe))
		return
	end

	if dataRawLookup[product] and dataRawLookup[product].subgroup then
		return dataRawLookup[product].subgroup
	end
	log("No subgroup found for " .. product)
end

-- Adjusts factors on all variables by factor.	Does nothing if factor would go over max ingredient amount.
local function setValues(recipe)
	if type(recipe) ~= "table" then return end
	-- Highest factor that would excede the maximum ingredient limit
	local min_factor1 = maxIngredient / maxRecipeAmount(recipe.ingredients)

	-- Highest factor that would excede the item stacksize for the output
	local min_factor2
	if recipe.result then
		min_factor2 = getStackSize(recipe.result) / (recipe.result_factor or 1)
	else
		min_factor2 = maxRecipeOutputFactor(recipe.results)
	end

	-- Final factor used to scale all values of the recipe
	local factor = findfactor(math.min(min_factor1, min_factor2))

	-- Recipe ingredient adjustment
	recipe.ingredients = setFactorIngredients(recipe.ingredients, factor)

	-- Recipe time adjustment, defaulting to .5 if nil
	recipe.energy_required = (recipe.energy_required or 0.5) * factor

	-- Recipe output adjustment, defaulting to 1 if nil
	if recipe.result then
		recipe.result_count = (recipe.result_count or 1) * factor
	end
	if recipe.results then
		recipe.results = setFactorIngredients(recipe.results, factor)
	end
	
	recipe.hide_from_player_crafting = true
end

local function recipeSetup()
	-- Cycles through recipes adding big version to recipe list
	local cat_list1 = table.deepcopy(data.raw["assembling-machine"]["furnace-pro-01"]["crafting_categories"])
	
	for _, recipeBase in pairs(table.deepcopy(data.raw.recipe)) do
		if type(recipeBase) == "table" then
			local cat = recipeBase.category or "crafting" -- Blank recipes categories are considered "crafting"
			if inlist(cat, cat_list1) then
				recipe = table.deepcopy(recipeBase)
				-- Recipe is split into normal/expensive, one allowed to be blank
				if recipe.normal or recipe.expensive then
					if recipe.normal then
						setValues(recipe.normal)
						if not recipe.normal.main_product and type(recipe.normal.results) == "table" and #recipe.normal.results > 1 then
							recipe.localised_name = recipe.localised_name or {"recipe-name." .. recipe.name}
						end
					end
					if recipe.expensive then
						setValues(recipe.expensive)
						if not recipe.expensive.main_product and type(recipe.expensive.results) == "table" and #recipe.expensive.results > 1 then
							recipe.localised_name = recipe.localised_name or {"recipe-name." .. recipe.name}
						end
					end
				elseif (recipe.result or recipe.results) and recipe.ingredients then
					setValues(recipe)
					if not recipe.main_product and type(recipe.results) == "table" and #recipe.results > 1 then
						recipe.localised_name = recipe.localised_name or {"recipe-name." .. recipe.name}
					end
				end
				-- add recipe in technology
				for _, tech in pairs(data.raw["technology"]) do
					if tech.effects then
						for _, effect in pairs(tech.effects) do
							if effect.recipe and data.raw["recipe"][effect.recipe] then
								if effect.recipe == recipe.name then
									if data.raw["technology"][tech.name].effects then
										table.insert(data.raw["technology"][tech.name].effects, {type="unlock-recipe",recipe=recipe.name .. "-AdvFurn"})
										else
										data.raw["technology"][tech_name].effects = {type="unlock-recipe",recipe=recipe.name .. "-AdvFurn"}
									end
									break
								end
							end
						end
					end
				end
				recipe.name = recipe.name .. "-AdvFurn"
				local subgroup = findSubgroup(recipe)
				if subgroup then
					recipe.subgroup = subgroup .. "-AdvFurn"
				end
				recipe.category = "AdvFurn"
				if recipe.icons and recipe.icon_size == 32 then
					table.insert(recipe.icons, {icon = "__Load-Furn__/graphics/icons/logo32.png"})
				elseif recipe.icons and recipe.icon_size == 64 then
					table.insert(recipe.icons, {icon = "__Load-Furn__/graphics/icons/logo64.png"})
				end
				for _, item in pairs (data.raw["item"]) do
					if checkForProduct(recipe) == item.name then
						if item.icon then 
							recipe.icon = item.icon
							recipe.icon_size = item.icon_size
						end
						if item.icons then 
							recipe.icons = item.icons
							recipe.icon_size = item.icon_size
						end
						break
					end
				end
				if recipe.icon and recipe.icon_size == 32 then
					recipe.icons = {
						{icon = recipe.icon},
						{icon = "__Load-Furn__/graphics/icons/logo32.png"}
					}
					recipe.icon = nil
				elseif recipe.icon and recipe.icon_size == 64 then
					recipe.icons = {
						{icon = recipe.icon},
						{icon = "__Load-Furn__/graphics/icons/logo64.png"}
					}
					recipe.icon = nil
				end
				recipe.icon_size = recipe.icon_size
				data:extend({recipe})
			end
		end
	end
end

recipeSetup()