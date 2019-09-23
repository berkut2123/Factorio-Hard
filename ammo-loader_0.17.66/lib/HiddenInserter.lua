---@class HiddenInserter
HI = {}

HI.className = "HiddenInserter"
HI.dbName = HI.className
DB.register(HI.dbName)
HI.protoName = "ammo-loader-hidden-inserter"
HI.wire = defines.wire_type.green

HI.objMT = {__index = HI}

function HI._init()
    local list = util.allFind({name = HI.protoName})
    for i = 1, #list do
        local ent = list[i]
        local held = ent.held_stack
        if isValid(held) and (held.valid_for_read) then
            local heldStack = {name = held.name, count = held.count}
            local pickup = ent.pickup_target
            if (heldStack.count > 0) and (isValid(pickup)) then
                local amtPickup = pickup.insert(heldStack)
                heldStack.count = heldStack.count - amtPickup
            end
            local drop = ent.drop_target
            if (heldStack.count > 0) and (isValid(drop)) then
                local amtDrop = drop.insert(heldStack)
                heldStack.count = heldStack.count - amtDrop
            end
        end
        ent.destroy()
    end
end
Init.registerInitFunc(HI._init)

function HI._onLoad()
    for id, obj in pairs(DB.getEntries(HI.dbName)) do
        setmetatable(obj, HI.objMT)
        -- setmetatable(obj.connectedQ, idQ.objMT)
    end
end
Init.registerOnLoadFunc(HI._onLoad)

-- function HI.protoName()
--     return "ammo-loader-hidden-inserter"
-- end
function HI.getFuelStack()
    local fuelName = "ammo-loader-superfuel"
    return {name = fuelName, count = 1}
end

---@return HiddenInserter
function HI.getObj(id)
    return DB.getObj(HI.dbName, id)
end

function HI.destroyAll()
    for id, obj in pairs(DB.getEntries(HI.dbName)) do
        obj:destroy()
    end
end

function HI.destroyOrphans()
    local ents = util.allFind({name = HI.protoName})
    for i = 1, #ents do
        local ent = ents[i]
        if (isValid(ent)) then
            local doDestroy = true
            -- for id, ins in pairs(DB.getEntries(HI.dbName)) do
            --     if (ins.ent == ent) then
            --         doDestroy = false
            --         break
            --     end
            -- end
            -- if (doDestroy) then
            --     ent.destroy()
            -- end

            local dropTarget = ent.drop_target
            if (isValid(dropTarget)) then
                for slot in EntDB.iterTrackedSlots(dropTarget) do
                    local ins = slot:inserter()
                    if (ins) and (ins.ent) and (ins.ent == ent) then
                        cInform("found valid HI")
                        doDestroy = false
                        break
                    end
                end
            else
                cInform("HI drop target invalid.")
            end
            if (doDestroy) then
                cInform("HI destroying orphan ")
                ent.destroy()
            end
        end
    end
end

---Create new HiddenInserter.
---@param slotObj Slot
---@return HiddenInserter
function HI.new(slotObj)
    if (not slotObj) then
        return nil
    end
    ---@type HiddenInserter
    local obj = {}
    setmetatable(obj, HI.objMT)

    obj.parentID = slotObj.id
    local newInserter =
        slotObj:surface().create_entity(
        {
            name = protoNames.hiddenInserter,
            position = slotObj:position(),
            force = slotObj:forceName(),
            raise_built = false
        }
    )
    if not isValid(newInserter) then
        return nil
    end

    newInserter.drop_position = slotObj:position()
    newInserter.destructible = false
    newInserter.operable = false
    newInserter.rotatable = false
    newInserter.minable = false
    newInserter.inserter_stack_size_override = 1
    obj.ent = newInserter
    obj._forceName = newInserter.force.name
    obj._surfaceName = newInserter.surface.name
    local pos = newInserter.position
    obj._posX = pos.x
    obj._posY = pos.y
    HI.setDropPosition(obj, slotObj.ent.position)
    obj.id = DB.insert(HI.dbName, obj)
    obj:force():addInserter(obj)
    return obj
end

---@return Force
function HI:force()
    return Force.get(self._forceName)
end

---@return Position
function HI:getPickupPosition()
    if not self.filterName then
        return nil
    end
    return TC.getObj(self.sourceID):position()
end
HI.pickupPosition = HI.getPickupPosition
HI.pickupPos = HI.getPickupPosition

