local Gui = require("gui")
local Fact = require("factorio")
local Global = require("global")
local Logistic = require("logistic")

function debug(player, fmt, ...)
  global.debugId = 1 + (global.debugId or 0)
  player.print(string.format("%d:"..fmt, global.debugId, ...))
end
debug = function() end

function onInit()
  global = global or {gui={}}
end
script.on_configuration_changed(onInit)
script.on_init(onInit)

script.on_event("quicksearch-open", function(event)
  local player = game.players[event.player_index]
  if Gui.get(player) then
    Gui.close(player)
  else
    Gui.open(player)
  end
end)

script.on_event(defines.events.on_gui_click, function(event)
  local matchId = string.match(event.element.name, "quicksearch.match/(%d+)$")
  local player = game.players[event.player_index]
  if matchId then
    Gui.acceptMatch(player, tonumber(matchId), event)
    Gui.refresh(player)
  elseif event.element.name == "quicksearch.close" then
    Gui.close(player)
  end
end)

script.on_event(defines.events.on_gui_text_changed, function(event)
  local player = game.players[event.player_index]
  if event.element.name == "quicksearch.query" then
    local acceptKey = player.mod_settings["quicksearch-accept-key"].value
    local closeKey = player.mod_settings["quicksearch-close-key"].value
    if acceptKey and string.match(event.text, acceptKey) then
      Gui.acceptMatch(player, 1, {})
      Gui.close(player)
    elseif closeKey and string.match(event.text, closeKey) then
      Gui.close(player)
    else
      Gui.setQuery(player, event.text)
      Gui.refresh(player)
    end
  end
end)

script.on_event(defines.events.on_gui_opened, function(event)
  local player = game.players[event.player_index]
  Gui.refresh(player)
end)

script.on_event(defines.events.on_player_main_inventory_changed, function (event)
  local player = game.players[event.player_index]
  Fact.destroyGhostTool(player)
  Logistic.maybeClearLogisticRequests(player)
  Gui.refresh(player)
end)