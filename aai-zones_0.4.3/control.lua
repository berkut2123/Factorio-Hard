local zone_data = require("zones")

local version = 000402 -- 0.4.2

--[[
global.forces = {
  force_name = {
    surface_index = {
      zones = {
        x1 = {
          y1 = ZoneTile,
          y2 = ZoneTile,
        },
        x2 = {
          y1 = ZoneTile,
          y2 = ZoneTile,
        },
      },
      zones_by_type = {
        zone_type_name = {
          1 = ZoneTile,
          2 = ZoneTile,
          3 = ZoneTile,
        }
      }
    }
  }
}
ZoneTile = {
    type = zone_name,
    position = {x = x+0.5, y = y+0.5},
    x = x,
    y = y,
    entity = LuaEntity,
    surface_index = surface_index,
}
]]--


local function remove_from_table_xy(list, x, y)
    local index = 0
    for _, zone_tile in ipairs(list) do
        if x == zone_tile.x and y == zone_tile.y then
            index = _
            break
        end
    end
    if index > 0 then
        table.remove(list, index)
    end
end

local function zone_count_of_type(data)
    --zone_force_update()
    local force = data.force
    local surface_index = data.surface_index or 1
    local zone_name = data.type

    if global.forces[force.name][surface_index]
      and global.forces[force.name][surface_index].zones_by_type[zone_name] then
        return #global.forces[force.name][surface_index].zones_by_type[zone_name]
    end
    return 0
end

local function zone_for_xy(force, surface_index, x, y)
    --zone_force_update()
    x = math.floor(x)
    y = math.floor(y)
    if global.forces[force.name]
      and global.forces[force.name][surface_index]
      and global.forces[force.name][surface_index].zones[x]
      and global.forces[force.name][surface_index].zones[x][y] then
        return global.forces[force.name][surface_index].zones[x][y]
    end
end

local function get_zone_for_position(data)
    return zone_for_xy(data.force, data.surface_index or 1, math.floor(data.position.x), math.floor(data.position.y))
end

local function get_zonedata_for_position(data)
    if not (data.force and data.surface_index and data.position) then return end
    local zone_tile = zone_for_xy(data.force, data.surface_index, data.position.x, data.position.y)
    if zone_tile then
      for i, zone_tile2 in pairs(global.forces[data.force.name][data.surface_index].zones_by_type[zone_tile.type]) do
          if zone_tile.x == zone_tile2.x and zone_tile.y == zone_tile2.y then
            zone_tile.index = i
            return zone_tile
          end
      end
    end
    return zone_tile
end

local function zone_get_player_selection(player_index)
    if not global.player_zone_selection then global.player_zone_selection = {} end
    local selection
    if global.player_zone_selection[player_index]
    and global.player_zone_selection[player_index].colour
    and global.player_zone_selection[player_index].pattern then
        selection = global.player_zone_selection[player_index]
    else
        selection = {pattern = zone_data.zone_patterns[1], colour = zone_data.zone_colours[1]}
    end
    selection.zone = "zone-"..selection.pattern.."-"..selection.colour
    return selection
end

local function zone_set_player_selection(player_index, pattern, colour)
    local selection = zone_get_player_selection(player_index)
    if pattern then selection.pattern = pattern end
    if colour then selection.colour = colour end
    global.player_zone_selection[player_index] = selection
end

local function zone_gui_rebuild(player)

    local selection = zone_get_player_selection(player.index)
    local frame = player.gui.left.zone

    for _, child_name in pairs(frame.zone_colour_table.children_names) do
        frame.zone_colour_table[child_name].destroy()
    end
    for _, child_name in pairs(frame.zone_pattern_table.children_names) do
        frame.zone_pattern_table[child_name].destroy()
    end

    for _, colour in ipairs(zone_data.zone_colours) do
        frame.zone_colour_table.add{
            type = "sprite-button",
            name = colour,
            sprite="virtual-signal/".."zone-"..selection.pattern.."-"..colour,
            tooltip = colour,
            style= colour == selection.colour and "zone-button-active" or "zone-button"}
    end

    for _, pattern in ipairs(zone_data.zone_patterns) do
        frame.zone_pattern_table.add{
            type = "sprite-button",
            name = pattern,
            sprite="virtual-signal/".."zone-"..pattern.."-"..selection.colour,
            tooltip = pattern,
            style= pattern == selection.pattern and "zone-button-active" or "zone-button"}
    end
