local Path = {}

--[[
Path.waypoint_type_options = {
    {"none", "None"},
    {"position", "Position"},
    {"goto_position_beacon_id", "Position Beacon"},
    {"goto_vehicle_depot_id", "Vehicle Depot"},
    {"goto_unit_id", "Unit"},
    {"goto_player_id", "Player"},
}]]--

Path.waypoint_type_options = {
  { name = "none", display = {"aai-programmable-vehicles.waypoint-type-none"}},
  { name = "position", display = {"aai-programmable-vehicles.waypoint-type-position"}},
  { name = "goto_position_beacon_id", display = {"aai-programmable-vehicles.waypoint-type-position-beacon"}},
  { name = "goto_vehicle_depot_id", display = {"aai-programmable-vehicles.waypoint-type-vehicle-depot"}},
  { name = "goto_unit_id", display = {"aai-programmable-vehicles.waypoint-type-unit"}},
  { name = "goto_player_id", display = {"aai-programmable-vehicles.waypoint-type-player"}},
}

Path.pathfinding_options = {
  { name = "auto", display = {"aai-programmable-vehicles.pathfind-auto"}},
  { name = "always", display = {"aai-programmable-vehicles.pathfind-always"}},
  { name = "never", display = {"aai-programmable-vehicles.pathfind-never"}},
}

--[[
TODO:
Add unit waypoint system.

Add buttons to remote controller:

Stop. Selected units stop.
Single Commands. Replace current commands.
Queue Commands. Follow commands in sequence.
Loop Commands. Follow commands in sequence then loop.
Commands are added to temporary Order Set.

Unit controller ability to set Order Set.
Order Set has a number: Order Set 0.
Order Sets have a set of commands that are performed in sequence
Order Sets loop by default, if loop is disabled then the unit stays on the final command
If a different command is activated then the unit goas back to an order set the unit restarts the order set from the beginning.
  i.e. they don't remember where there were in the set if the sequence is broken.

Additional signals required:
  Order Set Signal
  Set Command Signal
  Order Set Commands Signal
  Loop signal: loop the Order Set: positive = forwards, negative = backwards
  Stop Signal: Do not loop the Order Set: Stop at the end of the loop. Also use on a unit to stop.

Waypoint beacons:
A structure (constant combinator) with a waypoint beacon id and xy coordinates.
When placed a waypoint beacon is given an id based on an incrementing sequence.
You can change a waypoint beacon's id.
If multiple beacons have the same id the once placed first functions.
You can specify waypoint beacons in vehicle and order set commands, the vehicle moves to the waypoint position.

]]--

function Path.get_force_paths(force_name)
  if not global.forces then global.forces = {} end
  if not global.forces[force_name] then global.forces[force_name] = {} end
  if not global.forces[force_name].surface_paths then global.forces[force_name].surface_paths = {} end
  return global.forces[force_name].surface_paths
end

function Path.get_surface_paths(force_name, surface_index)
  if global.forces
    and global.forces[force_name]
    and global.forces[force_name].surface_paths
    and global.forces[force_name].surface_paths[surface_index]
    and global.forces[force_name].surface_paths[surface_index].paths then
      return global.forces[force_name].surface_paths[surface_index].paths
  end
end

function Path.get_path(force_name, surface_index, path_id)
  if global.forces
    and global.forces[force_name]
    and global.forces[force_name].surface_paths
    and global.forces[force_name].surface_paths[surface_index]
    and global.forces[force_name].surface_paths[surface_index].paths
    and global.forces[force_name].surface_paths[surface_index].paths[path_id] then
      return global.forces[force_name].surface_paths[surface_index].paths[path_id]
  end
end

function Path.new(force_name, surface_index, path_id)
  path_id = tonumber(path_id)
  if not path_id then return end

  global.forces = global.forces or {}
  global.forces[force_name] = global.forces[force_name] or {}
  global.forces[force_name].surface_paths = global.forces[force_name].surface_paths or {}
  global.forces[force_name].surface_paths[surface_index] = global.forces[force_name].surface_paths[surface_index] or {}
  global.forces[force_name].surface_paths[surface_index].paths = global.forces[force_name].surface_paths[surface_index].paths or {}
  local path = {
    type = "path",
    force_name = force_name,
    surface_index = surface_index,
    path_id = path_id,
    waypoints = {},
    loop = true,
    show_start = true, -- allows vehicles to be assigned to the path
    name = "Path " .. path_id,
    color = {r=255,g=255,b=255,a=255}
  }
  global.forces[force_name].surface_paths[surface_index].paths[path_id] = path
  return path
