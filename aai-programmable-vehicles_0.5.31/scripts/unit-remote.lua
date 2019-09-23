local UnitRemote = {}

function UnitRemote.show_gui(player)
    if player.gui.left.remote_selected_units == nil then
        update_all_unit_type_ids()

        local remote_selected_units = player.gui.left.add{
          type = "flow",
          name = "remote_selected_units",
          direction = "horizontal"}
        local remote_selected_units_frame = remote_selected_units.add{
          type = "frame",
          name = "remote_selected_units_frame",
          direction = "vertical"}
        remote_selected_units.add{
          type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
          name = "aai_swap_path_remote_control",
          sprite = "item/path-remote-control",
          tooltip = {"aai-programmable-vehicles.swap-to-path-remote-control"}
        }
        local title_flow = remote_selected_units_frame.add{
          type = "flow",
          direction = "horizontal",
          name = "title_flow"
        }
        title_flow.add{
          type = "sprite",
          name = "aai_unit_remote_control",
          sprite = "item/unit-remote-control",
        }
        title_flow.add{
          type="label",
          caption = {"aai-programmable-vehicles.text-remote-selected-units"},
        }
        local remote_selected_units_scroll = remote_selected_units_frame.add{
          type = "scroll-pane",
          name = "remote_selected_units_scroll",
          direction = "vertical",
          style = "aai_vehicles_units-scroll-pane"}
        if global.player_selected_units and global.player_selected_units[player.index] then
            for _, selected_unit in pairs(global.player_selected_units[player.index]) do
                local unit = selected_unit.unit
                local unit_type = unit_get_type(unit)
                local prototype = game.entity_prototypes[unit_type.vehicle_whole]
                local item_name = prototype.items_to_place_this and next(prototype.items_to_place_this)

                -- remove, typeid, unit_id, data
                local unit_frame = remote_selected_units_scroll.add{
                    type = "frame",
                    name = unit.unit_id,
                    direction = "horizontal",
                    style = "aai_vehicles_unit-frame"
                }
                local unit_flow_1 = unit_frame
                unit_flow_1.add{
                    type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                    name = "unit_type_id",
                    sprite = "virtual-signal/"..unit_type.signal.name,
                    tooltip = {"aai-programmable-vehicles.unit-of-type", unit.unit_type_id}
                }
                unit_flow_1.add{
                  type = "label", caption = unit.unit_type_id, name = "unit_type_id_value", style = "aai_vehicles_unit-number-label"
                }

                unit_flow_1.add{
                    type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                    name = "unit_id",
                    sprite = "virtual-signal/signal-id",
                    tooltip = {"aai-programmable-vehicles.unit-id", unit.unit_id}
                }
                unit_flow_1.add{
                  type = "label", caption = unit.unit_id, name = "unit_id_value", style = "aai_vehicles_unit-number-label"
                }

                unit_flow_1.add{
                    type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                    name = "unit_data",
                    sprite = "virtual-signal/chip",
                    tooltip = {"aai-programmable-vehicles.edit-unitdata"}
                }

                if unit.active_state == "active" then
                  unit_flow_1.add{
                      type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                      name = "unit_state_on",
                      sprite = "virtual-signal/active-state-on",
                      tooltip = {"aai-programmable-vehicles.ai-on"}
                  }
                elseif unit.active_state == "inactive" then
                  unit_flow_1.add{
                      type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                      name = "unit_state_off",
                      sprite = "virtual-signal/active-state-off",
                      tooltip = {"aai-programmable-vehicles.ai-off"}
                  }
                elseif unit.active_state == "auto_inactive" then
                  unit_flow_1.add{
                      type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                      name = "unit_state_auto",
                      sprite = "virtual-signal/active-state-auto",
                      tooltip = {"aai-programmable-vehicles.ai-auto-off"}
                  }
                else
                  unit_flow_1.add{
                      type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
                      name = "unit_state_auto",
                      sprite = "virtual-signal/active-state-auto",
                      tooltip = {"aai-programmable-vehicles.ai-auto-on"}
                  }
                end
            end
        end
    end
