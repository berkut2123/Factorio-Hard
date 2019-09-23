---Slots represent a single slot on any entity that is being provided to.
---@class Slot
SL = {}
SL.className = "TrackedSlot"
SL.dbName = SL.className
DB.register(SL.dbName)

SL.objMT = {
    __index = SL
}

function SL._onLoad()
    for id, obj in pairs(DB.getEntries(SL.dbName)) do
        setmetatable(obj, SL.objMT)
    end
end
Init.registerOnLoadFunc(SL._onLoad)

SL.ammoInvTypes = {
    defines.inventory.turret_ammo,
    defines.inventory.car_ammo,
    defines.inventory.character_ammo,
    defines.inventory.artillery_turret_ammo,
    defines.inventory.artillery_wagon_ammo
}

function SL._init()
end
Init.registerFunc(SL._init)

function SL.emptyStack()
    return {name = "", count = 0}
end

function SL.entIsTrackable(ent)
    if (not isValid(ent)) or (ent.type == "boiler") or (not EntDB.contains(ent.name)) then
        return false
    end
    return true
end

function SL.allSlotsQ()
    local slotQ = idQ.newSlotQ(true)
    for id, obj in pairs(DB.getEntries(SL.dbName)) do
        local slot = SL.getObj(id)
        if (slot) then
            slotQ:push(slot)
        end
    end
    return slotQ
end

function SL.returnAll(forceEmpty)
    for slot in SL.allSlotsQ():slotIter() do
        slot:returnItems(forceEmpty)
    end
end

function SL.entNeedsProvided(ent)
    if (not ent) then
        return false
    end
    if (ent.name:find("meteor")) or (ent.type == "character") then
        return true
    end
end

---@return fun():Slot
function SL.iterDB()
    return DB.iter(SL.dbName)
end

