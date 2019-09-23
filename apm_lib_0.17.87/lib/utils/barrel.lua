require 'util'

if not apm.lib.utils.data.tables.fluid_container then apm.lib.utils.data.tables.fluid_container = {} end
apm.lib.utils.data.tables.fluid_container['barrel'] = {}
apm.lib.utils.data.tables.fluid_container['barrel'].empty_c_name = "empty-barrel"
apm.lib.utils.data.tables.fluid_container['barrel'].c_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-side-mask.png"
apm.lib.utils.data.tables.fluid_container['barrel'].c_hoop_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-hoop-top-mask.png"
apm.lib.utils.data.tables.fluid_container['barrel'].c_empty_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png"
apm.lib.utils.data.tables.fluid_container['barrel'].c_empty_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png"
apm.lib.utils.data.tables.fluid_container['barrel'].c_fill_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png"
apm.lib.utils.data.tables.fluid_container['barrel'].c_fill_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png"
apm.lib.utils.data.tables.fluid_container['barrel'].c_fill_icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png"
apm.lib.utils.data.tables.fluid_container['barrel'].c_empty_icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png"

-- Locals ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
-- Alpha used for barrel masks
local side_alpha = 0.75
local top_hoop_alpha = 0.75
-- Fluid required per barrel recipe
local fluid_per_barrel = 50
-- Crafting energy per barrel fill recipe
local energy_per_fill = 0.2
-- Crafting energy per barrel empty recipe
local energy_per_empty = 0.2

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.barrel.new(c_name, empty_c_name, c_side_mask, c_hoop_top_mask, c_empty_side_mask, c_empty_top_mask, c_fill_side_mask, c_fill_top_mask, c_fill_icon, c_empty_icon)
  apm.lib.utils.data.tables.fluid_container[c_name] = {}
  apm.lib.utils.data.tables.fluid_container[c_name].empty_c_name = empty_c_name
  apm.lib.utils.data.tables.fluid_container[c_name].c_side_mask = c_side_mask
  apm.lib.utils.data.tables.fluid_container[c_name].c_hoop_top_mask = c_hoop_top_mask
  apm.lib.utils.data.tables.fluid_container[c_name].c_empty_side_mask = c_empty_side_mask
  apm.lib.utils.data.tables.fluid_container[c_name].c_empty_top_mask = c_empty_top_mask
  apm.lib.utils.data.tables.fluid_container[c_name].c_fill_side_mask = c_fill_side_mask
  apm.lib.utils.data.tables.fluid_container[c_name].c_fill_top_mask = c_fill_top_mask
  apm.lib.utils.data.tables.fluid_container[c_name].c_fill_icon = c_fill_icon
  apm.lib.utils.data.tables.fluid_container[c_name].c_empty_icon = c_empty_icon
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.barrel.generate(fluid_name, c_name, technology_name, b_force)
  version = mods.base
  version = apm.lib.utils.string.version_to_number(version)
  if version >= 1743 and not b_force then return end

  if not apm.lib.utils.item.exist(fluid_name) then return end
  local fluid = data.raw.fluid[fluid_name]

  if not c_name then
    c_name = 'barrel'
  end

  if not technology_name then
    technology_name = 'fluid-handling'
  end

  local empty_c_name = apm.lib.utils.data.tables.fluid_container[c_name].empty_c_name
  local c_side_mask = apm.lib.utils.data.tables.fluid_container[c_name].c_side_mask
  local c_hoop_top_mask = apm.lib.utils.data.tables.fluid_container[c_name].c_hoop_top_mask
  local c_empty_side_mask = apm.lib.utils.data.tables.fluid_container[c_name].c_empty_side_mask
  local c_empty_top_mask = apm.lib.utils.data.tables.fluid_container[c_name].c_empty_top_mask
  local c_fill_side_mask = apm.lib.utils.data.tables.fluid_container[c_name].c_fill_side_mask
  local c_fill_top_mask = apm.lib.utils.data.tables.fluid_container[c_name].c_fill_top_mask
  local c_fill_icon = apm.lib.utils.data.tables.fluid_container[c_name].c_fill_icon
  local c_empty_icon = apm.lib.utils.data.tables.fluid_container[c_name].c_empty_icon

  local empty_c_item = data.raw.item[empty_c_name]

  local side_tint = table.deepcopy(fluid.base_color)
  side_tint.a = side_alpha
  local top_hoop_tint = table.deepcopy(fluid.flow_color)
  top_hoop_tint.a = top_hoop_alpha

  -- filled barrel item
  -------------------------------------
  local filled_container_item = {}
  filled_container_item.type = 'item'
  filled_container_item.name = "apm_filled-barrel-" .. fluid.name
  filled_container_item.localised_name = {"item-name.filled-barrel", {"fluid-name." .. fluid.name}}
  filled_container_item.icons = {
    {icon = empty_c_item.icon},
    {icon = c_side_mask, tint=side_tint},
    {icon = c_hoop_top_mask, tint=top_hoop_tint},
  }
  if fluid.icons then
    for _, icon in pairs(fluid.icons) do
      local new_icon = apm.lib.utils.icon.mod(icon, 0.5, {0, 5})
      table.insert(filled_container_item.icons, new_icon)
    end
  elseif fluid.icon then
    local new_icon = apm.lib.utils.icon.mod({icon=fluid.icon}, 0.5, {0, 5})
    table.insert(filled_container_item.icons, new_icon)
  end
  filled_container_item.icon_size = 32
  filled_container_item.stack_size = empty_c_item.stack_size 
  data:extend({filled_container_item})

  -- fill barrel
  -------------------------------------
  local recipe_fill_barrel = {}
  recipe_fill_barrel.type = "recipe"
  recipe_fill_barrel.name = "apm_filled-barrel-" .. fluid.name
  recipe_fill_barrel.category = "crafting-with-fluid"
  recipe_fill_barrel.localised_name = {"recipe-name.fill-barrel", {"fluid-name." .. fluid.name}}
  recipe_fill_barrel.energy_required = energy_per_fill
  recipe_fill_barrel.subgroup = "fill-barrel"
  recipe_fill_barrel.order = "b[fill-" .. filled_container_item.name .. "]"
  recipe_fill_barrel.enabled = false
  recipe_fill_barrel.icons = {
    {icon = c_fill_icon},
    {icon = c_fill_side_mask, tint = side_tint},
    {icon = c_fill_top_mask, tint = top_hoop_tint}
  }
  if fluid.icons then
    for _, icon in pairs(fluid.icons) do
      local new_icon = apm.lib.utils.icon.mod(icon, 0.5, {4, -8})
      table.insert(recipe_fill_barrel.icons, new_icon)
    end
  elseif fluid.icon then
    local new_icon = apm.lib.utils.icon.mod({icon=fluid.icon}, 0.5, {4, -8})
    table.insert(recipe_fill_barrel.icons, new_icon)
  end
  recipe_fill_barrel.icon_size = 32
  recipe_fill_barrel.ingredients = {
    {type = "fluid", name = fluid.name, amount = fluid_per_barrel, catalyst_amount = fluid_per_barrel},
    {type = "item", name = empty_c_name, amount = 1, catalyst_amount = 1}
  }
  recipe_fill_barrel.results = {
    {type = "item", name = filled_container_item.name, amount = 1, catalyst_amount = 1}
  }
  recipe_fill_barrel.allow_decomposition = false
  data:extend({recipe_fill_barrel})

  -- empty filled barrel
  -------------------------------------
  local recipe_empty_filled_barrel = {}
  recipe_empty_filled_barrel.type = "recipe"
  recipe_empty_filled_barrel.name = "apm_empty-" .. fluid.name
  recipe_empty_filled_barrel.category = "crafting-with-fluid"
  recipe_empty_filled_barrel.localised_name = {"recipe-name.empty-filled-barrel", {"fluid-name." .. fluid.name}}
  recipe_empty_filled_barrel.energy_required = energy_per_empty
  recipe_empty_filled_barrel.subgroup = "empty-barrel"
  recipe_empty_filled_barrel.order = "c[empty-" .. filled_container_item.name .. "]"
  recipe_empty_filled_barrel.enabled = false
  recipe_empty_filled_barrel.icons = {
    {icon = c_empty_icon},
    {icon = c_empty_side_mask, tint = side_tint},
    {icon = c_empty_top_mask, tint = top_hoop_tint}
  }
  if fluid.icons then
    for _, icon in pairs(fluid.icons) do
      local new_icon = apm.lib.utils.icon.mod(icon, 0.5, {7, 8})
      table.insert(recipe_empty_filled_barrel.icons, new_icon)
    end
  elseif fluid.icon then
    local new_icon = apm.lib.utils.icon.mod({icon=fluid.icon}, 0.5, {7, 8})
    table.insert(recipe_empty_filled_barrel.icons, new_icon)
  end
  recipe_empty_filled_barrel.icon_size = 32
  recipe_empty_filled_barrel.ingredients = {
    {type = "item", name = filled_container_item.name, amount = 1, catalyst_amount = 1}
  }
  recipe_empty_filled_barrel.results = {
    {type = "fluid", name = fluid.name, amount = fluid_per_barrel, catalyst_amount = fluid_per_barrel},
    {type = "item", name = empty_c_name, amount = 1, catalyst_amount = 1}
  }
  recipe_empty_filled_barrel.allow_decomposition = false
  data:extend({recipe_empty_filled_barrel})

  apm.lib.utils.technology.add.recipe_for_unlock(technology_name, recipe_fill_barrel.name)
  apm.lib.utils.technology.add.recipe_for_unlock(technology_name, recipe_empty_filled_barrel.name)

  log('Info: apm.lib.utils.barrel.generate(): Recipes for filling and emptying barrels generated for "' .. tostring(fluid.name) .. '"')
end