end

function UnitRemote.hide_gui(player)
    if player.gui.left.remote_selected_units ~= nil then
        player.gui.left.remote_selected_units.destroy()
    end
end


function UnitRemote.deselect_unit(player, remove_unit_id)
    remove_unit_id = tonumber(remove_unit_id)
    UnitRemote.hide_gui(player)
    if not global.player_selected_units then
        global.player_selected_units = {}
    elseif global.player_selected_units[player.index] then
        local selected_units = global.player_selected_units[player.index]
        for unit_id, selected_unit in pairs(selected_units) do
            if unit_id == remove_unit_id then
              selected_unit.unit.show_selection_to_players[player.index] = nil
              selected_unit.unit.show_path_to_players[player.index] = nil
              selected_units[unit_id] = nil
              unit_update_selection_graphics(selected_unit.unit)
            end
        end
    end
    UnitRemote.show_gui(player)
end


function UnitRemote.deselect_units(player)

    UnitRemote.hide_gui(player)

    if not global.player_selected_units then
        global.player_selected_units = {}
    elseif global.player_selected_units[player.index] then
        local selected_units = global.player_selected_units[player.index]
        for unit_id, selected_unit in pairs(selected_units) do
          if selected_unit.unit.show_selection_to_players then
            selected_unit.unit.show_selection_to_players[player.index] = nil
          end
          if selected_unit.unit.show_path_to_players then
            selected_unit.unit.show_path_to_players[player.index] = nil
          end
          selected_units[unit_id] = nil
          unit_update_selection_graphics(selected_unit.unit)
        end
        global.player_selected_units[player.index] = nil
    end
end


function UnitRemote.select_units(player, units)

  UnitRemote.deselect_units(player)

  global.player_selected_units[player.index] = {}
  for _, unit in pairs(units) do
      global.player_selected_units[player.index][unit.unit_id] = {unit = unit, selection = nil}
      unit.show_selection_to_players = unit.show_selection_to_players or {}
      unit.show_selection_to_players[player.index] = player.index
      unit.show_path_to_players = unit.show_selection_to_players or {}
      unit.show_path_to_players[player.index] = player.index
      unit_update_selection_graphics(unit)
  end

  UnitRemote.show_gui(player)

end


