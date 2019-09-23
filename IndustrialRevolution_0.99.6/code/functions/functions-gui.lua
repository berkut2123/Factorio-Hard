------------------------------------------------------------------------------------------------------------------------------------------------------

require("code.data.globals")
require("code.data.displays")
local group_tolerance = 5
local displays = get_displays()
-- local alpha = get_alpha()
-- local alpha_names = get_alpha_names()
local display_columns = 12
local display_rows = 9
local variation_offset = 2

------------------------------------------------------------------------------------------------------------------------------------------------------

function destroy_renders(renders)
	if renders then
		for _,render in pairs(renders) do
			rendering.destroy(render)
		end
		renders = nil
	end
end

function gui_toggle(event)
    local player = game.players[event.player_index]
    local frame = player.gui.screen[DIR.display_frame]
	destroy_renders(last_render)
    if frame then
        return frame.destroy()
    end
end

function get_map_markers(entity)
	return entity.force.find_chart_tags(entity.surface, entity.bounding_box)
end

function get_tile_bounds(position)
	return {{position.x - 0.5, position.y - 0.5},{position.x + 0.5, position.y + 0.5}}
end

function add_marker(entity, icon)
	entity.force.add_chart_tag(entity.surface, { icon = { type = icon.type, name = icon.name}, position = entity.position })
end

function get_has_marker_flag(entity)
	return (entity.color.r == 1)
end

function set_has_marker_flag(entity, bool)
	entity.color.r = (bool and 1 or 0)
end

function remove_markers(entity)
	if entity and entity.valid then
		local markers = get_map_markers(entity)
		for _,marker in pairs(markers) do
			marker.destroy()
		end
	end
end

-- function display_in_area(surface, area)
	-- for _,entity in pairs(surface.find_entities_filtered({area = area})) do
		-- if string.find(entity.name,"display") then return entity end
	-- end
	-- return nil
-- end

-- function get_entity_group(entity)
	-- local entities = {}
	-- local row = 1
	-- for dy = 0,63 do
		-- local column = 1
		-- local found = false
		-- local hgap = 0
		-- for dx = 0,63 do
			-- local found_entity = display_in_area(entity.surface, get_tile_bounds({x = entity.position.x + dx, y = entity.position.y + dy}))
			-- if found_entity then
				-- if not entities[row] then entities[row] = {} end
				-- entities[row][column] = found_entity
				-- column = column + 1
				-- found = true
				-- hgap = 0
			-- else
				-- hgap = hgap + 1
				-- if hgap >= group_tolerance then break end
			-- end
		-- end
		-- if found then
			-- row = row + 1
			-- vgap = 0
		-- else
			-- vgap = vgap + 1
			-- if vgap >= group_tolerance then break end
		-- end
	-- end
	-- return entities
-- end

-- function get_group_text(entities)
	-- local text = nil
	-- for _,row in pairs(entities) do
		-- if not text then text = "" else text = text.."\n" end
		-- for _,entity in pairs(row) do
			-- local character = string.gsub(entity.name,"display%-alpha%-","")
			-- if alpha_names[character] then character = alpha_names[character] else character = "?" end
			-- text = text..character
		-- end
	-- end
	-- return text
-- end

-- function change_entity(entity,entity_to_place)
	-- local new_entity = entity.surface.create_entity{
		-- name = entity_to_place,
		-- position = entity.position,
		-- direction = entity.direction,
		-- force = entity.force,
		-- fast_replace = true,
		-- spill = false,
		-- create_build_effect_smoke = false
	-- }
	-- if entity then
		-- entity.destroy()
	-- end
	-- return new_entity
-- end

function create_fake_header(frame,title)
	
	-- local bars = filler.add {
		-- type = "frame",
		-- style = "display_fake_header",
	-- }
	-- bars.style.horizontally_stretchable = true
	return header
end

