require 'util'

if not apm.lib.utils.data.tables.metal then apm.lib.utils.data.tables.metal = {} end
if not apm.lib.utils.data.tables.scrap_metal then apm.lib.utils.data.tables.scrap_metal = {} end
if not apm.lib.utils.recycling.metal then apm.lib.utils.recycling.metal = {} end
if not apm.lib.utils.recycling.scrap then apm.lib.utils.recycling.scrap = {} end

-- Function -------------------------------------------------------------------
-- implies that a metal was defined before!
--
-------------------------------------------------------------------------------
function apm.lib.utils.recycling.metal.exist(name)
    if apm.lib.utils.data.tables.metal then
        if apm.lib.utils.data.tables.metal[name] then
            return true
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
-- name:                    an arbitrary name for a metal (like: iron, copper, titanium, etc..)
-- tint:                    the color of this metal
-- output:                  an prototype name of an item
-- output_category:         the recipe-category for the last recycling step (Default: 'smelting' example: for angel metals: 'induction-smelting')
-- wight:                   int: <4 means for tier 1, <7 means for tier 2, <10 means for tier 3, >=10 means for tier 4
--                          * in the future this will also determine the importance of this metal for a further automatic generation.
-- output_probability:      a dummy for the futere, has no impact at this moment
-- t_catalysts              example: {{type='fluid', name='steam', amount=100}} (*only two inpute-pipe)
-- t_output_byproducts:     example: {{type='fluid', name='water', amount=50}} (*only two output-pipe)
-- b_own_tech:              bool, if true there is a own tech generated for the recipes of this metal/scrap process
-- t_tech_prerequisites:    has only effect if b_own_tech is true, a table of technologies that are used as prerequisites for this recipe chain
-- output_amount_overwrite: (int) overwrites the default output for the last recipe in the process (ecample: vanilla: plates, angel: molten liquids, etc...)
-------------------------------------------------------------------------------
function apm.lib.utils.recycling.metal.add(name, tint, output, output_category, wight, output_probability, t_catalysts, t_output_byproducts, b_own_tech, t_tech_prerequisites, output_amount_overwrite)
    if apm.lib.utils.recycling.metal.exist(name) then
        log('Warining: apm.lib.utils.recycling.metal.add(): try to add: "' .. tostring(name) .. '" but it is allready in the metal table')
        return
    end

    log('Info: apm.lib.utils.recycling.metal.add(): added: ' .. tostring(name) .. ' to the metal table')
    apm.lib.utils.data.tables.metal[name] = {}
    apm.lib.utils.data.tables.metal[name].tint = tint
    if tint == nil then
        apm.lib.utils.data.tables.metal[name].tint = {r= 0, g = 0, b = 1}
    end
    apm.lib.utils.data.tables.metal[name].output = output
    apm.lib.utils.data.tables.metal[name].output_category = output_category
    if output_category == nil then
        apm.lib.utils.data.tables.metal[name].output_category = 'smelting'
    end
    apm.lib.utils.data.tables.metal[name].wight = wight
    apm.lib.utils.data.tables.metal[name].output_probability = output_probability
    apm.lib.utils.data.tables.metal[name].catalysts = t_catalysts
    apm.lib.utils.data.tables.metal[name].output_byproducts = t_output_byproducts
    apm.lib.utils.data.tables.metal[name].own_tech = b_own_tech
    if t_tech_prerequisites then
        apm.lib.utils.data.tables.metal[name].tech_prerequisites = t_tech_prerequisites
    else
        apm.lib.utils.data.tables.metal[name].tech_prerequisites = {}
    end
    apm.lib.utils.data.tables.metal[name].output_amount_overwrite = output_amount_overwrite
end

-- Function -------------------------------------------------------------------
-- Remove a metal reycycler chain
--
-------------------------------------------------------------------------------
function apm.lib.utils.recycling.metal.remove(name)
    if apm.lib.utils.recycling.metal.exist(name) then
        apm.lib.utils.data.tables.metal[name] = nil
        log('Info: apm.lib.utils.recycling.metal.remove(): removed: ' .. tostring(name) .. ' from the metal table')
    end
