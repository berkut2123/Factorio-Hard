-- Event Defines---------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if not apm_game then apm_game = {} end
apm_game.inserter = require 'lib.script.inserter'
apm_game.core = require 'lib.script.core'
apm_game.sound = require 'lib.script.sound'
apm_game.radiation = require 'lib.script.radiation'
apm_game.storage = require 'lib.script.storage'

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

script.on_event(defines.events.on_player_mined_entity, function(event) Event_on_remove(event) end)
script.on_event(defines.events.on_robot_mined_entity, function(event) Event_on_robot_remove(event) end)

script.on_event(defines.events.on_entity_died, function(event) Event_on_entity_died(event) end)

script.on_event(defines.events.on_player_rotated_entity, function(event) Event_on_player_rotated_entity(event) end)

-- Remote Interface ------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
remote.add_interface("apm_radiation",{
    add_item = apm_game.radiation.remote.add_item,
    remove_item = apm_game.radiation.remote.remove_item
    })

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Init()
	apm_game.inserter.all.on_init()
    apm_game.radiation.on_init()
    apm_game.storage.on_init()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Load()
	apm_game.inserter.all.on_load()
    apm_game.radiation.on_load()
    apm_game.storage.on_load()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Update()
	apm_game.inserter.all.on_update()
    apm_game.radiation.on_update()
    apm_game.storage.on_update()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_tick(event)   
    apm_game.inserter.all.on_tick()
    apm_game.radiation.on_tick()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_mod_setting_changed(event)
    apm_game.inserter.all.on_update()
    apm_game.radiation.on_update()
    apm_game.storage.on_update()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_player_created(event)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_build(event)
    if event.created_entity.valid ~= true then return end
    apm_game.inserter.all.on_build(event.created_entity)   
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_robot_build(event)
    if event.created_entity.valid ~= true then return end
    apm_game.inserter.all.on_build(event.created_entity)   
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_remove(event)
    if event.entity.valid ~= true then return end
    --apm_game.inserter.all.on_remove(event.entity)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_robot_remove(event)
    if event.entity.valid ~= true then return end
    --apm_game.inserter.all.on_remove(event.entity)
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
	--apm_game.inserter.all.on_remove(event.entity)
    apm_game.storage.died(event)
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

script.on_init(On_Init)
script.on_load(On_Load)
script.on_configuration_changed(On_Update)