end

function Path.get_or_create(force_name, surface_index, path_id)
    path_id = tonumber(path_id)
    if not path_id then return end

    local path = Path.get_path(force_name, surface_index, path_id)
    if not path then
      path = Path.new(force_name, surface_index, path_id)
    end
    return path
end

function Path.clear(force_name, surface_index, path_id)
  local path = Path.get_path(force_name, surface_index, path_id)
  if path then
    path.waypoints = {}
    Path.destroy_visualisation(path)
    global.forces[force_name].surface_paths[surface_index].paths[path_id] = nil
  end
end




function Path.player_get_active_path_surface_index(player)
  if global.players and global.players[player.index] and global.players[player.index].selected_path_surface_index then
    return global.players[player.index].selected_path_surface_index
  end
end

function Path.player_set_active_path_surface_index(player)
  local player_index = player.index
  local surface_index = player.surface.index
  global.players = global.players or {}
  global.players[player_index] = global.players[player_index] or {}
  if global.players[player_index].selected_path_surface_index ~= surface_index then
    global.players[player_index].selected_path_surface_index = surface_index
    global.players[player_index].selected_path_id = nil
    global.players[player_index].selected_waypoint_id = nil
  end
end

function Path.player_get_active_path_id(player)
  if global.players and global.players[player.index] and global.players[player.index].selected_path_id then
    return global.players[player.index].selected_path_id
  end
end

function Path.player_set_active_path_id(player, path_id, waypoint_id)
  local player_index = player.index
  global.players = global.players or {}
  global.players[player_index] = global.players[player_index] or {}
  local surface_index = player.surface.index
  if global.players[player_index].selected_path_surface_index ~= surface_index then
    global.players[player_index].selected_path_surface_index = surface_index
    global.players[player_index].selected_path_id = path_id
    global.players[player_index].selected_waypoint_id = waypoint_id
  end
  if global.players[player_index].selected_path_id ~= path_id then
    global.players[player_index].selected_path_id = path_id
    global.players[player_index].selected_waypoint_id = waypoint_id
  end
  if waypoint_id then
    global.players[player_index].selected_waypoint_id = waypoint_id
  end
end

function Path.player_get_active_path_waypoint_id(player)
  if global.players and global.players[player.index] and global.players[player.index].selected_waypoint_id then
    local surface_index = player.surface.index
    if player.surface.index ~= global.players[player.index].selected_path_surface_index then
      global.players[player.index].selected_waypoint_id = 1
    end
    return global.players[player.index].selected_waypoint_id
  end
end

function Path.player_set_active_path_waypoint_id(player, waypoint_id)
  local player_index = player.index
  global.players = global.players or {}
  global.players[player_index] = global.players[player_index] or {}
  global.players[player_index].selected_waypoint_id = waypoint_id
end


function Path.hide_all_from_player(player)
  local force_paths = Path.get_force_paths(player.force.name)
  for surface_index, surface_paths in pairs(force_paths) do
    if surface_paths.paths then
      for _, path in pairs(surface_paths.paths) do
        Path.hide_from_player(path, player.index)
      end
    end
  end
end

function Path.hide_from_player(path, player_index)
  if path.visualisation and path.visualisation.player_indexes then
    path.visualisation.player_indexes[player_index] = nil
    Path.update_visualisation(path)
  end
end

function Path.show_for_player(path, player_index)
  if not path.visualisation or table_size(path.visualisation.player_indexes) == 0 then
    -- either there was no path, or it was only showing the start
    Path.build_visualisation(path, {[player_index] = player_index})
  else
    if not path.visualisation.player_indexes[player_index] then
      path.visualisation.player_indexes[player_index] = player_index
      for _, marker in pairs(path.visualisation.markers) do
        if not (path.show_start and _ == path.first_waypoint_id) and rendering.is_valid(marker) then
          rendering.set_players(marker, path.visualisation.player_indexes)
        end
      end
      for _, text in pairs(path.visualisation.text) do
        if not (path.show_start and _ == path.first_waypoint_id) and rendering.is_valid(text) then
          rendering.set_players(text, path.visualisation.player_indexes)
        end
      end
      for _, line in pairs(path.visualisation.lines) do
        if rendering.is_valid(line) then
          rendering.set_players(line, path.visualisation.player_indexes)
        end
      end
    end
  end
end