end

-- Function -------------------------------------------------------------------
--  
--
-------------------------------------------------------------------------------
local function metal_generation(name)
    if not apm.lib.utils.item.exist(apm.lib.utils.data.tables.metal[name].output) then
        log('Error: apm.lib.utils.recycling.generation(): metal_generation(): output item/fluid: "' .. tostring(output) .. '" does not exist in metal: "' .. tostring(name) .. '"')
        return
    end

    -- base item
    ------------------------------------------------------------------------------------------------
    local item = {}
    item.type = 'item'
    item.name = 'apm_scrap_metal_box_' .. name
    item.localised_name = {"item-name.apm_scrap_metal_box", {'item-name.apm_metal_type_' .. name}}
    item.localised_description = {"item-description.apm_scrap_metal_box"}
    item.icons = {

        {icon = apm.recycling.path.scrap, icon_size=64, tint = apm.lib.utils.data.tables.metal[name].tint},
        {icon = apm.recycling.path.box, icon_size=64},
    }   
    item.icon_size = 32
    item.group = 'apm_recycling'
    item.subgroup = "apm_recycling_scrap_metal_box"
    item.order = "aa_" .. name
    item.stack_size = 1000
    data:extend({item})
    log('Info: apm.lib.utils.recycling.generation(): created item: "apm_scrap_metal_box_' .. tostring(name) .. '"')
    
    -- processed item
    ------------------------------------------------------------------------------------------------
    local item = {}
    item.type = 'item'
    item.name = 'apm_scrap_processed_' .. name
    item.localised_name = {"item-name.apm_scrap_processed", {'item-name.apm_metal_type_' .. name}}
    item.localised_description = {"item-description.apm_scrap_processed"}
    item.icons = {
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_processed_metal.png', tint = apm.lib.utils.data.tables.metal[name].tint},
    }
    item.icon_size = 32
    item.group = 'apm_recycling'
    item.subgroup = "apm_recycling_scrap_processed"
    item.order = "aa_" .. name
    item.stack_size = 200
    data:extend({item})
    log('Info: apm.lib.utils.recycling.generation(): created item: "apm_scrap_processed_' .. tostring(name) .. '"')
    
    -- base recipe
    ------------------------------------------------------------------------------------------------
    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_recycling_' .. name
    recipe.localised_name = {"recipe-name.apm_recycling_scrap", {'item-name.apm_metal_type_' .. name}}
    recipe.icons = {
        {icon = apm.recycling.path.scrap, icon_size=64, tint = apm.lib.utils.data.tables.metal[name].tint},
        {icon = apm.recycling.path.box, icon_size=64},
        apm.lib.utils.icon.dynamics.recycling,
    }
    recipe.icon_size = 32

    if apm.lib.utils.data.tables.metal[name].wight then
        if apm.lib.utils.data.tables.metal[name].wight < 4 then
            recipe.category = 'apm_recycling_1'
        elseif apm.lib.utils.data.tables.metal[name].wight < 7 then
            recipe.category = 'apm_recycling_2'
        elseif apm.lib.utils.data.tables.metal[name].wight < 10 then
            recipe.category = 'apm_recycling_3'
        elseif apm.lib.utils.data.tables.metal[name].wight >= 10 then
            recipe.category = 'apm_recycling_3'
        end
    else
        recipe.category = 'apm_recycling_1' -- fallback
    end

    recipe.group = "apm_recycling"
    recipe.subgroup = "apm_recycling_processing_solid"
    recipe.order = 'aa_' .. string.format("%03d",apm.lib.utils.data.tables.metal[name].wight) .. '-' .. name
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 4
    
    recipe.normal.ingredients = {
        {type='item', name='apm_scrap_metal_box_' .. name, amount=5},
    }

    if apm.lib.utils.data.tables.metal[name].catalysts == nil then
        table.insert(recipe.normal.ingredients, {type='fluid', name='steam', amount=50})
    else
        for _, result in pairs(apm.lib.utils.data.tables.metal[name].catalysts) do
            t = result
            table.insert(recipe.normal.ingredients, t)
        end
    end
    
    local amount_granules = apm.lib.utils.setting.get.starup('apm_recycler_conversion')
    recipe.normal.results = {
        {type='item', name='apm_scrap_processed_' .. name, amount=amount_granules},
    }
    if apm.lib.utils.data.tables.metal[name].output_byproducts == nil then
        table.insert(recipe.normal.results, {type='fluid', name='apm_dirt_water', amount=25})
    else
        for _, result in pairs(apm.lib.utils.data.tables.metal[name].output_byproducts) do
            t = result
            table.insert(recipe.normal.results, t)
        end
    end
    
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
    log('Info: apm.lib.utils.recycling.generation(): created recipe: "apm_recycling_' .. tostring(name) .. '"')
    
    -- recipe smelting
    ------------------------------------------------------------------------------------------------
    local type_name = apm.lib.utils.item.get_type(apm.lib.utils.data.tables.metal[name].output)
    
    local output_item = nil
    if type_name == 'fluid' then
        output_item = data.raw.fluid[apm.lib.utils.data.tables.metal[name].output]
    else
        output_item = data.raw.item[apm.lib.utils.data.tables.metal[name].output]
    end
    
    local input_amount = 1
    local output_amount = 1
    if type_name == 'fluid' then
        input_amount = 4
        output_amount = 40
    end

    if apm.lib.utils.data.tables.metal[name].output_amount_overwrite then
        output_amount = apm.lib.utils.data.tables.metal[name].output_amount_overwrite
    end
    
    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_recycling_smelting_' .. name
    recipe.localised_name = {type_name .. "-name." .. output_item.name}
    recipe.icons = {
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_processed_metal.png', tint = apm.lib.utils.data.tables.metal[name].tint},
        apm.lib.utils.icon.dynamics.smelting,
    }
    recipe.icon_size = 32
    recipe.category = apm.lib.utils.data.tables.metal[name].output_category
    recipe.group = "apm_recycling"
    recipe.subgroup = "apm_recycling_scrap_processed_smelting"
    recipe.order = 'aa_' .. string.format("%03d",apm.lib.utils.data.tables.metal[name].wight) .. '-' .. name
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 3.5
    recipe.normal.ingredients = {
        {type='item', name='apm_scrap_processed_' .. name, amount=input_amount},
    }
    recipe.normal.results = {
        {type=type_name, name=apm.lib.utils.data.tables.metal[name].output, amount=output_amount},
    }
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = table.deepcopy(recipe.normal)

    local _input_amount = 3
    local _output_amount = 2
    if type_name == 'fluid' then
        _input_amount = 5
        _output_amount = 40
    end
    if apm.lib.utils.data.tables.metal[name].output_amount_overwrite then
        _output_amount = apm.lib.utils.data.tables.metal[name].output_amount_overwrite
    end
    recipe.expensive.ingredients = {
        {type='item', name='apm_scrap_processed_' .. name, amount=_input_amount},
    }
    recipe.expensive.results = {
        {type=type_name, name=apm.lib.utils.data.tables.metal[name].output, amount=_output_amount},
    }

    data:extend({recipe})
    log('Info: apm.lib.utils.recycling.generation(): created recipe: "apm_recycling_smelting_' .. tostring(name) .. '"')
    
    -- technologies
    ------------------------------------------------------------------------------------------------
    if apm.lib.utils.data.tables.metal[name].own_tech == true then
        local tech = {}
        tech.type = 'technology'
        tech.name = 'apm_scrap_processed_' .. name
        tech.localised_name = {"technology-name.apm_recycling_metal", {'item-name.apm_metal_type_' .. name}}
        tech.localised_description = {"technology-description.apm_recycling_metal", {'item-name.apm_metal_type_' .. name}}
        
        tech.icons = {
            {icon = '__apm_resource_pack__/graphics/technologies/dynamics/apm_recycling_metal.png'},
            {icon = apm.recycling.path.scrap, icon_size=64, tint = apm.lib.utils.data.tables.metal[name].tint, shift={-16, -16}, scale=0.5},
            {icon = apm.recycling.path.box, icon_size=64, shift={-16, -16}, scale=0.5},
            {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_processed_metal.png', tint = apm.lib.utils.data.tables.metal[name].tint, shift = {16, -16}, icon_size = 32},
        }

        local output_icon = apm.lib.utils.icon.get.from_item(output_item.name)
        if type(output_icon) == 'table' then
            for _, icon in pairs(output_icon) do
                icon.shift = {0, 16}
                if not icon.icon_size then
                    icon.icon_size = 32
                else
                    icon.scale=0.5
                end
                table.insert(tech.icons, icon)
            end
        else
            table.insert(tech.icons, {icon = output_icon, shift = {0, 16}, icon_size = 32})
        end

        tech.icon_size = 128
        tech.effects = {
            {type = 'unlock-recipe', recipe = 'apm_recycling_' .. name},
            {type = 'unlock-recipe', recipe = 'apm_recycling_smelting_' .. name}
        }

        tech.prerequisites = {}

        if apm.lib.utils.data.tables.metal[name].wight then
            if apm.lib.utils.data.tables.metal[name].wight < 4 then
                table.insert(apm.lib.utils.data.tables.metal[name].tech_prerequisites, 'apm_recycling-0')
            elseif apm.lib.utils.data.tables.metal[name].wight < 7 then
                table.insert(apm.lib.utils.data.tables.metal[name].tech_prerequisites, 'apm_recycling-1')
            elseif apm.lib.utils.data.tables.metal[name].wight < 10 then
                table.insert(apm.lib.utils.data.tables.metal[name].tech_prerequisites, 'apm_recycling-2')
            elseif apm.lib.utils.data.tables.metal[name].wight >= 10 then
                table.insert(apm.lib.utils.data.tables.metal[name].tech_prerequisites, 'apm_recycling-3')
            end
        end

        if apm.lib.utils.data.tables.metal[name].tech_prerequisites ~= nil then
            for _, prerequisite in pairs(apm.lib.utils.data.tables.metal[name].tech_prerequisites) do
                if apm.lib.utils.technology.exist(prerequisite) then
                    table.insert(tech.prerequisites, prerequisite)
                end
            end
        end

        tech.unit = {}
        tech.unit.count = 50
        if apm.lib.utils.data.tables.metal[name].wight then
            tech.unit.count = 25 * apm.lib.utils.data.tables.metal[name].wight
        end

        tech.unit.ingredients = {}
        if apm.lib.utils.data.tables.metal[name].tech_prerequisites == nil then
            tech.unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}}
        end

        tech.unit.time = 30
        tech.order = 'aa_' .. string.format("%03d",apm.lib.utils.data.tables.metal[name].wight) .. '-' .. name
        data:extend({tech})
        log('Info: apm.lib.utils.recycling.generation(): created tech: "apm_scrap_processed_' .. tostring(name) .. '" with recipes: "apm_recycling_' .. name .. '" and "apm_recycling_smelting_' .. name .. '"')

        apm.lib.utils.technology.set.heritage_science_packs_from_prerequisites(tech.name)
    else
        apm.lib.utils.technology.add.recipe_for_unlock('apm_recycling-0', 'apm_recycling_' .. name)
        apm.lib.utils.technology.add.recipe_for_unlock('apm_recycling-0', 'apm_recycling_smelting_' .. name)
        log('Info: apm.lib.utils.recycling.generation(): added recipes: "apm_recycling_' .. name .. '" and "apm_recycling_smelting_' .. name .. '" to tech: apm_recycling-0')
    end
