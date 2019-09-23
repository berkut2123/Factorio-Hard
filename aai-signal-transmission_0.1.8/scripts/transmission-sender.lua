local TransmissionSender = {}
-- Send and recieve signals across surfaces

-- constants
TransmissionSender.name_sender = mod_prefix.."signal-sender"
TransmissionSender.name_sender_gui_root = mod_prefix.."signal-sender"
TransmissionSender.min_energy = 5000000 * 0.75


function TransmissionSender.from_unit_number (unit_number)
  unit_number = tonumber(unit_number)
  -- NOTE: only suppors container as the entity
  if global.transmission_senders[unit_number] then
    return global.transmission_senders[unit_number]
  end
end

function TransmissionSender.from_entity (entity)
  if not(entity and entity.valid) then
    return
  end
  -- NOTE: only suppors main entity as entity
  return TransmissionSender.from_unit_number(entity.unit_number)
end

function TransmissionSender.gui_close (player)
  if player.gui.center[TransmissionSender.name_sender_gui_root] then
    player.gui.center[TransmissionSender.name_sender_gui_root].destroy()
  end
end

--[[
function TransmissionSender.gui_update(player)
  local root = player.gui.center[TransmissionSender.name_sender_gui_root]
  if root then
    local struct = TransmissionSender.from_unit_number(root.unit_number.children_names[1])
    if struct then

    end
    return
  end
end
]]--

function TransmissionSender.gui_open(player, struct)
  if not struct then
    return
  end
  TransmissionSender.gui_close(player)
  local gui = player.gui.center
  gui.clear()
  player.opened = nil
  local container = gui.add{ type = "frame", name = TransmissionSender.name_sender_gui_root, direction="vertical"}

  local title_flow = container.add{ type="flow", name="unit_number", direction="horizontal"}
  -- NOTE: [TransmissionSender.name_rocket_landing_pad_gui_root].unit_number.child_names()[1] gets unit number
  local title = title_flow.add{ type="label", name=struct.unit_number, caption={"entity-name." .. TransmissionSender.name_sender}, style="heading_1_label"}

  local channel_flow = container.add{ type="flow", name="channel-flow", direction="horizontal"}
  channel_flow.style.top_margin = 10
  local channel_label = channel_flow.add{ type = "label", name="show-channel", caption="Channel: " .. struct.channel}
  local change_channel_button = channel_flow.add{ type = "sprite-button", name="change_channel", sprite="utility/rename_icon_normal",
    tooltip={"aai-signal-transmission.change-channel", {"entity-name." .. struct.type}}, style="aai_signal_transmission_sprite_button_small"}

  --TransmissionSender.gui_update(player)
end

function TransmissionSender.on_gui_click(event)
  if not (event.element and event.element.valid) then return end
  local element = event.element
  local player = game.players[event.player_index]
  local root = Util.gui_element_or_parent(element, TransmissionSender.name_sender_gui_root)
  if not root then return end
  struct = TransmissionSender.from_unit_number(root.unit_number.children_names[1])
  if not struct then return end

  if element.name == "change_channel" then

    local channel_flow = element.parent
    element.destroy()
    channel_flow["show-channel"].destroy()
    local channel_label = channel_flow.add{ type = "textfield", name="write-channel", text=struct.channel}
    local change_channel_button = channel_flow.add{ type = "sprite-button", name="change-channel-confirm", sprite="utility/enter",
      tooltip={"aai-signal-transmission.change-channel", {"entity-name." .. struct.type}}, style="aai_signal_transmission_sprite_button_small"}

  elseif element.name == "change-channel-confirm" then

    local channel_flow = element.parent
    element.destroy()
    local new_name = string.trim(channel_flow["write-channel"].text)
    if newname ~= "" and new_name ~= struct.channel then
      --do change name stuff
      TransmissionSender.change_channel(struct, new_name)
    end
    channel_flow["write-channel"].destroy()
    local channel_label = channel_flow.add{ type = "label", name="show-channel", caption="Channel: " .. struct.channel, }
    local change_channel_button = channel_flow.add{ type = "sprite-button", name="change_channel", sprite="utility/rename_icon_normal",
      tooltip={"aai-signal-transmission.change-channel", {"entity-name." .. struct.type}}, style="aai_signal_transmission_sprite_button_small"}

  end
end
Event.addListener(defines.events.on_gui_click, TransmissionSender.on_gui_click)

function TransmissionSender.on_entity_created(event)
  local entity
  if event.entity and event.entity.valid then
    entity = event.entity
  end
  if event.created_entity and event.created_entity.valid then
    entity = event.created_entity
  end
  if entity.name == TransmissionSender.name_sender then
    entity.backer_name = ""
    local fn = entity.force.name

    local default_channel = "1"

    local struct = {
      type = TransmissionSender.name_sender,
      valid = true,
      force_name = fn,
      unit_number = entity.unit_number,
      main = entity,
      combinator = nil, -- add it
      channel = default_channel,
      zone = zone
    }
    global.transmission_senders[entity.unit_number] = struct

    -- don't output logistcs data
    local control = struct.main.get_or_create_control_behavior()
    control.mode_of_operations = defines.control_behavior.roboport.circuit_mode_of_operation.read_robot_stats

    TransmissionSender.set_channel(struct)

    --if event.player_index and game.players[event.player_index] and game.players[event.player_index].connected then
    --  TransmissionSender.gui_open(game.players[event.player_index], struct)
    --end
  end
