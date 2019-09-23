Handlers = {}

function Handlers.enabled()
    if (gSets.enabled()) and (not version.needUpdate()) then
        return true
    end
    return false
end

function Handlers.onEvents(func, eventNames)
    -- local hand = handler(func)
    for i = 1, #eventNames do
        local name = eventNames[i]
        local event = defines.events[name]
        if not event then
            event = name
        end
        script.on_event(event, func)
    end
end
local onEvents = Handlers.onEvents

function Handlers.onBuilt(event)
    if not Handlers.enabled() then
        return
    end
    cInform("onBuilt")
    local ent = event.entity or event.created_entity or event.destination
    if (not isValid(ent)) then
        return
    end
    if (ent.name == HI.protoName) then
        ent.destroy {raise_destroy = true}
        return
    end
    local waitEnt = createdQ.waitQTriggers[ent.name]
    if (waitEnt) then
        cInform("adding to waitQ")
        createdQ.waitQAdd(waitEnt)
    end
    cInform("adding to createdQ")
    createdQ.push(ent)
end
onEvents(
    Handlers.onBuilt,
    {"on_built_entity", "on_robot_built_entity", "script_raised_built", "script_raised_revive", "on_entity_cloned"}
)
-- script.on_event(defines.events.on_built_entity, on_built)
-- script.on_event(defines.events.on_robot_built_entity, on_built)
-- script.on_event(defines.events.script_raised_built, on_built)
function Handlers.onRemoved(event)
    if not Handlers.enabled() then
        return
    end
    ---@type LuaEntity
    local ent = event.entity
    if (not isValid(ent)) then
        return
    end
    local forceName = ent.force.name
    if (forceName == "neutral") or (forceName == "enemy") then
        return
    end
    if (TC.isChestName(ent.name)) then
        local chest = TC.getChestFromEnt(ent)
        if (chest) then
            chest:destroy()
        end
        return
    end
    local tracked = EntDB.names()
    if EntDB.contains(ent.name) then
        for slot in EntDB.iterTrackedSlots(ent) do
            local retBool = slot:force():doReturn()
            if (retBool) and (not cause) then
                cInform("try to return for destroy...")
                slot:returnItems()
            end
            inform("destroy slot")
            slot:destroy()
        end
    end
end
onEvents(
    Handlers.onRemoved,
    {"on_pre_player_mined_item", "on_robot_pre_mined", "on_entity_died", "script_raised_destroy"}
)

-- function Handlers.playerGunChanged(event)
-- 	cInform("player gun inventory changed")
-- 	local player = game.get_player(event.player_index)
-- 	if (player) then
-- 		local char = player.character
-- 		if (isValid(char)) then
-- 			local slots = SL.getSlotsFromEntQ(char)
-- 			for slot in slots:iter() do slot:destroy() end
-- 			createdQ.push(char)
-- 		end
-- 	end
-- end
-- onEvents(Handlers.playerGunChanged, {"on_player_gun_inventory_changed"})

-- Handlers.trackPlayer =
-- function(event)
-- local player = game.players[event.player_index]
-- if (game.surfaces[event.surface_index].name ~= "nauvis") then
-- if (player.surface.name == "nauvis") then
-- trackedPlayers()[player.index] = player.position
-- end
-- end
-- end
-- onEvents(trackPlayer, {"on_player_changed_surface"})

function Handlers.settingChange(event) -- handler(
    if (gSets.requireUpdate[event.setting]) then
        version.update()
    elseif (event.setting:find("ammo_loader")) then
        util.clearRenders()
        -- version.update()
        gSets.update()
        for slot in SL.iterDB() do
            slot:checkEnabled()
        end
    end
end
-- )
script.on_event(defines.events.on_runtime_mod_setting_changed, Handlers.settingChange)
function Handlers.preTick(event)
    gSets.tick(event.tick)
    -- if (gSets.tick() == event.tick) then
    -- return false
    -- end
    if version.needUpdate() then
        version.update()
        return false
    end
    if (not gSets.enabled()) then
        return false
    end
    return true
end
function Handlers.onNthTick(event)
    if not Handlers.preTick(event) then
        return
    end
    -- local prof = game.create_profiler()
    -- Force.tickAll()
    -- prof.stop()
    -- cInform("Profiler Force.tickAll: ", prof)
    -- util.printProfiler()
    -- game.print(prof)
