require('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/recipes.lua')
log('-------------------------------------------------------')

local amount_of_oxide_pellets=10

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

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeUraniumOxidePellet(i)
    local enrichment = 2+((i-1)*5)

    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_uranium_oxide_pellet_' .. string.format("%03d",enrichment)
    recipe.localised_name = {"recipe-name.apm_nuclear_uranium_oxide_pellet", tostring(enrichment/10)}
    recipe.icons = {
        apm.nuclear.icons.uranium_oxide_pellet,
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_lable_oxide_' .. string.format("%03d",enrichment) .. '.png', icon_size=64, scale=0.4},
    }
    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_oxide_pellets_uranium"
    recipe.order = 'aa_[' .. string.format("%03d",enrichment) .. ']'

    local fluid = data.raw.fluid['apm_nuclear_hexafluoride_' .. string.format("%03d",enrichment)]
    recipe.crafting_machine_tint = {
      primary   = fluid.base_color,
      secondary = fluid.base_color,
      tertiary  = fluid.base_color,
    }
    
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 3.5
    recipe.normal.ingredients = {
                    {type="fluid", name=fluid.name, amount=5},
                }
    recipe.normal.results = {            
                    {type='item', name='apm_nuclear_uranium_oxide_pellet_' .. string.format("%03d",enrichment), amount=1},
                }
    recipe.normal.main_product = 'apm_nuclear_uranium_oxide_pellet_' .. string.format("%03d",enrichment)
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = recipe.normal
    
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeFuelCells(i)
    local enrichment = i*5 + 27
    
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_fuel_cell_' .. string.format("%03d",enrichment)
    recipe.localised_name = {"recipe-name.apm_nuclear_fuel_cell", tostring(enrichment/10)}
    recipe.icons = {
        apm.nuclear.icons.fuel_cell_uranium,
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_lable_fuel_' .. string.format("%03d",enrichment) .. '.png', icon_size=64},
    }
    recipe.icon_size = 32
    recipe.category = 'crafting-with-fluid'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_fuel"
    recipe.order = 'aa_[' .. string.format("%03d",enrichment) .. ']'
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="item", name="apm_fuel_cell_casing", amount=1},
                    {type="item", name='apm_nuclear_uranium_oxide_pellet_' .. string.format("%03d",enrichment), amount=amount_of_oxide_pellets},
                }
    recipe.normal.results = {            
                    {type='item', name='apm_nuclear_fuel_cell_' .. string.format("%03d",enrichment), amount=1},
                }
    recipe.normal.main_product = 'apm_nuclear_fuel_cell_' .. string.format("%03d",enrichment)
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = table.deepcopy(recipe.normal)
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeMoxFuelCells()
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_fuel_cell_mox'
    recipe.icons = {
        apm.nuclear.icons.fuel_cell_mox,
    }
    recipe.icon_size = 32
    recipe.category = 'crafting-with-fluid'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_fuel"
    recipe.order = 'ab_a'
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="item", name="apm_fuel_cell_casing", amount=1},
                    {type="item", name="apm_nuclear_uranium_oxide_pellet_002", amount=9},
                    {type="item", name="apm_nuclear_plutonium_oxide_pellet", amount=1},
                }
    recipe.normal.results = {            
                    {type='item', name='apm_fuel_cell_mox', amount=1},
                }
    recipe.normal.main_product = 'apm_fuel_cell_mox'
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeUsedFuelCellsRecoveryStageA(i)
    local enrichment = i*5 + 27
    
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_used_fuel_cell_recovery_stage_a_' .. string.format("%03d",enrichment)
    recipe.localised_name = {"recipe-name.apm_used_fuel_cell_recovery_stage_a", tostring(enrichment/10)}
    recipe.icons = {
        apm.nuclear.icons.fuel_cell_uranium_used,
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_lable_fuel_' .. string.format("%03d",enrichment) .. '.png', icon_size=64},
        apm.lib.utils.icon.dynamics.recycling
    }
    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_a"
    recipe.order = 'aa_[' .. string.format("%03d",enrichment) .. ']'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_' .. string.format("%03d",enrichment)]
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
                    {type="item", name='apm_nuclear_fuel_cell_used_' .. string.format("%03d",enrichment), amount=1},
                }
    recipe.normal.results = {
                    {type='item', name='apm_fuel_cell_casing_dirty', amount=1},
                    {type="fluid", name=fluid.name, amount=100},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeUsedFuelCellsRecoveryStageB(i)
    local plutonium_probability = round((i*0.09)+(i^2*0.01), 2)
    local enrichment = i*5 + 27
    
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_used_fuel_cell_recovery_stage_b_' .. string.format("%03d",enrichment)
    recipe.localised_name = {"recipe-name.apm_used_fuel_cell_recovery_stage_b", tostring(enrichment/10)}

    recipe.icons = {}
    for _, layer in pairs(get_raw_fluid_icons('apm_nitric_acid_fuel_solution_' .. string.format("%03d",enrichment))) do
        table.insert(recipe.icons, layer)
    end
    table.insert(recipe.icons, {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_lable_fuel_' .. string.format("%03d",enrichment) .. '.png', icon_size=64})
    table.insert(recipe.icons, apm.lib.utils.icon.dynamics.recycling)

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_' .. string.format("%03d",enrichment)]
    recipe.crafting_machine_tint = {
      primary   = fluid.flow_color,
      secondary = fluid.flow_color,
      tertiary  = fluid.flow_color,
    }

    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_b"
    recipe.order = 'aa_[' .. string.format("%03d",enrichment) .. ']'
    recipe.normal = {}
    recipe.normal.allow_decomposition = false
    recipe.normal.allow_as_intermediate = false
    recipe.normal.allow_intermediates = false
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="fluid", name='steam', amount=50},
                    {type="fluid", name=fluid.name, amount=100},
                    {type="item", name='apm_waste_container', amount=1},
                }
    recipe.normal.results = {
                    {type='item', name='apm_nuclear_uranium_oxide_pellet_002', amount=amount_of_oxide_pellets - 1},
                    {type='item', name='apm_nuclear_plutonium_oxide_pellet', amount_min=1, amount_max=1, probability=plutonium_probability},
                    {type='item', name='apm_nuclear_radioactive_waste', amount=1},
                    {type="fluid", name='apm_radioactive_wastewater', amount=50},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeUsedMoxFuelCellsRecoveryStageA()
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_fuel_cell_mox_used_recovery_stage_a'
    recipe.icons = {
        apm.nuclear.icons.fuel_cell_mox_used,
        apm.lib.utils.icon.dynamics.recycling,
    }
    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_a"
    recipe.order = 'ab_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_mox']
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
                    {type="item", name='apm_fuel_cell_mox_used', amount=1},
                }
    recipe.normal.results = {
                    {type='item', name='apm_fuel_cell_casing_dirty', amount=1},
                    {type="fluid", name=fluid.name, amount=100},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeUsedMoxFuelCellsRecoveryStageB()
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_fuel_cell_mox_used_recovery_stage_b'

    recipe.icons = {}
    for _, layer in pairs(get_raw_fluid_icons('apm_nitric_acid_fuel_solution_mox')) do
        table.insert(recipe.icons, layer)
    end
    table.insert(recipe.icons, apm.lib.utils.icon.dynamics.recycling)

    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_b"
    recipe.order = 'ab_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_mox']
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
                    {type='item', name='apm_nuclear_uranium_oxide_pellet_002', amount=amount_of_oxide_pellets - 2},
                    {type='item', name='apm_nuclear_radioactive_waste', amount=1},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipePlutoniumSeparationProcessStageA()
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_plutonium_seperation_process_a'
    recipe.icons = {
        apm.nuclear.icons.breeder_uranium_inventory_enriched,
        apm.lib.utils.icon.dynamics.recycling,
    }
    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_a"
    recipe.order = 'ba_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_breeder']
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
                    {type="item", name='apm_nuclear_breeder_uranium_inventory_enriched', amount=1},
                }
    recipe.normal.results = {
                    {type='item', name='apm_fuel_cell_casing_dirty', amount=1},
                    {type="fluid", name=fluid.name, amount=100},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipePlutoniumSeparationProcessStageB()
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_plutonium_seperation_process_b'

    recipe.icons = {}
    for _, layer in pairs(get_raw_fluid_icons('apm_nitric_acid_fuel_solution_breeder')) do
        table.insert(recipe.icons, layer)
    end
    table.insert(recipe.icons, apm.lib.utils.icon.dynamics.recycling)

    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_b"
    recipe.order = 'ba_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_breeder']
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
                    {type='item', name='apm_nuclear_plutonium_oxide_pellet', amount=2},
                    {type='item', name='apm_nuclear_plutonium_oxide_pellet_2', amount_min=1, amount_max=1, probability=0.15},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateRecipeCentrifuging(i)
    local enrichment_input = 2+((i)*5)
    local enrichment_output_A = 2+((i-1)*5)
    local enrichment_output_B = 2+((i+1)*5)
    local energy_required = (2^i/2)-(2^(i-1)/4)
   
    recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_hexafluoride_centrifuging_' .. string.format("%03d",enrichment_output_B)
    recipe.localised_name = {"recipe-name.apm_nuclear_hexafluoride_centrifuging", tostring(enrichment_input/10), tostring(enrichment_output_B/10), tostring(enrichment_output_A/10)}
    recipe.icons = apm.nuclear.icons.get_apm_hexafluoride_enrichment(enrichment_output_B)
    recipe.icon_size = 32
    recipe.crafting_machine_tint = {
      primary   = {r=0+(8-i)*0.074, g=1, b=0, a = 0.000},
      secondary = {r=0+(8-i)*0.074, g=1, b=0, a = 0.000},
      tertiary  = {r=0+(8-i)*0.074, g=1, b=0, a = 0.000},
    }
    recipe.category = 'centrifuging'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_hexafluoride"
    recipe.order = 'aa_[' .. string.format("%03d",enrichment_output_B) .. ']'
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = energy_required
    recipe.normal.ingredients = {
                    {type='fluid', name='apm_nuclear_hexafluoride_' .. string.format("%03d",enrichment_input), amount=10},
                }
    recipe.normal.results = {            
                    {type='fluid', name='apm_nuclear_hexafluoride_' .. string.format("%03d",enrichment_output_A), amount=5},
                    {type='fluid', name='apm_nuclear_hexafluoride_' .. string.format("%03d",enrichment_output_B), amount=5},
                }
    --recipe.normal.requester_paste_multiplier = 1
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = table.deepcopy(recipe.normal)
    data:extend({recipe})
