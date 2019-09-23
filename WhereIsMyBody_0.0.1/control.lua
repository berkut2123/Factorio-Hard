script.on_event(defines.events.on_pre_player_died, function(event)
  local player = game.players[event.player_index]
  local position = player.position
  local surface = player.surface 
  
  global.players = global.players or {}
  
  global.players[event.player_index] = global.players[event.player_index] or {corpses = {}}
  
  local player = global.players[event.player_index]
  local corpses = {}
  for i, corpse in pairs (player.corpses) do
    local entity = game.surfaces[corpse.surface_name].find_entity('character-corpse', corpse.position)
    if entity then
      table.insert (corpses, corpse)
    end
  end
  player.corpses = corpses
  
  table.insert (corpses, {surface_name=surface.name, position=position})
end)

function reduce_color (color, factor)
  local factor = factor or 0.1
  local r = color.r or 1
  local g = color.g or 1
  local b = color.b or 1
  local a = color.a or 1
  return {r=r*factor, g=g*factor, b=b*factor, a=a*factor}
end

function size_of (tabl)
  local amount = 0
  for i, v in pairs (tabl) do
    amount = amount +1
  end
  return amount
end

script.on_event(defines.events.on_player_respawned, function(event)
  local player = game.players[event.player_index]
  local position = player.position
  local surface = player.surface 
  
  if global.players then
    local h_player = global.players[event.player_index]
    
    local size = size_of (h_player.corpses)
    local n = 1
    for i, corpse in pairs (h_player.corpses) do
      if corpse and corpse.surface_name == surface.name then
        local entity = surface.find_entity('character-corpse', corpse.position)
        if entity then
          local width = (n / size)
          n = n +1
          
          -- game.print (i .. ' - ' ..width)
          local color = reduce_color (player.color, width)
          rendering.draw_line{color=color, width=width, from=player.character, to=entity, surface=surface, players = {player.name}, only_in_alt_mode=true}
        else
          h_player.corpses[i] = nil
        end
      end
    end
  end
end)



