require("stdlib/table")
require("stdlib/string")

mod_prefix = "aai-"

Util = require("scripts/util")
Event = require("scripts/event")
TransmissionSender = require("scripts/transmission-sender")
TransmissionReciever = require("scripts/transmission-receiver")

function get_make_playerdata(player)
  global.playerdata = global.playerdata or {}
  global.playerdata[player.index] = global.playerdata[player.index] or {}
  return global.playerdata[player.index]
end

function on_tick_player(player)

  local playerdata = get_make_playerdata(player)

  if player.opened ~= playerdata.opened or player.opened_gui_type ~= playerdata.opened_gui_type then
    local event_data = {
      player = player,
      opened_new = player.opened,
      opened_old = playerdata.opened,
      opened_gui_type_new = player.opened_gui_type,
      opened_gui_type_old = playerdata.opened_gui_type
    }
    playerdata.opened = player.opened
    playerdata.opened_gui_type = player.opened_gui_type
    Event.trigger("on_player_opened_changed", event_data)
  end

end

function on_tick()
  for _, player in pairs(game.connected_players) do
    on_tick_player(player)
  end
end


Event.addListener(defines.events.on_tick, on_tick)

function set_settings()
  global.tick_skip = settings.global["aai-signal-transmission-tick"].value
end

Event.addListener("on_init", set_settings, true)
Event.addListener("on_configuration_changed", set_settings, true)
Event.addListener(defines.events.on_runtime_mod_setting_changed, set_settings)