function UnitRemote.on_player_selected_area(event)
    local alt = event.name == defines.events.on_player_alt_selected_area
    if (event.item == "unit-remote-control") then
        local player = game.players[event.player_index]
        if alt then
            if global.restrict_remote_actions_to_player_ids then
              if not Util.table_contains(global.restrict_remote_actions_to_player_ids, event.player_index) then
                player.print({"aai-programmable-vehicles.restricted-remote-action"})
                return
              end
            end
            -- move_to
            if global.player_selected_units and global.player_selected_units[event.player_index] then
                local selected_units = {} -- make array
                for _, s in pairs(global.player_selected_units[event.player_index]) do
                  table.insert(selected_units, s)
                end
                if #selected_units == 0 then return end
                local area = event.area
                local follow = remote_find_selected_area_target(player, area, selected_units)
                local follow_target = follow.follow_target
                local follow_type = follow.follow_type
                if follow_target then
                    if #selected_units == 1 then
                        if follow_type == "player" then
                          unit_set_command({
                              unit = selected_units[1].unit,
                              follow_target_type = follow_type,
                              follow_target_player = follow_target
                              -- use default distance
                          })
                        elseif follow_type == "unit" then
                          unit_set_command({
                              unit = selected_units[1].unit,
                              follow_target_type = follow_type,
                              follow_target_unit_id = follow_target.unit_id
                              -- use default distance
                          })
                        end
                    else
                        -- distribute vehicles in a circle around the target.
                        local base_command
                        if follow_type == "player" then
                          base_command = {
                              follow_target_type = follow_type,
                              follow_target_player = follow_target
                          }
                        elseif follow_type == "unit" then
                          base_command = {
                              follow_target_type = follow_type,
                              follow_target_unit_id = follow_target.unit_id
                          }
                        end
                        base_command.follow_target_range = 4 + #selected_units / 2
                        local i = 0
                        for _, selected_unit in pairs(selected_units) do
                            if selected_unit.unit and selected_unit.unit.vehicle and selected_unit.unit.vehicle.valid then
                                i = i + 1
                                local command = table.deepcopy(base_command)
                                command.unit = selected_unit.unit
                                command.follow_target_orientation = i / #selected_units
                                unit_set_command(command)
                            end
                        end
                    end
                else
                  -- not following a unit. Maybe assign to a parth start.
                  local assign_path_id = nil
                  if math.abs(area.right_bottom.x - area.left_top.x) < follow_max_selection_box
                    and math.abs(area.right_bottom.y - area.left_top.y) < follow_max_selection_box then
                      -- this is a small selection
                      local force_name = player.force.name
                      local surface_index = player.surface.index
                      if global.forces
                       and global.forces[force_name]
                       and global.forces[force_name].surface_paths
                       and global.forces[force_name].surface_paths[surface_index]
                       and global.forces[force_name].surface_paths[surface_index].paths then
                        for path_id, path in pairs(global.forces[force_name].surface_paths[surface_index].paths) do
                          if path.waypoints and path.waypoints[1] and path.show_start
                            and path.waypoints[1] and path.waypoints[1].type == "position" then
                              if path.waypoints[1].position.x > area.left_top.x -0.5
                                and path.waypoints[1].position.x < area.right_bottom.x +0.5
                                and path.waypoints[1].position.y > area.left_top.y -0.5
                                and path.waypoints[1].position.y < area.right_bottom.y +0.5 then
                                  assign_path_id = path_id
                                  break
                                end
                            end
                        end
                      end
                  end
                  if assign_path_id then
                      -- assign the path to units
                      local base_command = {
                          path_id = assign_path_id
                      }
                      for _, selected_unit in pairs(selected_units) do
                          if selected_unit.unit and selected_unit.unit.vehicle and selected_unit.unit.vehicle.valid then
                              local command = table.deepcopy(base_command)
                              command.unit = selected_unit.unit
                              unit_set_command(command)
                          end
                      end
                  else
                    local massed_data = {}
                    for _, selected_unit in pairs(selected_units) do
                        if selected_unit.unit and selected_unit.unit.vehicle and selected_unit.unit.vehicle.valid then
                            local unit = selected_unit.unit
                            local unit_type = unit_get_type(unit)
                            local try_position = { -- random spaced in selected area
                                x = math.floor(event.area.left_top.x + (event.area.right_bottom.x - event.area.left_top.x) * (math.random(100)/100)),
                                y = math.floor(event.area.left_top.y + (event.area.right_bottom.y - event.area.left_top.y) * (math.random(100)/100))
                            }

                            if unit_type.is_miner
                              and Util.vectors_delta_length(unit.vehicle.position, try_position) < 100
                              and #(unit.vehicle.surface.find_entities_filtered{type="tree",
                                area={{try_position.x -1.5, try_position.y -1.5}, {try_position.x +1.5, try_position.y +1.5}}}) > 0 then
                                -- miners should ignore trees but buffer does not
                                unit_set_command({
                                    unit = selected_unit.unit,
                                    target_position_direct = try_position
                                })
                            elseif #selected_units == 1 then
                              try_position = { -- middle position
                                  x = (event.area.left_top.x + event.area.right_bottom.x) / 2,
                                  y = (event.area.left_top.y + event.area.right_bottom.y) / 2
                              }
                              unit_set_command({
                                      unit = unit,
                                      target_position = try_position
                                  })
                            else
                                local safe_position = unit.vehicle.surface.find_non_colliding_position(unit_type.buffer, try_position, 20, 2)
                                safe_position = safe_position or try_position
                                massed_data[unit.unit_id] = {
                                    unit = unit,
                                    buffer = unit.vehicle.surface.create_entity{name = unit_type.buffer, position = safe_position}, -- reserve the space
                                    target_position = safe_position,
                                }
                            end

                        end
                    end
                    for _, move_data in pairs(massed_data) do
                        move_data.buffer.destroy()
                        unit_set_command({
                                unit = move_data.unit,
                                target_position = move_data.target_position
                            })
                    end
                  end
                end
                -- check to see if the selection contains inactive units
                -- check to see if the selection contains unpowered units
                local inactives = 0
                local unpowered = 0
                for _, selected_unit in pairs(selected_units) do
                  if selected_unit.unit then
                    if unit_is_active(selected_unit.unit) == false then
                      inactives = inactives + 1
                    end
                    if not unit_has_energy(selected_unit.unit) then
                      unpowered = unpowered + 1
                    end
                  end
                end
                if inactives > 0 then
                  player.print({"aai-programmable-vehicles.command-inactive-vehicles"})
                end
                if unpowered > 0 then
                  player.print({"aai-programmable-vehicles.command-unpowered-vehicles"})
                end
            end
        else
            -- select
            local area = event.area
            -- non-zero
            area.left_top.x = area.left_top.x - 0.01
            area.left_top.y = area.left_top.y - 0.01
            area.right_bottom.x = area.right_bottom.x + 0.01
            area.right_bottom.y = area.right_bottom.y + 0.01
            local select_entities = player.surface.find_entities_filtered{
                area = area,
                type = "car",
                force = player.force
            }
            local units = {}
            for _, entity in pairs(select_entities) do
                local unit = unit_find_from_entity(entity)
                if unit then
                    table.insert(units, unit)
                end
            end
            UnitRemote.select_units(player, units)
        end
    end
