DB = {}
DB.registeredNames = {}

function DB.register(name)
    DB.registeredNames[name] = true
end

function DB._init()
    global["DB"] = {}
    global["DBidCounters"] = {}
    for name, t in pairs(DB.registeredNames) do
        DB.new(name)
    end
    return nil
end
Init.registerFunc(DB._init)

function DB.master()
    return global["DB"]
end

DB.deletedLimit = 10000

function DB.new(name)
    local mas = DB.master()
    if mas[name] ~= nil then
        return mas[name]
    end

    mas[name] = {amtDeleted = 0, nextID = 1, idCache = {}}
    return mas[name]
end

function DB.getDB(name)
    local mas = DB.master()
    local db = mas[name]
    if not db then
        return DB.new(name)
    end
    return db
end
-- DB.getOrCreate = function(name)
--     local mas = DB.master()
--     local db = mas[name]
--     if not db then
--         return DB.new(name)
--     end
--     return db
-- end

function DB.getEntries(name)
    local db = DB.getDB(name)
    if not db then
        cInform("DB not found.")
        return nil
    end
    return db.idCache
end

function DB.iter(name)
    local idCache = DB.getEntries(name)
    local id, obj
    local function iter()
        id, obj = next(idCache, id)
        if (not id) then
            return
        end
        if (not obj:isValid()) then
            obj:destroy()
            return iter()
        end
        return obj
    end
    return iter
end

function DB.getHighest(name)
    return DB.getDB(name).nextID - 1
end
DB.highest = DB.getHighest

function DB.reset(name)
    local mas = DB.master()
    mas[name] = nil
    mas[name] = DB.new(name)
end

---Insert an object into a database, giving it a permanent id.
---@param name string
---@param obj dbObject
---@return number
function DB.insert(name, obj)
    local db = DB.getDB(name)
    -- if not db then return false end
    -- if (type(obj) == "table") and (obj._type ~= nil) then --(obj._type=="TrackedChest")
    -- end
    -- local existingID = DB.getID(name, obj)
    -- if (existingID ~= nil) then return existingID end
    local ind = db.nextID
    db.nextID = db.nextID + 1

    db.idCache[ind] = obj
    return ind
end

function DB.getObj(name, id)
    local objs = DB.getEntries(name)
    if (not objs) then
        return nil
    end
    local obj = objs[id]
    if (not obj) then
        return nil
    end
    if (not obj:isValid()) then
        cInform("obj ", id, " in DB ", name, " invalid. Destroying...")
        obj:destroy()
        return nil
    end
    return obj
end

function DB.getAllObj(name, ids)
    result = {}
    for ind, id in pairs(ids) do
        table.insert(result, DB.getObj(name, id))
    end
    return result
end

function DB.getID(name, obj)
    local db = DB.getDB(name)
    if not db then
        return nil
    end
    for id, item in pairs(db.idCache) do
        if (item == obj) then
            return id
        end
    end
    return nil
end

function DB.deleteID(name, id)
    local db = DB.getDB(name)
    if not db.idCache[id] then
        return nil
    end
    db.idCache[id] = nil
    -- db.amtDeleted = db.amtDeleted + 1
    -- if db.amtDeleted > DB.deletedLimit then
    --     version.update()
    -- end
end

DB.idCounter = {}
function DB.idCounter.counters()
    return global["DBidCounters"]
end
function DB.idCounter.new(name)
    if (DB.idCounter.counters()[name] == nil) then
        DB.idCounter.counters()[name] = 1
    end
end
function DB.idCounter.up(name)
    local counters = DB.idCounter.counters()
    if (counters[name] == nil) then
        DB.idCounter.new(name)
    end
    local curID = counters[name]
    counters[name] = curID + 1
    return curID
end
DB.idCounter.next = DB.idCounter.up
function DB.idCounter.last(name)
    return DB.idCounter.counters()[name]
end

return DB
