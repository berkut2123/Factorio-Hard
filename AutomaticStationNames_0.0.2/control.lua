require('serpent')

-- Functions for keeping track of all station names
-- TODO: handle forces being removed / merged?
function get_all_station_names(force)
  if global.all_station_names == nil then global.all_station_names = {} end
  if global.all_station_names[force.name] == nil then global.all_station_names[force.name] = {} end
  return global.all_station_names[force.name]
end
function add_station_name(force, name)
  local all_station_names = get_all_station_names(force)
  if all_station_names[name] == nil then
    all_station_names[name] = 1
  else
    all_station_names[name] = all_station_names[name] + 1
  end
end
function remove_station_name(force, name)
  local all_station_names = get_all_station_names(force)
  if all_station_names[name] == nil then
    -- Should never happen
  else
    if all_station_names[name] > 1 then
      all_station_names[name] = all_station_names[name] - 1
    else
      all_station_names[name] = nil
    end
  end
end
function refresh_station_names_force(player, force)
  local old = get_all_station_names(force)
  local new = {}
  for _, surface in pairs(game.surfaces) do
    --player.print(serpent.block(surface))
    entities = surface.find_entities_filtered{type='train-stop', force=force}
    for _, entity in pairs(entities) do
      --player.print(serpent.block(entity))
      if entity.supports_backer_name() then
        if new[entity.backer_name] ~= nil then
          new[entity.backer_name] = new[entity.backer_name] + 1
        else
          new[entity.backer_name] = 1
        end
      end
    end
  end
  if player ~= nil then
    --player.print(serpent.block(new))
    count = 0
    newStation = 0
    newStationUnique = 0
    oldStation = 0
    oldStationUnique = 0
    for name, value in pairs(new) do
      if old[name] ~= value then count = count + 1 end
      newStation = newStation + value
      newStationUnique = newStationUnique + 1
    end
    for name, value in pairs(old) do
      if new[name] == nil then count = count + 1 end
      oldStation = oldStation + value
      oldStationUnique = oldStationUnique + 1
    end
    --if count ~= 0 then
    player.print('Found ' .. count .. ' changes in station names for force ' .. force.name .. ' (Old ' .. oldStation .. ' stations with ' .. oldStationUnique .. ' unique names, new ' .. newStation .. ' stations with ' .. newStationUnique .. ' unique names')
    --end
  end
  global.all_station_names[force.name] = new
end
function refresh_station_names(player)
  for _, force in pairs(game.forces) do
    refresh_station_names_force(player, force)
  end
end
commands.add_command("AutomaticStationNames_refresh_station_names", "Refresh the station name cache", function(event)
  local player = game.players[event.player_index]
  refresh_station_names(player)
end)
script.on_init(function()
  refresh_station_names(nil)
end)

-- Parse name and return an array with
-- name: The clean up name
-- offset_position: The offset where the position has to be inserted (or nil if there is no position)
-- offset_number: The offset where the number has to be inserted (or nil if there is no number)
-- number: The number (or nil if there is no number or the number has not yet been set)
function parse_name(name)
  --player.print ('parse_name ' .. serpent.block(name))
  
  data = {}

  local pos = (name:reverse()):find("(", 1, true)
  if pos == nil then
    data.offset_position = nil
  else
    pos = #name - pos + 1
    local pos2 = name:find(")", pos, true)
    if pos2 == nil then
      data.offset_position = nil
    else
      name = name:sub(1,pos) .. name:sub(pos2)
      data.offset_position = pos + 1
    end
  end

  local pos = (name:reverse()):find("[", 1, true)
  if pos == nil then
    data.offset_number = nil
  else
    pos = #name - pos + 1
    local pos2 = name:find("]", pos, true)
    if pos2 == nil then
      data.offset_number = nil
    else
      data.number = tonumber(name:sub(pos + 1, pos2 - 1))
      if data.number ~= nil then
        data.number = math.floor(data.number)
      end
      name = name:sub(1,pos) .. name:sub(pos2)
      data.offset_number = pos + 1
      if data.offset_position ~= nil and data.offset_position > data.offset_number then
        data.offset_position = data.offset_position - (pos2 - pos - 1)
      end
    end
  end

  data.name = name

  --player.print(serpent.block(data))

  return data
end

-- Check whether a string is a backer name, use a cache for the set of backer names
backer_names_set = nil
function is_backer_name(name)
  if backer_names_set == nil then
    backer_names_set_new = {}
    for _, str in pairs(game.backer_names) do
      backer_names_set_new[str] = 1
    end
    backer_names_set = backer_names_set_new
  end
  return backer_names_set[name] ~= nil
end

