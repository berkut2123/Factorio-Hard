-- Event Defines---------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if not apm_game then apm_game = {} end

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

script.on_event(defines.events.on_entity_died, function(event) Event_on_entity_died(event) end)

script.on_event(defines.events.on_player_rotated_entity, function(event) Event_on_player_rotated_entity(event) end)

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function register_radioactive_items()
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_yellowcake', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_002', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_007', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_012', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_017', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_022', 2)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_027', 2)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_032', 2)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_037', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_042', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_uranium_oxide_pellet_047', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_032', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_037', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_042', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_047', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_used_032', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_used_037', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_used_042', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_used_047', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_plutonium_oxide_pellet', 2)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_plutonium_oxide_pellet_2', 3)
    remote.call('apm_radiation', 'add_item', 'apm_fuel_cell_mox', 2)
    remote.call('apm_radiation', 'add_item', 'apm_fuel_cell_mox_used', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_breeder_uranium_inventory', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_breeder_uranium_inventory_enriched', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_radioactive_waste', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_thorium_oxide_pellet', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_thorium', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_used_thorium', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_breeder_thorium_inventory', 1)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_breeder_thorium_inventory_enriched', 3)
    remote.call('apm_radiation', 'add_item', 'apm_nuclear_fuel_cell_used_deuterium', 1)
end
-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Init()
    register_radioactive_items()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Load()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function On_Update()
    register_radioactive_items()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_tick(event)   
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_mod_setting_changed(event)
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
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function Event_on_robot_build(event)
    if event.created_entity.valid ~= true then return end
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
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

script.on_init(On_Init)
script.on_load(On_Load)
script.on_configuration_changed(On_Update)