---Chests represent a single Loader Chest in-game.
---@class Chest : dbObject
TC = {}

TC.className = "TrackedChest"
TC.dbName = TC.className
DB.register(TC.dbName)
TC.objMT = {
    __index = TC
}

function TC._init()
    -- util.destroyAll(TC.indicators.infinite)
    -- DB.new(TC.dbName)
    global["TC"] = {}
    global["TC"]["chestNames"] = TC.findChestNames()
end
Init.registerFunc(TC._init)
function TC._onLoad()
    for id, obj in pairs(DB.getEntries(TC.dbName)) do
        setmetatable(obj, TC.objMT)
        setmetatable(obj.consumerQ, idQ.objMT)
        setmetatable(obj.addQ, idQ.objMT)
        -- setmetatable(obj._slotsInRangeQ, idQ.objMT)
        for item, qList in pairs(obj.provItems) do
            if (qList.orphanQ) then
                setmetatable(qList.orphanQ, idQ.objMT)
            end
            if (qList.upgradeQ) then
                setmetatable(qList.upgradeQ, idQ.objMT)
            end
            if (qList.queue) then
                setmetatable(qList.queue, idQ.objMT)
            end
        end
    end
end
Init.registerOnLoadFunc(TC._onLoad)

function TC.master()
    return global["TC"]
end
function TC.chestNames(listType)
    if not listType then
        return TC.master()["chestNames"]
    end
    return TC.master()["chestNames"][listType]
end
function TC.chestDB()
    return DB.getEntries(TC.dbName)
end

---@param ent LuaEntity
function TC.isTrackable(ent)
    if (not isValid(ent)) or (not TC.isChestName(ent.name)) or (EntDB.trackedCount(ent, TC.dbName) > 0) then
        -- or (TC.getChestFromEnt(ent)) then
        return false
    end
    return true
end

