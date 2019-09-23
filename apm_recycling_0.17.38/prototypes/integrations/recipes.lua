require ('util')

local apm_recycler_compat_bob = settings.startup["apm_recycler_compat_bob"].value
local apm_recycler_compat_angel = settings.startup["apm_recycler_compat_angel"].value
local apm_recycler_compat_sctm = settings.startup["apm_recycler_compat_sctm"].value
log('- Info ------------------------------------------------')
log('./prototypes/integrations/recipes.lua')
log('apm_recycler_compat_bob: ' .. tostring(apm_recycler_compat_bob))
log('apm_recycler_compat_angel: ' .. tostring(apm_recycler_compat_angel))
log('apm_recycler_compat_sctm: ' .. tostring(apm_recycler_compat_sctm))
log('-------------------------------------------------------')

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function create_easy_smelting(name, output, tint, order)       
    local input_amount = 1
    local output_amount = 1
    local output_item = data.raw.item[output]

    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_recycling_smelting_' .. name .. '_easy'
    recipe.localised_name = {"item-name." .. output_item.name}
    recipe.icons = {
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_processed_metal.png', tint = tint},
        apm.lib.utils.icon.dynamics.smelting,
    }
    recipe.icon_size = 32
    recipe.category = 'smelting'
    recipe.group = "apm_recycling"
    recipe.subgroup = "apm_recycling_scrap_processed_smelting_easy"
    recipe.order = order
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 4.5
    recipe.normal.ingredients = {
        {type='item', name='apm_scrap_processed_' .. name, amount=2},
    }
    recipe.normal.results = {
        {type='item', name=output_item.name, amount=output_amount},
    }
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = table.deepcopy(recipe.normal)
    recipe.expensive.ingredients = {
        {type='item', name='apm_scrap_processed_' .. name, amount=3},
    }

    data:extend({recipe})
end

-- apm ----------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if mods.apm_nuclear and (not mods.angelsrefining and apm_recycler_compat_angel) then
    apm.lib.utils.recipe.category.change('apm_radioactive_wastewater_recyling', 'apm_recycling_2')
end

-- angel ----------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if mods.angelsrefining and apm_recycler_compat_angel then
    create_easy_smelting('copper', 'copper-plate', {r= 0.68, g = 0.47, b = 0.40}, 'aa_a')
    create_easy_smelting('iron', 'iron-plate', {r= 0.46, g = 0.53, b = 0.59}, 'aa_b')
    apm.lib.utils.recipe.result.mod('apm_dirt_water_recycling', 'slag', 1)
    apm.lib.utils.recipe.result.mod('apm_dirt_water_recycling', 'water', 90)
    angelsmods.functions.make_void('apm_dirt_water', 'water')
end

-- bob ------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if mods.bobelectronics and not mods.apm_recycling and apm_recycler_compat_bob then
    apm.lib.utils.recipe.ingredient.mod('apm_recycling_machine_0', 'electronic-circuit', 0)
    apm.lib.utils.recipe.ingredient.mod('apm_recycling_machine_0', 'basic-circuit-board', 5)
end