end
Event.addListener(defines.events.on_player_selected_area, UnitRemote.on_player_selected_area)
Event.addListener(defines.events.on_player_alt_selected_area, UnitRemote.on_player_selected_area)


function UnitRemote.on_player_cursor_stack_changed(event)
  local player = game.players[event.player_index]
  if player.cursor_stack.valid_for_read then
    if player.cursor_stack.name == "unit-remote-control" then
      UnitRemote.show_gui(player)
    else
      UnitRemote.deselect_units(player)
    end
  else
    UnitRemote.deselect_units(player)
  end
end
Event.addListener(defines.events.on_player_cursor_stack_changed, UnitRemote.on_player_cursor_stack_changed)

function PathRemote.on_player_changed_surface(event)
  local player = game.players[event.player_index]
  UnitRemote.deselect_units(player)
end
Event.addListener(defines.events.on_player_changed_surface, PathRemote.on_player_changed_surface)


-- Saves the current selection, using the given name
-- (per-player)
function UnitRemote.save_unit_group(player, name)
  global.player_selected_units = global.player_selected_units or {}

  local unit_sel = global.player_selected_units[player.index]
  if unit_sel == nil or table_size(unit_sel) == 0 then
    -- No units selected, User mistakenly used this shortcut
    player.print({"aai-programmable-vehicles.error-no-units-selected"})
    return
  end

  if not global.unit_selection_groups then global.unit_selection_groups = {} end
  if not global.unit_selection_groups[player.index] then global.unit_selection_groups[player.index] = {} end

  local selection = {}
  for _i, unit in pairs(unit_sel) do
    selection[unit.unit.unit_id] = unit.unit
  end

  global.unit_selection_groups[player.index][name] = selection
end

-- Loads the saved selection
-- (per-player)
function UnitRemote.load_unit_group(player, name)
  if not (global.unit_selection_groups and global.unit_selection_groups[player.index]) then
    return UnitRemote.deselect_units(player)
  end

  local unit_sel = global.unit_selection_groups[player.index][name]

  if unit_sel == nil then
    return UnitRemote.deselect_units(player)
  end

  local units = {}
  for unit_id, unit in pairs(unit_sel) do
    -- Make sure dead units aren't selected
    if unit.vehicle and unit.vehicle.valid then
      table.insert(units, unit)
    end
  end

  UnitRemote.select_units(player, units)
end


return UnitRemote