---@param val Position
function HI:setPickupPosition(val)
    -- if (not self.sourceID) and (not val) then
    --     return nil
    -- end
    if (isValid(self.ent)) then
        self.ent.pickup_position = val
    end
    -- if (not val) then
    --     self.ent.active = false
    -- else
    --     self.ent.active = true
    -- end
end

---@return Position
function HI:getDropPosition()
    return self.ent.drop_position
end
HI.dropPosition = HI.getDropPosition
HI.dropPos = HI.getDropPosition

---@param val Position
function HI:setDropPosition(val)
    -- self.ent.drop_position = {x = val.x - 0.25, y = val.y + 0.25}
    if (isValid(self.ent)) then
        self.ent.drop_position = val
    end
    -- inform("HI: new drop target = " .. self.ent.drop_target.name .. ", pos = {" .. tostring(val.x) .. ", " .. tostring(val.y) .. "}")
    -- inform("HI: new pos = {" .. tostring(val.x) .. ", " .. tostring(val.y) .. "}")
    -- inform("{" .. parentpos.x .. ", " .. parentpos.y .. "}")
end

---Get Chest this inserter is grabbing from.
---@return Chest
function HI:getPickupTarget()
    if (not self.sourceID) then
        return nil
    end
    local chest = TC.getObj(self.sourceID)
    return chest
end
HI.pickupTarget = HI.getPickupTarget
HI.provider = HI.getPickupTarget

---Set this inserter's provider.
---@param chestObj Chest
function HI:setPickupTarget(chestObj)
    if (not chestObj) then
        self.sourceID = nil
        -- if (self.filterName) then
        --     self:setFilter(nil)
        -- end
        return
    end
    self.sourceID = chestObj.id
    return self:setPickupPosition(chestObj:position())
end

HI.getDropTarget = function(self)
    return self.ent.drop_target
end
HI.dropTarget = HI.getDropTarget

---Get the item this inserter is currently configured to grab.
---@return Item
function HI:getFilterInfo()
    return itemInfo(self.filterName)
end
HI.filterInfo = HI.getFilterInfo
HI.itemInfo = HI.filterInfo
HI.filter = HI.filterInfo

---Set the filter for this inserter.
---@param val string
function HI:setFilter(val)
    self.filterName = val
    if (isValid(self.ent)) then
        self.ent.set_filter(1, val)
    end
end

---Shortcut for HI:filterInfo().score
function HI:getItemScore()
    return self:getFilterInfo().score
end

---Get the Slot this inserter is dropping into.
---@return Slot
function HI:getSlotObj()
    return SL.getObj(self.parentID)
end
HI.slotObj = HI.getSlotObj
HI.parent = HI.getSlotObj

---get the LuaItemStack this inserter is holding.
---@return LuaItemStack
function HI:heldStack()
    local ent = self.ent
    if (isValid(ent)) then
        return ent.held_stack
    end
    return SL.emptyStack()
end

---Check if this inserter and its parent are both valid.
function HI:isValid()
    if (not self) or (not self.ent) or (not self.ent.valid) or (not DB.getEntries(SL.dbName)[self.parentID]) then
        -- cInform("HI invalid! parentID=", self.parentID, ", ", (DB.getEntries(SL.dbName)[self.parentID]))
        return false
    end
    return true
end

---Destroy the inserter and remove it from the database.
function HI:destroy()
    inform("destroying inserter")
    self:force().inserters:softRemove(self)
    if (isValid(self.ent)) then
        self:returnHeld(true)
        self.ent.destroy()
    end
    DB.deleteID(HI.dbName, self.id)
end

---Attempt to return any held items to provider or storage. Failing that, drop them on the ground.
---@return LuaItemStack
function HI:returnHeld(forceReturn)
    local held = self:heldStack()
    if (util.isEmpty(held)) then
        return
    end
    local heldStack = {name = held.name, count = held.count}
    local pickup = self.ent.pickup_target
    if (heldStack.count > 0) and (isValid(pickup)) then
        local amtPickup = pickup.insert(heldStack)
        heldStack.count = heldStack.count - amtPickup
    end
    local drop = self.ent.drop_target
    if (heldStack.count > 0) and (isValid(drop)) then
        local amtDrop = drop.insert(heldStack)
        heldStack.count = heldStack.count - amtDrop
    end
    heldStack.count = heldStack.count - self:force():sendToStorage(heldStack)
    if (heldStack.count <= 0) then
        held.clear()
    else
        held.count = heldStack.count
    end
    return heldStack
end

return HI
