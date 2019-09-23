---@class Force
Force = {}
Force.objMT = {__index = Force}

Force._init = function()
    global["Force"] = {}
    global["Force"]["forces"] = {}
    -- for name, frc in pairs(game.forces) do
    -- global["Force"]["forces"][name] = Force.new(name)
    -- end
    -- Force._globs()
end
Init.registerFunc(Force._init)

Force._onLoad = function()
    -- Force._globs()
    for name, frc in pairs(Force.forces()) do
        setmetatable(frc, Force.objMT)
        for key, meta in pairs(Force.metaVars) do
            setmetatable(frc[key], meta)
        end
        -- setmetatable(frc, Force.objMT)
        -- setmetatable(frc.chests, idQ.objMT)
        -- setmetatable(frc.slots, idQ.objMT)
        -- setmetatable(frc.orphans, idQ.objMT)
        -- setmetatable(frc.catQ, Q.objMT)
        -- setmetatable(frc.inserters, idQ.objMT)
        -- setmetatable(frc.providedSlots, idQ.objMT)
        -- setmetatable(frc.slotsNeedReturn, idQ.objMT)
        -- setmetatable(frc.storageChests, idQ.objMT)

        -- for catName, cat in pairs(frc.provs.categories) do
        --     setmetatable(cat.orphans, idQ.objMT)
        -- end
    end
end
Init.registerOnLoadFunc(Force._onLoad)

Force.metaVars = {
    chests = idQ.objMT,
    storageChests = idQ.objMT,
    slots = idQ.objMT,
    orphans = idQ.objMT,
    inserters = idQ.objMT,
    providedSlots = idQ.objMT,
    needReturn = idQ.objMT
}

---@return Force
function Force.new(name)
    ---@type Force
    local obj = {}
    setmetatable(obj, Force.objMT)
    obj.name = name
    obj.chests = idQ.newChestQ(true)
    obj.storageChests = idQ.newChestQ(true)
    obj.slots = idQ.newSlotQ(true)
    obj.orphans = idQ.newSlotQ(true)
    obj.inserters = idQ.newInserterQ(true)
    obj.providedSlots = idQ.newSlotQ(true)
    obj.needReturn = idQ.newSlotQ(true)
    obj.trackedEnts = {}
    -- obj.slotsNeedReturn = idQ.new(SL, true)
    obj.slotsChecked = 0
    obj.tickNext = "chests"
    obj.techs = {}
    obj:getTechs()
    return obj
end

function Force:getTechs()
    self.techs = {}
    local force = game.forces[self.name]
    local forceTechs = force.technologies
    local recipes = force.recipes
    local useTech = gSets.useTech()
    for key, name in pairs(protoNames.tech) do
        local tech = forceTechs[name]
        if not tech then
            return
        end
        if (useTech) then
            tech.enabled = true
        else
            tech.enabled = false
        end
        if (not tech.enabled) or (tech.researched) then
            if (tech.name == protoNames.tech.loader) then
                recipes[protoNames.chests.loader].enabled = true
            elseif (tech.name == protoNames.tech.requester) then
                recipes[protoNames.chests.requester].enabled = true
                recipes[protoNames.chests.passiveProvider].enabled = true
            elseif (tech.name == protoNames.tech.upgrade) then
                recipes[protoNames.chests.storage].enabled = true
            end
            self.techs[name] = true
        end
    end
    for techName, tech in pairs(forceTechs) do
        local effects = tech.effects
        for _, effect in pairs(effects) do
            if (effect.type == "unlock-recipe") and (effect.recipe:find("ammo.loader.cartridge")) then
                recipes[effect.recipe].enabled = tech.researched
            end
        end
    end
end

function Force:isResearched(techName)
    if (not gSets.useTech()) or (self.techs[techName]) then
        return true
    end
    return false
end

function Force:doUpgrade()
    if (not gSets.doUpgrade()) or (not self:isResearched(protoNames.tech.upgrade)) then
        return false
    end
    return true
end
function Force:doVehicles()
    if (self:isResearched(protoNames.tech.vehicles)) then
        return true
    end
    return false
end
function Force:doFuel()
    if (self:isResearched(protoNames.tech.burners)) then
        return true
    end
    return false
end
function Force:doArtillery()
    if (not gSets.doArtillery()) or (not self:isResearched(protoNames.tech.artillery)) then
        return false
    end
    return true
end
function Force:doBurners()
    if (not gSets.doBurners()) or (not self:isResearched(protoNames.tech.burners)) then
        return false
    end
    return true
end
function Force:doReturn()
    if (not gSets.doReturn()) or (not self:isResearched(protoNames.tech.returnItems)) then
        return false
    end
    return true
end

---@return table<string, Force>
function Force.forces()
    return global["Force"]["forces"]
end

---Get Force by name
---@param name string
---@return Force
function Force.get(name)
    if not name then
        return nil
    end
    local forces = Force.forces()
    ---@type Force
    local frc = forces[name]
    if not frc then
        frc = Force.new(name)
        forces[name] = frc
    end
    return frc
end

