require 'util'

if not apm.lib.utils.technology.add then apm.lib.utils.technology.add = {} end
if not apm.lib.utils.technology.mod then apm.lib.utils.technology.mod = {} end
if not apm.lib.utils.technology.remove then apm.lib.utils.technology.remove = {} end
if not apm.lib.utils.technology.get then apm.lib.utils.technology.get = {} end
if not apm.lib.utils.technology.has then apm.lib.utils.technology.has = {} end
if not apm.lib.utils.technology.set then apm.lib.utils.technology.set = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.exist(technology_name)
    if data.raw.technology[technology_name] then
        return true
    end
    log('Warning: technology with name: "' .. tostring(technology_name) .. '" dosent exist.')
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.has.prerequisites(technology_name, prerequisites_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    local prerequisites = data.raw.technology[prerequisites_name]

    if technology.prerequisites then
        for _, prerequisite in pairs(technology.prerequisites) do
            if prerequisite == prerequisites_name then
                return true
            end
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.has.science_pack(technology_name, science_pack_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]

    if not technology.unit then return false end
    if not technology.unit.ingredients then return false end

    for _, ingredient in pairs(technology.unit.ingredients) do
        if ingredient[1] == science_pack_name then
            return true
        end
    end

    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.new(mod_name, technology, t_prerequisites, t_recipes, t_research_packs, i_research_count, i_research_time)
    new = {}
    new.type = 'technology'
    new.name = technology
    new.icon = '__apm_resource_pack__/graphics/technologies/' .. technology .. '.png'
    new.icon_size = 128
    new.effects = {}
    if t_recipes ~= nil then
        for _, name in pairs(t_recipes) do
            table.insert(new.effects, {type = 'unlock-recipe', recipe = name})
        end
    end
    new.prerequisites = t_prerequisites
    new.unit = {}
    new.unit.count = i_research_count
    new.unit.ingredients = t_research_packs
    new.unit.time = i_research_time
    new.order = 'aa_a'
    data:extend({new})

    log('Info: apm.lib.utils.technology.new(): create new technology: "' .. tostring(new.name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.mod.disable(technology_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    technology.enabled = false
    log('Info: apm.lib.utils.technology.mod.disable(): set: enabled = false for:"' .. tostring(technology_name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.mod.unit_time(technology_name, time)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    technology.unit.time = time
    log('Info: apm.lib.utils.technology.mod.unit_time(): for: "' .. tostring(technology_name) .. '" set unit_time to: "' .. tostring(time) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.mod.unit_count(technology_name, count)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    technology.unit.count = count
    log('Info: apm.lib.utils.technology.mod.unit_count(): for: "' .. tostring(technology_name) .. '" set unit_count to: "' .. tostring(order) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.mod.order(technology_name, order)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    technology.order = order
    log('Info: apm.lib.utils.technology.mod.order(): for: "' .. tostring(technology_name) .. '" set order: "' .. tostring(order) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.mod.icon(technology_name, icon)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    technology.icon = icon
    log('Info: apm.lib.utils.technology.mod.icon(): for: "' .. tostring(technology_name) .. '" set icon: "' .. tostring(icon) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.add.science_pack(technology_name, science_pack, science_amount)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    if not science_amount then
        science_amount = 1
    end

    if apm.lib.utils.technology.has.science_pack(technology_name, science_pack) then
        log('Warning: apm.lib.utils.technology.add.science_pack(): technology: "' .. tostring(technology_name) .. '" allready has science_pack: "' .. tostring(science_pack) .. '"')
        return
    end

    local technology = data.raw.technology[technology_name]
    table.insert(technology.unit.ingredients, {science_pack, science_amount})
    log('Info: apm.lib.utils.technology.add.science_pack(): science_pack: "' .. tostring(science_pack) .. '" added to: "' .. tostring(technology_name) .. '" with amount: "' .. tostring(science_amount) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.check_if_recipe_is_in_unlock(technology_name, recipe_name)
    if not apm.lib.utils.technology.exist(technology_name) then return false end
    if not apm.lib.utils.recipe.exist(recipe_name) then return false end

    local technology = data.raw.technology[technology_name]
    if technology.effects then
        for _, entry in pairs(technology.effects) do
            if entry.type == 'unlock-recipe' and entry.recipe == recipe_name then
                return true
            end
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.add.recipe_for_unlock(technology_name, recipe_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local technology = data.raw.technology[technology_name]
    local recipe = data.raw.recipe[recipe_name]
    
    if apm.lib.utils.technology.check_if_recipe_is_in_unlock(technology_name, recipe_name) then
        log('Warning: apm.lib.utils.technology.add.recipe_for_unlock(): recipe: "' .. tostring(recipe_name) .. '" is allready in effects for unlock in "' .. tostring(technology_name) .. '"')
        return
    end

    if technology and technology.effects then
        table.insert(technology.effects, {type = 'unlock-recipe', recipe = recipe_name})
        log('Info: apm.lib.utils.technology.add.recipe_for_unlock(): added recipe: "' .. tostring(recipe_name) .. '" to "' .. tostring(technology_name) .. '" for unlock')
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.add.prerequisites(technology_name, prerequisites_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end
    if not apm.lib.utils.technology.exist(prerequisites_name) then return end

    local technology = data.raw.technology[technology_name]
    local prerequisites = data.raw.technology[prerequisites_name]
    
    if technology.prerequisites == nil then
        technology.prerequisites = {}
    end
    
    if not apm.lib.utils.technology.has.prerequisites(technology_name, prerequisites_name) then
        table.insert(technology.prerequisites, prerequisites_name)
        log('Info: apm.lib.utils.technology.add.prerequisites(): added: "' .. tostring(prerequisites_name) .. '" to "' .. tostring(technology_name) .. '"')
    else
        log('Warning: apm.lib.utils.technology.add.prerequisites(): "' .. tostring(technology_name) .. '" allready has "' .. tostring(prerequisites_name) .. '" as prerequisites')
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.remove.recipe_from_unlock(technology_name, recipe_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end
    if not apm.lib.utils.recipe.exist(recipe_name) then return end

    local technology = data.raw.technology[technology_name]
    local recipe = data.raw.recipe[recipe_name]

    if not apm.lib.utils.technology.check_if_recipe_is_in_unlock(technology_name, recipe_name) then
        log('Warning: apm.lib.utils.technology.remove.recipe_from_unlock(): recipe: "' .. tostring(recipe_name) .. '" is not in effects for unlock at: "' .. tostring(technology_name) .. '"')
        return
    end
        
    if technology and technology.effects then
        for k, r in pairs(technology.effects) do
            if r.recipe == recipe_name then
                table.remove(technology.effects, k)
                log('Info: apm.lib.utils.technology.remove.recipe_from_unlock(): removed recipe: "' .. tostring(recipe_name) .. '" in "' .. tostring(technology_name) .. '" for unlock')
                return
            end
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.remove.science_pack(technology_name, science_pack)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    for k, i in pairs(technology.unit.ingredients) do
        if i[1] == science_pack then
            table.remove(technology.unit.ingredients, k)
            return
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.remove.prerequisites(technology_name, prerequisites_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end
    if not apm.lib.utils.technology.exist(prerequisites_name) then return end

    local technology = data.raw.technology[technology_name]
    if not technology.prerequisites then return end

    for k, prerequisite in pairs(technology.prerequisites) do
        if prerequisite == prerequisites_name then
            table.remove(technology.prerequisites, k)
            log('Info: removed prerequisites: "' .. tostring(prerequisites_name) .. '" from technology: "' .. tostring(technology_name) .. '"')
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.disable(technology_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    technology.enabled = false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.delete(technology_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end
    local technology = data.raw.technology[technology_name]

    log('Info: delete technology: "' .. tostring(technology_name) .. '"')
    technology.enabled = false

    -- let us find who is linkt to this technology and remove the prerequisites
    for technology, _ in pairs(data.raw.technology) do
        if technology ~= technology_name then
            if apm.lib.utils.technology.has.prerequisites(technology, technology_name) then
                apm.lib.utils.technology.remove.prerequisites(technology, technology_name)
            end
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.remove.recipe_recursive(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then return end
    
    local technologies = data.raw.technology
    for technology_name, _ in pairs(technologies) do
        if technologies[technology_name].effects ~= nil then
            for i, effect in pairs(technologies[technology_name].effects) do
                if effect.type == 'unlock-recipe' and effect.recipe == recipe_name then
                    table.remove(data.raw.technology[technology_name].effects,i)
                end
            end
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.technology.set.heritage_science_packs_from_prerequisites(technology_name)
    if not apm.lib.utils.technology.exist(technology_name) then return end

    local technology = data.raw.technology[technology_name]
    local collected_science = {}
    local hash = {}

    if not technology.prerequisites then
        log('Warning: apm.lib.utils.technology.set.science_packs_from_prerequisites(): prerequisite: "' .. tostring(technology_name.name) .. '"does not have a prerequisites property')
        return
    end

    for _, prerequisite in pairs(technology.prerequisites) do
        local required_technology = data.raw.technology[prerequisite]
        if required_technology.unit then
            for _, science in pairs(required_technology.unit.ingredients) do
                table.insert(collected_science, science[1])
            end
        else
            log('Warning: apm.lib.utils.technology.set.science_packs_from_prerequisites(): prerequisite: "' .. tostring(required_technology.name) .. '"does not have an unit property')
        end
    end

    if not collected_science then 
        log('Warning: apm.lib.utils.technology.set.science_packs_from_prerequisites(): No inheritance possible for: "' .. tostring(technology_name) .. '"!')
        return 
    end

    for _, science_pack in pairs(collected_science) do
        if not hash[science_pack] then
            if not technology.unit then
                technology.unit = {}
                technology.unit.ingredients = {}
                technology.count = 50
                technology.time = 50
            end
            apm.lib.utils.technology.add.science_pack(technology_name, science_pack, 1)
            hash[science_pack] = true
        end
    end
end