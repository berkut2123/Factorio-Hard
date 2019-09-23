local PathRemote = {}

function PathRemote.show_gui(player)

  Path.player_set_active_path_surface_index(player)

  if player.gui.left.aai_path_gui == nil then
      local path_gui = player.gui.left.add{
        type = "flow",
        name = "aai_path_gui",
        direction = "horizontal"}
      local path_gui_frame = path_gui.add{
        type = "frame",
        name = "aai_path_gui_frame",
        direction = "vertical"}
      path_gui.add{
        type = "sprite-button", style = "aai_vehicles_unit-button-fixed",
        name = "aai_swap_unit_remote_control",
        sprite = "item/unit-remote-control",
        tooltip = {"aai-programmable-vehicles.swap-to-unit-remote-control"}
      }
      local title_flow = path_gui_frame.add{
        type = "flow",
        direction = "horizontal",
        name = "title_flow"
      }
      title_flow.add{
        type = "sprite",
        name = "aai_path_remote_control",
        sprite = "item/path-remote-control",
      }
      title_flow.add{
        type="label",
        caption = {"aai-programmable-vehicles.text-remote-paths"},
      }
  end
  local path_gui_frame = player.gui.left.aai_path_gui.aai_path_gui_frame

  -- path selected
  local path_id = Path.player_get_active_path_id(player)
  local force_name = player.force.name
  if path_id then
      -- individual path
      local path = Path.get_or_create(force_name, player.surface.index, path_id)
      Path.show_for_player(path, player.index)

      if path_gui_frame.paths_gui_flow then
          path_gui_frame.paths_gui_flow.destroy()
      end

      if not path_gui_frame.path_gui_flow then
        path_gui_frame.add{
          type = "flow",
          name = "path_gui_flow",
          caption = {"aai-programmable-vehicles.list_paths"},
          direction = "vertical",
        }
      end
      path_gui_flow = path_gui_frame.path_gui_flow

      if not path_gui_flow.list_paths then
        path_gui_flow.add{
          type = "button",
          name = "list_paths",
          caption = {"aai-programmable-vehicles.list_paths"},
        }
      end

      --[[if not path_gui_flow.current_path then
        path_gui_flow.add{
          type = "label",
          name = "current_path",
          caption = "Path ".. path_id
        }
      end
      path_gui_flow.current_path.caption = "Path ".. path_id
      ]]--

      if not path_gui_flow.path_name then
        path_gui_flow.add{
          type = "flow",
          name = "path_name",
          direction = "horizontal",
        }
      end
      local path_name = path_gui_flow.path_name

      if not path_name.path_name_input then
        path_name.add{
          type = "textfield",
          name = "path_name_input",
          text = 0,
          tooltip = {"aai-programmable-vehicles.path_name_tooltip"}
      }
      end
      path_name.path_name_input.text = path.name or ("Path " .. path.path_id)


      if not path_gui_flow.aai_path_gui_scroll_waypoints then
        path_gui_flow.add{
          type = "scroll-pane",
          name = "aai_path_gui_scroll_waypoints",
          direction = "vertical",
          style = "aai_vehicles_units-scroll-pane"
        }
      end
      local path_gui_scroll = path_gui_flow.aai_path_gui_scroll_waypoints
      path_gui_scroll.vertical_scroll_policy = "auto-and-reserve-space"


      if not path_gui_scroll.instructions then
        path_gui_scroll.add{
          type = "label",
          name = "instructions",
          caption = {"aai-programmable-vehicles.path_instructions"},
        }
        path_gui_scroll.add{
          type = "label",
          name = "instructions2",
          caption = {"aai-programmable-vehicles.path_instructions2"},
        }
        path_gui_scroll.add{
          type = "label",
          name = "instructions3",
          caption = {"aai-programmable-vehicles.path_instructions3"},
        }
        path_gui_scroll.instructions3.style.width = 300
        path_gui_scroll.instructions3.style.single_line = false
      end

      if not path_gui_scroll.loop_path then
        path_gui_scroll.add{
          type = "flow",
          name = "loop_path",
          direction = "horizontal",
        }
      end
      local loop_path = path_gui_scroll.loop_path

      if not loop_path.loop_path_checkbox then
        loop_path.add{
          type = "checkbox",
          name = "loop_path_checkbox",
          state = path.loop or false
        }
      end
      loop_path.loop_path_checkbox.state = path.loop or false

      if not loop_path.loop_path_label then
        loop_path.add{
          type = "label",
          name = "loop_path_label",
          --caption = "Loop Path",
          caption = {"aai-programmable-vehicles.path_loop_caption"},
          tooltip = {"aai-programmable-vehicles.path_loop_tooltip"}
        }
      end

      if not path_gui_scroll.show_start then
        path_gui_scroll.add{
          type = "flow",
          name = "show_start",
          direction = "horizontal",
        }
      end
      local show_start = path_gui_scroll.show_start

      if not show_start.show_start_checkbox then
        show_start.add{
          type = "checkbox",
          name = "show_start_checkbox",
          state = path.show_start or false,
          tooltip = {"aai-programmable-vehicles.path_show_start_tooltip"}
      }
      end
      show_start.show_start_checkbox.state = path.show_start or false

      if not show_start.show_start_label then
        show_start.add{
          type = "label",
          name = "show_start_label",
          caption = {"aai-programmable-vehicles.path_show_start_caption"},
          tooltip = {"aai-programmable-vehicles.path_show_start_tooltip"}
        }
      end


      if not path_gui_scroll.speed_limit then
        path_gui_scroll.add{
          type = "flow",
          name = "speed_limit",
          direction = "horizontal",
        }
      end
      local speed_limit = path_gui_scroll.speed_limit

      if not speed_limit.speed_limit_input then
        speed_limit.add{
          type = "textfield",
          name = "speed_limit_input",
          text = 0,
          tooltip = {"aai-programmable-vehicles.speed_limit_tooltip"}
      }
      end
      speed_limit.speed_limit_input.text = path.speed_limit and (path.speed_limit * 1000) or 0

      if not speed_limit.speed_limit_label then
        speed_limit.add{
          type = "label",
          name = "speed_limit_label",
          caption = {"aai-programmable-vehicles.speed_limit_caption"},
          tooltip = {"aai-programmable-vehicles.speed_limit_tooltip"}
        }
      end

      if not path_gui_scroll.waypoints_flow then
        path_gui_scroll.add{
          type = "flow",
          name = "waypoints_flow",
          direction = "vertical",
        }
      end
      local waypoints_flow = path_gui_scroll.waypoints_flow

      if waypoints_flow.children_names  then
        for _, name in pairs(waypoints_flow.children_names ) do
          waypoints_flow[name].destroy()
        end
      end

      local max_waypoint_id = Path.get_max_waypoint_id(path)
      local selected_waypoint_id = Path.player_get_active_path_waypoint_id(player)
      for i = 1, max_waypoint_id + 1 do
        local waypoint = path.waypoints[i]
        local caption = {"aai-programmable-vehicles.waypoint-caption", "", "", ""}
        caption[2] = "◉ " .. i .. " : "
        local waypoint_type = waypoint and waypoint.type or "none"
        local displayName = Util.firstToUpper(waypoint_type);
        if displayName == "None" then
          caption[2] = "       " .. i .. " : "
        end
        for _, pair in pairs(Path.waypoint_type_options) do
          if pair.name == waypoint_type then displayName = pair.display end
        end
        caption[3] = displayName
        if waypoint_type == "position" then
          caption[4] = " [X" .. string.format("%1d", waypoint.position.x ) .. ", Y" .. string.format("%1d", waypoint.position.y ) .. "]"
        elseif waypoint and waypoint.target_id then
          caption[4] = " [" .. string.format("%1d", waypoint.target_id) .. "]"
        end
        local waypoint_frame = waypoints_flow.add{
          type = "frame",
          name = "waypoint_" .. i,
          direction = "vertical",
        }
        local waypoint_buttons = waypoint_frame.add{
          type = "flow",
          name = "waypoint_buttons",
          direction = "horizontal",
        }
        waypoint_buttons.add{
          type = "label",
          name = "waypoint_label",
          caption = caption,
          style = "aai_vehicles_waypoint_label"
        }
        if i == selected_waypoint_id then
          waypoint_buttons.add{
            type = "button",
            name = "waypoint_deselect",
            caption = "▲",
            tooltip = {"aai-programmable-vehicles.waypoint_deselect"},
            style = "aai_vehicles_waypoint_button_small"
          }
        else
          waypoint_buttons.add{
            type = "button",
            name = "waypoint_select",
            caption = "▼",
            tooltip = {"aai-programmable-vehicles.waypoint_select"},
            style = "aai_vehicles_waypoint_button_small"
          }
        end
        waypoint_buttons.add{
          type = "button",
          name = "waypoint_insert_before",
          caption = "↰",
          tooltip = {"aai-programmable-vehicles.waypoint_insert_before"},
          style = "aai_vehicles_waypoint_button_small"
        }
        waypoint_buttons.add{
          type = "button",
          name = "waypoint_up",
          caption = "⇧",
          tooltip = {"aai-programmable-vehicles.waypoint_up"},
          style = "aai_vehicles_waypoint_button_small"
        }
        waypoint_buttons.add{
          type = "button",
          name = "waypoint_down",
          caption = "⇩",
          tooltip = {"aai-programmable-vehicles.waypoint_down"},
          style = "aai_vehicles_waypoint_button_small"
        }
        waypoint_buttons.add{
          type = "button",
          name = "waypoint_clear",
          caption = "☐",
          tooltip = {"aai-programmable-vehicles.waypoint_clear"},
          style = "aai_vehicles_waypoint_button_small"
        }
        waypoint_buttons.add{
          type = "button",
          name = "waypoint_delete",
          caption = "✖",
          tooltip = {"aai-programmable-vehicles.waypoint_delete"},
          style = "aai_vehicles_waypoint_button_small"
        }

        if i == selected_waypoint_id then
          -- frame version when selected

          waypoint_frame.add{
            type = "label",
            name = "instructions",
            caption = {"aai-programmable-vehicles.waypoint_selected_instructions"},
            style = "aai_vehicles_waypoint_instructions_label"
          }

          local waypoint_type_flow = waypoint_frame.add{
            type = "flow",
            name = "waypoint_type",
            direction = "horizontal",
          }
          waypoint_type_flow.add{
            type = "label",
            name = "dropdown_label",
            caption = {"aai-programmable-vehicles.waypoint_type_label"},
          }
          waypoint_type_flow.add(make_dropdown("dropdown_box", Path.waypoint_type_options, waypoint_type))

          local inner = waypoint_frame.add{
            type = "flow",
            name = "waypoint_inner",
            direction = "vertical",
          }

          if waypoint_type == "position" then
            local waypoint_x_flow = inner.add{
              type = "flow",
              name = "waypoint_x",
              direction = "horizontal",
            }
            waypoint_x_flow.add{
              type = "label",
              name = "input_label",
              caption = {"aai-programmable-vehicles.x_label"},
              caption = "X: "
            }
            waypoint_x_flow.add{
              type = "textfield",
              name = "input_textfield",
              text = waypoint.position.x
            }
            local waypoint_y_flow = inner.add{
              type = "flow",
              name = "waypoint_y",
              direction = "horizontal",
            }
            waypoint_y_flow.add{
              type = "label",
              name = "input_label",
              caption = {"aai-programmable-vehicles.y_label"},
            }
            waypoint_y_flow.add{
              type = "textfield",
              name = "input_textfield",
              text = waypoint.position.y
            }
            local waypoint_pathfind_flow = inner.add{
              type = "flow",
              name = "waypoint_pathfind",
              direction = "horizontal",
            }
            waypoint_pathfind_flow.add{
              type = "label",
              name = "input_label",
              caption = {"aai-programmable-vehicles.allow_pathing_label"},
            }
            --[[waypoint_pathfind_flow.add{
              type = "checkbox",
              name = "input_checkbox",
              state = waypoint.allow_pathfinding or false
            }]]--
            waypoint_pathfind_flow.add(make_dropdown("dropdown_pathfinding", Path.pathfinding_options, waypoint.allow_pathfinding or "always"))
          end

          if waypoint_type == "goto_unit_id"
            or waypoint_type == "goto_player_id"
            or waypoint_type == "goto_position_beacon_id"
            or waypoint_type == "goto_vehicle_depot_id" then
            local waypoint_entity_id_flow = inner.add{
              type = "flow",
              name = "waypoint_entity_id",
              direction = "horizontal",
            }
            waypoint_entity_id_flow.add{
              type = "label",
              name = "input_label",
              caption = {"aai-programmable-vehicles.colon_label"},
            }
            waypoint_entity_id_flow.add{
              type = "textfield",
              name = "input_textfield",
              text = waypoint.target_id
            }
            if waypoint_type == "goto_position_beacon_id" then waypoint_entity_id_flow.input_label.caption = "Position Beacon ID" end
            if waypoint_type == "goto_vehicle_depot_id" then waypoint_entity_id_flow.input_label.caption = "Vehcile Depot ID" end
            if waypoint_type == "goto_unit_id" then waypoint_entity_id_flow.input_label.caption = "Unit ID" end
            if waypoint_type == "goto_player_id" then waypoint_entity_id_flow.input_label.caption = "Player ID" end
          end

          waypoint_frame.add{
            type = "button",
            name = "waypoint_save",
            caption = {"aai-programmable-vehicles.save_changes"},
            caption = "Save Changes"
          }

        end
      end
  else
    -- no selected path

      Path.show_all_for_player(player)

      if path_gui_frame.paths_gui_flow then
          path_gui_frame.paths_gui_flow.destroy()
      end
      if path_gui_frame.path_gui_flow then
          path_gui_frame.path_gui_flow.destroy()
      end

      local paths_gui_flow = path_gui_frame.add{
        type = "flow",
        name = "paths_gui_flow",
        caption = "List Paths"
      }

      local path_gui_scroll = paths_gui_flow.add{
        type = "scroll-pane",
        name = "aai_path_gui_scroll_paths",
        direction = "vertical",
        style = "aai_vehicles_units-scroll-pane"}
      local force = player.force.name
      local surface_index = player.surface.index
      local paths = Path.get_surface_paths(player.force.name, surface_index) or {}
      local max_path_id = 0;
      for _, path in pairs(paths) do
        max_path_id = math.max(_, max_path_id)
      end
      local i = 1
      for i = 1, max_path_id do
        local path = paths[i]

        local path_button_container =path_gui_scroll.add{
          type = "flow",
          name = "path_" .. i,
          direction = "horizontal",
        }
        local pathname = "Path " .. i
        local waypoints = 0
        if path then
          if path.name then pathname = path.name end
          if path.waypoints then waypoints = table_size(path.waypoints) end
        end
        local path_button = path_button_container.add{
          type = "button",
          name = "path_" .. i,
          caption = pathname .."  (" .. waypoints ..")"
        }
        path_button.style.horizontal_align = "left"

        path_button_container.add{
          type = "button",
          name = "Path.clear",
          caption = "✖",
          tooltip = {"aai-programmable-vehicles.Path.clear"},
          style = "aai_vehicles_waypoint_button_small"
        }

      end
      local add_path = path_gui_scroll.add{
        type = "button",
        name = "path_" .. (max_path_id+1),
        caption = "Add Path"
      }
      add_path.style.horizontal_align = "left"
      --[[
        list paths mode: path id, number of waypoints
        paths in list show up to the last populated id +1
        Gaps are shown with 0 waypoints

        Path detail mode:
        Path setting: Loop. Units can have their own setting to override path looping, but this is the default value
        Show all waypoint ids, list gaps as 'none'
        each waypoint has:
          type: position / goto_something
          position if position
          surface if position
          target_id if speciying a target type
        maybe if the waypoint is invalid show it in red?
        add buttons for: edit, move up, move down, insert above, clear, remove,


      ]]--
    end
