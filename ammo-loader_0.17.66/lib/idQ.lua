---idQ class module. An idQ is a queue designed for use specifically with dbObjects.
---@class idQ
idQ = {}
idQ.objMT = {__index = idQ}

---Create new idQ
---@param dbName string
---@param unique boolean
---@return idQ
function idQ.new(dbName, unique)
    if (not DB.getDB(dbName)) then
        error("idQ: invalid database name.")
    end

    ---@type idQ
    local q = {first = 0, last = -1}
    setmetatable(q, idQ.objMT)

    q.entries = {}
    q.dbName = dbName
    if (unique) then
        q.idHash = {}
        q.removeHash = {}
    end
    return q
end

function idQ.newSlotQ(unique)
    return idQ.new(SL.dbName, unique)
end
function idQ.newChestQ(unique)
    return idQ.new(TC.dbName, unique)
end
function idQ.newInserterQ(unique)
    return idQ.new(HI.dbName, unique)
end

---Create idQ using an existing array.
---@param dbName string
---@param unique boolean
function idQ.fromArray(array, dbName, unique)
    local q = idQ.new(dbName, unique)
    for i = 1, #array do
        local obj = array[i]
        q:push(obj)
    end
    return q
end

---Reset the idQ.
function idQ:clear()
    self.first = 0
    self.last = -1
    self.entries = {}
    self.list = self.entries
end

---Add an object to the end of the idQ. Must be a valid dbObject (not an id), and must be of the same Class as the idQ.
function idQ:push(value)
    if (not value) or (not value.id) or (value.dbName ~= self.dbName) then
        return nil
    end
    local id = value.id
    local hash = self.idHash
    if (hash) then
        if (self.removeHash[id]) then
            self.removeHash[id] = nil
        end
        if (hash[id]) then
            return
        end
        hash[id] = true
    end
    self.last = self.last + 1
    self.entries[self.last] = id
end

---Add an object to the front of the idQ. Must be a valid dbObject (not an id), and must be of the same Class as the idQ.
function idQ:pushleft(value)
    if (not value) or (not value.id) or (value.dbName ~= self.dbName) then
        return nil
    end
    local id = value.id
    local hash = self.idHash
    if (hash) then
        if (self.removeHash[id]) then
            self.removeHash[id] = nil
        end
        if (hash[id]) then
            return
        end
        hash[id] = true
    end
    local list = self.entries
    self.first = self.first - 1
    list[self.first] = id
end

---Get the next object in the idQ. The object is removed from the idQ in the process.
function idQ:pop()
    local list = self.entries
    if self:size() <= 0 then
        return nil
    end
    local value = list[self.first]
    list[self.first] = nil -- to allow garbage collection
    self.first = self.first + 1
    if (self.idHash) then
        if (self.removeHash[value]) then
            self.idHash[value] = nil
            self.removeHash[value] = nil
            return self:pop()
        end
        self.idHash[value] = nil
    end
    local obj = DB.getObj(self.dbName, value)
    if (not obj) then
        return idQ.pop(self)
    end
    return obj
end

---Get the next object in the idQ and push it back into the idQ.
function idQ:cycle()
    local val = idQ.pop(self)
    if not val then
        return
    end
    idQ.push(self, val)
    return val
end

---Check for the existance of an object in the idQ.
function idQ:contains(obj)
    if (not obj) then
        return false
    end
    if (self.idHash) then
        if (self.removeHash[obj.id]) or (not self.idHash[obj.id]) then
            return false
        end
        return true
    end
    local last = self.last
    while (self.first <= last) do
        local cur = self:cycle()
        if not cur then
            return false
        end
        if cur.id == obj.id then
            return true
        end
    end
    return false
end

---Remove all occurences of an object from the idQ.
function idQ:remove(obj)
    if (not obj) then
        return false
    end
    local rm = 0
    local last = self.last
    -- local first = self.first
    while (self.first <= last) do
        local cur = self:pop()
        if not cur then
            return (rm > 0)
        end
        if cur.id ~= obj.id then
            self:push(cur)
        else
            rm = rm + 1
        end
        -- first = self.first
    end
    return (rm > 0)
end

function idQ:softRemove(obj)
    if (not obj) then
        return false
    end
    if (self.idHash) then
        if (self.idHash[obj.id]) then
            self.removeHash[obj.id] = true
            return true
        end
    end
    return false
end

function idQ:size()
    local rmAmt = 0
    if (self.removeHash) then
        rmAmt = Map.size(self.removeHash)
    end
    local size = (self.last - self.first) + 1 - rmAmt
    if (size < 0) then
        size = 0
    end
    return size
end

function idQ:isEmpty()
    return (idQ.size(self) <= 0)
end

---Get iterator for the idQ
function idQ:iter(limit, pop)
    -- local size = self:size()
    limit = limit or self:size()
    -- if (size < limit) then
    -- limit = size
    -- end
    -- local first = self.first
    local last = self.last
    local i = 0
    local function func()
        i = i + 1
        if (self.first > last) or (i > limit) then
            return
        end
        if (pop) then
            return self:pop()
        else
            return self:cycle()
        end
    end
    return func
end

---@param limit number
---@param pop boolean
---@return fun():Slot
function idQ:slotIter(limit, pop)
    return self:iter(limit, pop)
end

---@param limit number
---@param pop boolean
---@return fun():Chest
function idQ:chestIter(limit, pop)
    return self:iter(limit, pop)
end

---@param limit number
---@param pop boolean
---@return fun():HiddenInserter
function idQ:inserterIter(limit, pop)
    return self:iter(limit, pop)
end

---@return idQ
function idQ:copy()
    local res = idQ.new(self.dbName, (self.idHash ~= nil))
    if (self.idHash) then
        res.idHash = Map.deepcopy(self.idHash)
        res.removeHash = Map.deepcopy(self.removeHash)
    end
    res.first = self.first
    res.last = self.last
    res.entries = Map.deepcopy(self.entries)
    return res
end

return idQ