function create_display_gui(player, selected)
    -- display buttons
    -- if refresh or event.gui_type == defines.gui_type.entity then
    if player and selected then
		global.last_display[player.index] = selected
		local markers = next(get_map_markers(selected)) ~= nil
		local frame = player.gui.screen[DIR.display_frame]
		if frame then frame.destroy() end
		player.opened = player.gui.screen
		-- frame
		frame = player.gui.screen.add {
			type = "frame",
			name = DIR.display_frame,
			direction = "vertical",
			style = "display_frame",
		}
		frame.force_auto_center()
		-- frame header
		local header = frame.add {
			type = "flow",
			direction = "horizontal",
		}
		header.style.vertical_align = "center"
		header.add {
			type = "label",
			caption = {"entity-name."..selected.name},
			style = "frame_title",
		}
		local filler = header.add {
			type = "empty-widget",
			style = "draggable_space_header",
		}
		filler.style.natural_height = 24
		filler.style.horizontally_stretchable = true
		filler.drag_target = frame
		-- header.add {
			-- name = "display-header-alpha",
			-- type = "sprite-button",
			-- style = "display_header_button",
			-- sprite = "display-alpha",
			-- tooltip = {"controls.display-alpha-toggle"},
		-- }
		-- header.add {
			-- name = "display-header-circuit",
			-- type = "sprite-button",
			-- style = "display_small_button",
			-- sprite = "display-circuit-network",
			-- tooltip = {"gui-programmable-speaker.circuit-connection-settings"},
		-- }
		header.add {
			name = "display-header-close",
			type = "sprite-button",
			style = "display_small_button",
			sprite = "utility/close_white",
			tooltip = {"controls.close-gui"},
		}
		-- main body of frame
		-- table wrapper
		local inner_table = frame.add {
			type = "table",
			name = "inner-table",
			column_count = 2,
			vertical_centering = false,
		}
		inner_table.style.horizontal_spacing = 8
		-- left column
		local left_column = inner_table.add {
			type = "flow",
			name = "left-column",
			direction = "vertical",
		}
		left_column.style.width = 120
		left_column.style.horizontal_align = "center"
		-- camera frame
		local inner_frame_left = left_column.add {
			type = "frame",
			name = "inner-frame-left",
			style = "inside_deep_frame",
			direction = "vertical",
		}
		local camera = inner_frame_left.add {
			type = "camera",
			position = { x = selected.position.x, y = selected.position.y },
			zoom = player.display_scale,
		}
		camera.style.width = 120
		camera.style.height = 120
		-- map marker button
		local map_button = left_column.add {
			name = "display-header-map-marker",
			type = "sprite-button",
			style = markers and "display_map_button_active" or "display_map_button",
			sprite = "display-map-marker",
		}
		map_button.style.top_margin = 8
		map_button.style.bottom_margin = 4
		map_button.enabled = (selected.graphics_variation ~= 1)
		left_column.add {
			type = "label",
			caption = {"controls.display-map-marker"},
		}
		-- main gui buttons area frame
		local right_column = inner_table.add {
			type = "flow",
			direction = "vertical",
		}
		local inner_frame_right = right_column.add {
			type = "frame",
			style = "inside_deep_frame",
			direction = "vertical",
		}
		inner_frame_right.style.width = display_columns * 40
		inner_frame_right.style.minimal_height = 120
		inner_frame_right.style.maximal_height = 400
		-- symbol selection buttons
		local buttons = inner_frame_right.add {
			type = "table",
			name = "display-buttons",
			column_count = display_columns,
			style = "display_buttons",
		}
		-- first make "rubber grid" and store buttons in an array
		local button_proto = {}
		for row = 1,display_rows do
			button_proto[row] = {}
			for column = 1,display_columns do
				button_proto[row][column] = {
					type = "sprite-button",
					style = "quick_bar_slot_button",
				}
			end
		end
		-- replace grid with indexed symbols
		for index,icon in ipairs(displays) do
			if icon.name ~= "blank" then
				if icon.row > 0 and icon.column > 0 then
					button_proto[icon.row][icon.column].name = "display-symbol-" .. index
					button_proto[icon.row][icon.column].sprite = icon.type .. "/" .. icon.name
					button_proto[icon.row][icon.column].tooltip = {icon.type .. "-name." .. icon.name}
					button_proto[icon.row][icon.column].style = (index == selected.graphics_variation) and "display_button_selected" or "quick_bar_slot_button"
					button_proto[icon.row][icon.column].index = index -- not stored in prototype
				end
			end
		end
		-- create the grid
		for row = 1,display_rows do
			for column = 1,display_columns do
				local button = buttons.add(button_proto[row][column])
				button.style.height = button_proto[row][column].name and 40 or 20
				button.style.width = button_proto[row][column].name and 40 or 20
				button.style.margin = button_proto[row][column].name and 0 or 10
				button.ignored_by_interaction = (button_proto[row][column].name == nil) or (button_proto[row][column].index == selected.graphics_variation)
			end
		end
		-- textbox and confirm button
		-- local textbox = inner_frame_right.add {
			-- type = "text-box",
			-- name = "display-alpha",
			-- visible = false,
		-- }
		-- textbox.style.width = display_columns * 40
		-- textbox.style.height = 160
		-- table.insert(toggle_elements[player.index],textbox)
		-- last_textbox = textbox
		-- local confirm_flow = right_column.add {
			-- type = "flow",
			-- direction = "horizontal",
			-- visible = false,
		-- }
		-- confirm_flow.style.vertical_align = "center"
		-- confirm_flow.style.top_margin = 4
		-- local filler = confirm_flow.add {
			-- type = "frame",
			-- style = "display_fake_header",
		-- }
		-- filler.style.height = 32
		-- filler.style.left_margin = 0
		-- local confirm = confirm_flow.add {
			-- type = "button",
			-- name = "display-alpha-confirm",
			-- caption = {"gui.confirm"},
			-- style = "confirm_button",
		-- }
		-- table.insert(toggle_elements[player.index],confirm_flow)
		-- "rubber stubs" for any remaining button slots
		-- while count % display_columns ~= 0 do
			-- local b = buttons.add {
				-- type = "sprite-button",
				-- style = "quick_bar_slot_button",
				-- ignored_by_interaction = true,
			-- }
			-- b.style.height = 20
			-- b.style.width = 20
			-- b.style.margin = 10
			-- count = count + 1
		-- end
    end