end
-- Function -------------------------------------------------------------------
--  
--
-------------------------------------------------------------------------------
function apm.lib.utils.recycling.metal.generation()
    for name in pairs(apm.lib.utils.data.tables.metal) do
        metal_generation(name)
    end
end

-- Function -------------------------------------------------------------------
-- 
-- 
-------------------------------------------------------------------------------
local function check_scrap_metal(recipe_name, scrap_metal)
    if not apm.lib.utils.data.tables.scrap_metal[recipe_name] then return end
    for _, scrap_metal in pairs(apm.lib.utils.data.tables.scrap_metal[recipe_name]) do
        if scrap_metal.name == scrap_metal then
            return true
        end
    end
    return false
end

-- Function -------------------------------------------------------------------
-- recipe_name:     name of a recipe prototype
-- scrap_metal:     scrap metal type (example: iron, copper, steel, etc.)
-- probability:     (optional) if not given the calue from the settings will be used
-------------------------------------------------------------------------------
function apm.lib.utils.recycling.scrap.add(recipe_name, scrap_metal, probability)
    if not apm.lib.utils.recipe.exist(recipe_name) then
        return
    end

    --if not probability then
    --    probability = apm.lib.utils.setting.get.starup('apm_recycler_payback')
    --end

    if not apm.lib.utils.recycling.metal.exist(scrap_metal) then
        log('Error: apm.lib.utils.recycling.scrap.add(): try to add a non existing scrap metal "' .. tostring(scrap_metal) .. '" to recipe: "' .. tostring(recipe_name))
        return
    end

    if not apm.lib.utils.data.tables.scrap_metal[recipe_name] then
        apm.lib.utils.data.tables.scrap_metal[recipe_name] = {}
      end

    if not check_scrap_metal(recipe_name, scrap_metal) then
        table.insert(apm.lib.utils.data.tables.scrap_metal[recipe_name], {name=scrap_metal, probability=probability})
        log('Info: apm.lib.utils.recycling.scrap.add(): added: "' .. tostring(scrap_metal) .. '" for recipe: "' .. tostring(recipe_name) .. '" with probability: "' .. tostring(probability) .. '" to the scrap table')
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recycling.scrap.remove(recipe_name)
    if not apm.lib.utils.data.tables.scrap_metal[recipe_name] then return end
    apm.lib.utils.data.tables.scrap_metal[recipe_name] = nil
    log('Info: apm.lib.utils.recycling.scrap.remove(): removed: ' .. tostring(recipe_name) .. ' from the scrap table')
