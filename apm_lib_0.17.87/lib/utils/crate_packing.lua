require 'util'

if not apm.lib.utils.data.tables.crate_packing then apm.lib.utils.data.tables.crate_packing = {} end
if not apm.lib.utils.constants.crate then apm.lib.utils.constants.crate = {} end


-- Constants -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.lib.utils.constants.crate.item_stack_size_multiplier = 0.05

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.crate_packing.add(item_name, create_type)
    apm.lib.utils.data.tables.crate_packing[item_name] = {}
    apm.lib.utils.data.tables.crate_packing[item_name].type = create_type
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.crate_packing.generate()
    local counter = 1
    for item_name in pairs(utils.data.tables.metal) do
        local source = data.raw.item[item_name]
        if source == nil then return end
        
        local crate = data.raw.item['wooden-chest']
        if crate == nil then return end
        
        local input_chest = {type="item", name=crate.name, amount=1}
        local output_chest = {type="item", name=crate.name, amount_min=1, amount_max=1, probability=0.98}
        local input_packing  = {type="item", name=source.name, amount=source.stack_size*utils.constants.crate.item_stack_size_multiplier}
        local output_packing = {type="item", name='apm_crate_' .. source.name, amount=1}
        local input_unpacking  = {type="item", name='apm_crate_' .. source.name, amount=1}
        local output_unpacking = {type="item", name=source.name, amount=source.stack_size*utils.constants.crate.item_stack_size_multiplier}
        
        local item = {}
        item.type = 'item'
        item.name = 'apm_crate_' .. source.name
        item.localised_name = {"item-name.apm_crate", tostring(source.stack_size*utils.constants.crate.item_stack_size_multiplier), {"item-name." .. source.name}}
        item.localised_description = {"item-description.apm_crate"}
        item.group = 'apm_crates'
        item.subgroup = 'apm_crates_items'
        item.order = 'aa_' .. string.format("%04d", counter)
        item.icons = {
            {icon = crate.icon},
            {icon = source.icon, scale = 0.65}
        }
        item.icon_size = 32
        item.allow_decomposition = false
        item.stack_size = 1
        data:extend({item})
        
        local recipe = {}
        recipe.type = 'recipe'
        recipe.name = 'apm_crate_' .. source.name .. '_packing'
        recipe.localised_name = {"recipe-name.ap_crate_packing", tostring(source.stack_size*utils.constants.crate.item_stack_size_multiplier), {"item-name." .. source.name}}
        recipe.icons = {
            {icon = crate.icon},
            {icon = source.icon, scale = 0.65, shift = {0, 3}},
            apm.lib.utils.icon.dynamics.red_input
        }
        recipe.icon_size = 32
        --recipe.category = 'apm_crates'
        recipe.group = 'apm_crates'
        recipe.subgroup = 'apm_crates_packing'
        recipe.order = 'aa_' .. string.format("%04d", counter)
        
        recipe.normal = {}
        recipe.normal.hide_from_stats = true
        recipe.normal.allow_decomposition = false
        recipe.normal.allow_as_intermediate = false
        recipe.normal.allow_intermediates = false
        recipe.normal.always_show_products = true
        recipe.normal.enabled = true
        recipe.normal.energy_required = 2
        recipe.normal.ingredients = {input_chest, input_packing}
        recipe.normal.results = {output_packing}
        recipe.normal.main_product = ''
        recipe.expensive = recipe.normal
        data:extend({recipe})

        local recipe = {}
        recipe.type = 'recipe'
        recipe.name = 'apm_crate_' .. source.name .. '_unpacking'
        recipe.localised_name = {"recipe-name.ap_crate_packing", tostring(source.stack_size*utils.constants.crate.item_stack_size_multiplier), {"item-name." .. source.name}}
        recipe.icons = {
            {icon = crate.icon},
            {icon = source.icon, scale = 0.65, shift = {0, 3}},
            apm.lib.utils.icon.dynamics.red_output
        }
        recipe.icon_size = 32
        --recipe.category = 'apm_crates'
        recipe.group = 'apm_crates'
        recipe.subgroup = 'apm_crates_unpacking'
        recipe.order = 'aa_' .. string.format("%04d", counter)
        
        recipe.normal = {}
        recipe.normal.hide_from_stats = true
        recipe.normal.allow_decomposition = false
        recipe.normal.allow_as_intermediate = false
        recipe.normal.allow_intermediates = false
        recipe.normal.enabled = true
        recipe.normal.energy_required = 2
        recipe.normal.ingredients = {input_unpacking}
        recipe.normal.results = {output_unpacking, output_chest}
        recipe.normal.main_product = ''
        recipe.expensive = recipe.normal
        data:extend({recipe})
        
        counter = counter + 1
    end
end