function Path.show_all_for_player(player)

  local surface_paths = Path.get_surface_paths(player.force.name, player.surface.index)
  if surface_paths then
    for _, path in pairs(surface_paths) do
      Path.show_for_player(path, player.index)
    end
  end
end

function Path.destroy_visualisation(path)
  if path.visualisation then
    for _, marker in pairs(path.visualisation.markers) do
      if rendering.is_valid(marker) then
       rendering.destroy(marker)
     end
    end
    for _, text in pairs(path.visualisation.text) do
      if rendering.is_valid(text) then
       rendering.destroy(text)
     end
    end
    for _, line in pairs(path.visualisation.lines) do
      if rendering.is_valid(line) then
       rendering.destroy(line)
     end
    end
  end
  path.visualisation = nil
end

function Path.build_visualisation(path, player_indexes) -- player_indexes in the formace [index] = index

  if not path then return end
  Path.destroy_visualisation(path)

  local n_player_indexes = table_size(player_indexes)
  if n_player_indexes == 0 and not path.show_start then return end

  local surface_index = path.surface_index or 1
  local surface = game.surfaces[surface_index]

  if not surface then return end

  local vis = {
    markers = {},
    lines = {},
    text = {},
    player_indexes = player_indexes
  }

  path.visualisation = vis
  local path_name = path.name or "Path "..path.path_id

  -- NOTE: target can be a position or entity
  -- markers must be on the same index as their waypoint
  -- lines are on the id if the waypoin t they connect to, not from.
  -- return line is waypoint 1
  local first_index = nil
  local first_target = nil
  local last_index = nil
  local last_target = nil
  for waypoint_id, waypoint in pairs(path.waypoints) do
    local target = nil

    if waypoint.type == "position" then
      target = waypoint.position
    elseif waypoint.type == "goto_unit_id" then
      if waypoint.target_id then
        local unit = unit_by_unit_id(waypoint.target_id)
        if unit and unit.vehicle and unit.vehicle.valid then
          target = unit.vehicle
        end
      end
    elseif waypoint.type == "goto_player_id" then
      if waypoint.target_id then
        local player = game.players[waypoint.target_id]
        if player and player.connected and player.character then
          target = player.character
        end
      end
    elseif waypoint.type == "goto_position_beacon_id" then
      if waypoint.target_id then
        local struct = struct_get_position_beacon_id(path.force_name, waypoint.target_id)
        if struct and struct.entity and struct.entity.valid then
          target = struct.entity
        end
      end
    elseif waypoint.type == "goto_vehicle_depot_id" then
      if waypoint.target_id then
        local struct = struct_get_vehicle_depot_id(path.force_name, waypoint.target_id)
        if struct and struct.entity and struct.entity.valid then
          target = struct.entity
        end
      end
    end
    if not target then
      path.waypoints[waypoint_id] = nil
    else
      local is_first = false
      if not first_index then
        is_first = true
        first_index = waypoint_id
        first_target = target
        path.first_waypoint_id = first_index
      end

      if is_first then
        if path.show_start then
          vis.markers[waypoint_id] = rendering.draw_animation{animation = "aai-indicator-large", target = target, surface = surface, forces = {path.force_name}}
        else
          vis.markers[waypoint_id] = rendering.draw_animation{animation = "aai-indicator-large", target = target, surface = surface, players = player_indexes}
        end
      else
        vis.markers[waypoint_id] = rendering.draw_animation{animation = "aai-indicator-medium", target = target, surface = surface, players = player_indexes}
      end
      if is_first and path.show_start then
        vis.text[waypoint_id] = rendering.draw_text{text = path_name..": "..waypoint_id , target = target, surface = surface, color = {r=255,g=255,b=255,a=255}, forces = {path.force_name}}
        if n_player_indexes == 0 then return end
      else
        vis.text[waypoint_id] = rendering.draw_text{text = path_name..": "..waypoint_id , target = target, surface = surface, color = {r=255,g=255,b=255,a=255}, players = player_indexes}
      end
      if last_target then
        vis.lines[waypoint_id] = rendering.draw_line{color={r=50,g=50,b=50,a=0.01}, width = 1, from=last_target, to=target, surface=surface, players=player_indexes}
      end

      last_index = waypoint_id
      last_target = target
    end
  end

  if path.loop and first_index and first_index ~= last_index then
    vis.lines[first_index] = rendering.draw_line{color={r=50,g=50,b=50,a=0.01}, width = 1, from=last_target, to=first_target, surface=surface, players=player_indexes}
  end

end

