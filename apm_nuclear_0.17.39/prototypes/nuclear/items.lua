require('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/items.lua')
log('-------------------------------------------------------')

fuel_value_exponent = 0.95

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateItemFuelCell(i)
    local enrichment = i*5 + 27

    item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_fuel_cell_' .. string.format("%03d",enrichment)
    item.localised_name = {"item-name.apm_nuclear_fuel_cell", tostring(enrichment/10)}
    item.icons = {
        apm.nuclear.icons.fuel_cell_uranium,
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_lable_fuel_' .. string.format("%03d",enrichment) .. '.png', icon_size=64},
    }
    item.icon_size = 32
    item.fuel_category = "apm_nuclear_uranium"
    item.burnt_result = "apm_nuclear_fuel_cell_used_" .. string.format("%03d",enrichment)
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_fuel"
    item.order = 'aa_a['..string.format("%03d",enrichment)..']'
    item.fuel_value = tostring(apm.lib.utils.math.round((i+3)^fuel_value_exponent, 2)) .. "GJ"
    item.fuel_glow_color = {r=0+(8-i)*0.074, g=1, b=0, a = 0.000}
    data:extend({item})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateItemUsedFuelCell(i)
    local enrichment = i*5 + 27
    
    item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_fuel_cell_used_' .. string.format("%03d",enrichment)
    item.localised_name = {"item-name.apm_nuclear_fuel_cell_used", tostring(enrichment/10)}
    item.icons = {
        apm.nuclear.icons.fuel_cell_uranium_used,
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_lable_fuel_' .. string.format("%03d",enrichment) .. '.png', icon_size=64},
    }
    item.icon_size = 32
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_used_fuel"
    item.order = 'aa_a['..string.format("%03d",enrichment)..']'
   
    data:extend({item})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateItemUraniumOxidePellet(i)
    local enrichment = 2+((i-1)*5)
    
    item = {}
    item.type = 'item'
    item.name = 'apm_nuclear_uranium_oxide_pellet_' .. string.format("%03d",enrichment)
    item.localised_name = {"item-name.apm_nuclear_uranium_oxide_pellet", tostring(enrichment/10)}
    item.icons = {
        apm.nuclear.icons.uranium_oxide_pellet,
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_lable_oxide_' .. string.format("%03d",enrichment) .. '.png', icon_size=64, scale=0.4},
    }
    item.icon_size = 32
    item.stack_size = 200
    item.group = "apm_nuclear"
    item.subgroup = "apm_nuclear_oxide_pellets_uranium"
    item.order = 'aa_a['..string.format("%03d",enrichment)..']'
    
    data:extend({item})
end

-- Action ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
for i = 1,4 do
    CreateItemUsedFuelCell(i)
    CreateItemFuelCell(i)
end

for i = 1,10 do
    CreateItemUraniumOxidePellet(i)
end

-- Uniques --------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
data:extend(
{
  {
    type = "item",
    name = "apm_fluorite_ore",
    icons = {
        apm.nuclear.icons.solid_fluorite
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_chemistry",
    order = 'aa_a',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_nuclear_yellowcake",
    icons = {
        apm.nuclear.icons.yellowcake
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_chemistry",
    order = 'ab_a',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_nuclear_potassium_bromide",
    icons = {
        apm.nuclear.icons.potassium_bromide,
    },
    icon_size = 32,
    group = 'apm_nuclear',
    subgroup = "apm_nuclear_chemistry",
    order = "ac_a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_nuclear_plutonium_oxide_pellet",
    icons = {
        apm.nuclear.icons.plutonium_oxide_pellet
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_oxide_pellets_plutonium",
    order = 'ab_a',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_nuclear_plutonium_oxide_pellet_2",
    icons = {
        apm.nuclear.icons.plutonium_oxide_pellet_2
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_oxide_pellets_plutonium",
    order = 'ac_a',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_fuel_cell_casing",
    icons = {
        apm.nuclear.icons.fuel_cell
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_products",
    order = 'aa_a',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_fuel_cell_casing_dirty",
    icons = {
        apm.nuclear.icons.fuel_cell_used
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_products",
    order = 'aa_b',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_fuel_cell_mox",
    icons = {
        apm.nuclear.icons.fuel_cell_mox
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_fuel",
    order = 'ab_a',
    fuel_category = "apm_nuclear_mox",
    burnt_result = "apm_fuel_cell_mox_used",
    fuel_value = tostring(apm.lib.utils.math.round(8.0^fuel_value_exponent, 2)) .. "GJ",
    fuel_glow_color = {r=0.969, g=0.663, b=0.031, a = 0.500},
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_fuel_cell_mox_used",
    icons = {
        apm.nuclear.icons.fuel_cell_mox_used
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_used_fuel",
    order = 'ab_a',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_waste_container",
    icons = {
        apm.nuclear.icons.waste_container
    },
    icon_size = 32,
    group = 'apm_nuclear',
    subgroup = "apm_nuclear_products",
    order = "ab_a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_rtg_radioisotope_thermoelectric_generator",
    icons = {
        apm.nuclear.icons.rtg
    },
    icon_size = 32,
    group = 'apm_nuclear',
    subgroup = "apm_nuclear_products",
    order = "ac_a",
    stack_size = 50,
  },
  {
    type = "item",
    name = "apm_nuclear_radioactive_waste",
    icons = {
        apm.nuclear.icons.waste_radioactive
    },
    icon_size = 32,
    group = 'apm_nuclear',
    subgroup = "apm_nuclear_waste_products",
    order = "ab_a",
    stack_size = 1000,
  },
  {
    type = "item",
    name = "apm_nuclear_breeder",
    icons = {
        apm.nuclear.icons.breeder_reactor
    },
    icon_size = 32,
    group = 'apm_nuclear',
    subgroup = "apm_nuclear_machines_2",
    order = "ab_a",
    stack_size = 5,
    place_result = "apm_nuclear_breeder",
  },
  {
    type = "item",
    name = "apm_nuclear_breeder_uranium_inventory",
    icons = {
        apm.nuclear.icons.breeder_uranium_inventory
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_fuel",
    order = 'ac_a',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_nuclear_breeder_uranium_inventory_enriched",
    icons = {
        apm.nuclear.icons.breeder_uranium_inventory_enriched
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_oxide_pellets_plutonium",
    order = 'aa_b',
    stack_size = 200,
  },
  {
    type = "item",
    name = "apm_depleted_uranium_ingots",
    icons = {
        apm.nuclear.icons.staballoy
    },
    icon_size = 32,
    group = "apm_nuclear",
    subgroup = "apm_nuclear_products",
    order = 'ad_a',
    stack_size = 200,
  },
})