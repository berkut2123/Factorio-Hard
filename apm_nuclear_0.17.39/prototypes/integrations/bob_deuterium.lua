require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/bob_deuterium.lua')
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

if mods.bobplates and apm_nuclear_compat_bob and apm.lib.utils.item.exist('deuterium') then
    ----------------------------------------------------------------------------------------------
    -- items
    ----------------------------------------------------------------------------------------------
    local item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_fuel_cell_deuterium'
    item.icons = {
        apm.nuclear.icons.fuel_cell_deuterium,
    }
    item.icon_size = 32
    item.fuel_category = "apm_nuclear_deuterium"
    item.burnt_result = "apm_nuclear_fuel_cell_used_deuterium"
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_fuel"
    item.order = 'ae_a[deuterium]'
    item.fuel_value = tostring(apm.lib.utils.math.round((32)^fuel_value_exponent, 2)) .. "GJ"
    item.fuel_glow_color = {r=0.886, g=0.000, b=0.314, a = 0.500}
    data:extend({item})

    local item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_fuel_cell_used_deuterium'
    item.icons = {
        apm.nuclear.icons.fuel_cell_deuterium_used,
    }
    item.icon_size = 32
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_used_fuel"
    item.order = 'ae_a[deuterium]'
    data:extend({item})

    ----------------------------------------------------------------------------------------------
    -- fluids
    ----------------------------------------------------------------------------------------------
    CreateNitricAcidFuelSolution('deuterium', {r=0.748, g=0.000, b=0.314}, {r=0.886, g=0.000, b=0.314}, 'apm_nuclear_recycling_stage_a', 'ae_a')

    ----------------------------------------------------------------------------------------------
    -- recipes
    ----------------------------------------------------------------------------------------------
    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_nuclear_fuel_cell_deuterium'
    recipe.icon_size = 32
    recipe.category = 'crafting-with-fluid'
    recipe.normal = {}
    recipe.normal.enabled = false
    recipe.normal.energy_required = 5
    recipe.normal.ingredients = {
                    {type="item", name="apm_fuel_cell_casing", amount=1},
                    {type="item", name="lead-plate", amount=10},
                    {type="fluid", name="deuterium", amount=200},
                }
    recipe.normal.results = { 
                    {type='item', name='apm_nuclear_fuel_cell_deuterium', amount=1},
                }
    recipe.normal.main_product = 'apm_nuclear_fuel_cell_deuterium'
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.normal.always_show_made_in = true
    recipe.expensive = table.deepcopy(recipe.normal)
    recipe.expensive.ingredients = {
                    {type="item", name="apm_fuel_cell_casing", amount=1},
                    {type="item", name="lead-plate", amount=10},
                    {type="fluid", name="deuterium", amount=300},
                }
    data:extend({recipe})

    local recipe = {}
    recipe.type = 'recipe'
    recipe.name = 'apm_fuel_cell_deuterium_used_recovery_stage_a'
    recipe.icons = {
        apm.nuclear.icons.fuel_cell_deuterium_used,
        apm.lib.utils.icon.dynamics.recycling,
    }
    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_a"
    recipe.order = 'ae_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_deuterium']
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
                    {type="item", name='apm_nuclear_fuel_cell_used_deuterium', amount=1},
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
    recipe.name = 'apm_fuel_cell_deuterium_used_recovery_stage_b'

    recipe.icons = {}
    for _, layer in pairs(get_raw_fluid_icons('apm_nitric_acid_fuel_solution_deuterium')) do
        table.insert(recipe.icons, layer)
    end
    table.insert(recipe.icons, apm.lib.utils.icon.dynamics.recycling)

    recipe.icon_size = 32
    recipe.category = 'chemistry'
    recipe.group = "apm_nuclear"
    recipe.subgroup = "apm_nuclear_recycling_stage_b"
    recipe.order = 'ae_a'

    local fluid = data.raw.fluid['apm_nitric_acid_fuel_solution_deuterium']
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
                }
    recipe.normal.results = {
                    {type="fluid", name='apm_radioactive_wastewater', amount=25},
                    {type='item', name='lead-plate', amount=5},
                    {type='item', name='lithium', amount=1, probability=0.025},
                    {type="fluid", name='water', amount=25},
                }
    recipe.normal.requester_paste_multiplier = 4
    recipe.normal.always_show_products = true
    recipe.expensive = recipe.normal
    data:extend({recipe})

    apm.lib.utils.technology.add.recipe_for_unlock('deuterium-processing', 'apm_nuclear_fuel_cell_deuterium')
    apm.lib.utils.technology.add.recipe_for_unlock('deuterium-fuel-reprocessing', 'apm_fuel_cell_deuterium_used_recovery_stage_a')
    apm.lib.utils.technology.add.recipe_for_unlock('deuterium-fuel-reprocessing', 'apm_fuel_cell_deuterium_used_recovery_stage_b')
    -- radioactive descriptions:
    apm.lib.utils.item.add.radioactive_description('apm_nuclear_fuel_cell_used_deuterium', 1)
end