end
function Handlers.onEveryTick(event)
    if not Handlers.preTick(event) then
        return
    end
    if (gSets.tick() >= gSets.inserterNextPurgeTick()) then
        gSets.inserterNextPurgeTick(gSets.tick() + gSets.ticksBetweenInserterPurge)
        HI.destroyOrphans()
        EntDB.purgeTracked()
    end
    -- local prof = game.create_profiler()
    createdQ.tick()
    -- if (createdQ.size() <= 0) then
    Force.tickAll()
    -- end
    -- prof.stop()
    -- cInform("createdQ.tick: ")
    -- util.printProfiler()
end
function Handlers.updateRenders(event)
    if not Handlers.preTick(event) then
        return
    end
    -- local prof = game.create_profiler()
    if (global.draw_toggle.count > 0) then
        for pIndex, t in pairs(global.draw_toggle) do
            if (pIndex ~= "count") then
                Handlers.keyChestRangeToggle({player_index = pIndex})
                Handlers.keyChestRangeToggle({player_index = pIndex})
            -- util.clearPlayerRenders(game.get_player(pIndex))
            end
        end
    end
    -- prof.stop()
    -- cInform("updateRenders: ")
    -- util.printProfiler()
end
-- script.on_event(defines.events.on_tick, on_tick)
-- script.on_nth_tick(settings.global["ammo_loader_ticks_between_cycles"].value, on_tick)
-- script.on_nth_tick(gSets.ticksBetweenCycles(), Handlers.onNthTick)
script.on_nth_tick(30, Handlers.updateRenders)
onEvents(Handlers.onEveryTick, {"on_tick"})
function Handlers.onConfigChanged()
    version.update()
    ctInform("Try out the new hard mode! (enable in startup settings)")
    -- ctInform("Chests must now be in factories when using Factorissimo2! (disable in mod settings)")
    -- ctInform("Also try out the nifty new hotkeys!")
    -- ctInform(
    --     "Toggle Ammo Loader overlay: ",
    --     game.custom_input_prototypes["ammo-loader-key-toggle-chest-ranges"].key_sequence
    -- )
    -- ctInform("Enable/disable mod: ", game.custom_input_prototypes["ammo-loader-key-toggle-enabled"].key_sequence)
    -- ctInform(
    --     "Return all items to chests/storage: ",
    --     game.custom_input_prototypes["ammo-loader-key-return"].key_sequence
    -- )
end
script.on_configuration_changed(version.update)
script.on_init(
    function()
        Init.doInit()
        -- Gui.createInitialDialogue()
    end
)

function Handlers.onLoad()
    if not version.needUpdate() then
        Init.doOnLoad()
    end
end
script.on_load(Handlers.onLoad)

function Handlers.onSelectedEntity(event)
    if not Handlers.enabled() then
        return
    end
    local player = game.players[event.player_index]
    if (not player) or (not gSets.drawRange(player)) or (gSets.drawToggle(player)) then
        return
    end
    util.clearPlayerRenders(player)
    local selected = player.selected
    if (not selected) or (not selected.valid) or (selected.force.name ~= player.force.name) then
        return
    end
    if (TC.isChestName(selected.name)) then
        local chest = TC.getChestFromEnt(selected)
        if (chest) then
            chest:drawRange(player)
            chest:highlightConsumers(player)
        end
    elseif (EntDB.contains(selected.name)) then
        local slots = SL.getSlotsFromEntQ(selected)
        for slot in slots:slotIter() do
            local prov = slot:provider()
            local slotColor = util.colors.red
            if (prov) then
                slotColor = util.colors.blue
                slot:drawLineToProvider(player)
            end
            slot:highlight(player, slotColor)
        end
    end
end
onEvents(Handlers.onSelectedEntity, {"on_selected_entity_changed"})

function Handlers.playerGUI(player)
    -- local gui = player.gui.left.children[gSets.itemInfoGUIName()] or
    if not gui then
        local gui = player.gui.left.add({type = "frame", name = gSets.itemInfoGUIName()})
        -- local rankLabel = gui.add({type = "label", name = gSets.itemInfoGUIName() .. "RankLabel", caption = "Rank: " .. inf.rank})
        -- local dmgLabel = gui.add({type = "label", name = gSets.itemInfoGUIName() .. "DmgLabel", caption = "Score (total): " .. inf.score})
        global.guiTracker[player.index] = gui
    end
    return gui
end