end

-- Function -------------------------------------------------------------------
-- 
-- 
-------------------------------------------------------------------------------
local function count_scrap_for_this_Recipe(recipe_name)
    return #apm.lib.utils.data.tables.scrap_metal[recipe_name]
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function scrap_generation(recipe_name)
    if not apm.lib.utils.recipe.exist(recipe_name) then
        log('Error: apm.lib.utils.recycling.scrap.generate(): scrap_generation(): recipe: "' .. tostring(recipe_name) .. '" does not exist')
        return
    end

    local recipe = data.raw.recipe[recipe_name]
    for _, scrap_metal in pairs(apm.lib.utils.data.tables.scrap_metal[recipe_name]) do

        if not apm.lib.utils.recycling.metal.exist(scrap_metal.name) then
            log('Error: apm.lib.utils.recycling.scrap.generate(): can not process: "' .. tostring(recipe_name) .. '" because scarp metal: "' .. tostring(scrap_metal.name) .. '" dosent exist')
            return
        end

        local scrap_metal_name = 'apm_scrap_metal_box_'.. scrap_metal.name
        
        local probability = scrap_metal.probability
        if not probability then
            probability = apm.lib.utils.setting.get.starup('apm_recycler_payback')
            probability = (probability/100)/count_scrap_for_this_Recipe(recipe_name)
        end

        apm.lib.utils.recipe.result.add_with_probability(recipe_name, scrap_metal_name, 1, 1, probability)
    end
end
-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.recycling.scrap.generate()
    for recipe_name in pairs(apm.lib.utils.data.tables.scrap_metal) do
        scrap_generation(recipe_name)
    end
end