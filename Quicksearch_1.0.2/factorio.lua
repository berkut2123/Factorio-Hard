-- Generic utils for interfacing with Factorio.

local Fact = {}

-- Returns dimensions of the given BoundingBox.
function getBoxDims(box)
  local width = math.ceil(math.abs(box.left_top.x - box.right_bottom.x))
  local height = math.ceil(math.abs(box.left_top.y - box.right_bottom.y))
  return width, height
end

-- Creates a temporary blueprint for the given entity prototype.
function Fact.createGhostTool(player, entityProto)
  local bp = player.cursor_stack.set_stack("blueprint") and player.cursor_stack
  if not bp then return end
 
  bp.clear_blueprint()
  bp.label = "Quicksearch Ghost"
  bp.allow_manual_label_change = false

  -- Center the entity on the cursor.
  local w, h
  if entityProto.selection_box then w, h = getBoxDims(entityProto.selection_box) end
  local x = w and w % 2 == 0 and -0.5 or 0
  local y = h and h % 2 == 0 and -0.5 or 0
  x = x + (entityProto.building_grid_bit_shift or 0)
  y = y - (entityProto.building_grid_bit_shift or 0)

  local b=entityProto.selection_box
  debug(player, "ghost: box=[%f,%f;%f,%f] w,h=%f,%f shift=%f x,y=%f,%f", b.left_top.x, b.left_top.y, b.right_bottom.x, b.right_bottom.y, w, h, entityProto.building_grid_bit_shift, x, y)

  local ok = pcall(function()
    bp.set_blueprint_entities{
      {
        entity_number = 1,
        name = entityProto.name,
        direction = defines.direction.north,
        position = {x, y},
      }
    }
  end)
  if not ok then
    -- Can sometimes fail even if itemProto.place_result is valid for some reason. Ex: cargo wagon.
    player.cursor_stack.clear()
    return nil
  end
  return bp
end

-- Destroys all instances of the above-mentioned ghost tool blueprint from the player's inventory.
function Fact.destroyGhostTool(player)
  local inv = player.get_main_inventory()
  for i = 1,#inv do
    if inv[i].valid_for_read and inv[i].type == "blueprint" and inv[i].label == "Quicksearch Ghost" then
      debug(player, "Zapping ghost")
      inv[i].clear()
    end
  end
end

return Fact