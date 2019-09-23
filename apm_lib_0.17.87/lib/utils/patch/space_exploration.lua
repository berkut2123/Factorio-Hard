require 'util'

if not apm.lib.utils.patch.space_exploration then apm.lib.utils.patch.space_exploration = {} end
if not apm.lib.utils.patch.space_exploration.block_from_space then apm.lib.utils.patch.space_exploration.block_from_space = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.patch.space_exploration(prototype_type, prototype_name)
  space_collision_layer = "layer-14"

  local prototype = (data.raw[prototype_type][prototype_name])
  if prototype == nil then return end

  local collision = prototype.collision_mask
  collision = table.deepcopy(collision)
  table.insert(collision, space_collision_layer)
  prototype.collision_mask = collision
end