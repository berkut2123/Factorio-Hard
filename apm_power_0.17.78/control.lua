-- Require --------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if not apm_game then apm_game = {} end
if not apm_game.patch then apm_game.patch = {} end
apm_game.core =  require '__apm_lib__.lib.script.core'
apm_game.patch.aai =  require '__apm_lib__.lib.script.patch.aai'
apm_game.patch.angel =  require '__apm_lib__.lib.script.patch.angel'
apm_game.offshore_pumps = require '__apm_lib__.lib.script.offshore_pump'


-- Locals ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function get_starter_items()
    local item_list =   {}
    item_list["burner-mining-drill"] = 2
    item_list["burner-inserter"] = 4
    item_list["apm_burner_filter_inserter"] = 2
    item_list["wood"] = 15
    item_list["stone-furnace"] = 2
    return item_list
end 

-- Event Defines---------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
script.on_event(defines.events.on_player_created, function(event) Event_on_player_created(event) end)
script.on_event(defines.events.on_player_respawned, function(event) Event_on_player_respawned(event) end)

script.on_event(defines.events.on_tick, function(event) Event_on_tick(event) end)
script.on_event (defines.events.on_runtime_mod_setting_changed, function(event) Event_mod_setting_changed(event) end)

script.on_event(defines.events.on_built_entity, function(event) Event_on_build(event) end)
script.on_event(defines.events.on_robot_built_entity, function(event) Event_on_robot_build(event) end)

script.on_event(defines.events.on_player_mined_entity, function(event) Event_on_mined(event) end)
script.on_event(defines.events.on_robot_mined_entity, function(event) Event_on_robot_mined(event) end)

script.on_event(defines.events.on_entity_died, function(event) Event_on_entity_died(event) end)

script.on_event(defines.events.on_player_rotated_entity, function(event) Event_on_player_rotated_entity(event) end)

script.on_event(defines.events.on_gui_click, function(event) Event_on_gui_click(event) end)



-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Init()
    if not global.msg_01759 then
        global.msg_01759 = true
    end
    --offshore_pump.on_init()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Load()
    --offshore_pump.on_load()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Update()
    offshore_pump.on_update()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function message(player)
    local msg = player.gui.center.add{ type="frame", name="apm_message", style="apm", direction = "vertical", 
    caption="Amator Phasma's (Coal & Steam)" }
    local text = msg.add{type = "label", caption = {"apm_power_msg_01759"}}
    text.style.width = 400
    text.style.single_line = false
    msg.add{type = "button", name="apm_message_ok", style = "confirm_button", caption="Confirm"}
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_gui_click(event)
  if event.element and event.element.valid and event.element.name == 'apm_message_ok' then
    game.players[event.player_index].gui.center['apm_message'].destroy()
    --game.tick_paused = false
  end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function on_tick_message()
    if not global.msg_01759 then
        for _, player in pairs(game.connected_players) do
            message(player)
        end
        global.msg_01759 = true
        --game.tick_paused = true
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_tick(event)   
    --apm_game.workarounds.science_pack_tech_check()
    apm_game.patch.aai.on_tick()
    apm_game.patch.angel.on_tick()
    on_tick_message()
end

function Event_mod_setting_changed(event)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_player_created(event)
    local player = game.players[event.player_index]
    local items = get_starter_items()
    apm_game.core.player_insert_items_safe(player, items)

	apm_game.patch.angel.player_create(event)
end
-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_build(event)
    if event.created_entity.valid ~= true then return end
    offshore_pump.on_build(event.created_entity)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_robot_build(event)
    if event.created_entity.valid ~= true then return end
    offshore_pump.on_build(event.created_entity)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_mined(event)
    if event.entity.valid ~= true then return end
    --offshore_pump.on_mined(event.entity)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_robot_mined(event)
    if event.entity .valid ~= true then return end
    --offshore_pump.on_mined(event.entity)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_player_respawned(event)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_player_rotated_entity(event)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_entity_died(event)
    --offshore_pump.on_dead(event.entity)
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

script.on_init(On_Init)
script.on_load(On_Load)
script.on_configuration_changed(On_Update)