end


function PathRemote.close_gui(player)
  if player.gui.left.aai_path_gui ~= nil then
      player.gui.left.aai_path_gui.destroy()
      -- remove path visualisations
      Path.hide_all_from_player(player)
  end
end

function PathRemote.on_player_selected_area(event)
    local alt = event.name == defines.events.on_player_alt_selected_area
    if (event.item == "path-remote-control") then
      local player = game.players[event.player_index]
      if global.restrict_remote_actions_to_player_ids then
        if not Util.table_contains(global.restrict_remote_actions_to_player_ids, event.player_index) then
          player.print({"aai-programmable-vehicles.restricted-remote-action"})
          return
        end
      end
      -- activate a path
      local active_path_id = Path.player_get_active_path_id(player) or 1
      Path.player_set_active_path_id(player, active_path_id)
      local area = event.area
      if alt then
        -- TODO: remove point
        local path = Path.get_or_create(player.force.name, player.surface.index, active_path_id)
        for _, waypoint in pairs(path.waypoints) do
          if waypoint.type == "position" then
            if waypoint.position.x >= area.left_top.x
              and waypoint.position.x <= area.right_bottom.x
              and waypoint.position.y >= area.left_top.y
              and waypoint.position.y <= area.right_bottom.y then
                -- waypoint is in the area
                path.waypoints[_] = nil
            end
          end
        end
        Path.update_visualisation(path)
        PathRemote.show_gui(player)
      else

        local waypoint_id = Path.player_get_active_path_waypoint_id(player)
        local follow = remote_find_selected_area_target(player, area)
        if follow.follow_type and follow.follow_target then
            if follow.follow_type == "player" then
              Path.add_waypoint(player.force.name, player.surface.index, active_path_id, {
                type = "goto_player_id",
                target_id = follow.follow_target.index
              }, waypoint_id)
            elseif follow.follow_type == "unit" then
              Path.add_waypoint(player.force.name, player.surface.index, active_path_id, {
                type = "goto_unit_id",
                target_id = follow.follow_target.unit_id
              }, waypoint_id)
            end
        else
          Path.add_waypoint(player.force.name, player.surface.index, active_path_id, {
            type = "position",
            position = { -- middle position
                x = (area.left_top.x + area.right_bottom.x) / 2,
                y = (area.left_top.y + area.right_bottom.y) / 2
            }
          }, waypoint_id)
        end
        PathRemote.show_gui(player)
      end
    end
