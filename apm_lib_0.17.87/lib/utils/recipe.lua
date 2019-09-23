require 'util'

if not apm.lib.utils.recipe.result then apm.lib.utils.recipe.result = {} end
if not apm.lib.utils.recipe.set then apm.lib.utils.recipe.set = {} end
if not apm.lib.utils.recipe.has then apm.lib.utils.recipe.has = {} end
if not apm.lib.utils.recipe.get then apm.lib.utils.recipe.get = {} end
if not apm.lib.utils.recipe.ingredient then apm.lib.utils.recipe.ingredient = {} end
if not apm.lib.utils.recipe.category then apm.lib.utils.recipe.category = {} end
if not apm.lib.utils.recipe.energy_required then apm.lib.utils.recipe.energy_required = {} end
if not apm.lib.utils.recipe.overwrite then apm.lib.utils.recipe.overwrite = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function convert_ingredients(ingredients)   
    local t_new = {}
    
    for k, v in pairs(ingredients) do
        local i_name = nil
        local i_type = nil
        local i_amount = nil
        
        if v.name == nil then
            i_name = v[1]
            i_type = apm.lib.utils.item.get_type(i_name)
            i_amount = v[2]
            table.insert(t_new, {type = i_type, name = i_name, amount = i_amount})
        else
            table.insert(t_new, v)
        end
    end
    
    return t_new
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.exist(recipe_name)
    if data.raw.recipe[recipe_name] then
        return true
    end
    log('Warning: apm.lib.utils.recipe.exist(): recipe: "' .. tostring(recipe_name) .. '" dosent exist.')
    return false
