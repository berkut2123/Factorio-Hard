local TransmissionReceiver = {}
-- Send and recieve signals across surfaces
mod_prefix = "aai-"

-- constants
TransmissionReceiver.name_receiver = mod_prefix.."signal-receiver"
TransmissionReceiver.name_receiver_combinator = mod_prefix.."signal-receiver-combinator"
TransmissionReceiver.name_receiver_gui_root = mod_prefix.."signal-receiver"
TransmissionReceiver.min_energy = 1000000 * 0.75


function TransmissionReceiver.from_unit_number (unit_number)
  unit_number = tonumber(unit_number)
  -- NOTE: only suppors container as the entity
  if global.transmission_receivers[unit_number] then
    return global.transmission_receivers[unit_number]
  end
end

function TransmissionReceiver.from_entity (entity)
  if not(entity and entity.valid) then
    return
  end
  -- NOTE: only suppors main entity as entity
  return TransmissionReceiver.from_unit_number(entity.unit_number)
end

function TransmissionReceiver.gui_close (player)
  if player.gui.center[TransmissionReceiver.name_receiver_gui_root] then
    player.gui.center[TransmissionReceiver.name_receiver_gui_root].destroy()
  end
end

--[[
function TransmissionReceiver.gui_update(player)
  local root = player.gui.center[TransmissionReceiver.name_receiver_gui_root]
  if root then
    local struct = TransmissionReceiver.from_unit_number(root.unit_number.children_names[1])
    if struct then

    end
    return
  end
end
]]--

function TransmissionReceiver.gui_open(player, struct)
  if not struct then
    return
  end
  TransmissionReceiver.gui_close(player)
  local gui = player.gui.center
  gui.clear()
  player.opened = nil
  local container = gui.add{ type = "frame", name = TransmissionReceiver.name_receiver_gui_root, direction="vertical"}

  local title_flow = container.add{ type="flow", name="unit_number", direction="horizontal"}
  -- NOTE: [TransmissionReceiver.name_rocket_landing_pad_gui_root].unit_number.child_names()[1] gets unit number
  local title = title_flow.add{ type="label", name=struct.unit_number, caption={"entity-name." .. TransmissionReceiver.name_receiver}, style="heading_1_label"}

  local channel_flow = container.add{ type="flow", name="channel-flow", direction="horizontal"}
  channel_flow.style.top_margin = 10
  local channel_label = channel_flow.add{ type = "label", name="show-channel", caption="Channel: " .. struct.channel,}
  local change_channel_button = channel_flow.add{ type = "sprite-button", name="change_channel", sprite="utility/rename_icon_normal",
    tooltip={"aai-signal-transmission.change-channel", {"entity-name." .. struct.type}}, style="aai_signal_transmission_sprite_button_small"}

  --TransmissionReceiver.gui_update(player)
end

function TransmissionReceiver.on_gui_click(event)
  if not (event.element and event.element.valid) then return end
  local element = event.element
  local player = game.players[event.player_index]
  local root = Util.gui_element_or_parent(element, TransmissionReceiver.name_receiver_gui_root)
  if not root then return end
  struct = TransmissionReceiver.from_unit_number(root.unit_number.children_names[1])
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
      TransmissionReceiver.change_channel(struct, new_name)
    end
    channel_flow["write-channel"].destroy()
    local channel_label = channel_flow.add{ type = "label", name="show-channel", caption="Channel: " .. struct.channel}
    local change_channel_button = channel_flow.add{ type = "sprite-button", name="change_channel", sprite="utility/rename_icon_normal",
      tooltip={"aai-signal-transmission.change-channel", {"entity-name." .. struct.type}}, style="aai_signal_transmission_sprite_button_small"}

  end
end
Event.addListener(defines.events.on_gui_click, TransmissionReceiver.on_gui_click)

function TransmissionReceiver.on_entity_created(event)
  local entity
  if event.entity and event.entity.valid then
    entity = event.entity
  end
  if event.created_entity and event.created_entity.valid then
    entity = event.created_entity
  end
  if not entity then return end
  if entity.name == TransmissionReceiver.name_receiver then
    entity.backer_name = ""
    local fn = entity.force.name

    local default_channel = "1"

    local struct = {
      type = TransmissionReceiver.name_receiver,
      valid = true,
      force_name = fn,
      unit_number = entity.unit_number,
      main = entity,
      combinator = nil, -- add it
      channel = default_channel,
      zone = zone
    }
    global.transmission_receivers[entity.unit_number] = struct

    -- don't output logistcs data
    local control = struct.main.get_or_create_control_behavior()
    control.mode_of_operations = defines.control_behavior.roboport.circuit_mode_of_operation.read_robot_stats

    TransmissionReceiver.set_channel(struct)

    -- spawn combinator
    struct.combinator = entity.surface.create_entity{
      name = TransmissionReceiver.name_receiver_combinator,
      force = entity.force,
      position = {entity.position.x, entity.position.y}}
    struct.combinator.destructible = false
    -- link it
    entity.connect_neighbour({wire = defines.wire_type.red, target_entity = struct.combinator})
    entity.connect_neighbour({wire = defines.wire_type.green, target_entity = struct.combinator})

    --if event.player_index and game.players[event.player_index] and game.players[event.player_index].connected then
    --  TransmissionReceiver.gui_open(game.players[event.player_index], struct)
    --end
  end
