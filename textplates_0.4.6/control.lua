
local textplates = require("textplates")

local default_symbol = "blank"
local MOD_NAME = "textplates"

-- utility
local function symbol_from_char(char)
  return char and global.characters_for_symbols[string.lower(char)] or default_symbol
end

-- GUI

local function show_gui(player, plate_type)

    local player_index = player.index
    local selected_type_name = global.player_selected_type[player_index]

    -- same gui already present
    if selected_type_name and selected_type_name == plate_type.name then
        return
    end

    if player.gui.left.textplates then
        player.gui.left.textplates.destroy()
    end

    -- add the desired plate type UI
    local plate_frame = player.gui.left.add{type = "frame", name = 'textplates', caption = {"textplates.ui-title"}, direction = "vertical"}
    local plates_table = plate_frame.add{type ="table", name = "textplates_table", column_count  = 8, style = "textplates-table"}

    for _, symbol in pairs(plate_type.symbols) do
        local sprite = "item/"..plate_type.name.."-"..symbol
        local name = "textplates-symbol-" .. symbol
        local style = symbol == default_symbol and "textplates-button-active" or "textplates-button"
        plates_table.add{type = "sprite-button", name = name, sprite = sprite, style = style, tooltip = {"textplates." .. symbol}}
    end

    local plates_input_label = plate_frame.add{type ="label", name = "textplates_input_label", caption={"textplates.input-label"}}
    local plates_input_flow = plate_frame.add{type ="flow", name = "plates_input_flow", direction="horizontal"}
    local plates_input = plates_input_flow.add{type ="textfield", name = "textplates_input"}
    -- you can actually click anywhere to exit
    local plates_input_button = plates_input_flow.add{type ="sprite-button", name = "textplates_input_button", tooltip={"textplates.confirm"},
      style="edit_label_button", sprite="utility/confirm_slot"}

    global.player_selected_type[player_index] = plate_type.name
    if not global.player_next_symbol[player_index] then
      global.player_next_symbol[player_index] = default_symbol
    else
      plates_table["textplates-symbol-blank"].style = "textplates-button"
      if plates_table["textplates-symbol-" .. global.player_next_symbol[player_index]] then
        plates_table["textplates-symbol-" .. global.player_next_symbol[player_index]].style = "textplates-button-active"
      end
    end
end

local function hide_gui(player)
    if player.gui.left.textplates then
        player.gui.left.textplates.destroy()
    end
    global.player_selected_type[player.index] = nil
end


local function on_player_cursor_stack_changed(event)
    local player = game.players[event.player_index]
    if player.cursor_stack and player.cursor_stack.valid and player.cursor_stack.valid_for_read and global.types[player.cursor_stack.name] then
        show_gui(player, global.types[player.cursor_stack.name])
    else
        hide_gui(player)
    end
end

local function on_gui_click(event)
  local element = event.element
  local name = element.name
  if not name then return end
  local ok, symbol = string.match(name, "^(textplates%-symbol%-)(.*)$")
  if not ok then
      return
  end

  local parent = element.parent
  local player_index = event.player_index
  local next_symbol = global.player_next_symbol[player_index]

  parent["textplates-symbol-" .. next_symbol].style = "textplates-button"
  element.style = "textplates-button-active"

  global.player_next_symbol[player_index] = symbol
  parent.parent.plates_input_flow.textplates_input.text = ""
end

local function prepare_next_symbol(player_index, cut)
    local player = game.players[player_index]
    local gui = player.gui.left.textplates

    local type_name = global.player_selected_type[player_index]
    local next_symbol = global.player_next_symbol[player_index]

    local name = "textplates-symbol-" .. next_symbol

    local text = gui.plates_input_flow.textplates_input.text
    if cut then
        text = string.sub(text, 2)
        gui.plates_input_flow.textplates_input.text = text
    end
    local first_char = string.sub(text, 1, 1)
    if first_char and first_char ~= "" then
      gui.textplates_table[name].style = "textplates-button"
      next_symbol = symbol_from_char(first_char)
      gui.textplates_table['textplates-symbol-' .. next_symbol].style = "textplates-button-active"
      global.player_next_symbol[player_index] = next_symbol
    end
end

local function on_gui_text_changed(event)
    if event.element.name == "textplates_input" then
         prepare_next_symbol(event.player_index, false)
    end
end

local function replace_ghost(entity, plate_type, symbol)
    local surface = entity.surface
    local position = entity.position
    local force = entity.force
    local ttl = entity.time_to_live
    entity.destroy()

    local variation = plate_type.symbol_indexes[symbol]

    local new_entity = surface.create_entity{
        name = "entity-ghost",
        inner_name = plate_type.name,
        position = position,
        --variation = variation - 1,
        variation = variation, -- ghosts are offset?
        force = force,
        expires = false,
    }
    new_entity.time_to_live = ttl

    if event then
        event.textplates_handled = true
        event.created_entity = new_entity
        local original_mod = event.mod
        event.mod = MOD_NAME

        script.raise_event(defines.events.on_built_entity, event)

        -- restore, is this needed?
        event.mod = original_mod
        event.textplates_handled = nil
        event.created_entity = entity
    end

    return new_entity
end

local function on_build_ghost(player_index, plate_type, entity, event)
    replace_ghost(entity, plate_type, global.player_next_symbol[player_index], event)
    prepare_next_symbol(player_index, true)
end