end
Event.addListener(defines.events.on_player_selected_area, PathRemote.on_player_selected_area)
Event.addListener(defines.events.on_player_alt_selected_area, PathRemote.on_player_selected_area)

function PathRemote.on_player_cursor_stack_changed(event)
  local player = game.players[event.player_index]
  if player.cursor_stack.valid_for_read and player.cursor_stack.name == "path-remote-control" then
    PathRemote.show_gui(player)
  else
    PathRemote.close_gui(player)
  end
end
Event.addListener(defines.events.on_player_cursor_stack_changed, PathRemote.on_player_cursor_stack_changed)


function PathRemote.on_gui_text_changed(event)
  local player_index = event.player_index
  local player = game.players[player_index]
  local element = event.element
  local parent = event.element.parent

  if gui_element_or_parent(element, "aai_path_gui") then
    if element.name == "path_name_input" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index, path_id)
        if element.text then
          if element.text == "" then
            path.name = "Path " .. path.path_id
          else
            path.name = element.text
          end
          Path.update_visualisation(path)
        end
      return
    elseif element.name == "speed_limit_input" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index, path_id)
        path.speed_limit = (Util.string_to_number(element.text) or 0) / 1000
        PathRemote.show_gui(player)
      return
    end
  end
end
Event.addListener(defines.events.on_gui_text_changed, PathRemote.on_gui_text_changed)