function TC.findChestNames()
    local result = {list = {}, hash = {}}
    local hash = result.hash
    local list = result.list
    for key, name in pairs(protoNames.chests) do
        hash[name] = true
        list[#list + 1] = name
    end
    return result
end

function TC.isChest(ent)
    if (not isValid(ent)) then
        return false
    end
    return Map.containsValue(protoNames.chests, ent.name)
end

function TC.isChestName(name)
    if not name then
        return false
    end
    return Map.contains(protoNames.chests, name)
end

---Get Chest from id.
---@return Chest
function TC.getObj(id)
    return DB.getObj(TC.dbName, id)
end

---@return Chest
function TC.getChestFromEnt(ent)
    for id, obj in pairs(DB.getEntries(TC.dbName)) do
        if (obj.ent == ent) then
            return obj
        end
    end
    return nil
end

function TC.entDrawRange(ent)
    local chest = TC.getChestFromEnt(ent)
    if not chest then
        return nil
    end
    chest:drawRange()
end

---Create new TrackedChest object
---@param ent LuaEntity
---@return Chest
function TC.new(ent)
    if (not TC.isTrackable(ent)) then
        cInform("TC.new: entity not valid chest")
        return nil
    end

    ---@type Chest
    local obj = {}
    setmetatable(obj, TC.objMT)
    obj.entName = ent.name
    obj.ent = ent
    obj._forceName = ent.force.name
    obj._surfaceName = ent.surface.name
    obj.inv = ent.get_inventory(defines.inventory.chest)
    if not isValid(obj.inv) then
        return nil
    end
    local pos = ent.position
    obj._posX = pos.x
    obj._posY = pos.y
    obj.id = DB.insert(TC.dbName, obj)

    local rad = gSets.chestRadius()
    local force = Force.get(ent.force.name)
    obj.consumerQ = idQ.newSlotQ(true)
    obj.addQ = idQ.newSlotQ(true)
    -- obj.consumerQ = obj.consumers
    if (rad > 0) then
        obj.area = Position.expand_to_area(obj:position(), rad)
    end
    if (ent.name == protoNames.chests.storage) then
        obj.isStorage = true
    end
    obj._cacheLastTick = 0
    obj._invCache = {}
    obj._removalCache = {}
    obj.provItems = {}
    force:addChest(obj)

    EntDB.addTracked(obj)
    cInform("created new chest")
    return obj
end

function TC:isInRange(slot)
    return util.isInRange(slot, self)
end

function TC:position()
    return {x = self._posX, y = self._posY}
end

function TC:surface()
    return self.ent.surface
end
function TC:surfaceName()
    return self._surfaceName or self.ent.surface.name
end

---Remove Chest from database to open for garbage collection.
function TC:destroy()
    local force = self:force()
    DB.deleteID(TC.dbName, self.id)
    if (self.isStorage) then
        force.storageChests:softRemove(self)
    else
        force.chests:softRemove(self)
    end
    for slot in self.consumerQ:slotIter(nil, true) do
        slot:setProv()
        -- force.orphans:pushleft(slot)
    end
end

---Check object validity.
function TC:isValid()
    if not self then
        return false
    end
    if (not self.ent) or (not self.ent.valid) then
        return false
    end
    return true
end

function TC:drawRange(player)
    local radius = gSets.chestRadius()
    if (radius <= 0) or (radius > 100) then
        return
    end
    -- local alpha = 0.1
    local color = {r = 0.05, g = 0.2, b = 0.15, a = 0.05}
    local opts = {
        -- color = util.colors.fuchsia,
        color = color,
        -- radius = radius,
        width = 8,
        filled = true,
        left_top = self.area.left_top,
        right_bottom = self.area.right_bottom,
        surface = self:surfaceName(),
        players = {player.index},
        draw_on_ground = true
    }
    -- rendering.draw_circle(opts)
    rendering.draw_rectangle(opts)
end

function TC:highlightConsumers(player)
    local slots = self.consumerQ
    -- local ents = {}
    -- local e = 0
    local s = 0
    for slot in slots:slotIter() do
        s = s + 1
        slot:drawLineToProvider(player)
        local entID = EntDB.entID(slot.ent)
        -- local entList = ents[entID]
        -- if not entList then
        -- entList = {}
        -- ents[entID] = entList
        -- end
        -- if (not Array.contains(entList, slot.ent)) then
        -- e = e + 1
        slot:highlight(player)
        -- ents[e] = slot.ent
        -- end
    end
    cInform("providing ", s, " slots.")
    rendering.draw_text {
        text = {"", string.toString(s)},
        surface = self:surface(),
        target = self.ent,
        scale = 1.5,
        target_offset = {-0.25, -1.5},
        color = {1.0, 1.0, 1.0},
        players = {player.index},
        draw_on_ground = false
        -- scale_with_zoom = true
    }
end

function TC:force()
    -- return Force.get(self.ent.force.name)
    return Force.get(self:forceName())
end
function TC:forceName()
    -- return self.ent.force.name
    return self._forceName or self.ent.force.name
end

function TC:itemAmt(item, new)
    if (new) then
        self._invCache[item] = new
        return new
    end
    local amt = self._invCache[item] or 0
    return amt
end

---Insert items into chest while maintaining inventory cache. Returns the number of items inserted.
---@param stack ItemStack
---@return integer
function TC:insert(stack)
    if (util.isEmpty(stack)) then
        return 0
    end
    local amtInserted = self.inv.insert(stack)
    local cache = self._invCache
    if (amtInserted > 0) then
        local item = stack.name
        if not cache[item] then
            cache[item] = amtInserted
        else
            cache[item] = cache[item] + amtInserted
        end
    end
    return amtInserted
end

---Remove items from the chest inventory while maintaining the inventory cache. Returns the number of items removed.
---@param stack ItemStack
---@return integer
function TC:remove(stack)
    if (util.isEmpty(stack)) then
        return 0
    end
    local cache = self._invCache
    local amtRemoved = self.inv.remove(stack)
    local item = stack.name
    if (cache[item]) then
        cache[item] = cache[item] - amtRemoved
    end
    return amtRemoved
end

function TC:slotsInRangeQ()
    if (not self.area) then
        return self:force().slots
    else
        return self._slotsInRangeQ
    end
end

function TC:hasCat(cat)
    for item, count in pairs(self._invCache) do
        local inf = itemInfo(item)
        if (inf.category == cat) then
            return true
        end
    end
    return false
end

function TC:providedItems()
    local force = self:force()
    local items = {}
    for catName, cat in pairs(force.provs.categories) do
        for itemName, item in pairs(cat.items) do
            local cons = item.ids[self.id]
            if (cons) then
                items[itemName] = cons
            end
        end
    end
    return items
end

function TC:isProvidingCat(catName)
    local cat = self:force().provs.categories[catName]
    for itemName, item in pairs(cat.items) do
        local cons = item.ids[self.id]
        if (cons) then
            return true
        end
    end
    return false
end

function TC:catItems(catName)
    local cat = self:force().provs.categories[catName]
    local items = {}
    for itemName, item in pairs(cat.items) do
        local cons = item.ids[self.id]
        if (cons) then
            Array.insert(items, itemName)
        end
    end
    return items
end

function TC:itemConsumers(item)
    -- local inf = itemInfo(item)
    local f = self:force()
    local provItem = f:provItem(item)
    local reg = provItem.ids[self.id]
    return reg
end

function TC:itemConsumerQ(item)
    local cons = self:itemConsumers(item)
    local q = idQ.newSlotQ()
    if cons then
        for id, t in pairs(cons) do
            local obj = SL.getObj(id)
            if (obj) then
                q:push(id)
            end
        end
    end
    return q
end

---@return fun():Slot
function TC:itemIter(item)
    local qList = self.provItems[item]
    ---@type idQ
    local q = qList.queue
    -- local highest = DB.getHighest(SL.dbName)
    local highest = qList.highest
    local n = 0
    local maxSlots = gSets.maxSlotsPerChestTick()
    local allSlots = DB.getEntries(SL.dbName)

    ---@type fun():Slot
    local ret = function()
        if (n >= maxSlots) then
            return
        end
        n = n + 1
        while (qList.cur < highest) do
            qList.cur = qList.cur + 1
            local slot = allSlots[qList.cur]
            if (slot) then
                return slot
            end
        end
        if (q:size() > 0) then
            local slot = q:pop()
            return slot
        end
    end
    return ret
end

function TC:doQ()
    local force = self:force()
    local maxSlots = gSets.maxSlotsPerChestTick()
    local doUpgrade = force:doUpgrade()
    local consQ = self.consumerQ
    ---@type table<number, Slot>
    local slots = DB.getEntries(SL.dbName)
    local highest = DB.getHighest(SL.dbName)
    local n = 0

    for item, qList in pairs(self.provItems) do
        ---@type idQ
        local q = qList.queue
        ---@type idQ
        local upQ = qList.upgradeQ
        -- if force.slotsChecked >= maxSlots then
        -- break
        -- end
        local itemCount = self:itemAmt(item)
        if (itemCount > 0) and ((q:size() > 0) or (upQ:size() > 0)) then
            local inf = itemInfo(item)
            if (q:size() > 0) then
                -- if (gSets.tick() % 60 == 0) then
                cInform(item, " queue: ", q:size(), " remaining")
                -- end
                for slot in q:slotIter(maxSlots, true) do
                    if (slot:sourceID()) then
                        upQ:push(slot)
                    else
                        if ((not slot.canMove) or (self:isInRange(slot))) and (slot.category == inf.category) then
                            local curFilterInf = slot:filterInfo()
                            if
                                (not curFilterInf) or (curFilterInf.rank > inf.rank) or
                                    ((curFilterInf.rank == inf.rank) and (slot:provIsCloser(self)))
                             then
                                n = n + 1
                                slot:setProv(self, item)
                                itemCount = self:itemAmt(item)
                            end
                        end
                    end
                    if (itemCount <= 0) or (n >= maxSlots) then
                        return
                    end
                end
            end
            if (upQ:size() > 0) then
                cInform(item, " upgrade queue: ", upQ:size(), " remaining")
                for slot in upQ:slotIter(maxSlots, true) do
                    if ((not slot.canMove) or (self:isInRange(slot))) and (slot.category == inf.category) then
                        local curFilterInf = slot:filterInfo()
                        if
                            (not curFilterInf) or (curFilterInf.rank > inf.rank) or
                                ((curFilterInf.rank == inf.rank) and (slot:provIsCloser(self)))
                         then
                            n = n + 1
                            slot:setProv(self, item)
                            itemCount = self:itemAmt(item)
                        end
                    end
                    if (itemCount <= 0) or (n >= maxSlots) then
                        return
                    end
                end
            end
        end
    end
    -- self:doAddQ()
end

function TC:updateCache()
    local gTick = gSets.tick()
    local ticksToWait = gSets.ticksBeforeCacheRemoval()
    local fTick = gTick + ticksToWait
    local newCache = self.inv.get_contents()
    local oldCache = self._invCache
    self._invCache = newCache
    local force = self:force()
    local rmCache = self._removalCache
    for item, count in pairs(self._invCache) do
        local inf = itemInfo(item)
        if (inf) then
            rmCache[item] = nil
            if (not self.provItems[item]) then
                -- force:addProv(self, item)
                -- self:addProvItem(item)
                -- local orphQ = force:slotsFiltered({category = inf.category, chest = self, item = item})
                -- local orphQ = force.slots:copy()
                -- local upQ = force:slotsFiltered({category = inf.category, item = item, chest = self})
                -- local upQ = idQ.newSlotQ(true)
                -- self.provItems[item] = {orphanQ = orphQ, upgradeQ = upQ, highest = DB.getHighest(SL.dbName), cur = 0}
                -- local forceSlots = force.slots:copy()
                local forceSlots = force:slotsFiltered({category = inf.category, item = item, chest = self})
                self.provItems[item] = {
                    highest = DB.getHighest(SL.dbName),
                    cur = 0,
                    queue = forceSlots,
                    upgradeQ = idQ.newSlotQ(true)
                }
            end
        end
    end
    for item, count in pairs(oldCache) do
        local inf = itemInfo(item)
        if (inf) and (not self._invCache[item]) and (not rmCache[item]) then
            rmCache[item] = fTick
        end
    end
    for item, tick in pairs(rmCache) do
        if (gTick >= tick) then
            rmCache[item] = nil
            self:removeProvItem(item)
        end
    end
end

function TC:provItemConsumerQ(item)
    local slots = self.consumerQ
    local q = idQ.newSlotQ(true)
    for slot in slots:slotIter() do
        local filterItem = slot:filterItem()
        if (filterItem) and (filterItem == item) then
            q:push(slot)
        end
    end
    return q
end

function TC:removeProvItem(item)
    local force = self:force()
    self.provItems[item] = nil
    local slots = self.consumerQ
    for slot in slots:slotIter() do
        if (slot:filterItem() == item) then
            slot:setProv()
        -- force.orphans:push(slot)
        -- slots:remove(slot)
        -- if (slot.canMove) then
        -- slot:setProv()
        -- else
        -- slot.isOrphan = true
        -- force.orphans:push(slot)
        -- end
        end
        -- self:force().orphans:push(slot)
        -- slot:queueAllProvs()
    end
end

function TC:addProvItem(item)
    -- self.provItems[item] = true
    -- local inf = itemInfo(item)
    -- local slots = self:force():slotsFiltered({chest = self, category = inf.category})
    -- for slot in slots do
end

function TC:itemQ(item)
    item = item or ""
    local provItem = self.provItems[item]
    if (provItem) and (provItem.orphanQ) then
        return provItem.orphanQ
    end
    return nil
end

---@return idQ
function TC:itemOrphanQ(item)
    if not item then
        return
    end
    local provItem = self.provItems[item]
    if (provItem) and (provItem.orphanQ) then
        return provItem.orphanQ
    end
end

---@return idQ
function TC:itemUpgradeQ(item)
    if not item then
        return
    end
    local provItem = self.provItems[item]
    if (provItem) and (provItem.upgradeQ) then
        return provItem.upgradeQ
    end
end

function TC:hasProvCat(catName)
    for itemName, t in pairs(self.provItems) do
        local inf = itemInfo(itemName)
        if (inf) and (inf.category == catName) then
            return true
        end
    end
    return false
end

function TC:hasBetterProvItem(itemName, equal)
    local itemInf = itemInfo(itemName)
    if (not itemInf) then
        return true
    end
    for provItem, t in pairs(self.provItems) do
        local inf = itemInfo(provItem)
        if
            (inf.category == itemInf.category) and
                ((inf.rank < itemInf.rank) or ((equal) and (inf.rank == itemInf.rank)))
         then
            return true
        end
    end
    return false
end

function TC:tick()
    if not self then
        inform("null chest sent to TC.tick")
        return
    end
    if (self.isStorage) then
        return
    end
    local gTick = gSets.tick()
    local minTicks = gSets.ticksBetweenChestCache()
    if (gTick >= self._cacheLastTick + minTicks) then
        self._cacheLastTick = gTick
        self:updateCache()
    end
    self:doQ()
    -- self:doAddQ()
end
return TC
