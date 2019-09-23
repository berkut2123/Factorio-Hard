local Navpath = {}

Navpath.color_green = {r=0,g=64,b=0,a=0.01}
Navpath.color_yellow = {r=64,g=64,b=0,a=0.01}

Navpath.tint_green = {r=0,g=255,b=0,a=0.1}
Navpath.tint_yellow = {r=255,g=255,b=0,a=0.1}


function Navpath.indicator_clear(unit)
  if not unit.navpath_indicator then return end
  local navpath_indicator = unit.navpath_indicator
  for _, line in pairs(navpath_indicator.lines) do
    rendering.destroy(line)
  end
  for _, waypoint in pairs(navpath_indicator.waypoints) do
    rendering.destroy(waypoint)
  end
  if navpath_indicator.final then
    rendering.destroy(navpath_indicator.final)
  end
  unit.navpath_indicator = nil
  return
end

function Navpath.indicator_template_navpath(navpath)
  return {
    waypoints = {}, -- render object ids
    lines = {}, -- render object ids
    path_start_x = navpath.waypoints[1].position.x,
    path_start_y = navpath.waypoints[1].position.y,
    path_target_x = navpath.target_position.x or navpath.waypoints[#navpath.waypoints].position.x,
    path_target_y = navpath.target_position.y or navpath.waypoints[#navpath.waypoints].position.y,
  }
end

function Navpath.indicator_template_direct()
  return {
    waypoints = {}, -- render object ids
    lines = {}, -- render object ids
    direct = true
  }
end

function Navpath.indicator_draw_direct(unit)
  if unit.show_path_to_players == nil or table_size(unit.show_path_to_players) == 0 or not unit.safe_target_position then
    Navpath.indicator_clear(unit)
    return
  end

  local surface_index = unit.vehicle.surface

  if not (unit.navpath_indicator and unit.navpath_indicator.direct)  then
    Navpath.indicator_clear(unit)
    unit.navpath_indicator = Navpath.indicator_template_direct()
  end

  local navpath_indicator = unit.navpath_indicator

  if navpath_indicator.final and rendering.is_valid(navpath_indicator.final) then
    rendering.set_target(navpath_indicator.final, unit.safe_target_position)
  else
    --navpath_indicator.final = unit.vehicle.surface.create_entity{ name= "indicator-final-green", position= unit.safe_target_position}
    navpath_indicator.final = rendering.draw_animation{animation = "aai-indicator-large", target = unit.safe_target_position, surface = surface_index, tint=Navpath.tint_green, players = unit.show_path_to_players}
  end

  if not (navpath_indicator.lines[1] and rendering.is_valid(navpath_indicator.lines[1])) then
    --navpath_indicator.lines[1] = unit.vehicle.surface.create_entity{ name="indicator-beam-green", position= unit.vehicle.position, source=unit.vehicle, target=navpath_indicator.final}
    navpath_indicator.lines[1] = rendering.draw_line{color=Navpath.color_green, width = 1, from=unit.vehicle, to=unit.safe_target_position, surface=surface_index, players = unit.show_path_to_players}
  else
    rendering.set_from(navpath_indicator.lines[1], unit.vehicle)
    rendering.set_to(navpath_indicator.lines[1], unit.safe_target_position)
  end

end

function Navpath.indicator_draw_navpath(unit)
  if unit.show_path_to_players == nil or table_size(unit.show_path_to_players) == 0
   or not (unit.navpath and unit.navpath.waypoints and unit.navpath.waypoints[1]) then
    Navpath.indicator_clear(unit)
    return
  end

  local navpath = unit.navpath

  if #unit.navpath.waypoints > settings.global["pathfinding-visualisation-cutoff"].value then
    return Navpath.indicator_draw_direct(unit)
  end

  if not unit.navpath_indicator then
    unit.navpath_indicator = Navpath.indicator_template_navpath(navpath)
  end

  local navpath = unit.navpath

  if unit.navpath_indicator.path_start_x ~= navpath.waypoints[1].position.x
    or unit.navpath_indicator.path_start_y ~= navpath.waypoints[1].position.y
    or unit.navpath_indicator.path_target_x ~= navpath.target_position.x
    or unit.navpath_indicator.path_target_y ~= navpath.target_position.y
    then
      -- vis does not match path
      Navpath.indicator_clear(unit)
      unit.navpath_indicator = Navpath.indicator_template_navpath(navpath)
  end

  local navpath_indicator = unit.navpath_indicator
  local color = navpath.path_complete and Navpath.color_green or Navpath.color_yellow
  local tint = navpath.path_complete and Navpath.tint_green or Navpath.tint_yellow

  -- removed passed points
  for i = 1, navpath.current_index-1, 1 do
    if navpath_indicator.lines[i] then
      rendering.destroy(navpath_indicator.lines[i])
      navpath_indicator.lines[i] = nil
    end
  end

  local surface_index = unit.vehicle.surface

  for i = navpath.current_index, #navpath.waypoints, 1 do
    local source = navpath.waypoints[i-1] and navpath.waypoints[i-1].position or nil
    local target = navpath.waypoints[i] and navpath.waypoints[i].position or nil
    if i == navpath.current_index then
      source = unit.vehicle
    end
    if source and target then
      if navpath_indicator.lines[i] and rendering.is_valid(navpath_indicator.lines[i]) then
        rendering.set_from(navpath_indicator.lines[i], source)
        rendering.set_to(navpath_indicator.lines[i], target)
      else
        navpath_indicator.lines[i] = rendering.draw_line{color=color, width = 1, from=source, to=target, surface=surface_index, players = unit.show_path_to_players}
      end
    end
  end

  local final_point = unit.target_position or navpath.target_position
  if navpath_indicator.final and rendering.is_valid(navpath_indicator.final) then
    rendering.set_target(navpath_indicator.final, final_point)
  else
    navpath_indicator.final = rendering.draw_animation{animation = "aai-indicator-large", target = final_point, surface = surface_index, tint=tint, players = unit.show_path_to_players}
    navpath_indicator.lines[#navpath.waypoints + 1] = rendering.draw_line{color=color, width = 1, from=navpath.waypoints[#navpath.waypoints].position, to=final_point, surface=surface_index, players = unit.show_path_to_players}
  end

end

return Navpath