function PathRemote.on_gui_selection_state_changed(event)
  local player_index = event.player_index
  local player = game.players[player_index]
  local element = event.element
  local parent = event.element.parent

  if gui_element_or_parent(element, "aai_path_gui") then

    if element.name == "dropdown_box" and element.parent.name == "waypoint_type" then
      local inner = element.parent.parent.waypoint_inner
      if inner.children_names  then
        for _, name in pairs(inner.children_names ) do
          inner[name].destroy()
        end
      end
      local selected_value = get_dropdown_value(Path.waypoint_type_options, element.selected_index)

      if selected_value == "position" then
          local waypoint_x_flow = inner.add{
            type = "flow",
            name = "waypoint_x",
            direction = "horizontal",
          }
          waypoint_x_flow.add{
            type = "label",
            name = "input_label",
            caption = "X: "
          }
          waypoint_x_flow.add{
            type = "textfield",
            name = "input_textfield",
            text = ""
          }
          local waypoint_y_flow = inner.add{
            type = "flow",
            name = "waypoint_y",
            direction = "horizontal",
          }
          waypoint_y_flow.add{
            type = "label",
            name = "input_label",
            caption = "Y: "
          }
          waypoint_y_flow.add{
            type = "textfield",
            name = "input_textfield",
            text = ""
          }
          local waypoint_pathfind_flow = inner.add{
            type = "flow",
            name = "waypoint_pathfind",
            direction = "horizontal",
          }
          waypoint_pathfind_flow.add{
            type = "label",
            name = "input_label",
            caption = "Allow Pathfinding: "
          }
          --[[waypoint_pathfind_flow.add{
            type = "checkbox",
            name = "input_checkbox",
            state = waypoint and waypoint.allow_pathfinding or false
          }]]--
          waypoint_pathfind_flow.add(make_dropdown("dropdown_pathfinding", Path.pathfinding_options, waypoint and waypoint.allow_pathfinding or "always"))
      elseif selected_value == "goto_position_beacon_id"
          or selected_value == "goto_vehicle_depot_id"
          or selected_value == "goto_unit_id"
          or selected_value == "goto_player_id" then
            local waypoint_entity_id_flow = inner.add{
              type = "flow",
              name = "waypoint_entity_id",
              direction = "horizontal",
            }
            waypoint_entity_id_flow.add{
              type = "label",
              name = "input_label",
              caption = ": "
            }
            waypoint_entity_id_flow.add{
              type = "textfield",
              name = "input_textfield",
              text = ""
            }
            if selected_value == "goto_position_beacon_id" then waypoint_entity_id_flow.input_label.caption = "Position Beacon ID" end
            if selected_value == "goto_vehicle_depot_id" then waypoint_entity_id_flow.input_label.caption = "Vehcile Depot ID" end
            if selected_value == "goto_unit_id" then waypoint_entity_id_flow.input_label.caption = "Unit ID" end
            if selected_value == "goto_player_id" then waypoint_entity_id_flow.input_label.caption = "Player ID" end
      else -- assume "none"
        -- clear
      end
      return
    end
  end