end

local function zone_show_gui(player)
    --zone_force_update()
    if player.gui.left.zone == nil then
        local zone_frame = player.gui.left.add{type = "frame", name = "zone", caption = {"text-zone-planner"}, direction = "vertical"}

        zone_frame.add{type ="label", name = "zone_colour_label", caption = {"text-zone-planner-colour"}}
        --zone_colour_table
        zone_frame.add{type ="table", name = "zone_colour_table", column_count = 6, style = "zones-table"}

        zone_frame.add{type ="label", name = "zone_pattern_label", caption = {"text-zone-planner-pattern"}}

        zone_frame.add{type ="table", name = "zone_pattern_table", column_count = 6, style = "zones-table"}

        zone_gui_rebuild(player)

        zone_frame.add{type ="label", name = "zones_alt_tip", caption = {"text-zone-planner-alt"}}
    end
end

local function zone_hide_gui(player)
    if player.gui.left.zone ~= nil then
        player.gui.left.zone.destroy()
    end
end

local function zone_on_player_cursor_stack_changed(event)
    local player = game.players[event.player_index]
    if player.cursor_stack and player.cursor_stack.valid and player.cursor_stack.valid_for_read then
        if player.cursor_stack.name == "zone-planner" then
            zone_show_gui(player)
        else
            zone_hide_gui(player)
        end
    else
        zone_hide_gui(player)
    end
end

local function zone_on_gui_click(event)
    local player_index = event.player_index
    local player = game.players[player_index];
    if game.players[player_index].gui.left.zone ~= nil and event.element.parent then -- avoid looping if menu is closed
        if event.element.parent.name == "zone_colour_table" then
            zone_set_player_selection(player_index, nil, event.element.name)
            zone_gui_rebuild(player)
        elseif event.element.parent.name == "zone_pattern_table" then
            zone_set_player_selection(player_index, event.element.name, nil)
            zone_gui_rebuild(player)
        end
    end
end

local function create_zone_entity(zone)
  -- remove old
  if zone.entity and zone.entity.valid then
    zone.entity.destroy()
  end
  local surface_index = zone.surface_index or 1
  local surface = game.surfaces[surface_index]
  if surface then
      zone.entity = surface.create_entity{name = zone.type, position={x = zone.x + 0.5, y = zone.y+0.5}, force = force}
  end
end

local function create_zone(data)
    local surface_index = data.surface_index
    local force = data.force
    local position = data.position
    local zone_name = data.type

    local x = math.floor(position.x)
    local y = math.floor(position.y)

    local new_zone = {
        type = zone_name,
        x = x,
        y = y,
        entity = nil, -- may get removed by concrete but the zone will still work without the entity
        surface_index = surface_index,
    }
    create_zone_entity(new_zone)

    global.forces[force.name][surface_index] = global.forces[force.name][surface_index] or {}
    global.forces[force.name][surface_index].zones = global.forces[force.name][surface_index].zones or {}
    global.forces[force.name][surface_index].zones[x] = global.forces[force.name][surface_index].zones[x] or {}
    global.forces[force.name][surface_index].zones[x][y] = new_zone

    global.forces[force.name][surface_index].zones_by_type = global.forces[force.name][surface_index].zones_by_type or {}
    global.forces[force.name][surface_index].zones_by_type[zone_name] = global.forces[force.name][surface_index].zones_by_type[zone_name] or {}
    table.insert(global.forces[force.name][surface_index].zones_by_type[zone_name], new_zone)
