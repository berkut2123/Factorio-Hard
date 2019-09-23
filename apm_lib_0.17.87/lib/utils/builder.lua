require 'util'

if not apm.lib.utils.builder.recipe then apm.lib.utils.builder.recipe = {} end
if not apm.lib.utils.builder.recipe.result then apm.lib.utils.builder.recipe.result = {} end
if not apm.lib.utils.builder.recipe.result.alternatives then apm.lib.utils.builder.recipe.result.alternatives = {} end
if not apm.lib.utils.builder.recipe.result.alternatives.table then apm.lib.utils.builder.recipe.result.alternatives.table = {} end
if not apm.lib.utils.builder.recipe.ingredient then apm.lib.utils.builder.recipe.ingredient = {} end
if not apm.lib.utils.builder.recipe.ingredient.alternatives then apm.lib.utils.builder.recipe.ingredient.alternatives = {} end
if not apm.lib.utils.builder.recipe.ingredient.alternatives.table then apm.lib.utils.builder.recipe.ingredient.alternatives.table = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.ingredient.alternatives.add(item_name, item_alternatives_name, weighting)
    if not apm.lib.utils.builder.recipe.ingredient.alternatives.table.item_name then
        apm.lib.utils.builder.recipe.ingredient.alternatives.table.item_name = {}
    end
    apm.lib.utils.builder.recipe.ingredient.alternatives.table.item_name[item_alternatives_name] = weighting
    log('Info: apm.lib.utils.builder.recipe.ingredient.alternatives.add(): add alternative: "' .. tostring(item_alternatives_name) .. '" for item/fluid with name: "' .. tostring(item_name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.ingredient.alternatives.get(item_name)
    log('Info: apm.lib.utils.builder.recipe.ingredient.alternatives.get(): search alternatives for item/fluid with name: "' .. tostring(item_name) .. '"')
    local result = nil
    local weighting = 0
    for item, item_weighting in pairs(apm.lib.utils.builder.recipe.ingredient.alternatives.table.item_name) do
        if apm.lib.utils.item.exist(item) then
            if item_weighting > weighting then
                result = item
                weighting = item_weighting
            end
        end
    end
    if result then
        log('Info: apm.lib.utils.builder.recipe.ingredient.alternatives.get(): return alternative: "' .. tostring(item_alternatives_name) .. '" for item/fluid with name: "' .. tostring(item_name) .. '" with weighting: ' ..tostring(weighting))
    end
    return result
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.ingredient.simple(item_name, amount)
    if not apm.lib.utils.item.exist(item_name) then
        item_alternative = apm.lib.utils.builder.recipe.ingredient.alternatives.get(item_name)
        if not item_alternative then
            log('Warning: apm.lib.utils.builder.recipe.ingredient.simple(): item/fluid with name: "' .. tostring(item_name) .. '" dosent exist, and no alternatives found')
            return
        else
            item_name = item_alternative
        end
    end

    local item_type = apm.lib.utils.item.get_type(item_name)
    return {type=item_type, name=item_name, amount=amount}
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.ingredient.probability(item_name, amount_min, amount_max, probability)
    if not apm.lib.utils.item.exist(item_name) then
        item_alternative = apm.lib.utils.builder.recipe.ingredient.alternatives.get(item_name)
        if not item_alternative then
            log('Warning: apm.lib.utils.builder.recipe.ingredient.simple(): item/fluid with name: "' .. tostring(item_name) .. '" dosent exist, and no alternatives found')
            return
        else
            item_name = item_alternative
        end
    end

    local item_type = apm.lib.utils.item.get_type(item_name)
    return {type=item_type, name=item_name, amount_min=amount_min, amount_max=amount_max, probability=probability}
end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.result.alternatives.add(item_name, item_alternatives_name, weighting)
    if not apm.lib.utils.builder.recipe.result.alternatives.table.item_name then
        apm.lib.utils.builder.recipe.result.alternatives.table.item_name = {}
    end
    apm.lib.utils.builder.recipe.result.alternatives.table.item_name[item_alternatives_name] = weighting
    log('Info: apm.lib.utils.builder.recipe.result.alternatives.add(): add alternative: "' .. tostring(item_alternatives_name) .. '" for item/fluid with name: "' .. tostring(item_name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.result.alternatives.get(item_name)
    log('Info: apm.lib.utils.builder.recipe.result.alternatives.get(): search alternatives for item/fluid with name: "' .. tostring(item_name) .. '"')
    local result = nil
    local weighting = 0
    for item, item_weighting in pairs(apm.lib.utils.builder.recipe.result.alternatives.table.item_name) do
        if apm.lib.utils.item.exist(item) then
            if item_weighting > weighting then
                result = item
                weighting = item_weighting
            end
        end
    end
    if result then
        log('Info: apm.lib.utils.builder.recipe.result.alternatives.get(): return alternative: "' .. tostring(item_alternatives_name) .. '" for item/fluid with name: "' .. tostring(item_name) .. '" with weighting: ' ..tostring(weighting))
    end
    return result
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.result.simple(item_name, amount)
    if not apm.lib.utils.item.exist(item_name) then
        item_alternative = apm.lib.utils.builder.recipe.result.alternatives.get(item_name)
        if not item_alternative then
            log('Warning: apm.lib.utils.builder.recipe.result.simple(): item/fluid with name: "' .. tostring(item_name) .. '" dosent exist, and no alternatives found')
            return
        else
            item_name = item_alternative
        end
    end

    local item_type = apm.lib.utils.item.get_type(item_name)
    return {type=item_type, name=item_name, amount=amount}
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.builder.recipe.result.probability(item_name, amount_min, amount_max, probability)
    if not apm.lib.utils.item.exist(item_name) then
        item_alternative = apm.lib.utils.builder.recipe.result.alternatives.get(item_name)
        if not item_alternative then
            log('Warning: apm.lib.utils.builder.recipe.result.simple(): item/fluid with name: "' .. tostring(item_name) .. '" dosent exist, and no alternatives found')
            return
        else
            item_name = item_alternative
        end
    end

    local item_type = apm.lib.utils.item.get_type(item_name)
    return {type=item_type, name=item_name, amount_min=amount_min, amount_max=amount_max, probability=probability}
end
