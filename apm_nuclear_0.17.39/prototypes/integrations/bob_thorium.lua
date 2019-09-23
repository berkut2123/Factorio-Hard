require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/bob_thorium.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function get_raw_fluid_icons(fluid_name)
    local used_fluid = data.raw.fluid[fluid_name]
    local t_icons = {}
    for _, layer in pairs(used_fluid.icons) do
        -- we want remove the icon layer with the radioactive symbol
        if layer.icon ~= apm.lib.utils.icon.dynamics.radioactive.icon then
            table.insert(t_icons, layer)
        end
    end
    return t_icons
end

if mods.bobplates and apm_nuclear_compat_bob and apm.lib.utils.item.exist('thorium-ore') then
    ----------------------------------------------------------------------------------------------
    -- items
    ----------------------------------------------------------------------------------------------
    local item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_thorium_oxide_pellet'
    item.icons = {
        apm.nuclear.icons.thorium_oxide_pellet,
    }
    item.icon_size = 32
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_oxide_pellets_uranium"
    item.order = 'ad_a[thorium]'
    data:extend({item})

    local item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_fuel_cell_thorium'
    item.icons = {
        apm.nuclear.icons.fuel_cell_thorium,
    }
    item.icon_size = 32
    item.fuel_category = "apm_nuclear_thorium"
    item.burnt_result = "apm_nuclear_fuel_cell_used_thorium"
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_fuel"
    item.order = 'ad_a[thorium]'
    item.fuel_value = tostring(apm.lib.utils.math.round((9.1)^fuel_value_exponent, 2)) .. "GJ"
    item.fuel_glow_color = {r=0.937, g=0.945, b=0.067, a = 0.500}
    data:extend({item})

    local item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_fuel_cell_used_thorium'
    item.icons = {
        apm.nuclear.icons.fuel_cell_thorium_used,
    }
    item.icon_size = 32
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_used_fuel"
    item.order = 'ad_a[thorium]'
    data:extend({item})

    local item = {}
    item.type = "item"
    item.name = "apm_nuclear_breeder_thorium_inventory"
    item.icons = {
        apm.nuclear.icons.breeder_thorium_inventory
    }
    item.icon_size = 32
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_fuel"
    item.order = 'bb_a'
    item.stack_size = 200
    data:extend({item})

    local item = {}
    item.type = "item"
    item.name = "apm_nuclear_breeder_thorium_inventory_enriched"
    item.icons = {
        apm.nuclear.icons.breeder_thorium_inventory_enriched
    }
    item.icon_size = 32
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_oxide_pellets_plutonium"
    item.order = 'bb_a'
    item.stack_size = 200
    data:extend({item})

    ----------------------------------------------------------------------------------------------
    -- fluids
    ----------------------------------------------------------------------------------------------
    CreateNitricAcidFuelSolution('thorium', {r=0.214, g=0.194, b=0.090}, {r=0.214, g=0.288, b=0.090}, 'apm_nuclear_recycling_stage_a', 'ad_a')
    CreateNitricAcidFuelSolution('uranium', {r=0.087, g=0.703, b=0.477}, {r=0.087, g=0.974, b=0.602}, 'apm_nuclear_recycling_stage_a', 'ad_a')

    ----------------------------------------------------------------------------------------------
    -- recipes
    ----------------------------------------------------------------------------------------------
    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_thorium_oxide_pellet'
    recipe.icon_size = 32
    recipe.category = 'chemistry'

    recipe.crafting_machine_tint = {
      primary   = {r=0.541, g=0.337, b=0.170, a = 0.000},
      secondary = {r=0.541, g=0.337, b=0.170, a = 0.000},
      tertiary  = {r=0.541, g=0.337, b=0.170, a = 0.000},
    }

    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 10
    recipe.normal.ingredients = {
                    {type="item", name='thorium-ore', amount=10},
                    {type="fluid", name='sulfuric-acid', amount=50},
                    --{type="fluid", name='pure-water', amount=50},
                    apm.lib.utils.builder.recipe.ingredient.simple('pure-water', 50)
                }
    recipe.normal.results = {            
                    {type='item', name='apm_nuclear_thorium_oxide_pellet', amount=1},
                }
    recipe.normal.main_product = 'apm_nuclear_thorium_oxide_pellet'
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = table.deepcopy(recipe.normal)
    recipe.expensive.ingredients = {
                    {type="item", name='thorium-ore', amount=15},
                    {type="fluid", name='sulfuric-acid', amount=50},
                    --{type="fluid", name='pure-water', amount=50},
                    apm.lib.utils.builder.recipe.ingredient.simple('pure-water', 50)
                }
    data:extend({recipe})

    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_fuel_cell_thorium'
    recipe.icon_size = 32
    recipe.category = 'crafting-with-fluid'
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="item", name="apm_fuel_cell_casing", amount=2},
                    {type="item", name="apm_nuclear_thorium_oxide_pellet", amount=19},
                    {type="item", name="apm_nuclear_plutonium_oxide_pellet", amount=1},
                }
    recipe.normal.results = { 
                    {type='item', name='apm_nuclear_fuel_cell_thorium', amount=2},
                }
    recipe.normal.main_product = 'apm_nuclear_fuel_cell_thorium'
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = recipe.normal
    data:extend({recipe})

    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_fuel_cell_thorium_used_recovery_stage_a'
    recipe.icons = {
        apm.nuclear.icons.fuel_cell_thorium_used,
        apm.lib.utils.icon.dynamics.recycling,
    }
    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_a"
    recipe.order = 'ad_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_thorium']
    recipe.crafting_machine_tint = {
      primary   = fluid.base_color,
      secondary = fluid.base_color,
      tertiary  = fluid.base_color,
    }

    recipe.normal = {}
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.allow_intermediates = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.normal.enabled = false
    recipe.normal.energy_required = 3.5
    recipe.normal.ingredients = {
                    {type="fluid", name='nitric-acid', amount=100},
                    {type="item", name='apm_nuclear_fuel_cell_used_thorium', amount=1},
                }
    recipe.normal.results = {
                    {type='item', name='apm_fuel_cell_casing_dirty', amount=1},
                    {type="fluid", name=fluid.name, amount=100},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})

    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_fuel_cell_thorium_used_recovery_stage_b'

    recipe.icons = {}
    for _, layer in pairs(get_raw_fluid_icons('apm_nitric_acid_fuel_solution_thorium')) do
        table.insert(recipe.icons, layer)
    end
    table.insert(recipe.icons, apm.lib.utils.icon.dynamics.recycling)

    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_b"
    recipe.order = 'ad_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_thorium']
    recipe.crafting_machine_tint = {
      primary   = fluid.flow_color,
      secondary = fluid.flow_color,
      tertiary  = fluid.flow_color,
    }

    recipe.normal = {}
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.allow_intermediates = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="fluid", name='steam', amount=100},
                    {type="fluid", name=fluid.name, amount=200},
                    {type="item", name='apm_waste_container', amount=1},
                }
    recipe.normal.results = {
                    {type="fluid", name='apm_radioactive_wastewater', amount=50},
                    {type='item', name='apm_nuclear_thorium_oxide_pellet', amount=12},
                    {type='item', name='apm_nuclear_uranium_oxide_pellet_047', amount=6},
                    {type='item', name='apm_nuclear_plutonium_oxide_pellet', amount_min=1, amount_max=1, probability=0.1},
                    {type='item', name='apm_nuclear_radioactive_waste', amount=1},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})

    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "apm_nuclear_breeder_thorium_inventory"
    recipe.category = 'crafting-with-fluid'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_fuel"
    recipe.order = 'bb_a'   
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="item", name="apm_fuel_cell_casing", amount=1},
                    {type="item", name="apm_nuclear_thorium_oxide_pellet", amount=20},
                }
    recipe.normal.results = { 
                    {type='item', name='apm_nuclear_breeder_thorium_inventory', amount=1}
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.main_product = 'apm_nuclear_breeder_thorium_inventory'
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = recipe.normal
    data:extend({recipe})

    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_uranium_seperation_process_a'
    recipe.icons = {
        apm.nuclear.icons.breeder_thorium_inventory_enriched,
        apm.lib.utils.icon.dynamics.recycling,
    }
    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_a"
    recipe.order = 'bb_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_uranium']
    recipe.crafting_machine_tint = {
      primary   = fluid.base_color,
      secondary = fluid.base_color,
      tertiary  = fluid.base_color,
    }

    recipe.normal = {}
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.allow_intermediates = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.normal.enabled = false
    recipe.normal.energy_required = 3.5
    recipe.normal.ingredients = {
                    {type="fluid", name='sulfuric-acid', amount=100},
                    {type="item", name='apm_nuclear_breeder_thorium_inventory_enriched', amount=1},
                }
    recipe.normal.results = {
                    {type='item', name='apm_fuel_cell_casing_dirty', amount=1},
                    {type="fluid", name=fluid.name, amount=100},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})


    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_uranium_seperation_process_b'

    recipe.icons = {}
    for _, layer in pairs(get_raw_fluid_icons('apm_nitric_acid_fuel_solution_uranium')) do
        table.insert(recipe.icons, layer)
    end
    table.insert(recipe.icons, apm.lib.utils.icon.dynamics.recycling)

    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_b"
    recipe.order = 'bb_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_uranium']
    recipe.crafting_machine_tint = {
      primary   = fluid.flow_color,
      secondary = fluid.flow_color,
      tertiary  = fluid.flow_color,
    }

    recipe.normal = {}
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.allow_intermediates = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="fluid", name='steam', amount=100},
                    {type="fluid", name=fluid.name, amount=100},
                    {type="item", name='apm_waste_container', amount=1},
                }
    recipe.normal.results = {
                    {type="fluid", name='apm_radioactive_wastewater', amount=50},
                    {type='item', name='apm_nuclear_radioactive_waste', amount=1},
                    {type='item', name='apm_nuclear_thorium_oxide_pellet', amount=4},
                    {type='item', name='apm_nuclear_uranium_oxide_pellet_047', amount=14},
                    {type='item', name='apm_nuclear_plutonium_oxide_pellet', amount=1},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})

    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "apm_nuclear_uranium_breeding_process"
    recipe.icons = {
                apm.nuclear.icons.breeder_thorium_inventory,
                apm.lib.utils.icon.dynamics.radioactive,
            }
    recipe.icon_size = 32
    recipe.category = 'apm_nuclear_breeding'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_oxide_pellets_plutonium"
    recipe.order = 'aa_c'
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 30
    recipe.normal.ingredients = {
                    {type="item", name="apm_nuclear_breeder_thorium_inventory", amount=1},
                }
    recipe.normal.results = { 
                    {type='item', name='apm_nuclear_breeder_thorium_inventory_enriched', amount=1},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.main_product='apm_nuclear_breeder_thorium_inventory_enriched'
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = recipe.normal
    data:extend({recipe})

    apm.lib.utils.technology.add.recipe_for_unlock('thorium-processing', 'apm_nuclear_thorium_oxide_pellet')
    apm.lib.utils.technology.add.recipe_for_unlock('thorium-processing', 'apm_nuclear_fuel_cell_thorium')
    apm.lib.utils.technology.add.recipe_for_unlock('thorium-fuel-reprocessing', 'apm_fuel_cell_thorium_used_recovery_stage_a')
    apm.lib.utils.technology.add.recipe_for_unlock('thorium-fuel-reprocessing', 'apm_fuel_cell_thorium_used_recovery_stage_b')

    apm.lib.utils.technology.new('apm_nuclear',
        'apm_nuclear_breeder_thorium',
        {'apm_nuclear_breeder','thorium-fuel-reprocessing'}, 
        {'apm_nuclear_breeder_thorium_inventory','apm_nuclear_uranium_breeding_process','apm_nuclear_uranium_seperation_process_a',
        'apm_nuclear_uranium_seperation_process_b'},
        {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}},
        1500, 30)

    -- if we have thorium we will make the uranium cycle more expensive by increasing the cost for yellowcake from 5 to 15.
    apm.lib.utils.recipe.ingredient.mod('apm_nuclear_yellowcake', 'uranium-ore', 15)
    -- radioactive descriptions:
    apm.lib.utils.item.add.radioactive_description('apm_nuclear_thorium_oxide_pellet', 1)
    apm.lib.utils.item.add.radioactive_description('apm_nuclear_fuel_cell_thorium', 1)
    apm.lib.utils.item.add.radioactive_description('apm_nuclear_fuel_cell_used_thorium', 3)
    apm.lib.utils.item.add.radioactive_description('apm_nuclear_breeder_thorium_inventory', 1)
    apm.lib.utils.item.add.radioactive_description('apm_nuclear_breeder_thorium_inventory_enriched', 3)
end
