-- Stuff to create/manage the GUI.

local Lib = require("lib")
local Global = require("global")
local Fact = require("factorio")
local Inventory = require("inventory")
local Recipe = require("recipe")
local Logistic = require("logistic")

local Gui = {}

function Gui.open(player)
  if not player.gui.left.quicksearch then
    Global.get(player).gui = {}
    Gui.setQuery(player, "")
    window = player.gui.left.add{
      type = "frame",
      name = "quicksearch",
      direction = "vertical",
      style = "quicksearch-window-style",
    }
    -- Row 1: input area
    do
      frame = window.add{
        type = "flow",
        name = "inputarea",
      }
      frame.add{
        type = "textfield",
        name = "quicksearch.query"
      }
      frame.add{
        type = "button",
        name = "quicksearch.close",
        caption = " X ",
        style = "quicksearch-button-style"
      }
    end
    -- Row 2: matches
    window.add{
      type = "flow",
      name = "matches",
      direction = "horizontal",
      style = "quicksearch-match-horizontal-flow-style",
    }
  end
  Gui.refresh(player)

  player.gui.left.quicksearch.inputarea["quicksearch.query"].focus()
end

function Gui.close(player)
  if player.gui.left.quicksearch then
    player.gui.left.quicksearch.destroy()
  end
  Global.get(player).gui = {}
end

function Gui.get(player)
  return player.gui.left.quicksearch
end

function Gui.global(player)
  local g = Global.get(player)
  g.gui = g.gui or {}
  return g.gui
end

function Gui.setQuery(player, query)
  -- Insert ".*" in between each letter for a fuzzy match. That way "etb" will match "express-transport-belt"
  Gui.global(player).query = string.gsub(query, "(.)", "%1.*")
end

function Gui.matchQuery(player, text)
  return string.match(text, Gui.global(player).query or "")
end

function Gui.refresh(player)
  if not player.gui.left.quicksearch then return end
  debug(player, "Refreshing GUI.")

  local matchesFrame = player.gui.left.quicksearch.matches
  Gui.global(player).matches = {}

  -- Add matching items from player's inventory.
  local matches = Inventory.findMatches(player, {player.get_main_inventory()}, Gui.matchQuery)
  local leftFlow = matchesFrame.left or matchesFrame.add{
    type = "flow",
    name = "left",
    direction = "vertical",
    style = "quicksearch-match-vertical-flow-style",
  }
  leftFlow.style.vertically_stretchable = true
  Gui.buildMatchGrid(player, leftFlow, "Inventory", "inventory", matches)
  
  -- Add matching recipes.
  local matches = Recipe.findMatches(player, Gui.matchQuery)
  Gui.buildMatchGrid(player, leftFlow, "Crafting", "crafting", matches)

  local rightFlow = matchesFrame.right or matchesFrame.add{
    type = "flow",
    name = "right",
    direction = "vertical",
    style = "quicksearch-match-vertical-flow-style",
  }
  rightFlow.style.vertically_stretchable = true

  -- Add matches from current chest.
  local matches = Inventory.findMatches(player, {Inventory.getForOpenContainer(player)}, Gui.matchQuery)
  local caption = next(matches) and player.opened.localised_name or ""
  Gui.buildMatchGrid(player, rightFlow, caption, "container", matches)

  -- Add matches from logistics networks.
  local matches = Logistic.findMatches(player, Gui.matchQuery)
  Gui.buildMatchGrid(player, rightFlow, "Logistics Networks", "logistic", matches)
end

function Gui.buildMatchGrid(player, parent, caption, name, matches)
  local frame = parent[name] or parent.add{
    type = "flow",
    name = name,
    direction = "vertical",
    style = "quicksearch-match-vertical-flow-style",
  }

  if next(matches) == nil then
    if frame.frame then
      frame.frame.destroy()
    end
    return
  end

  local frame = frame.frame or frame.add{
    type = "frame",
    caption = caption,
    name = "frame",
    style = "quicksearch-match-frame-style",
  }
  frame.style.horizontally_stretchable = true
  frame = frame.scrollpane or frame.add{
    type = "scroll-pane",
    name = "scrollpane",
    style = "quicksearch-match-scrollpane-style",
    horizontal_scroll_policy = "never",
  }
  frame.clear()
  local grid = frame.add{
    type = "table",
    name = "table",
    column_count = 10,
    style = "quicksearch-match-grid-style",
  }
  for name, match in Lib.spairs(matches, function(t, a, b) return t[a].order < t[b].order end) do
    g = grid.add{
      type = "sprite-button",
      name = string.format("quicksearch.match/%d", #Gui.global(player).matches + 1),
      tooltip = match.tooltip,
      number = match.number,
      sprite = match.sprite,
      style = isFavorite(player, match.name) and "quicksearch-match-item-favorite-style" or "quicksearch-match-item-style",
    }
    table.insert(Gui.global(player).matches, match)
  end
end

local acceptFuncs = {
  item = Inventory.pick,
  recipe = Recipe.pick,
  logistic = Logistic.pick,
}

 function Gui.acceptMatch(player, index, event)
  local match = Gui.global(player).matches[index]
  if match then
    if event.alt then
      Global.get(player).favorites = Global.get(player).favorites or {}
      Global.get(player).favorites[match.name] = not Global.get(player).favorites[match.name]
      debug(player, "Favorite match=%s: %s", match.name, isFavorite(player, match.name) and "yes" or "no")
    else
      debug(player, "Accepting match=%s", match.name)
      acceptFuncs[match.acceptFunc](player, match, event)
    end
  end
end

function isFavorite(player, name)
  return Global.get(player).favorites and Global.get(player).favorites[name]
end
  
return Gui