end
Event.addListener(defines.events.on_built_entity, TransmissionSender.on_entity_created)
Event.addListener(defines.events.on_robot_built_entity, TransmissionSender.on_entity_created)
Event.addListener(defines.events.script_raised_built, TransmissionSender.on_entity_created)
Event.addListener(defines.events.script_raised_revive, TransmissionSender.on_entity_created)

function TransmissionSender.get_struct_channel_table(struct)
  return global.transmission_senders_by_channel
end

function TransmissionSender.remove_struct_from_table(struct)
  local type_table = TransmissionSender.get_struct_channel_table(struct)
  if not type_table[struct.channel] then return end
  type_table[struct.channel][struct.unit_number] = nil
  local count_remaining = 0
  for _, remaining in pairs(type_table[struct.channel]) do
    count_remaining = count_remaining + 1
  end
  if count_remaining == 0 then
    type_table[struct.channel] = nil
  end
end

function TransmissionSender.destroy_sub(struct, key)
  if struct[key] and struct[key].valid then
    struct[key].destroy()
    struct[key] = nil
  end
end

function TransmissionSender.destroy(struct)
  if not struct then
    return
  end
  struct.valid = false
  TransmissionSender.destroy_sub(struct, 'combinator')

  TransmissionSender.remove_struct_from_table(struct)
  global.transmission_senders[struct.unit_number] = nil

  -- if a player has this gui open then close it
  local gui_name = TransmissionSender.name_sender_gui_root
  for _, player in pairs(game.connected_players) do
    if player.gui.center[gui_name] and player.gui.center[gui_name].unit_number.children_names[1] == (""..struct.unit_number) then
        player.gui.center[gui_name].destroy()
      end
  end
end

function TransmissionSender.set_channel(struct, new_name)
    struct.channel = (new_name or struct.channel)
    local type_table = TransmissionSender.get_struct_channel_table(struct)
    type_table[struct.channel] = type_table[struct.channel] or {}
    type_table[struct.channel][struct.unit_number] = struct
end

function TransmissionSender.change_channel(struct, new_name)
    local old_name = struct.channel
    TransmissionSender.remove_struct_from_table(struct)
    TransmissionSender.set_channel(struct, new_name)
end

function TransmissionSender.on_entity_removed(event)
  local entity = event.entity
  if entity and entity.valid and entity.name == TransmissionSender.name_sender then
    TransmissionSender.destroy(TransmissionSender.from_entity(entity))
  end
end
Event.addListener(defines.events.on_entity_died, TransmissionSender.on_entity_removed)
Event.addListener(defines.events.on_robot_mined_entity, TransmissionSender.on_entity_removed)
Event.addListener(defines.events.on_player_mined_entity, TransmissionSender.on_entity_removed)

function TransmissionSender.on_player_opened_changed(event)
  local player = event.player
  local opened_new = event.opened_new
  local opened_old = event.opened_old
  local opened_gui_type_new = event.opened_gui_type_new
  local opened_gui_type_old = event.opened_gui_type_old

  if opened_new and opened_new.valid and opened_gui_type_new == defines.gui_type.entity and opened_new.name == TransmissionSender.name_sender then
    TransmissionSender.gui_open(player, TransmissionSender.from_entity(opened_new))
  else
    -- the trick here is opeining the craft menu to cancel the other menu, then exiting the craft menu
    -- means that pressing e exits the custom gui
    if player.opened_gui_type and player.opened_gui_type ~= defines.gui_type.none then
      if player.gui.center[TransmissionSender.name_sender_gui_root] then
          if player.opened_self then
            player.opened = nil
          end
          TransmissionSender.gui_close(player)
      end
    end
  end
end
Event.addListener("on_player_opened_changed", TransmissionSender.on_player_opened_changed, true)

function TransmissionSender.on_tick(struct)
  --for _, player in pairs(game.connected_players) do
  --  TransmissionSender.gui_update(player)
  --end

  if game.tick % (global.tick_skip or 1) ~= 0 then return end

  global.signals_by_channel = {}

  for _, struct in pairs(global.transmission_senders) do
    if struct.main.valid then
      if struct.main.energy > TransmissionSender.min_energy then
        local channel = struct.channel
        global.signals_by_channel[channel] = global.signals_by_channel[channel] or {}

        local network = struct.main.get_circuit_network(defines.wire_type.red)
        if network and network.signals then
          for _, signal_count in pairs(network.signals) do
            Util.signal_container_add(global.signals_by_channel[channel], signal_count.signal, signal_count.count)
          end
        end
        network = struct.main.get_circuit_network(defines.wire_type.green)
        if network and network.signals then
          for _, signal_count in pairs(network.signals) do
            Util.signal_container_add(global.signals_by_channel[channel], signal_count.signal, signal_count.count)
          end
        end
      end
    else
      TransmissionReceiver.destroy(struct)
    end
  end

end
Event.addListener(defines.events.on_tick, TransmissionSender.on_tick)

function TransmissionSender.on_init(event)
    global.signals_by_channel = {}
    global.transmission_senders = {} -- by unit number
    global.transmission_senders_by_channel = {} -- by channel
end
Event.addListener("on_init", TransmissionSender.on_init, true)

return TransmissionSender