end

local display_gui_click = {
	["display-symbol"] = function (event, variation)
		local player = game.players[event.player_index]
		local last_display = global.last_display[player.index]
		if last_display then
			last_display.graphics_variation = variation
			local markers = get_map_markers(last_display)
			if markers and next(markers) ~= nil then
				remove_markers(last_display)
				add_marker(last_display, displays[variation])
			end
			for _,child in pairs(event.element.parent.children) do
				child.style = (child.name == "display-symbol-"..variation) and "display_button_selected" or "quick_bar_slot_button"
				child.ignored_by_interaction = (child.name == "display-symbol-"..variation)
			end
			player.gui.screen[DIR.display_frame]["inner-table"]["left-column"]["display-header-map-marker"].enabled = true
		end
	end,
    ["display-header-close"] = function (event)
        gui_toggle(event)
    end,
    ["display-header-map-marker"] = function (event)
		local player = game.players[event.player_index]
		local last_display = global.last_display[player.index]
		if last_display then 
			local markers = get_map_markers(last_display)
			if not markers or next(markers) == nil then
				event.element.style = "display_map_button_active"
				add_marker(last_display, displays[last_display.graphics_variation])
				last_display.color = {r=1}
			else
				event.element.style = "display_map_button"
				remove_markers(last_display)
				last_display.color = {r=0}
			end
		end
    end,
    -- ["display-header-circuit"] = function (event)
		-- local player = game.players[event.player_index]
        -- gui_toggle(event)
        -- player.opened = last_display[player.index]
    -- end,
    -- ["display-header-alpha"] = function (event)
		-- local player = game.players[event.player_index]
        -- local frame = player.gui.screen[DIR.display_frame]
        -- if frame and toggle_elements[player.index] then
            -- for _,element in pairs(toggle_elements[player.index]) do
                -- element.visible = not element.visible
            -- end
        -- end
        -- if event.element.style.name == "display_header_button" then
            -- event.element.style = "display_header_button_active"
            -- local entities = get_entity_group(last_display[player.index])
            -- if entities then
                -- if not last_render then last_render = {} end
                -- for _,row in pairs(entities) do
                    -- for column,entity in pairs(row) do
                        -- table.insert(last_render, rendering.draw_rectangle({color = {r=0,g=0.2,b=0,a=0.2}, left_top = entity, left_top_offset = {-1,-1}, right_bottom = entity, right_bottom_offset = {1,1}, draw_on_ground = true, filled = true, surface = last_display[player.index].surface}))
                        -- table.insert(last_render, rendering.draw_rectangle({color = {r=0,g=0.5,b=0,a=0.5}, left_top = entity, left_top_offset = {-1,-1}, right_bottom = entity, right_bottom_offset = {1,1}, draw_on_ground = true, filled = false, surface = last_display[player.index].surface}))
                    -- end
                -- end
            -- end
            -- last_textbox.text = get_group_text(entities)
        -- else
            -- event.element.style = "display_header_button"
            -- destroy_renders(last_render)
        -- end
    -- end,
    -- ["display-alpha-confirm"] = function (event)
		-- local player = game.players[event.player_index]
        -- local entities, first, last = get_entity_group(last_display[player.index])
        -- if entities then
            -- local text = {}
            -- for line in string.gmatch(last_textbox.text,"[^\r\n]+") do
                -- table.insert(text,line)
            -- end
            -- for i,line in ipairs(text) do
                -- game.print(line)
                -- for j=1,string.len(line) do
                    -- local character = string.upper(string.sub(line,j,j))
                    -- if not alpha[character] then character = "?" end
                    -- character = "alpha-"..alpha[character]
                    -- local entity = entities[i] and entities[i][j]
                    -- if entity then change_entity(entity,"display-"..character) end
                -- end
            -- end
        -- end
        -- gui_toggle(event)
    -- end,
}

function gui_click(event)
	if display_gui_click[event.element.name] then
		display_gui_click[event.element.name](event)
		return
	end
	if string.find(event.element.name, "display%-symbol") then
		display_gui_click["display-symbol"](event, tonumber(string.match(event.element.name, "%d+")))
		return
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------