-- Set number and position
function fix_train_station_name(entity, isNew)
  orig_name = entity.backer_name
  if orig_name == nil then return end
  name = orig_name

  if isNew then
    local pattern = settings.global["AutomaticStationNames_default-station-name"].value
    --game.players[1].print('fix_train_station_name() ' .. serpent.block(isNew)..' '..serpent.block(pattern)..' '..serpent.block(is_backer_name(name))..' '..serpent.block(name))
    if pattern ~= nil and pattern ~= "" then
      if is_backer_name(name) then
        name = pattern:gsub("%%s", name)
      end
    end
  end
  --game.players[1].print('fix_train_station_name() name=' .. serpent.block(name))

  local data = parse_name(name)

  local new_name = data.name
  if data.offset_number then
    local maxNr = 0
    local stationsWithCurrentNumber = 0 -- Number of stations with the number in data.number
    for oname, count in pairs(get_all_station_names(entity.force)) do
      local odata = parse_name(oname)
      if odata.name == data.name then
        if odata.number == data.number then
          stationsWithCurrentNumber = stationsWithCurrentNumber + count
        end
        if odata.number ~= nil and odata.number > maxNr then
          maxNr = odata.number
        end
      end
    end
    if data.number == nil or stationsWithCurrentNumber > 1 then
      data.number = maxNr + 1
    end
    number_str = '' .. data.number
    new_name = new_name:sub(1,data.offset_number-1) .. number_str .. new_name:sub(data.offset_number)
    if data.offset_position and data.offset_position > data.offset_number then
      data.offset_position = data.offset_position + #number_str
    end
  end
  if data.offset_position then
    position_str = entity.position.x .. ',' .. entity.position.y
    new_name = new_name:sub(1,data.offset_position-1) .. position_str .. new_name:sub(data.offset_position)
  end
  if orig_name ~= new_name then
    entity.backer_name = new_name
  end
end

-- Remove number and position
function cleanup_train_station_name(entity)
  name = entity.backer_name
  if name == nil then return end

  data = parse_name(name)

  new_name = data.name
  if name ~= new_name then
    entity.backer_name = new_name
  end
end

function on_new_entity(event)
  local entity = event.created_entity
  if not entity.valid then return end
  if not entity.supports_backer_name() then return end
  
  if entity.type == 'train-stop' then -- Update global.all_station_names and fix station name
    --local player = game.players[event.player_index or 1]
    --player.print('New train station: ' .. serpent.block(entity) .. serpent.block(entity.supports_backer_name()) .. serpent.block(entity.backer_name))
    
    add_station_name(entity.force, entity.backer_name)
    
    fix_train_station_name(entity, true)
  elseif entity.type == 'entity-ghost' and entity.ghost_type == 'train-stop' then -- Clean up station name
    --local player = game.players[event.player_index or 1]
    --player.print('New train station ghost: ' .. serpent.block(entity) .. serpent.block(entity.supports_backer_name()) .. serpent.block(entity.backer_name))

    cleanup_train_station_name(entity)
  end
end
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, on_new_entity)

-- Update global.all_station_names
function on_entity_destroyed(event)
  local entity = event.entity
  if not entity.valid then return end
  if not entity.supports_backer_name() then return end
  if entity.type ~= 'train-stop' then return end
  
  --local player = game.players[event.player_index or 1]
  --player.print('Destroyed train station: ' .. serpent.block(entity) .. serpent.block(entity.supports_backer_name()) .. serpent.block(entity.backer_name))
    
  remove_station_name(entity.force, entity.backer_name)
end
script.on_event({defines.events.on_pre_player_mined_item, defines.events.on_robot_pre_mined, defines.events.on_entity_died}, on_entity_destroyed)

-- Record changed station names in global.all_station_names and fix station name
script.on_event(defines.events.on_entity_renamed, function (event)
  --local player = game.players[event.player_index or 1]
  --player.print('Rename ' .. serpent.block(event.entity) .. serpent.block(event.old_name) .. serpent.block(event.by_script))

  local entity = event.entity
  if not entity.valid then return end
  if entity.type ~= 'train-stop' then return end
  if not entity.supports_backer_name() then return end

  remove_station_name(entity.force, event.old_name)
  add_station_name(entity.force, entity.backer_name)
  
  if event.by_script then return end -- Ignore script renames to avoid loops

  fix_train_station_name(entity, false)
end)

-- Clean up station names in blueprints
script.on_event(defines.events.on_player_setup_blueprint, function (event)
  local player = game.players[event.player_index or 1]
  --player.print('on_player_setup_blueprint ' .. serpent.block(player.cursor_stack.valid_for_read) .. serpent.block(player.blueprint_to_setup.valid_for_read))
  if player.blueprint_to_setup.valid_for_read then
    entities = player.blueprint_to_setup.get_blueprint_entities()
    --player.print('on_player_setup_blueprint ' .. serpent.block(entities))
    change = false
    if entities ~= nil then
      for _, entity in pairs(entities) do
        --player.print(serpent.block(entity))
        if entity.station ~= nil then
          new_name = parse_name(entity.station).name
          if entity.station ~= new_name then
            entity.station = new_name
            change = true
          end
        end
      end
    end
    if change then
      player.blueprint_to_setup.set_blueprint_entities(entities)
    end
  end
end)
