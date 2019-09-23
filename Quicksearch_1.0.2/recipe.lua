local Fact = require("factorio")

local Recipe = {}

function isPlaceable(recipe)
  local ip = game.item_prototypes[recipe.products[1].name]
  if ip and ip.place_result then
    return true
  end
end

-- Helper to collect a list of recipes that match the query.
function Recipe.findMatches(player, matchFunc)
  local matches = {}
  for name, recipe in pairs(player.force.recipes) do
    local placeable = isPlaceable(recipe)
    if not recipe.hidden and recipe.enabled and (placeable or recipe.category == "crafting") and matchFunc(player, name) then
      matches[name] = {
        recipe = recipe,
        name = name,
--        number = player.get_craftable_count(recipe), -- too slow
        order = (isFavorite(player, name) and "[a]" or "[b]") .. (placeable and "[a]" or "[b]") .. recipe.group.name .. recipe.subgroup.name .. recipe.order,
        sprite = "recipe/"..name,
        tooltip = {
          "",
          recipe.prototype.localised_name,
          " (", name, ")",
          "\nclick = pick up ghost of item",
          "\nctrl+click = craft single item",
          "\nshift+click = craft stack of item",
        },
        acceptFunc = "recipe",
      }
    end
  end
  return matches
end

-- Player chose a recipe.
function Recipe.pick(player, match, event)
  local craft =
    (event.shift) and 100 or -- "100" means "a full stack"
    (event.control and event.button == defines.mouse_button_type.right) and 5 or
    (event.control) and 1 or
    0
  if craft == 0 then
    -- Grab ghost of the item.
    local itemProto = game.item_prototypes[match.recipe.products[1].name]
    if itemProto and itemProto.place_result then
      Fact.createGhostTool(player, itemProto.place_result)
    end
    return
  end
  -- Craft the item.
  if craft == 100 then
    local itemProto = game.item_prototypes[match.recipe.products[1].name]
    if itemProto then -- can be nil for fluids
      local amount = match.recipe.products[1].amount or match.recipe.products[1].amount_min or 1
      craft = math.ceil(itemProto.stack_size / amount)
    end
  end
  player.begin_crafting{count=craft, recipe=match.recipe}
end

return Recipe