function Force.tickAll()
    for name, frc in pairs(Force.forces()) do
        frc:tick()
    end
end

function Force:tick()
    self.slotsChecked = 0
    -- local chests = self.chests
    -- local slots = self.slots
    if (self.needPurge) then
        self.needPurge = nil
        self:purgeAndSearch()
    end
    local chestsNum = self.chests:size()
    local slotsNum = self.slots:size()
    if (chestsNum == 0) or (slotsNum == 0) then
        return nil
    end
    -- local tick = gSets.tick()
    self:tickReturn()
    self:tickOrphans()
    self:tickChests()
    self:tickProvidedSlots()
end

function Force:tickProvidedSlots()
    for slot in self.providedSlots:slotIter(gSets.maxProvideSlots()) do
        if (not slot.enabled) or (not slot:isProvided()) then
            self.providedSlots:softRemove(slot)
        else
            slot:doProvide()
        end
    end
end
function Force:tickChests()
    local chest = self.chests:cycle()
    if (chest) then
        chest:tick()
    end
end
function Force:tickOrphans()
    for orph in self.orphans:slotIter(gSets.orphansPerCycle(), true) do
        if (orph.enabled) then
            self.slotsChecked = self.slotsChecked + 1
            orph:queueAllProvs(true)
        end
    end
end

function Force:tickReturn()
    for slot in self.needReturn:slotIter(gSets.maxReturnSlots(), true) do
        slot:returnItems()
    end
end

function Force:slotsFiltered(opts)
    local q = idQ.newSlotQ(true)
    local bestItem = opts.item
    local bestItemInf = itemInfo(opts.item)
    local bestItemCat
    if (bestItemInf) then
        bestItemCat = bestItemInf.category
    end
    local cat = opts.category or bestItemCat
    local area = opts.area
    local inRangeOf = opts.chest
    for slot in self.slots:slotIter() do
        if (slot.enabled) then
            local catBool = ((not cat) or (slot.category == cat))
            local betterBool = ((not bestItem) or (slot:itemIsBetter(bestItem, true)))
            local inRangeBool = ((not inRangeOf) or (slot:isInRange(inRangeOf)))
            if (catBool) and (betterBool) and (inRangeBool) then
                q:push(slot)
            end
        end
    end
    return q
end

function Force:chestsFiltered(opts)
    local q = idQ.newChestQ(TC, true)
    local slot = opts.slot
    local minItem = opts.minItem
    local cat = opts.category
    if (slot) then
        minItem = slot:filterItem()
        cat = slot.category
    end
    for chest in self.chests:chestIter() do
        local hasEqual = chest:hasBetterProvItem(minItem, true)
        if
            ((not cat) or (chest:hasProvCat(cat))) and ((not minItem) or (chest:hasBetterProvItem(minItem, true))) and
                ((not slot) or (chest:isInRange(slot)))
         then
            q:push(chest)
        end
    end
    return q
end

function Force:addChest(chestObj)
    if (chestObj.isStorage) then
        local isFirst = (self.storageChests:size() <= 0)
        self.storageChests:push(chestObj)
        if (isFirst) then
            for slot in self.slots:slotIter() do
                slot:setProv()
                -- self.orphans:push(slot)
                -- slot.isOrphan = true
            end
        end
    else
        self.chests:push(chestObj)
    end
end

---@param slotObj Slot
function Force:addSlot(slotObj)
    self.slots:push(slotObj)
    if (slotObj.needsProvided) then
        self.providedSlots:pushleft(slotObj)
    end
    -- slotObj.isOrphan = true
    if (slotObj.isCharacter) then
        slotObj:updateCategory()
    end
    -- slotObj:queueAllProvs(true)
    self.orphans:pushleft(slotObj)
end

function Force:addInserter(ins)
    self.inserters:push(ins)
end

function Force:isValid()
    if (not self) then
        return false
    end
    if game.forces[self.name] ~= nil then
        return true
    end
    return false
end

function Force:sendToStorage(stack)
    if (not stack) then
        return 0
    end
    if (stack.count <= 0) then
        return 0
    end
    local chests = self.storageChests
    if (chests:size() <= 0) then
        return 0
    end
    local amt = stack.count
    for chest in chests:chestIter() do
        local inserted = chest:insert(stack)
        amt = amt - inserted
        if (amt <= 0) then
            return stack.count
        end
    end
    return stack.count - amt
end

function Force:purgeAndSearch()
    local slots = self.slots
    local chests = self.chests
    local stores = self.storageChests
    local inserters = self.inserters
    local i = 0
    local start = slots:size() + chests:size() + stores:size() + inserters:size()
    for slot in slots:slotIter() do
        i = i + 1
    end
    for chest in chests:chestIter() do
        i = i + 1
    end
    for chest in stores:chestIter() do
        i = i + 1
    end
    for ins in inserters:inserterIter() do
        i = i + 1
    end
    cInform(start - i, " objects purged")

    createdQ.checkAllEntities()
end

function Force:returnAll(forceEmpty)
    for slot in self.slots:slotIter() do
        slot:returnItems(forceEmpty)
    end
end

return Force