end
Event.addListener(defines.events.on_built_entity, TransmissionReceiver.on_entity_created)
Event.addListener(defines.events.on_robot_built_entity, TransmissionReceiver.on_entity_created)
Event.addListener(defines.events.script_raised_built, TransmissionReceiver.on_entity_created)
Event.addListener(defines.events.script_raised_revive, TransmissionReceiver.on_entity_created)


function TransmissionReceiver.get_struct_channel_table(struct)
  return global.transmission_receivers_by_channel
end

function TransmissionReceiver.remove_struct_from_table(struct)
  local type_table = TransmissionReceiver.get_struct_channel_table(struct)
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

function TransmissionReceiver.destroy_sub(struct, key)
  if struct[key] and struct[key].valid then
    struct[key].destroy()
    struct[key] = nil
  end
end

function TransmissionReceiver.destroy(struct)
  if not struct then
    return
  end
  struct.valid = false
  TransmissionSender.destroy_sub(struct, 'combinator')

  TransmissionReceiver.remove_struct_from_table(struct)
  global.transmission_receivers[struct.unit_number] = nil

  -- if a player has this gui open then close it
  local gui_name = TransmissionReceiver.name_receiver_gui_root
  for _, player in pairs(game.connected_players) do
    if player.gui.center[gui_name] and player.gui.center[gui_name].unit_number.children_names[1] == (""..struct.unit_number) then
        player.gui.center[gui_name].destroy()
      end
  end
end

function TransmissionReceiver.set_channel(struct, new_name)
    struct.channel = (new_name or struct.channel)
    local type_table = TransmissionReceiver.get_struct_channel_table(struct)
    type_table[struct.channel] = type_table[struct.channel] or {}
    type_table[struct.channel][struct.unit_number] = struct
end

function TransmissionReceiver.change_channel(struct, new_name)
    local old_name = struct.channel
    TransmissionReceiver.remove_struct_from_table(struct)
    TransmissionReceiver.set_channel(struct, new_name)
end

function TransmissionReceiver.on_entity_removed(event)
  local entity = event.entity
  if entity and entity.valid and entity.name == TransmissionReceiver.name_receiver then
    TransmissionReceiver.destroy(TransmissionReceiver.from_entity(entity))
  end
end
Event.addListener(defines.events.on_entity_died, TransmissionReceiver.on_entity_removed)
Event.addListener(defines.events.on_robot_mined_entity, TransmissionReceiver.on_entity_removed)
Event.addListener(defines.events.on_player_mined_entity, TransmissionReceiver.on_entity_removed)

function TransmissionReceiver.on_player_opened_changed(event)
  local player = event.player
  local opened_new = event.opened_new
  local opened_old = event.opened_old
  local opened_gui_type_new = event.opened_gui_type_new
  local opened_gui_type_old = event.opened_gui_type_old

  if opened_new and opened_new.valid and opened_gui_type_new == defines.gui_type.entity and opened_new.name == TransmissionReceiver.name_receiver then
    TransmissionReceiver.gui_open(player, TransmissionReceiver.from_entity(opened_new))
  else
    -- the trick here is opeining the craft menu to cancel the other menu, then exiting the craft menu
    -- means that pressing e exits the custom gui
    if player.opened_gui_type and player.opened_gui_type ~= defines.gui_type.none then
      if player.gui.center[TransmissionReceiver.name_receiver_gui_root] then
          if player.opened_self then
            player.opened = nil
          end
          TransmissionReceiver.gui_close(player)
      end
    end
  end
end
Event.addListener("on_player_opened_changed", TransmissionReceiver.on_player_opened_changed, true)

function TransmissionReceiver.on_tick(struct)
  --for _, player in pairs(game.connected_players) do
  --  TransmissionReceiver.gui_update(player)
  --end

  if game.tick % (global.tick_skip or 1) ~= 0 then return end

  for _, struct in pairs(global.transmission_receivers) do
    if struct.main.valid and struct.combinator.valid then
      local channel = struct.channel
      if not global.signals_by_channel[channel] or struct.main.energy < TransmissionReceiver.min_energy then
        -- clear
        struct.combinator.get_control_behavior().parameters = {parameters = {}}
      else
        local parameters = {}
        local index = 1;
        for _, signals in pairs(global.signals_by_channel[channel]) do
          if index < 1000 then
            for _, signal_count in pairs(signals) do
                parameters[index] = {index=index, signal=signal_count.signal, count= math.min(2147483647, math.max(-2147483648, math.floor(signal_count.count or 1)))}
                index = index + 1
            end
          end
        end
        struct.combinator.get_control_behavior().parameters = {parameters = parameters}
      end
    else
      TransmissionReceiver.destroy(struct)
    end
  end
end
Event.addListener(defines.events.on_tick, TransmissionReceiver.on_tick)

function TransmissionReceiver.on_init(event)
    global.signals_by_channel = {}
    global.transmission_receivers = {} -- by unit number
    global.transmission_receivers_by_channel = {} -- by channel
end
Event.addListener("on_init", TransmissionReceiver.on_init, true)

return TransmissionReceiver