end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.allow_productivity(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    for _, p_module in pairs(data.raw["module"]) do
        if apm.lib.utils.modules.has_productivity(p_module.name) then
            if p_module.limitation then
                table.insert(p_module.limitation, recipe_name)
                log('Info: apm.lib.utils.recipe.allow_productivity(): add recipe: "' .. tostring(recipe_name) .. '" to limitations of module: "' .. tostring(p_module.name) .. '"')
            end
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function has_result(base, result_name)
    for _, result in pairs(base) do
        if result[1] == result_name or result.name == result_name then
            return true
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.has.result(recipe_name, result_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return false end
    if not apm.lib.utils.item.exist(result_name) then return false end

    local recipe = data.raw.recipe[recipe_name]

    if recipe.result then
        if recipe.result == result_name then return true end
    end

    if recipe.results then
        if has_result(recipe.results, result_name) then return true end
    end

    if recipe.normal and recipe.normal.result then
        if recipe.normal.result == result_name then return true end
    end

    if recipe.normal and recipe.normal.results then
        if has_result(recipe.normal.results, result_name) then return true end
    end

    if recipe.expensive and recipe.expensive.result then
        if recipe.expensive.result == result_name then return true end
    end
    if recipe.expensive and recipe.expensive.results then
        if has_result(recipe.expensive.results, result_name) then return true end
    end

    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function has_ingredient(base, ingredient_name)
    for _, ingredient in pairs(base) do
        if ingredient[1] == ingredient_name or ingredient.name == ingredient_name then
            return true
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.has.ingredient(recipe_name, ingredient_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return false end
    if not apm.lib.utils.item.exist(ingredient_name) then return false end

    local recipe = data.raw.recipe[recipe_name]

    if recipe.ingredients then
        if has_ingredient(recipe.ingredients, ingredient_name) then return true end
    end

    if recipe.normal and recipe.normal.ingredients then
        if has_ingredient(recipe.normal.ingredients, ingredient_name) then return true end
    end

    if recipe.expensive and recipe.expensive.ingredients then
        if has_ingredient(recipe.expensive.ingredients, ingredient_name) then return true end
    end

    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.clone(recipe_name, recipe_name_new)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local new_recipe = table.deepcopy(data.raw.recipe[recipe_name])
    new_recipe.name = recipe_name_new
    if not new_recipe.localised_name and (new_recipe.icon or new_recipe.icons) then
        new_recipe.localised_name  = {"recipe-name." .. recipe_name}
    end
    data:extend({new_recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.remove(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]
    apm.lib.utils.technology.remove.recipe_recursive(recipe_name)
    apm.lib.utils.modules.remove_recipe_from_limitations(recipe_name)
    
    if not recipe.normal and not recipe.expensive then
        recipe.hidden = true
        recipe.enabled = false
        return
    end
    
    if recipe.normal then
        recipe.normal.hidden = true
        recipe.normal.enabled = false
    end
    
    if recipe.expensive then
        recipe.expensive.hidden = true
        recipe.expensive.enabled = false
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.disable(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]

    if not recipe.normal and not recipe.expensive then
        recipe.enabled = false
        return
    end
    
    if recipe.normal then
        recipe.normal.enabled = false
    end
    
    if recipe.expensive then
        recipe.expensive.enabled = false
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.enable(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]
    if not recipe.normal and not recipe.expensive then
        recipe.enabled = true
        return
    end
    
    if recipe.normal then
        recipe.normal.enabled = true
    end
    
    if recipe.expensive then
        recipe.expensive.enabled = true
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.convert_simple_result_to_results(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]

    -- simple recipe (result to results)
    if recipe.result then
        recipe.results = {}
        local type_result = apm.lib.utils.item.get_type(recipe.result)
        local amount = 1
        if recipe.result_count then
            amount = recipe.result_count
        end
        table.insert(recipe.results,{type=type_result, name=recipe.result, amount=amount})
        recipe.result_count = nil
        recipe.result = nil
    end

    -- normal recipe (result to results)
    if recipe.normal and recipe.normal.result then
        recipe.normal.results = {}
        local type_result = apm.lib.utils.item.get_type(recipe.normal.result)
        local amount = 1
        if recipe.normal.result_count then
            amount = recipe.normal.result_count
        end
        table.insert(recipe.normal.results,{type=type_result, name=recipe.normal.result, amount=amount})
        recipe.normal.result_count = nil
        recipe.normal.result = nil
    end

    -- expensive recipe (result to results)
    if recipe.expensive and recipe.expensive.result then
        recipe.expensive.results = {}
        local type_result = apm.lib.utils.item.get_type(recipe.expensive.result)
        local amount = 1
        if recipe.expensive.result_count then
            amount = recipe.expensive.result_count
        end
        table.insert(recipe.expensive.results,{type=type_result, name=recipe.expensive.result, amount=amount})
        recipe.expensive.result_count = nil
        recipe.expensive.result = nil
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function add_ingredient(base_dn, type_name, ingredient_name, ingredient_amount)
    if not ingredient_amount or ingredient_amount == 0 then return end
    table.insert(base_dn, {type=type_name, name=ingredient_name, amount=ingredient_amount})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function ingredient_mod(recipe_name, base, base_name, ingredient_name, ingredient_amount, ingredient_amount_expensive)
    local ingredients_convert = convert_ingredients(base)
    base = ingredients_convert
    local type_name = apm.lib.utils.item.get_type(ingredient_name)

    local amount = ingredient_amount
    if base_name == 'expensive' and ingredient_amount_expensive then
        amount = ingredient_amount_expensive
    end

    local seen = false
    for k, v in pairs(base) do
        if v.name == ingredient_name then
            seen = true
            if amount == 0 then
                table.remove(base, k)
                log('Info: apm.lib.utils.recipe.ingredient.mod(): ('..tostring(base_name)..') removed from recipe: "' .. tostring(recipe_name) .. '" -> "' .. tostring(ingredient_name) .. '"')
            else
                base[k].amount = amount
                log('Info: apm.lib.utils.recipe.ingredient.mod(): ('..tostring(base_name)..') recipe: "' .. tostring(recipe_name) .. '" -> "' .. tostring(ingredient_name) .. '" set amount to: ' .. tostring(amount))
            end
        end
    end
    if seen ~= true then
        add_ingredient(base, type_name, ingredient_name, amount)
        log('Info: apm.lib.utils.recipe.ingredient.mod(): ('..tostring(base_name)..') add to recipe: "' .. tostring(recipe_name) .. '" -> "' .. tostring(ingredient_name) .. '" with amount: ' .. tostring(amount))
    end

    return base
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.ingredient.mod(recipe_name, ingredient_name, ingredient_amount, ingredient_amount_expensive)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    if not apm.lib.utils.item.exist(ingredient_name) then return end

    local recipe = data.raw.recipe[recipe_name]   
    local type_name = apm.lib.utils.item.get_type(ingredient_name)

    -- simple recipe
    if recipe.ingredients then
        recipe.ingredients = ingredient_mod(recipe_name, recipe.ingredients, 'simple', ingredient_name, ingredient_amount, ingredient_amount_expensive)
    end
       
    -- recipe.normal
    if recipe.normal and recipe.normal.ingredients then
        recipe.normal.ingredients = ingredient_mod(recipe_name, recipe.normal.ingredients, 'normal', ingredient_name, ingredient_amount, ingredient_amount_expensive)
    end
    
    -- recipe.expensive
    if recipe.expensive and recipe.expensive.ingredients then
        recipe.expensive.ingredients = ingredient_mod(recipe_name, recipe.expensive.ingredients, 'expensive', ingredient_name, ingredient_amount, ingredient_amount_expensive)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function ingredient_mod_temperature(recipe_name, base, base_name, ingredient_name, condition_temperature, target_temperature)
    for _, ingredient in pairs(base) do
        if ingredient[1] == ingredient_name or ingredient.name == ingredient_name then
            if ingredient.temperature == condition_temperature then
                ingredient.temperature = target_temperature
                log('Info: apm.lib.utils.recipe.ingredient.mod_temperature(): ('.. tostring(base_name) ..'): "' .. tostring(recipe.name) .. '" change temperature for: "' .. tostring(ingredient_name) .. '" from: ' .. tostring(condition_temperature) .. ' to: ' .. tostring(target_temperature))
            end
        end
    end
    return base
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.ingredient.mod_temperature(recipe_name, ingredient_name, condition_temperature, target_temperature)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    if not apm.lib.utils.item.exist(ingredient_name) then return end

    local type_name = apm.lib.utils.item.get_type(ingredient_name)
    if type_name ~= 'fluid' then
        log('Warning: apm.lib.utils.recipe.ingredient.mod_temperature(): ingredient: "' .. tostring(ingredient_name) .. '" is not a fluid.')
        return
    end

    local recipe = data.raw.recipe[recipe_name]

    if recipe.ingredients then
        recipe.ingredients = ingredient_mod_temperature(recipe_name, recipe.ingredients, 'simple', ingredient_name, condition_temperature, target_temperature)
    end

    if recipe.normal and recipe.normal.ingredients then
        recipe.normal.ingredients = ingredient_mod_temperature(recipe_name, recipe.normal.ingredients, 'normal', ingredient_name, condition_temperature, target_temperature)
    end

    if recipe.expensive and recipe.expensive.ingredients then
        recipe.expensive.ingredients = ingredient_mod_temperature(recipe_name, recipe.expensive.ingredients, 'expensive', ingredient_name, condition_temperature, target_temperature)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function replace_ingredient(recipe_name, base, base_name, ingredient_old, ingredient_new, amount_multi)
    local type_name_old = apm.lib.utils.item.get_type(ingredient_old)
    local type_name_new = apm.lib.utils.item.get_type(ingredient_new)
    local ingredients_convert = convert_ingredients(base)
    base = ingredients_convert
    local already_has_ingredient_new = has_ingredient(base, ingredient_new)
    local ingredient_old_key = nil
    local ingredient_new_key = nil
    local replaced = false
    local base_amount = 1

    if not amount_multi then
        amount_multi = 1
    end

    if type_name_old == 'item' and type_name_new =='fluid' then
        amount_multi = amount_multi*10
    elseif type_name_old == 'fluid' and type_name_new =='item' then
        amount_multi = amount_multi/10
    end

    for k, v in pairs(base) do
        if v.name == ingredient_old then
            ingredient_old_key = k
            replaced = true
        end
        if v.name == ingredient_old then
            ingredient_new_key = k
        end
    end

    if not already_has_ingredient_new and ingredient_old_key then
        base[ingredient_old_key].name = ingredient_new
        base[ingredient_old_key].type = type_name_new
        if base[ingredient_old_key].amount then
            base[ingredient_old_key].amount = base[ingredient_old_key].amount*amount_multi
        else
            base[ingredient_old_key].amount = base_amount*amount_multi
        end
    end

    if already_has_ingredient_new and ingredient_old_key and ingredient_new_key then
        if base[ingredient_old_key].amount and base[ingredient_new_key].amount then
            base[ingredient_new_key].amount = base[ingredient_new_key].amount+(base[ingredient_old_key].amount*amount_multi)
        else
            base[ingredient_new_key].amount = 1+(base_amount*amount_multi)
        end
        table.remove(base, ingredient_old_key)
    end

    if replaced then
        log('Info: apm.lib.utils.recipe.ingredient.replace(): in ('.. tostring(base_name) ..'): "' .. tostring(recipe_name) .. '" ingredient: "' .. tostring(ingredient_old) .. '" -> "' .. tostring(ingredient_new) .. '"')
    end

    return base
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.ingredient.replace(recipe_name, ingredient_old, ingredient_new, amount_multi)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    if not apm.lib.utils.item.exist(ingredient_old) then return end
    if not apm.lib.utils.recipe.has.ingredient(recipe_name, ingredient_old) then return end
    if not apm.lib.utils.item.exist(ingredient_new) then return end

    log('Info: apm.lib.utils.recipe.ingredient.replace(): trying to replace ingredient in: "' .. tostring(recipe_name) .. '": "' .. tostring(ingredient_old) .. '" -> "' .. tostring(ingredient_new) .. '"')

    local recipe = data.raw.recipe[recipe_name]   
   
    -- simple recipe
    if recipe.ingredients then
        recipe.ingredients = replace_ingredient(recipe_name, recipe.ingredients, 'simple', ingredient_old, ingredient_new, amount_multi)
    end
    
    -- recipe.normal
    if recipe.normal and recipe.normal.ingredients then
        recipe.normal.ingredients = replace_ingredient(recipe_name, recipe.normal.ingredients, 'normal', ingredient_old, ingredient_new, amount_multi)
    end
    
    -- recipe.expensive
    if recipe.expensive and recipe.expensive.ingredients then
        recipe.expensive.ingredients = replace_ingredient(recipe_name, recipe.expensive.ingredients, 'expensive', ingredient_old, ingredient_new, amount_multi)
    end
end

-- Function -------------------------------------------------------------------
-- replace 'ingredient_old' with 'ingredient_new' in all recipes
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.ingredient.replace_all(ingredient_old, ingredient_new)
    if not apm.lib.utils.item.exist(ingredient_old) then return end
    if not apm.lib.utils.item.exist(ingredient_new) then return end   

    for recipe, _ in pairs(data.raw.recipe) do
        apm.lib.utils.recipe.ingredient.replace(recipe, ingredient_old, ingredient_new)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.has.main_product(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return false end
    local recipe = data.raw.recipe[recipe_name]

    if recipe.main_product then return true end
    if recipe.normal and recipe.normal.main_product then return true end
    if recipe.expensive and recipe.expensive.main_product then return true end
    
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.get.main_product(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return nil end
    local recipe = data.raw.recipe[recipe_name]

    if recipe.main_product then return  recipe.main_product end
    if recipe.normal and recipe.normal.main_product then return recipe.normal.main_product end
    if recipe.expensive and recipe.expensive.main_product then return recipe.expensive.main_product end
    
    return nil
end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.set.always_show_products(recipe_name, bool)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    local recipe = data.raw.recipe[recipe_name]
    recipe.always_show_products = bool
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.set.always_show_made_in(recipe_name, bool)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    local recipe = data.raw.recipe[recipe_name]
    recipe.always_show_made_in = bool
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.set.icons(recipe_name, icons)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    local recipe = data.raw.recipe[recipe_name]
    
    apm.lib.utils.icon.set.icons(recipe, icons)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.set.icon(recipe_name, icon_path)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]

    if apm.lib.utils.recipe.has.main_product(recipe_name) then
        local main_product_name = apm.lib.utils.recipe.get.main_product(recipe_name)
        if not main_product then
            log('Error: apm.lib.utils.recipe.set.icon(): get "nil" mainproduct for: "' .. tostring(recipe_name) .. '"')
            return
        end
        local main_product = data.raw.item(main_product_name) or data.raw.fluid(main_product_name)

        recipe.group = main_product.group
        recipe.subgroup = main_product.subgroup
        recipe.order = main_product.order
        if recipe.main_product then recipe.main_product = nil end
        if recipe.normal and recipe.normal.main_product then recipe.normal.main_product = nil end
        if recipe.expensive and recipe.expensive.main_product then recipe.expensive.main_product = nil end
    end

    if not recipe.icons then
        recipe.icon = icon_path
    else
        recipe.icons = {icon=icon_path}
    end

    log('Info: apm.lib.utils.recipe.set.icon(): set icon for: "' .. tostring(recipe_name) .. '" to: "' .. tostring(icon_path) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.set.main_product(recipe_name, result_old, result_new, force)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]
    local done = false

    if not force then
        if not apm.lib.utils.recipe.has.main_product(recipe_name) then
            log('Warning: apm.lib.utils.recipe.set.main_product(): can not set main_product for: "' .. tostring(recipe_name) .. '" to: "' .. tostring(result_new) .. '" recipe does not have this property')
            return
        end
    end

    if recipe.main_product == result_old then
        recipe.main_product = result_new
        done = true
    end

    if recipe.normal and recipe.normal.main_product == result_old then
        recipe.normal.main_product = result_new
        done = true
    end

    if recipe.expensive and recipe.expensive.main_product == result_old then
        recipe.expensive.main_product = result_new
        done = true
    end

    if done then
        log('Info: apm.lib.utils.recipe.set.main_product(): set main_product for: "' .. tostring(recipe_name) .. '" from: "' .. tostring(result_old) .. '" to "' .. tostring(result_new) .. '"')
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.result.count(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return nil end

    if recipe.results then
        return #recipe.results
    elseif recipe.result then
        return recipe.result_count
    end

    if recipe.normal then
        if recipe.normal.results then
            return #recipe.normal.results
        elseif recipe.normal.result then
            return recipe.normal.result_count
        end
    end

    if recipe.expensive then
        if recipe.expensive.results then
            return #recipe.expensive.results
        elseif recipe.expensive.result then
            return recipe.expensive.result_count
        end
    end

    return nil
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.result.get_first_result(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return nil end

    if recipe.results then
        for _, result in pairs(recipe.results) do
            return result.name
        end
    elseif recipe.result then
        return recipe.result
    end

    if recipe.normal then
        if recipe.normal.results then
            for _, result in pairs(recipe.normal.results) do
                return result.name
            end
        elseif recipe.normal.result then
            return recipe.normal.result
        end
    end

    if recipe.expensive then
        if recipe.expensive.results then
            for _, result in pairs(recipe.expensive.results) do
                return result.name
            end
        elseif recipe.expensive.result then
            return recipe.expensive.result
        end
    end

    return nil    
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.result.replace(recipe_name, result_old, result_new, amount_multi)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    if not apm.lib.utils.item.exist(result_old) then return end
    if not apm.lib.utils.item.exist(result_new) then return end

    log('Info: apm.lib.utils.recipe.result.replace(): trying to replace result in: "' .. tostring(recipe_name) .. '": "' .. tostring(result_old) .. '" -> "' .. tostring(result_new) .. '"')

    local recipe = data.raw.recipe[recipe_name]   
    local type_name = apm.lib.utils.item.get_type(result_new)
    
    if not amount_multi then
        amount_multi = 1
    end

    -- simple recipe (result)
    if recipe.result ~= nil and recipe.normal == nil and recipe.expensive == nil then
        if recipe.result == result_old then
            recipe.result = result_new
            if recipe.result_count then
                recipe.result_count = recipe.result_count * amount_multi
            else
                recipe.result_count = amount_multi
            end
            log('Info: apm.lib.utils.recipe.result.replace(): in (simple.result): "' .. tostring(recipe_name) .. '" result: "' .. tostring(result_old) .. '" -> "' .. tostring(result_new) .. '"')
            apm.lib.utils.recipe.set.main_product(recipe_name, result_old, result_new)
        end
    end
    
    -- simple recipe (results)
    if recipe.results ~= nil and recipe.normal == nil and recipe.expensive == nil then
        for k, v in pairs(recipe.results) do
            if v[1] == result_old or v.name == result_old then
                recipe.results[k].type = type_name
                recipe.results[k].name = result_new
                if recipe.results[k].amount then
                    recipe.results[k].amount = recipe.results[k].amount * amount_multi
                else
                    recipe.results[k].amount = amount_multi
                end
                log('Info: apm.lib.utils.recipe.result.replace(): in (simple.results): "' .. tostring(recipe_name) .. '" result: "' .. tostring(result_old) .. '" -> "' .. tostring(result_new) .. '"')
                apm.lib.utils.recipe.set.main_product(recipe_name, result_old, result_new)
            end
        end
    end
    
    -- recipe.normal
    if recipe.normal ~= nil then
        if recipe.normal.result ~= nil then
            recipe.normal.results = {}
            local type_result = apm.lib.utils.item.get_type(recipe.normal.result)
            local amount = 1
            if recipe.normal.result_count then
                amount = recipe.normal.result_count
            end
            table.insert(recipe.normal.results,{type=type_result, name=recipe.normal.result, amount=amount})
            recipe.normal.main_product = recipe.normal.result
            recipe.normal.result_count = nil
            recipe.normal.result = nil
        end
        
        for k, v in pairs(recipe.normal.results) do
            if v[1] == result_old or v.name == result_old then
                recipe.normal.results[k].type = type_name
                recipe.normal.results[k].name = result_new
                if recipe.normal.results[k].amount then
                    recipe.normal.results[k].amount = recipe.normal.results[k].amount * amount_multi
                else
                    recipe.normal.results[k].amount = amount_multi
                end
                log('Info: apm.lib.utils.recipe.result.replace(): in (normal.results): "' .. tostring(recipe_name) .. '" result: "' .. tostring(result_old) .. '" -> "' .. tostring(result_new) .. '"')
                apm.lib.utils.recipe.set.main_product(recipe_name, result_old, result_new)
            end
        end      
    end
    
    -- recipe.expensive
    if recipe.expensive ~= nil then
        if recipe.expensive.result ~= nil then
            recipe.expensive.results = {}
            local type_result = apm.lib.utils.item.get_type(recipe.expensive.result)
            local amount = 1
            if recipe.expensive.result_count ~= nil then
                amount = recipe.expensive.result_count
            end
            table.insert(recipe.expensive.results,{type=type_result, name=recipe.expensive.result, amount=amount})
            recipe.expensive.main_product = recipe.expensive.result
            recipe.expensive.result_count = nil
            recipe.expensive.result = nil
        end
        
        for k, v in pairs(recipe.expensive.results) do
            if v[1] == result_old or v.name == result_old then
                recipe.expensive.results[k].type = type_name
                recipe.expensive.results[k].name = result_new
                if recipe.expensive.results[k].amount then
                    recipe.expensive.results[k].amount = recipe.expensive.results[k].amount * amount_multi
                else
                    recipe.expensive.results[k].amount = amount_multi
                end
                log('Info: apm.lib.utils.recipe.result.replace(): in (expensive.results): "' .. tostring(recipe_name) .. '" result: "' .. tostring(result_old) .. '" -> "' .. tostring(result_new) .. '"')
                apm.lib.utils.recipe.set.main_product(recipe_name, result_old, result_new)
            end
        end   
    end
end

-- Function -------------------------------------------------------------------
-- replace 'ingredient_old' with 'ingredient_new' in all recipes
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.result.replace_all(result_old, result_new)
    if not apm.lib.utils.item.exist(result_old) then return end
    if not apm.lib.utils.item.exist(result_new) then return end 

    for recipe, _ in pairs(data.raw.recipe) do
        if apm.lib.utils.recipe.has.result(recipe, result_old) then
            apm.lib.utils.recipe.result.replace(recipe, result_old, result_new)
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_for_probability(base_dn, result_amount)
    if base_dn.probability and result_amount >= 1 then
        base_dn.probability = nil
        base_dn.amount_min = nil
        base_dn.amount_max = nil
    end
end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_for_completness_of_the_recipe(recipe_name)
    if apm.lib.utils.recipe.has.main_product(recipe_name) then return end
    if apm.lib.utils.recipe.result.count(recipe_name) <= 1 then return end

    local recipe = data.raw.recipe[recipe_name]
    if (recipe.icon or recipe.icons) and not recipe.subgroup then
        local result_item = apm.lib.utils.recipe.result.get_first_result(recipe_name)
        recipe.subgroup = result_item.subgroup
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.add_mainproduct_if_needed(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    if apm.lib.utils.recipe.has.main_product(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]

    if recipe.icon or recipe.icons then return end

    if recipe.results then
        for _, result in pairs(recipe.results) do
            local main_product = result.name
            recipe.main_product = main_product
            log('Info: apm.lib.utils.recipe.add_mainproduct_if_needed(): in (simple.results): "' .. tostring(recipe_name) .. '" set main product to: "' .. tostring(main_product) .. '"')
            break
        end
    end

    if recipe.normal and recipe.normal.results then
        for _, result in pairs(recipe.normal.results) do
            local main_product = result.name
            recipe.normal.main_product = main_product
            log('Info: apm.lib.utils.recipe.add_mainproduct_if_needed(): in (normal.results): "' .. tostring(recipe_name) .. '" set main product to: "' .. tostring(main_product) .. '"')
            break
        end
    end

    if recipe.expensive and recipe.expensive.results then
        for _, result in pairs(recipe.expensive.results) do
            local main_product = result.name
            recipe.expensive.main_product = main_product
            log('Info: apm.lib.utils.recipe.add_mainproduct_if_needed(): in (expensive.results): "' .. tostring(recipe_name) .. '" set main product to: "' .. tostring(main_product) .. '"')
            break
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.result.add_with_probability(recipe_name, result_name, result_amount_min, result_amount_max, probability)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    if not apm.lib.utils.item.exist(result_name) then return end

    local recipe = data.raw.recipe[recipe_name]
    local type_name = apm.lib.utils.item.get_type(result_name)

    -- convert result
    apm.lib.utils.recipe.convert_simple_result_to_results(recipe_name)

    -- simple recipe (results)
    if recipe.results then
        table.insert(recipe.results,{type=type_name, name=result_name, amount_min=result_amount_min, amount_max=result_amount_max, probability=probability})
        log('Info: apm.lib.utils.recipe.result.add_with_probability(): in (simple.results): "' .. tostring(recipe_name) .. '" add: "' .. tostring(result_name) .. '"  with probability: "' .. tostring(probability) .. '"')
    end

    -- recipe.normal
    if recipe.normal and recipe.normal.results then
        table.insert(recipe.normal.results,{type=type_name, name=result_name, amount_min=result_amount_min, amount_max=result_amount_max, probability=probability})
        log('Info: apm.lib.utils.recipe.result.add_with_probability(): in (normal.results): "' .. tostring(recipe_name) .. '" add: "' .. tostring(result_name) .. '"  with probability: "' .. tostring(probability) .. '"')
    end

    -- recipe.expensive
    if recipe.expensive and recipe.expensive.results then
        table.insert(recipe.expensive.results,{type=type_name, name=result_name, amount_min=result_amount_min, amount_max=result_amount_max, probability=probability})
        log('Info: apm.lib.utils.recipe.result.add_with_probability(): in (expensive.results): "' .. tostring(recipe_name) .. '" add: "' .. tostring(result_name) .. '"  with probability: "' .. tostring(probability) .. '"')
    end

    apm.lib.utils.recipe.add_mainproduct_if_needed(recipe_name)
    --check_for_completness_of_the_recipe(recipe_name)
    --log(serpent.block( data.raw.recipe[recipe_name], {comment = false, numformat = '%1.8g' } ))
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.result.mod(recipe_name, result_name, result_amount)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    if not apm.lib.utils.item.exist(result_name) then return end


    local recipe = data.raw.recipe[recipe_name]
    local type_name = apm.lib.utils.item.get_type(result_name)
    
    -- simple recipe (result)
    if recipe.result then
        apm.lib.utils.recipe.convert_simple_result_to_results(recipe_name)
    end
     
    -- simple recipe (results)
    if recipe.results then
        local seen_result = false
        for k, v in pairs(recipe.results) do
            if v[1] == result_name or v.name == result_name then
                seen_result = true
                if result_amount == 0 then
                    if recipe.main_product == result_name then
                        recipe.main_product = nil
                    end
                    table.remove(recipe.results, k)
                    log('Info: apm.lib.utils.recipe.result.mod(): in (simple.results): "' .. tostring(recipe_name) .. '" remove result: "' .. tostring(result_name) .. '"')
                else
                    check_for_probability(recipe.results[k], result_amount)
                    recipe.results[k].amount = result_amount
                    log('Info: apm.lib.utils.recipe.result.mod(): in (simple.results): "' .. tostring(recipe_name) .. '" change result: "' .. tostring(result_name) .. '" -> "' .. tostring(result_amount) .. '"')
                end
            end
        end
        if seen_result ~= true then
            table.insert(recipe.results,{type=type_name, name=result_name, amount=result_amount})
            log('Info: apm.lib.utils.recipe.result.mod(): in (simple.results): "' .. tostring(recipe_name) .. '" add result: "' .. tostring(result_name) .. '" -> "' .. tostring(result_amount) .. '"')
        end 
    end
    
    -- recipe.normal
    if recipe.normal ~= nil then
        if recipe.normal.result ~= nil then
            recipe.normal.results = {}
            local type_result = apm.lib.utils.item.get_type(recipe.normal.result)
            local amount = 1
            if recipe.normal.result_count ~= nil then
                amount = recipe.normal.result_count
            end
            table.insert(recipe.normal.results,{type=type_result, name=recipe.normal.result, amount=amount})
            recipe.normal.result_count = nil
            recipe.normal.result = nil
        end

        local seen_result = false        
        for k, v in pairs(recipe.normal.results) do
            if v[1] == result_name or v.name == result_name then
                seen_result = true
                if result_amount == 0 then
                    if recipe.normal.main_product == result_name then
                        recipe.normal.main_product = nil
                    end
                    table.remove(recipe.normal.results, k)
                    log('Info: apm.lib.utils.recipe.result.mod(): in (normal.results): "' .. tostring(recipe_name) .. '" remove result: "' .. tostring(result_name) .. '"')
                else
                    check_for_probability(recipe.normal.results[k], result_amount)
                    recipe.normal.results[k].amount = result_amount
                    log('Info: apm.lib.utils.recipe.result.mod(): in (normal.results): "' .. tostring(recipe_name) .. '" change result: "' .. tostring(result_name) .. '" -> "' .. tostring(result_amount) .. '"')
                end
            end
        end
        if seen_result ~= true then
            table.insert(recipe.normal.results,{type=type_name, name=result_name, amount=result_amount})
            log('Info: apm.lib.utils.recipe.result.mod(): in (normal.results): "' .. tostring(recipe_name) .. '" add result: "' .. tostring(result_name) .. '" -> "' .. tostring(result_amount) .. '"')
        end 
    end
    
    -- recipe.expensive
    if recipe.expensive ~= nil then
        if recipe.expensive.result ~= nil then
            recipe.expensive.results = {}
            local type_result = apm.lib.utils.item.get_type(recipe.expensive.result)
            local amount = 1
            if recipe.expensive.result_count ~= nil then
                amount = recipe.expensive.result_count
            end
            table.insert(recipe.expensive.results,{type=type_result, name=recipe.expensive.result, amount=amount})
            recipe.expensive.result_count = nil
            recipe.expensive.result = nil
        end

        local seen_result = false        
        for k, v in pairs(recipe.expensive.results) do
            if v[1] == result_name or v.name == result_name then
                seen_result = true
                if result_amount == 0 then
                    if recipe.expensive.main_product == result_name then
                        recipe.expensive.main_product = nil
                    end
                    table.remove(recipe.expensive.results, k)
                    log('Info: apm.lib.utils.recipe.result.mod(): in (expensive.results): "' .. tostring(recipe_name) .. '" remove result: "' .. tostring(result_name) .. '"')
                else
                    check_for_probability(recipe.expensive.results[k], result_amount)
                    recipe.expensive.results[k].amount = result_amount
                    log('Info: apm.lib.utils.recipe.result.mod(): in (expensive.results): "' .. tostring(recipe_name) .. '" change result: "' .. tostring(result_name) .. '" -> "' .. tostring(result_amount) .. '"')
                end
            end
        end
        if seen_result ~= true then
            table.insert(recipe.expensive.results,{type=type_name, name=result_name, amount=result_amount})
            log('Info: apm.lib.utils.recipe.result.mod(): in (expensive.results): "' .. tostring(recipe_name) .. '" add result: "' .. tostring(result_name) .. '" -> "' .. tostring(result_amount) .. '"')
        end 
    end
    apm.lib.utils.recipe.add_mainproduct_if_needed(recipe_name)
 end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.result.remove_all(result_name)
    if not apm.lib.utils.item.exist(result_name) then return end
    for _, recipe in pairs(data.raw.recipe) do
        if apm.lib.utils.recipe.has.result(recipe.name, result_name) then
            apm.lib.utils.recipe.result.mod(recipe.name, result_name, 0)
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.category.create(category_name)
    local recipe_category = {}
    recipe_category.type = "recipe-category"
    recipe_category.name = category_name
    data:extend({recipe_category})
    log('Info: apm.lib.utils.recipe.category.add(): created category with name: "' .. tostring(category_name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.category.change(recipe_name, category_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]
    recipe.category = category_name
    log('Info: apm.lib.utils.recipe.category.change(): category of: "' .. tostring(recipe_name) .. '" to: "' .. tostring(category_name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.category.overwrite_all(category_name_old, category_name_new)
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.category == category_name_old then
            apm.lib.utils.recipe.category.change(recipe.name, category_name_new)
        end   
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.energy_required.mod(recipe_name, value, value_expensive)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    local recipe = data.raw.recipe[recipe_name]
    local _value = value
    if recipe.ingredients then 
        recipe.energy_required = _value
    end
    if recipe.normal then
        recipe.normal.energy_required = _value
    end
    if value_expensive then
        _value = value_expensive
    end
    if recipe.expensive then 
        recipe.expensive.energy_required = _value
    end

    log('Info: apm.lib.utils.recipe.energy_required.mod(): for: "' .. tostring(recipe_name) .. '" (normal) to: "' .. tostring(value) .. '"')
    log('Info: apm.lib.utils.recipe.energy_required.mod(): for: "' .. tostring(recipe_name) .. '" (expensive) to: "' .. tostring(_value) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recipe.overwrite.group(recipe_name, group, subgroup, order)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local recipe = data.raw.recipe[recipe_name]
    recipe.group = group
    recipe.subgroup = subgroup
    recipe.order = order

    log('Info: apm.lib.utils.recipe.overwrite.group(): item with name: "' .. tostring(recipe_name) .. '" changed.')
end