end
-- Action ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
for i = 1,4 do
    CreateRecipeFuelCells(i)
    CreateRecipeUsedFuelCellsRecoveryStageA(i)
    CreateRecipeUsedFuelCellsRecoveryStageB(i)
end

for i = 1,10 do
    CreateRecipeUraniumOxidePellet(i)
end

for i = 1,8 do
    CreateRecipeCentrifuging(i)
end

CreateRecipeMoxFuelCells()
CreateRecipeUsedMoxFuelCellsRecoveryStageA()
CreateRecipeUsedMoxFuelCellsRecoveryStageB()
CreateRecipePlutoniumSeparationProcessStageA()
CreateRecipePlutoniumSeparationProcessStageB()

-- Uniques --------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
data:extend(
{
    {
        type = "recipe",
        name = "apm_fuel_cell_casing",
        category='advanced-crafting',
        normal = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="steel-plate", amount=10},
            },
            results = { 
                {type='item', name='apm_fuel_cell_casing', amount=1},
            },
            main_product = 'apm_fuel_cell_casing',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="item", name="steel-plate", amount=12},
            },
            results = { 
                {type='item', name='apm_fuel_cell_casing', amount=1},
            },
            main_product = 'apm_fuel_cell_casing',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_fuel_cell_casing_washing",
        category='crafting-with-fluid',
        icons = {
            apm.nuclear.icons.fuel_cell_used,
            apm.lib.utils.icon.dynamics.recycling
        },
        icon_size = 32,
        group = "apm_nuclear",
        subgroup = "apm_nuclear_products",
        order = 'aa_b',
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="apm_fuel_cell_casing_dirty", amount=5},
                {type="item", name="steel-plate", amount=5},
                {type="fluid", name="water", amount=50},
            },
            results = { 
                {type='item', name='apm_fuel_cell_casing', amount=4},
                {type='item', name='apm_fuel_cell_casing', amount_min=1, amount_max=1, probability=0.75},
                {type="fluid", name="apm_radioactive_wastewater", amount=50},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            allow_decomposition = false,
            allow_as_intermediate = false,
            allow_intermediates = false,
            always_show_products = true,
            always_show_made_in = true,
        },
        expensive = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="apm_fuel_cell_casing_dirty", amount=5},
                {type="item", name="steel-plate", amount=7},
                {type="fluid", name="steam", amount=100},
            },
            results = { 
                {type='item', name='apm_fuel_cell_casing', amount=4},
                {type='item', name='apm_fuel_cell_casing', amount_min=1, amount_max=1, probability=0.65},
                {type="fluid", name="apm_radioactive_wastewater", amount=50},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            allow_decomposition = false,
            allow_as_intermediate = false,
            allow_intermediates = false,
            always_show_products = true,
            always_show_made_in = true,
        }
    },
    {
        type = "recipe",
        name = "apm_fluorite_ore",
        category='chemistry',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'aa_a',
        crafting_machine_tint = {
            primary   = {r=0.694, g=0.756, b=0.095, a = 0.000},
            secondary = {r=0.694, g=0.756, b=0.095, a = 0.000},
            tertiary  = {r=0.694, g=0.756, b=0.095, a = 0.000},
        },
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="sulfuric-acid", amount=50},
                {type="item", name="stone", amount=5}
            },
            results = { 
                {type='item', name='apm_fluorite_ore', amount=5},
            },
            main_product = 'apm_fluorite_ore',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type="fluid", name="sulfuric-acid", amount=50},
                {type="item", name="stone", amount=10}
            },
            results = { 
                {type='item', name='apm_fluorite_ore', amount=5},
            },
            main_product = 'apm_fluorite_ore',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_potassium_bromide_filltration",
        category='chemistry',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'ac_a',
        crafting_machine_tint = {
            primary   = {r=0.867, g=0.651, b=0.620, a = 0.000},
            secondary = {r=0.867, g=0.651, b=0.620, a = 0.000},
            tertiary  = {r=0.867, g=0.651, b=0.620, a = 0.000},
        },
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="water", amount=50},
            },
            results = {
                {type='item', name='apm_nuclear_potassium_bromide', amount=5},
                {type="fluid", name='steam', amount=100, temperature=165},
            },
            requester_paste_multiplier = 4,
            main_product='apm_nuclear_potassium_bromide',
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="water", amount=50},
            },
            results = {
                {type='item', name='apm_nuclear_potassium_bromide', amount=5},
                {type="fluid", name='steam', amount=100, temperature=165},
            },
            requester_paste_multiplier = 4,
            main_product='apm_nuclear_potassium_bromide',
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_bromine",
        category='chemistry',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'ac_b',
        crafting_machine_tint = {
            primary   = {r=0.637, g=0.000, b=0.000, a = 0.000},
            secondary = {r=0.637, g=0.000, b=0.000, a = 0.000},
            tertiary  = {r=0.637, g=0.000, b=0.000, a = 0.000},
        },
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="water", amount=50},
                {type="item", name="apm_nuclear_potassium_bromide", amount=5},
            },
            results = {
                {type="fluid", name='apm_nuclear_bromine', amount=100},
            },
            requester_paste_multiplier = 4,
            main_product='apm_nuclear_bromine',
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="water", amount=50},
                {type="item", name="apm_nuclear_potassium_bromide", amount=5},
            },
            results = {
                {type="fluid", name='apm_nuclear_bromine', amount=100},
            },
            requester_paste_multiplier = 4,
            main_product='apm_nuclear_bromine',
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_bromine_trifluoride",
        category='chemistry',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'ac_c',
        crafting_machine_tint = {
            primary   = {r=0.615, g=0.765, b=0.027, a = 0.000},
            secondary = {r=0.615, g=0.765, b=0.027, a = 0.000},
            tertiary  = {r=0.615, g=0.765, b=0.027, a = 0.000},
        },
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="apm_nuclear_bromine", amount=50},
                {type="item", name="apm_fluorite_ore", amount=5}
            },
            results = { 
                {type='fluid', name='apm_nuclear_bromine_trifluoride', amount=100}
            },
            main_product = 'apm_nuclear_bromine_trifluoride',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="apm_nuclear_bromine", amount=50},
                {type="item", name="apm_fluorite_ore", amount=5}
            },
            results = { 
                {type='fluid', name='apm_nuclear_bromine_trifluoride', amount=100}
            },
            main_product = 'apm_nuclear_bromine_trifluoride',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_yellowcake",
        category='chemistry',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'ab_a',
        crafting_machine_tint = {
            primary   = {r=0.950, g=0.950, b=0.000, a = 0.000},
            secondary = {r=0.950, g=0.950, b=0.000, a = 0.000},
            tertiary  = {r=0.950, g=0.950, b=0.000, a = 0.000},
        },
        normal = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="fluid", name="sulfuric-acid", amount=50},
                {type="item", name="uranium-ore", amount=10}
            },
            results = { 
                {type='item', name='apm_nuclear_yellowcake', amount=5},
                {type="fluid", name='apm_radioactive_wastewater', amount=50},
            },
            main_product = 'apm_nuclear_yellowcake',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="fluid", name="sulfuric-acid", amount=50},
                {type="item", name="uranium-ore", amount=20}
            },
            results = { 
                {type='item', name='apm_nuclear_yellowcake', amount=5},
                {type="fluid", name='apm_radioactive_wastewater', amount=50},
            },
            main_product = 'apm_nuclear_yellowcake',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_hexafluoride_002",
        category='chemistry',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'az_a',
        crafting_machine_tint = {
            primary   = {r=0.000, g=0.650, b=0.650, a = 0.000},
            secondary = {r=0.000, g=0.650, b=0.650, a = 0.000},
            tertiary  = {r=0.000, g=0.650, b=0.650, a = 0.000},
        },
        icons = {
            {icon = apm.lib.utils.icon.path.chemical_flame_1, icon_size=64, tint={r=0.0, g=0.741, b=0.0}},
            {icon = apm.lib.utils.icon.path.chemical_flame_2, icon_size=64, tint={r=0.286, g=0.0, b=0.878}},
            {icon = apm.lib.utils.icon.path.chemical_flame_3, icon_size=64, tint={r=0.0, g=0.741, b=0.0}},
            {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_uranium_hexafluoride.png', icon_size=64},
            {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_top_right_007.png', icon_size=64},
            apm.lib.utils.icon.mod(apm.nuclear.icons.yellowcake, 0.45, {-11, 11}),
        },
        icon_size = 32,
        normal = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="apm_nuclear_yellowcake", amount=2},
                {type="fluid", name="steam", amount=50},
                {type="fluid", name="apm_nuclear_bromine_trifluoride", amount=50},
            },
            results = { 
                {type='fluid', name='apm_nuclear_hexafluoride_007', amount=50},
                {type='fluid', name='apm_radioactive_wastewater', amount=25},
            },
            main_product = 'apm_nuclear_hexafluoride_007',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 2.5,
            ingredients = {
                {type="item", name="apm_nuclear_yellowcake", amount=2},
                {type="fluid", name="steam", amount=50},
                {type="fluid", name="apm_nuclear_bromine_trifluoride", amount=50},
            },
            results = { 
                {type='fluid', name='apm_nuclear_hexafluoride_007', amount=50},
                {type='fluid', name='apm_radioactive_wastewater', amount=25},
            },
            main_product = 'apm_nuclear_hexafluoride_007',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_waste_container",
        category = "advanced-crafting",
        normal = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="iron-plate", amount=5}
            },
            results = { 
                {type='item', name='apm_waste_container', amount=1},
            },
            main_product = 'apm_waste_container',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                {type="item", name="iron-plate", amount=10}
            },
            results = { 
                {type='item', name='apm_waste_container', amount=1},
            },
            main_product = 'apm_waste_container',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_rtg_radioisotope_thermoelectric_generator",
        category = "advanced-crafting",
        normal = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="iron-plate", amount=2},
                {type="item", name="copper-plate", amount=10},
                {type="item", name="apm_nuclear_plutonium_oxide_pellet", amount=2},
            },
            results = { 
                {type='item', name='apm_rtg_radioisotope_thermoelectric_generator', amount=1},
            },
            main_product = 'apm_rtg_radioisotope_thermoelectric_generator',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="iron-plate", amount=5},
                {type="item", name="copper-plate", amount=20},
                {type="item", name="apm_nuclear_plutonium_oxide_pellet", amount=4},
            },
            results = { 
                {type='item', name='apm_rtg_radioisotope_thermoelectric_generator', amount=1},
            },
            main_product = 'apm_rtg_radioisotope_thermoelectric_generator',
            requester_paste_multiplier = 4,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_breeder_uranium_inventory",
        category = 'crafting-with-fluid',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_fuel",
        order = 'ba_a',
        normal = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_fuel_cell_casing", amount=1},
                {type="item", name="apm_nuclear_uranium_oxide_pellet_002", amount=amount_of_oxide_pellets},
            },
            results = { 
                {type='item', name='apm_nuclear_breeder_uranium_inventory', amount=1}
            },
            requester_paste_multiplier = 4,
            main_product = 'apm_nuclear_breeder_uranium_inventory',
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_fuel_cell_casing", amount=1},
                {type="item", name="apm_nuclear_uranium_oxide_pellet_002", amount=amount_of_oxide_pellets},
            },
            results = { 
                {type='item', name='apm_nuclear_breeder_uranium_inventory', amount=1}
            },
            requester_paste_multiplier = 4,
            main_product = 'apm_nuclear_breeder_uranium_inventory',
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_plutonium_breeding_process",
        icons = {
            apm.nuclear.icons.breeder_uranium_inventory,
            apm.lib.utils.icon.dynamics.radioactive,
        },
        icon_size = 32,
        category = 'apm_nuclear_breeding',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_oxide_pellets_plutonium",
        order = 'aa_b',
        normal = {
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="apm_nuclear_breeder_uranium_inventory", amount=1},
            },
            results = { 
                {type='item', name='apm_nuclear_breeder_uranium_inventory_enriched', amount=1},
            },
            requester_paste_multiplier = 4,
            main_product='apm_nuclear_breeder_uranium_inventory_enriched',
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="apm_nuclear_breeder_uranium_inventory", amount=1},
            },
            results = { 
                {type='item', name='apm_nuclear_breeder_uranium_inventory_enriched', amount=1},
            },
            requester_paste_multiplier = 4,
            main_product='apm_nuclear_breeder_uranium_inventory_enriched',
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_radioactive_wastewater_recyling",
        category='chemistry',
        group = "apm_nuclear",
        subgroup = "apm_nuclear_recycling_stage_b",
        order = 'ca_a',
        crafting_machine_tint = {
            primary   = {r=0.500, g=0.950, b=0.000, a = 0.000},
            secondary = {r=0.500, g=0.950, b=0.000, a = 0.000},
            tertiary  = {r=0.500, g=0.950, b=0.000, a = 0.000},
        },
        icons = apm.lib.utils.icon.generate.fluid({r=0.62, g=0.81, b=0.0}, {r=0.65, g=0.89, b=0.0}, apm.lib.utils.icon.dynamics.recycling),
        icon_size = 32,
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="fluid", name="apm_radioactive_wastewater", amount=1000},
                {type="item", name="apm_waste_container", amount=1},
            },
            results = { 
                {type="fluid", name="water", amount=1000},
                {type="item", name="apm_nuclear_radioactive_waste", amount=1},
            },
            requester_paste_multiplier = 4,
            allow_decomposition = false,
            allow_as_intermediate = false,
            always_show_products = true,
            always_show_made_in = true
        },
        expensive = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="fluid", name="apm_radioactive_wastewater", amount=1000},
                {type="item", name="apm_waste_container", amount=1},
            },
            results = { 
                {type="fluid", name="water", amount=1000},
                {type="item", name="apm_nuclear_radioactive_waste", amount=1},
            },
            requester_paste_multiplier = 4,
            allow_decomposition = false,
            allow_as_intermediate = false,
            always_show_products = true,
            always_show_made_in = true
        }
    },
    {
        type = "recipe",
        name = "apm_nuclear_breeder",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="nuclear-reactor", amount=1},
                {type="item", name="productivity-module-3", amount=20},
                {type="item", name="steel-plate", amount=500},
                {type="item", name="concrete", amount=500},
            },
            results = { 
                {type="item", name="apm_nuclear_breeder", amount=1},
            },
            main_product = 'apm_nuclear_breeder',
            requester_paste_multiplier = 4,
            always_show_products = true
        },
        expensive = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="nuclear-reactor", amount=1},
                {type="item", name="productivity-module-3", amount=30},
                {type="item", name="steel-plate", amount=750},
                {type="item", name="concrete", amount=500},
            },
            results = { 
                {type="item", name="apm_nuclear_breeder", amount=1},
            },
            main_product = 'apm_nuclear_breeder',
            requester_paste_multiplier = 4,
            always_show_products = true
        }
    },
    {
        type = "recipe",
        name = "apm_depleted_uranium_ingots_1",
        category = 'smelting',
        icons = {
            apm.nuclear.icons.staballoy,
            apm.lib.utils.icon.dynamics.t1
        },
        icon_size = 32,
        group = "apm_nuclear",
        subgroup = "apm_nuclear_products",
        order = 'ad_a',
        normal = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="apm_nuclear_uranium_oxide_pellet_002", amount=5},
            },
            results = { 
                {type="item", name="apm_depleted_uranium_ingots", amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true
        },
        expensive = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="apm_nuclear_uranium_oxide_pellet_002", amount=8},
            },
            results = { 
                {type="item", name="apm_depleted_uranium_ingots", amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true
        }
    },
    {
        type = "recipe",
        name = "apm_depleted_uranium_ingots_2",
        category = 'smelting',
        icons = {
            apm.nuclear.icons.staballoy,
            apm.lib.utils.icon.dynamics.t2
        },
        icon_size = 32,
        group = "apm_nuclear",
        subgroup = "apm_nuclear_products",
        order = 'ad_b',
        normal = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="apm_nuclear_uranium_oxide_pellet_007", amount=5},
            },
            results = { 
                {type="item", name="apm_depleted_uranium_ingots", amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true
        },
        expensive = {
            enabled = false,
            energy_required = 3.5,
            ingredients = {
                {type="item", name="apm_nuclear_uranium_oxide_pellet_007", amount=8},
            },
            results = { 
                {type="item", name="apm_depleted_uranium_ingots", amount=5},
            },
            main_product = '',
            requester_paste_multiplier = 4,
            always_show_products = true
        }
    },
})