end

local function zone_apply_to_area(data)
    local surface_index = data.surface_index
    local force = data.force
    local area = data.area
    local zone_name = data.type

    if surface_index and force and area then
        -- if zone_name is nil the action will be remove only
        --zone_force_update()

        local minX = math.floor(area.left_top.x);
        local maxX = math.floor(area.right_bottom.x);
        if maxX - minX <= 0 then
            maxX = minX
        end
        local minY = math.floor(area.left_top.y);
        local maxY = math.floor(area.right_bottom.y);
        if maxY - minY <= 0 then
            maxY = minY
        end

        for y = minY, maxY, 1 do
            for x = minX, maxX, 1 do
                --remove existing
                if global.forces[force.name][surface_index]
                  and global.forces[force.name][surface_index].zones
                  and global.forces[force.name][surface_index].zones[x]
                  and global.forces[force.name][surface_index].zones[x][y] then
                    local zone_tile = global.forces[force.name][surface_index].zones[x][y]
                    if global.forces[force.name][surface_index]
                      and global.forces[force.name][surface_index].zones_by_type[zone_tile.type] then
                        remove_from_table_xy(global.forces[force.name][surface_index].zones_by_type[zone_tile.type], x, y)
                    end
                    if zone_tile.entity.valid then
                        zone_tile.entity.destroy()
                    end
                    global.forces[force.name][surface_index].zones[x][y] = nil
                end
            end
        end

        if zone_name then
            for y = minY, maxY, 1 do
                for x = minX, maxX, 1 do
                  create_zone({
                    surface_index = surface_index,
                    force = force,
                    position = {x = x, y = y},
                    type = zone_name
                  })
                end
            end
        end
    end
end

-- force requires force.name
-- zone string
-- index int
local function zone_by_type_and_index(force, surface_index, zone_type, index)
    --zone_force_update()
    if global.forces[force.name][surface_index]
      and global.forces[force.name][surface_index].zones_by_type[zone_type]
      and #global.forces[force.name][surface_index].zones_by_type[zone_type] > 0 then

        local real_index = nil
        local count = #global.forces[force.name][surface_index].zones_by_type[zone_type]
        if index > 0 then
            real_index = index % count
        elseif index < 0 then
            real_index = (count + (index + 1)) % count
        end
        if real_index == 0 then real_index = count end

        local zone_tile = global.forces[force.name][surface_index].zones_by_type[zone_type][real_index]
        if zone_tile then
            -- make sure zone position is valid
            if not (zone_tile.x and zone_tile.y) then
                if global.forces[force.name][surface_index].zones_by_type[zone_tile.type] then
                    remove_from_table_xy(global.forces[force.name][surface_index].zones_by_type[zone_tile.type], zone_tile.x, zone_tile.y)
                end
                if zone_tile.entity.valid then
                    zone_tile.entity.destroy()
                end
                global.forces[force.name][surface_index].zones[zone_tile.x][zone_tile.y] = nil
                return
            end
            -- make sure zone entity is valid
            if not (zone_tile.entity and zone_tile.entity.valid) then
              create_zone_entity(zone_tile)
            end
            zone_tile.index = real_index -- temp
            return zone_tile
        end
    end
end

local function zone_player_selected_area(event)
    if (event.item == "zone-planner") then
        local alt = event.name == defines.events.on_player_alt_selected_area
        --local player = game.players[event.player_index];
        --zone_force_update()
        local zone_name = nil
        if not alt then
            zone_name = zone_get_player_selection(event.player_index).zone
        end
        zone_apply_to_area{
            surface_index = game.players[event.player_index].surface.index,
            force = game.players[event.player_index].force,
            area = event.area,
            type = zone_name
        }
    end
end