---@return Slot[]
function SL.trackAllSlots(ent)
    local newSlots = {}
    if (not SL.entIsTrackable(ent)) then
        cInform("SL.trackAllSlots: ent not trackable")
        return newSlots
    end
    local burnerInv = ent.get_fuel_inventory()
    if (burnerInv) and (#burnerInv > 0) then
        local slotCat, slotType = SL.getSlotCat(burnerInv[1])
        local burnerSlot = SL.new(ent, burnerInv.index, 1)
        if burnerSlot then
            table.insert(newSlots, burnerSlot)
        end
    end
    if (not EntDB.ammoTypes[ent.type]) then
        cInform("SL.trackAll: ent type not ammo type")
        return newSlots
    end
    local invs = {}
    -- local ammoInvs = {}
    -- local main = ent.get_main_inventory()
    -- if (isValid(main)) then
    --     invs[#invs + 1] = main
    -- end
    for ind, invType in pairs(SL.ammoInvTypes) do
        local newInv = ent.get_inventory(invType)
        if (isValid(newInv)) and (#newInv > 0) and (not Array.contains(invs, newInv)) then
            invs[#invs + 1] = newInv
        end
    end
    -- if (#invs > 0) then
    -- cInform("SL.trackAll: found inventory")
    -- else
    -- cInform("SL.trackAll: no invs found")
    -- end
    local _i = 0
    local _s = 0
    for ind, inv in pairs(invs) do
        _i = _i + 1
        local slotsToCreate = 1
        local isCharAmmo = ((ent.type == "character") and (inv.index == defines.inventory.character_ammo))
        if (ent.prototype.guns ~= nil) or isCharAmmo then
            slotsToCreate = #inv
        end
        for i = 1, slotsToCreate do
            _s = _s + 1
            local slotCat, slotType = SL.getSlotCat(inv[i])
            if (isCharAmmo) then
                slotType = "ammo"
                slotCat = "nil"
            end
            if (slotType) and (slotType == "ammo") then
                local newSlot = SL.new(ent, inv.index, i)
                if (newSlot) then
                    newSlots[#newSlots + 1] = newSlot
                end
            end
        end
    end
    return newSlots
end

---Attempt to create new Slot
---@param ent LuaEntity
---@param inv LuaInventory
---@param index integer
---@param slotCat string
---@param slotType string
---@return Slot
function SL.new(ent, invIndex, slotIndex)
    local ind = slotIndex or 1
    for slot in EntDB.iterTrackedSlots(ent) do
        if (slot.invInd == invIndex) and (slot.slotInd == slotIndex) then
            return
        end
    end
    if (not SL.isValidSlot(ent, invIndex, ind)) then
        cInform("SL.new: missing slot type or invalid slot")
        return nil
    end
    local inv = ent.get_inventory(invIndex)
    local slot = inv[slotIndex]
    ---@type Slot
    local obj = {}
    setmetatable(obj, SL.objMT)
    obj.ent = ent
    obj._forceName = ent.force.name
    obj._surfaceName = ent.surface.name
    obj.invInd = inv.index
    obj.slotInd = ind
    local force = Force.get(obj.ent.force.name)
    local slotCat, slotType = SL.getSlotCat(slot)
    if (ent.type == "character") and (invIndex == defines.inventory.character_ammo) then
        slotType = "ammo"
        slotCat = "nil"
    end
    obj.type = slotType
    obj.category = slotCat
    local pos = ent.position
    if (SL.entNeedsProvided(ent)) then
        obj.needsProvided = true
    end
    if (SL.entCanMove(ent)) then
        obj.needsProvided = true
        obj.canMove = true
    end
    if (not obj.canMove) then
        obj._posX = pos.x
        obj._posY = pos.y
    end
    if (ent.type == "character") then
        obj.needsProvided = true
        obj.isCharacter = true
        obj.canMove = true
    end
    obj._slot = slot
    obj.fillLimit = ent.prototype.automated_ammo_count or 10
    obj._inserter = {lastTick = 0}
    obj.render = {}
    obj:checkEnabled()
    if (not obj.enabled) then
        return
    end
    obj.id = DB.insert(SL.dbName, obj)
    if obj.needsProvided then
        obj._slot = slot
    else
        obj.inserterID = HI.new(obj).id
    end
    force:addSlot(obj)
    EntDB.addTracked(obj)
    cInform("new slot-> name: ", obj.ent.name, ", cat: ", obj.category)
    return obj
end

function SL:charGunSlot()
    if not self.isCharacter then
        return nil
    end
    return self.ent.get_inventory(defines.inventory.character_guns)[self.slotInd]
end

function SL:isProvided()
    if (self.needsProvided) then
        return true
    end
    local prov = self:provider()
    if (prov) and (prov:surfaceName() ~= self:surfaceName()) then
        return true
    end
    return false
end

function SL:isInRange(chest)
    return util.isInRange(self, chest)
end

function SL:area()
    local rad = gSets.chestRadius()
    if rad > 0 then
        return Position.expand_to_area(self:position(), rad)
    end
    return nil
end

---Get this Slot's LuaSurface.
---@return LuaSurface
function SL:surface()
    return self.ent.surface
end

---@return string
function SL:surfaceName()
    return self._surfaceName or self.ent.surface.name
end

---@return LuaInventory
function SL:inv()
    local inv = self._inv or self.ent.get_inventory(self.invInd)
    if (isValid(inv)) then
        return inv
    end
    return nil
end

---Get the LuaItemStack corresponding to this object's inventory slot.
---@return LuaItemStack
function SL:slot()
    local s = self._slot
    if (not s) then
        local inv = self:inv()
        if (inv) and (inv[self.slotInd]) then
            s = inv[self.slotInd]
        end
    end
    -- if (s) and (s.valid_for_read) then
    -- return s
    -- end
    return s
end

---Get this Slot's inserter if it has one, otherwise return the inner table this slot uses for filterItem and providerID.
---@return HiddenInserter | table
function SL:inserter()
    if (self.inserterID) then
        return DB.getEntries(HI.dbName)[self.inserterID]
    end
    return self._inserter
end

---@return LuaItemStack
function SL:inserterHeldStack()
    if (self.inserterID) then
        local ins = SL:inserter()
        if (ins) then
            return ins:heldStack()
        end
    end
    return SL.emptyStack()
end

---Remove Slot from database and destroy its inserter.
function SL:destroy()
    -- self:registerCons()
    local force = self:force()
    force.slots:softRemove(self)
    -- self:setProv()
    local ent = self.ent
    if (self.inserterID) then
        ---@type HiddenInserter
        local ins = DB.getEntries(HI.dbName)[self.inserterID]
        if (ins) then
            ins:destroy()
        end
    end
    DB.deleteID(SL.dbName, self.id)
end

---@return Position
function SL:position()
    if (self._posX) then
        return {x = self._posX, y = self._posY}
    end
    return self.ent.position
end

---Get the Force this Slot belongs to.
---@return Force
function SL:force()
    return Force.get(self:forceName())
end

---Get the name of this Slot's force
---@return string
function SL:forceName()
    return self._forceName or self.ent.force.name
end

---@return Item
function SL:stackInfo()
    local slot = self:slot()
    if (not util.isEmpty(slot)) then
        return itemInfo(slot.name)
    end
    return nil
end

function SL:sourceID()
    -- local ins = self:inserter()
    return self._inserter.sourceID
end

---Return Slot's current provider
---@return Chest
function SL:provider()
    local sourceID = self:sourceID()
    if (not sourceID) then
        return nil
    end
    local chest = TC.getObj(sourceID)
    if not chest then
        self:setProv()
    end
    return chest
end

---@return Chest
function SL:previousProvider()
    return TC.getObj(self._previousProviderID)
end

---@return Item
function SL:filterInfo()
    return itemInfo(self:filterItem())
end

function SL:filterScore()
    local inf = self:filterInfo()
    if not inf then
        return 0
    end
    return inf.score
end

---@return string
function SL:filterItem()
    return self._inserter.filterName
end

function SL:hasMoved()
    if (not self.canMove) then
        return false
    end
    if (not self._lastPos) then
        self._lastPos = self:position()
        return true
    end
    local pos = self:position()
    if (pos.x == self._lastPos.x) and (pos.y == self._lastPos.y) then
        return false
    end
    self._lastPos = pos
    return true
end

---@return Chest
function SL:bestProvider()
    local chests = self:force().chests
    local best = {chest = nil, score = 0}
    for chest in chests:chestIter() do
        if (chest:isInRange(self)) then
            local items = chest:catItems(self.category)
            for i = 1, #items do
                local itemName = items[i]
                local inf = itemInfo(itemName)
                if inf.score > best.score then
                    best.chest = chest
                    best.score = inf.score
                end
            end
        end
    end
    return best.chest
end

---Update a player slot's category in case his weapon has changed.
function SL:updateCategory()
    if (not self.isCharacter) then
        return
    end
    local gunSlot = self:charGunSlot()
    if (util.readyForRead(gunSlot)) then
        -- cInform(gunSlot.name, " ", gunSlot.type)
        local gunProto = game.item_prototypes[gunSlot.name]
        if (gunProto) then
            local param = gunProto.attack_parameters
            if (param) then
                -- cInform("param")
                local pCat = param.ammo_category
                -- cInform("pcat: ", pCat, " cur: ", self.category)
                if (self.category ~= pCat) then
                    if (self.category ~= "nil") then
                        self:returnItems()
                        self:setProv()
                    end
                    cInform("change player slot cat from ", self.category, " to ", pCat)
                    self.category = pCat
                    self:force().orphans:push(self)
                end
            end
        end
    else
        if (self.category ~= "nil") then
            self:returnItems()
            self:setProv()
            cInform("change player slot cat from ", self.category, " to nil")
            self.category = "nil"
        -- else
        end
    end
end

---Check slot inventory and refill if necessary.
function SL:doProvide()
    if (self._inserter.lastTick + gSets.slotProvideMinTicks() > gSets.tick()) then
        return
    end
    self._inserter.lastTick = gSets.tick()
    if (self.isCharacter) then
        -- cInform("providing character")
        self:updateCategory()
        if (self.category == "nil") then
            return
        end
    end
    local chest = self:provider()
    if (gSets.chestRadius() > 0) and (self.canMove) then
        if (self:hasMoved()) then
            self:force().orphans:push(self)
            -- cInform("slot has moved!")
            if (chest) and (not self:isInRange(chest)) then
                self:setProv()
                return
            end
        end
    end
    if (not chest) then
        return
    end
    local filterItemInf = self:filterInfo()
    if not filterItemInf then
        return
    end
    local filterItem = filterItemInf.name
    local slot = self:slot()
    local valid = isValid(slot)
    canRead = (valid and slot.valid_for_read)
    if (not valid) or ((canRead) and (slot.count > 0) and (slot.name ~= filterItem)) then
        return
    end
    local sCount = 0
    if (canRead) then
        sCount = slot.count
    end

    local fillLimit = self.fillLimit
    if (filterItemInf.stackSize < fillLimit) then
        fillLimit = filterItemInf.stackSize
    end
    local amtToFull = fillLimit - sCount
    if (amtToFull > 0) then
        -- inform("need to fill")
        local fillStack = {name = filterItem, count = amtToFull}
        local amtRemoved = chest:remove(fillStack)
        if (amtRemoved > 0) then
            -- inform("provide: set_stack")
            if (canRead) then
                slot.count = sCount + amtRemoved
            else
                fillStack.count = sCount + amtRemoved
                slot.set_stack(fillStack)
            end
        end
    end
end

---set the sourceID of this Slot's HiddenInserter. For internal use only.
function SL:setSourceID(id)
    local chest = TC.getObj(id)
    if (not chest) then
        id = nil
    end
    self._inserter.sourceID = id
    if (self.inserterID) then
        local ins = self:inserter()
        if (ins) then
            ins:setPickupTarget(chest)
        end
    end
end

---set the filter of this Slot's HiddenInserter. For internal use only.
function SL:setFilterItem(item)
    self._inserter.filterName = item
    if (self.inserterID) then
        local ins = DB.getEntries(HI.dbName)[self.inserterID]
        if (ins) then
            ins:setFilter(item)
        end
    end
end

---Check if item is better than Slot's current filtered item.
function SL:itemIsBetter(item, equal)
    local curInf = self:filterInfo()
    local newInf = itemInfo(item)
    if (not newInf) or (newInf.category ~= self.category) then
        return false
    end
    if (not curInf) then
        return true
    end
    if (newInf.rank < curInf.rank) then
        return true
    end
    if (equal) and (newInf.rank == curInf.rank) then
        return true
    end
    return false
end

---set this Slot's provider and item filter.
---@param chestObj Chest
---@param item string
function SL:setProv(chestObj, item)
    -- self:clearRender()
    if (not self.enabled) then
        return
    end
    local curID = self._inserter.sourceID
    if (curID) then
        self._previousProviderID = curID
        local chest = TC.getObj(curID)
        if (chest) then
            chest.consumerQ:softRemove(self)
        end
    -- else
    -- self._previousProviderID = nil
    end
    local force = self:force()
    if (not chestObj) or (not item) then
        -- self.isOrphan = true
        -- self:registerCons()
        -- self:force().orphans:push(self)
        self:setSourceID(nil)
        self:setFilterItem(nil)
        force.orphans:push(self)
        if (not self.needsProvided) then
            force.providedSlots:softRemove(self)
        end
    else
        -- chestObj.provItems[item]:push(self)
        -- local wasOrphan = self.isOrphan
        -- local stack = self:itemStack()
        -- local heldStack = self:heldStack()
        -- local slot = self:slot()
        -- local itemInf = itemInfo(item)
        -- if (slot) and (slot.count > 0) and (itemInfo(slot.name).rank > itemInf.rank) then
        -- end

        self:setSourceID(chestObj.id)
        self:setFilterItem(item)
        local stackInf = self:stackInfo()
        if (not stackInf) then
            -- local inv = self:inv()
            -- if (not self.gunSlot) and (not inv.is_empty()) then
            --     inv.sort_and_merge()
            --     stackInf = self:stackInfo()
            -- end
            -- if (not stackInf) then
            chestObj:itemAmt(item, chestObj:itemAmt(item) - self.fillLimit)
        -- end
        end
        if (stackInf) and (force:doUpgrade()) then
            if (stackInf) and (stackInf.rank > itemInfo(item).rank) then
                -- self:returnItems()
                force.needReturn:push(self)
                chestObj:itemAmt(item, chestObj:itemAmt(item) - self.fillLimit)
            end
        end
        chestObj.consumerQ:push(self)
        force.orphans:softRemove(self)
        -- self.isOrphan = nil
        if (self:isProvided()) then
            force.providedSlots:pushleft(self)
        elseif (not self.needsProvided) then
            force.providedSlots:softRemove(self)
        end
    end
end

---Queue this slot to be checked against all chests that are in range and possible providers.
---@param rush boolean
function SL:queueAllProvs(rush)
    -- cInform("queueAllProvs called")
    if not self.enabled then
        return
    end
    local f = self:force()
    local chests = f:chestsFiltered({slot = self, category = self.category})
    -- local chests = f.chests
    -- local best = {chest = nil, inf = nil}
    for chest in chests:chestIter() do
        -- chest.addQ:push(self)
        -- if (chest:isInRange(self)) then
        for itemName, t in pairs(chest.provItems) do
            local inf = itemInfo(itemName)
            if (inf.category == self.category) then
                local q = t.queue
                --             -- if (not best.chest) or (inf.rank < best.inf.rank) then
                --             -- best.chest = chest
                --             -- best.inf = inf
                --             -- end
                --             -- local q = chest:itemQ(itemName)
                if (q) then
                    -- inform("no q...")
                    if (rush) then
                        q:pushleft(self)
                    else
                        q:push(self)
                    end
                end
            end
        end
        -- end
    end
    -- if (best.chest) then
    --     self:setProv(best.chest, best.inf.name)
    -- end
end

---Check if this Slot is valid.
function SL:isValid()
    if not self then
        return false
    end
    if (not self.ent) or (not self.ent.valid) then
        return false
    end
    return true
end

---Return items currently in slot to provider or storage.
---@param forceReturn boolean
---@return ItemStack
function SL:returnItems(forceReturn)
    local force = self:force()
    local stackRemain = SL.emptyStack()
    local heldRemain = SL.emptyStack()

    local slot = self:slot()
    if (not util.isEmpty(slot)) then
        stackRemain.name = slot.name
        stackRemain.count = slot.count
    end
    local heldStack = self:inserterHeldStack()
    if (not util.isEmpty(heldStack)) then
        heldRemain.name = heldStack.name
        heldRemain.count = heldStack.count
    end
    if (stackRemain.count + heldRemain.count <= 0) then
        cInform("no items to return")
        return stackRemain, heldRemain
    end

    local function clear()
        if (not util.isEmpty(slot)) then
            slot.clear()
        -- self:inv().sort_and_merge()
        end
        if (not util.isEmpty(heldStack)) then
            heldStack.clear()
        end
        local inv = self:inv()
        if (not self.canMove) and (not inv.is_empty()) then
            for i, c in pairs(inv.get_contents()) do
                local ins = force:sendToStorage({name = i, count = c})
                if (ins > 0) then
                    inv.remove({name = i, count = ins})
                end
            end
        end
    end
    local function returnToChest(chest)
        if not chest then
            return
        end
        if (chest.provItems[stackRemain.name]) then
            local stackIns = chest:insert(stackRemain)
            stackRemain.count = stackRemain.count - stackIns
        end
        if (chest.provItems[heldRemain.name]) then
            local heldIns = chest:insert(heldRemain)
            heldRemain.count = heldRemain.count - heldIns
        end
    end
    returnToChest(self:previousProvider())
    returnToChest(self:provider())
    stackRemain.count = stackRemain.count - force:sendToStorage(stackRemain)
    heldRemain.count = heldRemain.count - force:sendToStorage(heldRemain)
    if (stackRemain.count + heldRemain.count <= 0) then
        clear()
        return stackRemain, heldRemain
    end
    if (forceReturn) then
        if (stackRemain.count > 0) then
            util.spillStack(
                {stack = stackRemain, position = self:position(), surface = self:surface(), force = self.ent.force}
            )
        end
        if (heldRemain.count > 0) then
            util.spillStack(
                {stack = heldRemain, position = self:position(), surface = self:surface(), force = self.ent.force}
            )
        end
        clear()
        stackRemain.count = 0
        heldRemain.count = 0
        return stackRemain, heldRemain
    end
    if (not util.isEmpty(slot)) and (not util.isEmpty(stackRemain)) then
        slot.count = stackRemain.count
    end
    if (not util.isEmpty(heldStack)) and (not util.isEmpty(heldRemain)) then
        heldStack.count = heldRemain.count
    end
    return stackRemain, heldRemain
end

function SL.isValidSlot(ent, invIndex, slotIndex)
    if (not isValid(ent)) then
        return false
    end
    local inv = ent.get_inventory(invIndex)
    if not isValid(inv) then
        return false
    end
    local maxSlot = #inv
    if (maxSlot < slotIndex) then
        return false
    end
    local slot = inv[slotIndex]
    if not isValid(slot) then
        return false
    end
    return true
end

---@return integer
function SL.getInvInd(ent, inv)
    for name, ind in pairs(defines.inventory) do
        local newInv = ent.get_inventory(ind)
        if (newInv == inv) then
            return ind
        end
    end
    return nil
end

---@param ent LuaEntity
function SL.entCanMove(ent)
    if (ent.speed ~= nil) or (ent.type == "character") then
        return true
    end
    return false
end

---@return Slot
function SL.getObj(id)
    return DB.getObj(SL.dbName, id)
end

---Get an array of existing slots whose parent is ent.
---@param ent LuaEntity
---@return Slot[]
function SL.getSlotsFromEnt(ent)
    if (not isValid(ent)) then
        return {}
    end
    local slots = DB.getEntries(SL.dbName)
    local result = {}
    local c = 0
    for id, slotObj in pairs(slots) do
        if (slotObj) and (slotObj.ent == ent) then
            c = c + 1
            result[c] = slotObj
        end
    end
    return result
end

---@param ent LuaEntity
function SL.getSlotsFromEntQ(ent)
    local result = idQ.newSlotQ(true)
    if (not isValid(ent)) then
        return result
    end
    local slots = Force.get(ent.force.name).slots
    for slot in slots:slotIter() do
        if (slot.ent == ent) then
            result:push(slot)
        end
    end
    return result
end

---@return ItemStack
function SL:itemStack()
    local slot = self:slot()
    if (util.isEmpty(slot)) then
        return SL.emptyStack()
    end
    return {name = slot.name, count = slot.count}
    -- if (self.slot ~= nil) then slot = self.slot end
    -- local emptyStack = {name = nil, count = 0}
    -- if (not slot.valid_for_read) then
    --     return SL.emptyStack()
    -- else
    --     return {name = slot.name, count = slot.count}
    -- end
end

function SL:setStack(stack)
    local slot = self:slot()
    if (not stack) or (not stack.name) or (stack.count <= 0) then
        slot.clear()
        return true
    end
    local curStack = self:itemStack()
    if (curStack.count > 0) and (curStack.name ~= stack.name) then
        cInform("warning: slot already contains different item. Current items will be overwritten")
    end
    if (slot.can_set_stack(stack)) then
        slot.set_stack(stack)
        return true
    end
    return false
end

function SL.getSlotCat(slot)
    local canInsert = slot.can_set_stack
    if (canInsert({name = "iron-plate", count = 1})) then
        return nil
    end
    for name, info in pairs(ItemDB.items()) do
        if (canInsert({name = name, count = 1})) then
            return info.category, info.type
        end
    end
    return nil
end

function SL:checkEnabled()
    local enabled = true
    local force = self:force()
    if (self.type == "fuel") and (not force:doFuel()) then
        enabled = nil
    elseif (self.type == "fuel") and (not self.canMove) and (not force:doBurners()) then
        enabled = nil
    elseif (self.category == "artillery-shell") and (not force:doArtillery()) then
        enabled = nil
    elseif ((self.ent.type == "car") or (self.ent.type == "locomotive")) and (not force:doVehicles()) then
        enabled = nil
    elseif (self.ent.type == "locomotive") and (not gSets.doTrains()) then
        enabled = nil
    end
    if (enabled) and (not self.enabled) then
        self.enabled = enabled
        force.orphans:push(self)
    elseif (not enabled) and (self.enabled) then
        self:setProv()
        self.enabled = nil
    end
end

function SL:renders(player)
    local rend = self.render
    if (not rend[player.index]) then
        rend[player.index] = {}
    end
    return rend[player.index]
end

function SL:highlight(player, color)
    if (not self.enabled) then
        return
    end
    if not color then
        -- color = {r = 0.5, g = 0.125, b = 0.03, a = 0.2}
        color = util.colors.blue
    end
    local rend = self:renders(player)
    local cur = rend.highlight
    if (cur) then
        rendering.destroy(cur)
    end
    for slot in EntDB.iterTrackedSlots(self.ent) do
        local highlight = slot:renders(player).highlight
        if (highlight) and (rendering.is_valid(highlight)) then
            return
        end
    end
    rend.highlight =
        rendering.draw_circle(
        {
            color = color,
            radius = 0.75,
            width = 1,
            filled = true,
            target = self.ent,
            surface = self:surface().name,
            players = {player.index},
            draw_on_ground = false
        }
    )
end

function SL:drawLineToProvider(player)
    local prov = self:provider()
    local rend = self:renders(player)
    local curLine = rend.lineToProv
    if (curLine) then
        rendering.destroy(curLine)
    end
    if (not prov) or (self:surfaceName() ~= prov:surfaceName()) then
        return
    end
    rend.lineToProv =
        rendering.draw_line(
        {
            -- color = {r = 0.5, g = 0.125, b = 0.03, a = 0.1},
            color = util.colors.purple,
            width = 1,
            from = self.ent,
            to = prov.ent,
            surface = self:surface().name,
            players = {player.index},
            draw_on_ground = false
        }
    )
end

function SL:clearRender(player)
    if (player) then
        for k, id in pairs(self.render[player.index]) do
            rendering.destroy(id)
        end
        self.render[player.index] = nil
    else
        for pInd, rends in pairs(self.render) do
            for k, id in pairs(rends) do
                rendering.destroy(id)
            end
            self.render[pInd] = nil
        end
    end
end

function SL:provIsCloser(chest)
    if (not chest) or (chest:surfaceName() ~= self:surfaceName()) then
        return false
    end
    local cur = self:provider()
    if (not cur) or (cur:surfaceName() ~= self:surfaceName()) then
        return true
    end
    local pos = self:position()
    local curDist = Position.manhattan_distance(cur:position(), pos)
    local newDist = Position.manhattan_distance(chest:position(), pos)
    if (newDist < curDist) then
        return true
    end
    return false
end

return SL