function Path.update_visualisation(path)

  if not path then return end
  if not path.visualisation then
    if  path.show_start  then
      local player_indexes = {}
      Path.build_visualisation(path, player_indexes)
    end
    return
  end
  if table_size(path.visualisation.player_indexes) == 0 and not path.show_start then
    Path.destroy_visualisation(path)
  else
    for _, marker in pairs(path.visualisation.markers) do
      if not (path.show_start and _ == path.first_waypoint_id) then
        if table_size(path.visualisation.player_indexes) == 0 then
          rendering.destroy(marker)
          path.visualisation.markers[_] = nil
        else
          if rendering.is_valid(marker) then
            rendering.set_players(marker, path.visualisation.player_indexes)
          else
            path.visualisation.markers[_] = nil
          end
        end
      end
    end
    for _, text in pairs(path.visualisation.text) do
      if not (path.show_start and _ == path.first_waypoint_id) then
        if table_size(path.visualisation.player_indexes) == 0 then
          rendering.destroy(text)
          path.visualisation.text[_] = nil
        else
          if rendering.is_valid(text) then
            rendering.set_players(text, path.visualisation.player_indexes)
          else
            path.visualisation.text[_] = nil
          end
        end
      end
    end
    for _, line in pairs(path.visualisation.lines) do
      if table_size(path.visualisation.player_indexes) == 0 then
        rendering.destroy(line)
        path.visualisation.lines[_] = nil
      else
        if rendering.is_valid(line) then
          rendering.set_players(line, path.visualisation.player_indexes)
        else
          path.visualisation.lines[_] = nil
        end
      end
    end
  end
  if path.visualisation and path.visualisation.player_indexes or path.show_start then
    local player_indexes = path.visualisation.player_indexes
    Path.destroy_visualisation(path)
    Path.build_visualisation(path, player_indexes)
  end

end

function Path.get_max_waypoint_id(path)
  local max_id = 0
  for _, waypoint in pairs(path.waypoints) do
    if _ > max_id then
      max_id = _
    end
  end
  return max_id
end


function Path.add_waypoint(force_name, surface_index, path_id, waypoint, waypoint_id)

  local path = Path.get_or_create(force_name, surface_index, path_id)

  if path then
    if not waypoint_id then
      waypoint_id = Path.get_max_waypoint_id(path) + 1
    end
    path.waypoints[waypoint_id] = waypoint
    Path.update_visualisation(path)
  end

end

function Path.set_path_waypoint_data(data)
  --[[ {
    force_name,
    surface_index,
    path_id,
    waypoint_id,
    position_x,
    position_y,
    goto_player_id,
    goto_unit_id,
    goto_position_beacon_id,
    vehicle_depot_id,
    speed_limit,
    allow_pathfinding
  }]]--
  if data and data.force_name and data.surface_index and data.path_id then

      local path = Path.get_or_create(data.force_name, data.surface_index, data.path_id)
      if data.speed_limit then
        path.speed_limit = data.speed_limit + 0
      end

      if data.waypoint_id then
          local waypoint = {

          }
          if (data.position_x and data.position_x ~= 0) or (data.position_y and data.position_y ~= 0)then
            waypoint.type = "position"
            waypoint.position = { x = data.position_x or 0, y = data.position_y or 0}
          elseif data.goto_player_id and data.goto_player_id ~= 0 then
            waypoint.type = "goto_player_id"
            waypoint.target_id = data.goto_player_id + 0
          elseif data.goto_unit_id and data.goto_unit_id ~= 0 then
            waypoint.type = "goto_unit_id"
            waypoint.target_id = data.goto_unit_id + 0
          elseif data.goto_position_beacon_id and data.goto_position_beacon_id ~= 0  then
            waypoint.type = "goto_position_beacon_id"
            waypoint.target_id = data.goto_position_beacon_id + 0
          elseif data.vehicle_depot_id and data.vehicle_depot_id ~= 0  then
            waypoint.type = "goto_vehicle_depot_id"
            waypoint.target_id = data.vehicle_depot_id + 0
          end
          waypoint.allow_pathfinding = "always"
          if data.allow_pathfinding then
            if data.allow_pathfinding < 0 then
              waypoint.allow_pathfinding = "never"
            elseif data.allow_pathfinding == 1 then
              waypoint.allow_pathfinding = "auto"
            end
          end
          Path.add_waypoint(data.force_name, data.surface_index, data.path_id, waypoint, data.waypoint_id)
      end
  end

end

return Path