local function on_configuration_changed()

  if not global.version then global.version = 0 end

  if global.version < version then
    if global.version < 000402 then
      -- make all zone tiles surface specific
      --[[
        zone tile now requires X, Y
        zones_by_type
      ]]--

      for force_name, force_data in pairs(global.forces) do

        for zone_name, zones_by_type in pairs(force_data.zones_by_type) do
          for index, xy_string in pairs(zones_by_type) do
            local zone_tile = force_data.zones[xy_string]

            zone_tile.x = math.floor(zone_tile.position.x)
            zone_tile.y = math.floor(zone_tile.position.y)
            local surface_index = 1
            if zone_tile.entity and zone_tile.entity.valid then
              surface_index = zone_tile.entity.surface.index
            end
            zone_tile.surface_index = surface_index
            local x = zone_tile.x
            local y = zone_tile.y
            local surface_index = zone_tile.surface_index
            local zone_name = zone_tile.type
            zone_tile.surface_name = nil
            zone_tile.position = nil
            force_data[surface_index] = force_data[surface_index] or {}
            force_data[surface_index].zones = force_data[surface_index].zones or {}
            force_data[surface_index].zones[x] = force_data[surface_index].zones[x] or {}
            force_data[surface_index].zones[x][y] = zone_tile

            force_data[surface_index].zones_by_type = force_data[surface_index].zones_by_type or {}
            force_data[surface_index].zones_by_type[zone_name] = force_data[surface_index].zones_by_type[zone_name] or {}
            table.insert(force_data[surface_index].zones_by_type[zone_name], zone_tile)

          end
        end

        force_data.zones = nil
        force_data.zones_by_type = nil
      end

      game.write_file("AAI/zones.global.lua", serpent.block(global, {comment=false, sparse=true, nocode=true}), false)

    end

  end

  global.version = version
end
script.on_configuration_changed(on_configuration_changed)

script.on_event(defines.events.on_player_selected_area, zone_player_selected_area)
script.on_event(defines.events.on_player_alt_selected_area, zone_player_selected_area)
script.on_event(defines.events.on_gui_click, zone_on_gui_click)
script.on_event(defines.events.on_player_cursor_stack_changed, zone_on_player_cursor_stack_changed)

-------------------------------------------------------------------------------
--[[INIT]]--
-------------------------------------------------------------------------------
local function on_init()
    global.forces = global.forces or {}

    for _, force in pairs(game.forces) do
        global.forces[force.name] = global.forces[force.name] or {}
        --global.forces[force.name].zones = global.forces[force.name].zones or {} -- by x_y string. each element is {type = name, position = position, entity = zone}
        --global.forces[force.name].zones_by_type = global.forces[force.name].zones_by_type or {} -- {zone-diagonal-blue = {"x_y_string", "x_y_string"}}
        --for _, zone in ipairs(zone_data.zones) do
        --    global.forces[force.name].zones_by_type[zone.name] = global.forces[force.name].zones_by_type[zone.name] or {} -- by indexed as x_y string
        --end
    end

    global.player_zone_selection = global.player_zone_selection or {} -- just the zone name

    global.version = version
end
script.on_init(on_init)
script.on_event(defines.events.on_force_created, on_init)

-------------------------------------------------------------------------------
--[[REMOTE]]--
-------------------------------------------------------------------------------
remote.add_interface("aai-zones", {
        get_zone_types = function() return zone_data.zones end,
        is_zone_type = function(zone_type) return zone_data.zones_by_name[zone_type] ~= nil end,
        apply_zone_to_area = zone_apply_to_area,
        get_zonedata_for_position = get_zonedata_for_position, -- data.force, data.position, Returns: {name=zone_type, index=zone_tile_index}
        get_zone_for_position = get_zone_for_position, -- data.force, data.position, Returns: zone_type string
        get_zone_count_of_type = zone_count_of_type, -- data.force, data.type
        get_zone_by_index = function (data) return zone_by_type_and_index(data.force, data.surface_index, data.type, data.index) end,-- data.force, data.type, data.index
        write_global = function() game.write_file("AAI/zones.global.lua", serpent.block(global, {comment=false, sparse=true, nocode=true}), false) end,
    }
)