-- sctm -----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.ScienceCostTweakerM and apm_recycler_compat_sctm then
    if apm.lib.utils.recycling.metal.exist('iron') and apm.lib.utils.recycling.metal.exist('copper') and apm.lib.utils.recycling.metal.exist('steel') then
        apm.lib.utils.recipe.result.remove_all('sct-waste-copperonly')
        apm.lib.utils.recipe.result.remove_all('sct-waste-ironcopper')

        if not mods.apm_power then
            apm.lib.utils.recipe.result.mod('sct-t1-ironcore', 'apm_scrap_metal_box_iron', 1)
            apm.lib.utils.recipe.result.mod('sct-t1-magnet-coils', 'apm_scrap_metal_box_copper', 1)
        end

        if mods.bobplates then
            apm.lib.utils.recipe.result.mod('sct-t2-instruments', 'apm_scrap_metal_box_tin', 1)
            apm.lib.utils.recipe.result.mod('sct-t3-atomic-sensors', 'apm_scrap_metal_box_copper', 1)
            apm.lib.utils.recipe.result.mod('sct-t3-atomic-sensors', 'apm_scrap_metal_box_gold', 1)
            apm.lib.utils.recipe.result.mod('sct-t3-atomic-sensors', 'apm_scrap_metal_box_aluminium', 1)
            apm.lib.utils.recipe.result.mod('sct-t3-laser-emitter', 'apm_scrap_metal_box_aluminium', 1)
            apm.lib.utils.recipe.result.mod('sct-t3-laser-foci', 'apm_scrap_metal_box_gold', 1)
            apm.lib.utils.recipe.result.mod('sct-mil-subplating', 'apm_scrap_metal_box_brass', 1)
            apm.lib.utils.recipe.result.mod('sct-mil-plating', 'apm_scrap_metal_box_brass', 2)
            apm.lib.utils.recipe.result.mod('sct-prod-overclocker', 'apm_scrap_metal_box_tin', 2)
            apm.lib.utils.recipe.result.mod('sct-prod-overclocker', 'apm_scrap_metal_box_lead', 2)
            apm.lib.utils.recipe.result.mod('sct-prod-overclocker', 'apm_scrap_metal_box_silver', 2)
            apm.lib.utils.recipe.result.mod('sct-logistic-automated-storage', 'apm_scrap_metal_box_brass', 1)
            apm.lib.utils.recipe.result.mod('sct-logistic-unimover', 'apm_scrap_metal_box_aluminium', 2)
            apm.lib.utils.recipe.result.mod('sct-htech-thermalstore', 'apm_scrap_metal_box_tungsten', 4)
            apm.lib.utils.recipe.result.mod('sct-htech-thermalstore', 'apm_scrap_metal_box_cobalt-steel', 4)
            apm.lib.utils.recipe.result.mod('sct-htech-injector', 'apm_scrap_metal_box_titanium', 3)
        else
            apm.lib.utils.recipe.result.mod('sct-t2-instruments', 'apm_scrap_metal_box_iron', 1)
            apm.lib.utils.recipe.result.mod('sct-t3-atomic-sensors', 'apm_scrap_metal_box_iron', 2)
            apm.lib.utils.recipe.result.mod('sct-t3-laser-emitter', 'apm_scrap_metal_box_iron', 1)
            apm.lib.utils.recipe.result.mod('sct-t3-laser-foci', 'apm_scrap_metal_box_iron', 2)
            apm.lib.utils.recipe.result.mod('sct-mil-subplating', 'apm_scrap_metal_box_iron', 1)
            apm.lib.utils.recipe.result.mod('sct-mil-subplating', 'apm_scrap_metal_box_copper', 1)
            apm.lib.utils.recipe.result.mod('sct-mil-plating', 'apm_scrap_metal_box_iron', 1)
            apm.lib.utils.recipe.result.mod('sct-mil-plating', 'apm_scrap_metal_box_copper', 1)
            apm.lib.utils.recipe.result.mod('sct-prod-overclocker', 'apm_scrap_metal_box_iron', 2)
            apm.lib.utils.recipe.result.mod('sct-prod-overclocker', 'apm_scrap_metal_box_copper', 2)
            apm.lib.utils.recipe.result.mod('sct-prod-overclocker', 'apm_scrap_metal_box_steel', 2)
            apm.lib.utils.recipe.result.mod('sct-htech-thermalstore', 'apm_scrap_metal_box_copper', 3)
            apm.lib.utils.recipe.result.mod('sct-htech-injector', 'apm_scrap_metal_box_iron', 3)
            apm.lib.utils.recipe.result.mod('sct-htech-capbank', 'apm_scrap_metal_box_iron', 3)
        end

        apm.lib.utils.recipe.result.mod('sct-t2-reaction-nodes', 'apm_scrap_metal_box_iron', 1)
        apm.lib.utils.recipe.result.mod('sct-t2-wafer-stamp', 'apm_scrap_metal_box_iron', 1)
        apm.lib.utils.recipe.result.mod('sct-t3-laser-emitter', 'apm_scrap_metal_box_copper', 1)
        apm.lib.utils.recipe.result.mod('sct-t3-laser-foci', 'apm_scrap_metal_box_copper', 1)
        apm.lib.utils.recipe.result.mod('sct-t3-flash-fuel', 'apm_scrap_metal_box_steel', 1)
        apm.lib.utils.recipe.result.mod('sct-mil-plating', 'apm_scrap_metal_box_steel', 1)
        apm.lib.utils.recipe.result.mod('sct-prod-biosilicate', 'apm_scrap_metal_box_steel', 2)

        apm.lib.utils.recipe.remove('sct-waste-processing-copper')
        apm.lib.utils.recipe.remove('sct-waste-processing-mixed')
    end
end