end
Event.addListener(defines.events.on_gui_selection_state_changed, PathRemote.on_gui_selection_state_changed)



function PathRemote.on_gui_click(event)

  if not (event.element and event.element.valid) then return end
  local player_index = event.player_index
  local player = game.players[player_index]
  local element = event.element
  local parent = event.element.parent

  --[[
  move up
  move down
  select & expand / deselect & collapse
  insert before
  delete
  ]]

  if gui_element_or_parent(element, "aai_path_gui") then
    if not (global.players[player_index].selected_path_surface_index and player.surface.index == global.players[player_index].selected_path_surface_index) then
      -- ensure the correct surface paths set
      PathRemote.close_gui(player)
      PathRemote.show_gui(player)
      return
    end

    if element.name == "aai_swap_unit_remote_control" then
      player.remove_item({name="path-remote-control"})
      player.remove_item({name="unit-remote-control"})
      player.cursor_stack.set_stack({name="unit-remote-control"})
      return
    elseif element.name == "aai_swap_path_remote_control" then
      player.remove_item({name="path-remote-control"})
      player.remove_item({name="unit-remote-control"})
      player.cursor_stack.set_stack({name="path-remote-control"})
      return
    elseif element.name == "list_paths" then
      Path.show_all_for_player(player)
      Path.player_set_active_path_id(player, nil)
      PathRemote.show_gui(player)
      return
    elseif element.name == "loop_path" or element.parent.name == "loop_path" then
      local path_id = Path.player_get_active_path_id(player)
      local force_name = player.force.name
      local path = Path.get_or_create(force_name, player.surface.index, path_id)
      path.loop = not path.loop
      Path.update_visualisation(path)
      PathRemote.show_gui(player)
    elseif element.name == "show_start" or element.parent.name == "show_start" then
      local path_id = Path.player_get_active_path_id(player)
      local force_name = player.force.name
      local path = Path.get_or_create(force_name, player.surface.index, path_id)
      path.show_start = not path.show_start
      Path.update_visualisation(path)
      PathRemote.show_gui(player)
    elseif parent and parent.name == "aai_path_gui_scroll_paths" and element.type == "button" then
      -- new path
      Path.hide_all_from_player(player)
      Path.player_set_active_path_id(player, Util.string_to_number(Util.replace(element.name, "path_", "")))
      PathRemote.show_gui(player)
    elseif parent and parent.parent and parent.parent.name == "aai_path_gui_scroll_paths" then
      if element.name=="Path.clear" then
        -- reset path
        Path.clear(player.force.name, player.surface.index, Util.string_to_number(Util.replace(parent.name, "path_", "")))

        PathRemote.show_gui(player)
      else
        Path.hide_all_from_player(player)
        Path.player_set_active_path_id(player, Util.string_to_number(Util.replace(parent.name, "path_", "")))
        PathRemote.show_gui(player)
      end
      return
    elseif element.name == "waypoint_select" or element.waypoint_select or element.name == "waypoint_label" then
      Path.player_set_active_path_waypoint_id(player, Util.string_to_number(Util.replace(element.parent.parent.name, "waypoint_", "")))
      PathRemote.show_gui(player)
      return
    elseif element.name == "waypoint_deselect" then
      Path.player_set_active_path_waypoint_id(player, nil)
      PathRemote.show_gui(player)
      return
    elseif element.name == "waypoint_remove" or element.name == "waypoint_clear" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index, path_id)
        path.waypoints[Util.string_to_number(Util.replace(element.parent.parent.name, "waypoint_", ""))] = nil
        Path.player_set_active_path_waypoint_id(player, nil)
        Path.update_visualisation(path)
        PathRemote.show_gui(player)
        return
    elseif element.name == "waypoint_delete" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index, path_id)
        local waypoint_id = Util.string_to_number(Util.replace(element.parent.parent.name, "waypoint_", ""))
        path.waypoints[waypoint_id] = nil
        Path.player_set_active_path_waypoint_id(player, nil)
        for _, waypoint in pairs(path.waypoints) do
          if _ > waypoint_id then
            path.waypoints[_ - 1] = waypoint
            path.waypoints[_] = nil
          end
        end
        Path.update_visualisation(path)
        PathRemote.show_gui(player)
        return
    elseif element.name == "waypoint_up" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index, path_id)
        local waypoint_id = Util.string_to_number(Util.replace(element.parent.parent.name, "waypoint_", ""))
        if waypoint_id > 1 then
          local temp = path.waypoints[waypoint_id - 1]
          path.waypoints[waypoint_id - 1] = path.waypoints[waypoint_id]
          path.waypoints[waypoint_id] = temp
          Path.player_set_active_path_waypoint_id(player, nil)
          PathRemote.show_gui(player)
          Path.update_visualisation(path)
        end
        return
    elseif element.name == "waypoint_down" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index, path_id)
        local waypoint_id = Util.string_to_number(Util.replace(element.parent.parent.name, "waypoint_", ""))
        local temp = path.waypoints[waypoint_id + 1]
        path.waypoints[waypoint_id + 1] = path.waypoints[waypoint_id]
        path.waypoints[waypoint_id] = temp
        Path.player_set_active_path_waypoint_id(player, nil)
        PathRemote.show_gui(player)
        Path.update_visualisation(path)
        return
    elseif element.name == "waypoint_insert_before" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index,path_id)
        local waypoint_id = Util.string_to_number(Util.replace(element.parent.parent.name, "waypoint_", ""))
        local waypoint_max_id = Path.get_max_waypoint_id(path)
        for i = waypoint_max_id, waypoint_id, -1 do
          path.waypoints[i + 1] = path.waypoints[i]
        end
        path.waypoints[waypoint_id] = nil
        Path.player_set_active_path_waypoint_id(player, nil)
        PathRemote.show_gui(player)
        Path.update_visualisation(path)
        return
    elseif element.name == "waypoint_save" then
        local path_id = Path.player_get_active_path_id(player)
        local force_name = player.force.name
        local path = Path.get_or_create(force_name, player.surface.index, path_id)
        local waypoint_element = element.parent
        local waypoint_id = Util.string_to_number(Util.replace(waypoint_element.name, "waypoint_", ""))
        local waypoint_type = get_dropdown_value(Path.waypoint_type_options, waypoint_element.waypoint_type.dropdown_box.selected_index)
        if waypoint_type == "position" then
          local x = tonumber(waypoint_element.waypoint_inner.waypoint_x.input_textfield.text) or 0
          local y = tonumber(waypoint_element.waypoint_inner.waypoint_y.input_textfield.text) or 0
          local allow_pathfinding = "auto"
          if waypoint_element.waypoint_inner.waypoint_pathfind.dropdown_pathfinding then
            allow_pathfinding = get_dropdown_value(Path.pathfinding_options, waypoint_element.waypoint_inner.waypoint_pathfind.dropdown_pathfinding.selected_index)
          end
          Path.add_waypoint(force_name, player.surface.index, path_id, {
            type = "position",
            surface = player.surface,
            position = { x = x, y = y },
            allow_pathfinding = allow_pathfinding
          }, waypoint_id)
        elseif waypoint_type == "goto_position_beacon_id"
          or waypoint_type == "goto_vehicle_depot_id"
          or waypoint_type == "goto_unit_id"
          or waypoint_type == "goto_player_id" then

          local target_id = Util.string_to_number(waypoint_element.waypoint_inner.waypoint_entity_id.input_textfield.text)
          if target_id and target_id > 0 then
            Path.add_waypoint(force_name, player.surface.index, path_id, {
              type = waypoint_type,
              surface = player.surface,
              target_id = target_id,
            }, waypoint_id)
          else
            path.waypoints[waypoint_id] = nil
          end
        else
          path.waypoints[waypoint_id] = nil
        end
        PathRemote.show_gui(player)
        return
    end
  end
end
Event.addListener(defines.events.on_gui_click, PathRemote.on_gui_click)

function PathRemote.on_lua_shortcut (event)
  if event.player_index
    and game.players[event.player_index]
    and game.players[event.player_index].connected then
      if event.prototype_name == "path-remote-control" then
        game.players[event.player_index].remove_item({name="path-remote-control"})
        game.players[event.player_index].cursor_stack.set_stack({name="path-remote-control"})
      end
  end
end
Event.addListener(defines.events.on_lua_shortcut, PathRemote.on_lua_shortcut)

function PathRemote.on_player_changed_surface(event)
  local player = game.players[event.player_index]
  if player and player.gui.left.aai_path_gui then
    Path.player_set_active_path_surface_index(player)
    PathRemote.close_gui(player)
    PathRemote.show_gui(player)
  end
end
Event.addListener(defines.events.on_player_changed_surface, PathRemote.on_player_changed_surface)

return PathRemote