local function on_built_entity (event)
    -- skip calls by ourself or ght-bluebuild
    if event.mod and (event.mod == MOD_NAME or event.mod == "ght-bluebuild" or event.mod == "Nanobots") then return end

    local player_index = event.player_index
    local entity = event.created_entity
    if not (player_index and entity and entity.valid) then return end
    local player = game.players[player_index]
    local plate_type = global.types[global.player_selected_type[player_index]]
    if plate_type then
      if entity.name == "entity-ghost" and entity.ghost_name == plate_type.name then
          return on_build_ghost(player_index, plate_type, entity, event)
      end
      local next_symbol = global.player_next_symbol[player_index]
      if next_symbol == "blank" then
        local entities = event.created_entity.surface.find_entities_filtered{type = "entity-ghost"}
        --entity.graphics_variation = plate_type.symbol_indexes[next_symbol]
      else
        entity.graphics_variation = plate_type.symbol_indexes[next_symbol]
      end
      prepare_next_symbol(player_index, true)
    end
end

local function on_player_pipette (event)
  local player = game.players[event.player_index]
  if player and player.connected then
    if player.selected and player.selected.type == "simple-entity-with-force" then
      local plate_type = global.types[player.selected.name]
      if plate_type then
        local symbol = plate_type.symbols[player.selected.graphics_variation]
        global.player_next_symbol[event.player_index] = symbol
        if player.gui.left.textplates and gui.textplates_table['textplates-symbol-' .. symbol] then
          gui.textplates_table['textplates-symbol-' .. symbol].style = "textplates-button-active"
        end
      end
    elseif player.selected and player.selected.type == "entity-ghost" and player.cursor_stack and player.cursor_stack.valid then
      local plate_type = global.types[player.selected.ghost_name]
      if plate_type then
        local symbol = plate_type.symbols[player.selected.graphics_variation]
        global.player_next_symbol[event.player_index] = symbol
        if player.gui.left.textplates and gui.textplates_table['textplates-symbol-' .. symbol] then
          gui.textplates_table['textplates-symbol-' .. symbol].style = "textplates-button-active"
        end
      end
    end
  end
end

script.on_event(defines.events.on_gui_click, on_gui_click)
script.on_event(defines.events.on_player_cursor_stack_changed, on_player_cursor_stack_changed)
script.on_event(defines.events.on_gui_text_changed, on_gui_text_changed)
script.on_event(defines.events.on_built_entity, on_built_entity)
script.on_event(defines.events.on_player_pipette, on_player_pipette)

script.on_init(function()
    global.characters_for_symbols = {}
    global.types = {}
    global.player_next_symbol = {}
    global.player_selected_type = {}

    get_textplates_types()
    get_characters_for_symbols()
end)

function get_textplates_types()
  global.types = {}
  for interface, functions in pairs(remote.interfaces) do
    if functions["textplates_add_types"] then
      local added_types = remote.call(interface, "textplates_add_types")
      for _, type_data in pairs(added_types) do
        if type_data.name and type_data.symbols and #type_data.symbols > 0 then
          if not global.types[type_data.name] then
            global.types[type_data.name] = {
              name = type_data.name,
              symbols = {}
            }
          end
          for index, symbol in pairs(type_data.symbols) do
            if not global.types[type_data.name].symbols[index] or interface == "textplates" then
              global.types[type_data.name].symbols[index] = symbol
            end
          end
        end
      end
    end
  end
  for _, type in pairs(global.types) do
    type.symbol_indexes = {}
    for index, symbol in pairs(textplates.symbols) do
      type.symbol_indexes[symbol] = index
    end
  end
  --log( "textplate types:" )
  --log( serpent.block( global.types, {comment = false, numformat = '%1.8g' } ) )
end

function get_characters_for_symbols()
  global.characters_for_symbols = {}
  for interface, functions in pairs(remote.interfaces) do
    if functions["textplates_add_characters_for_symbols"] then
      local added_mappings = remote.call(interface, "textplates_add_characters_for_symbols")
      for character, symbol in pairs(added_mappings) do
        if not global.characters_for_symbols[character] or interface == "textplates" then
          global.characters_for_symbols[character] = symbol
        end
      end
    end
  end
  --log( "textplate character-symbol mappings:" )
  --log( serpent.block( global.characters_for_symbols, {comment = false, numformat = '%1.8g' } ) )
end

script.on_configuration_changed(function()
    -- clear global
    for k,v in pairs(global) do
        global[k] = nil
    end

    global.characters_for_symbols = {}
    global.types = {}
    global.player_next_symbol = {}
    global.player_selected_type = {}

    get_textplates_types()
    get_characters_for_symbols()

end)

-- Remote interfaces. Other mods can add these too.
remote.add_interface("textplates", {
  textplates_add_types = function()
    -- return dictionary with type_name = {symbols = {index dictionary or symbols}}
    --[[
    return {
      {
        name = "textplate-large-gold", -- same for entity, item, and item.."-"..symbol items
        symbols = { 1 = "a", 2 = "b", 3 = "c", 80 = "tilde"}
      },
      {
        name = "textplate-huge-gold", -- same for entity, item, and item.."-"..symbol items
        symbols = { 1 = "a", 2 = "b", 3 = "c", 80 = "tilde"}
      },
    }]]--
    return textplates.types
  end,
  textplates_add_characters_for_symbols = function()
    -- return dictionary of caracters and their symbol names
    --return {"~" = "tilde", "¬" = "thingywing"}
    return textplates.symbol_by_char
  end,
})