function Handlers.itemInfoGUI(player, item)
    local inf = itemInfo(item)
    local playerGUI = player.gui.left
    local gui =
        playerGUI[gSets.itemInfoGUIName()] or
        playerGUI.add({type = "frame", name = gSets.itemInfoGUIName(), direction = "vertical"})
    if not gui then
        return
    end
    if not inf then
        gui.enabled = false
        gui.visible = false
        return
    end
    gui.enabled = true
    gui.visible = true
    local itemName = game.item_prototypes[inf.name].localised_name or {"item-name." .. inf.name}
    gui.caption = itemName
    local tab = gui
    local cat = tab["category"] or tab.add({type = "label", name = "category", caption = "Category: " .. inf.category})
    cat.caption = "Category: " .. inf.category
    local rank = tab["rank"] or tab.add({type = "label", name = "rank", caption = "Rank: " .. inf.rank})
    rank.caption = string.concat("Rank: ", inf.rank, "/", inf.catSize)
    local dmg = tab["dmg"] or tab.add({type = "label", name = "dmg", caption = "Score (total): " .. inf.score})
    dmg.caption = "Score (total): " .. inf.score
end

function Handlers.onGUI(event)
    local player = game.get_player(event.player_index)
    if (not player) then
        return
    end
    local stack = player.cursor_stack
    if (stack) and (stack.valid_for_read) and (stack.count > 0) then
        -- cInform(stack.name, stack.count, player.opened_gui_type)
        local inf = itemInfo(stack.name)
        if (inf) then
            Handlers.itemInfoGUI(player, inf.name)
        -- local gui = Handlers.playerGUI(player)
        -- gui.enabled = true
        -- gui.caption = {"item-name." .. inf.name}
        -- local rankLabel = gui.add({type = "label", name = gSets.itemInfoGUIName() .. "RankLabel", caption = "Rank: " .. inf.rank})
        end
    else
        Handlers.itemInfoGUI(player)
    end

    -- cInform(player.cursor_stack, player.opened, player.opened_gui_type)
end
onEvents(Handlers.onGUI, {"on_player_cursor_stack_changed"})

function Handlers.onResearch(event)
    if not Handlers.enabled() then
        return
    end
    local tech = event.research
    if (Map.containsValue(protoNames.tech, tech.name)) then
        -- Force.get(tech.force.name).techs[tech.name] = true
        -- version.update()
        local force = Force.get(tech.force.name)
        force:getTechs()
        for slot in force.slots:slotIter() do
            slot:checkEnabled()
        end
    elseif (gSets.checkAfterResearch()) then
        version.update()
    end
end
onEvents(Handlers.onResearch, {"on_research_finished"})

function Handlers.keyReturn(event)
    inform("returning all items.")
    -- SL.returnAll(true, false)
    local player = game.players[event.player_index]
    if (player) then
        for slot in Force.get(player.force.name).slots:slotIter() do
            slot:returnItems()
        end
    end
    -- inform(event)
    -- for id, slotObj in pairs(SL.allSlots()) do
    --     slotObj:returnItems(true)
    -- end
end
onEvents(Handlers.keyReturn, {"ammo-loader-key-return"})
-- function Handlers.toggleInitDialogue(event)
--     local player = game.get_player(event.player_index)
--     if (not player) then
--         return
--     end
--     local screen = player.gui.screen
--     local init = screen[gui.names.initDialogue] or gui.createInitialDialogue(player)
--     if (init.enabled) and (init.visible) then
--         init.visible = false
--         init.enabled = false
--     end
--     init.enabled = true
--     init.visible = true
-- end
-- onEvents(Handlers.toggleInitDialogue, {"ammo-loader-key-return"})

function Handlers.keyReset()
    version.update()
end
onEvents(Handlers.keyReset, {"ammo-loader-key-reset"})

function Handlers.keyToggleEnabled()
    local isEnabled = gSets.enabled()
    if isEnabled then
        settings.global["ammo_loader_enabled"] = {value = false}
        version.update()
        ctInform("Ammo Loader Mod disabled")
    else
        settings.global["ammo_loader_enabled"] = {value = true}
        version.update()
        ctInform("Ammo Loader Mod enabled")
    end
end
onEvents(Handlers.keyToggleEnabled, {"ammo-loader-key-toggle-enabled"})

function Handlers.keyChestRangeToggle(event)
    local pInd = event.player_index
    local player = game.players[pInd]
    if (not player) then
        return nil
    end
    util.clearPlayerRenders(player)
    local isOn = gSets.drawToggle(player)
    if (isOn) then
        gSets.drawToggle(player, false)
        return
    end
    local chests = Force.get(player.force.name).chests
    for chest in chests:chestIter() do
        chest:drawRange(player)
        chest:highlightConsumers(player)
    end
    gSets.drawToggle(player, true)
end
onEvents(Handlers.keyChestRangeToggle, {"ammo-loader-key-toggle-chest-ranges"})
