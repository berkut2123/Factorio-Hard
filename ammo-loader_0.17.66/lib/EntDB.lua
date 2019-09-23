EntDB = {}

EntDB.dbName = "EntDB"

EntDB.ammoTypes = {}
EntDB.ammoTypes["car"] = true
EntDB.ammoTypes["ammo-turret"] = true
EntDB.ammoTypes["artillery-wagon"] = true
EntDB.ammoTypes["artillery-turret"] = true
EntDB.ammoTypes["character"] = true

Init.registerFunc(
    function()
        global["EntDB"] = {}
        global["EntDB"]["ents"] = EntDB.findEntNames()
        global["EntDB"]["ents"][protoNames.hiddenInserter] = nil
        global["EntDB"]["tracked"] = {}
        -- global["EntDB"]["ammoEnts"] = {}
        -- global["EntDB"]["fuelEnts"] = {}
    end
)

---Get names of all LuaEntities that are trackable as Slots. Is in hash form.
function EntDB.names()
    return global.EntDB.ents
end

function EntDB.contains(name)
    if (global["EntDB"].ents[name]) then
        return true
    end
    return false
end

function EntDB.findEntNames()
    local res = {}
    local protos = game.entity_prototypes
    local count = 0
    for name, proto in pairs(protos) do
        local burnerProto = proto.burner_prototype
        if (burnerProto) and (burnerProto.fuel_inventory_size > 0) then
            count = count + 1
            res[proto.name] = true
        elseif (proto.guns) or (proto.automated_ammo_count) or (EntDB.ammoTypes[proto.type]) then
            count = count + 1
            res[proto.name] = true
        end
    end
    return res
end

function EntDB.tracked()
    return global.EntDB.tracked
end

function EntDB.addTracked(obj, ent)
    ent = ent or obj.ent
    local id = EntDB.entID(ent)
    local list = global.EntDB.tracked[id]
    if (not list) then
        list = {}
        global.EntDB.tracked[id] = list
    end
    -- local dbList = list[obj.dbName]
    -- if (not dbList) then
    --     dbList = {}
    --     list[obj.dbName] = dbList
    -- end
    table.insert(list, {dbName = obj.dbName, id = obj.id})
end

function EntDB.iterTracked(ent, dbName)
    local tracked = EntDB.tracked()
    local id = EntDB.entID(ent)
    local list = tracked[id] or {}
    local key, info
    local function iter()
        key, info = next(list, key)
        if (not key) then
            return
        end
        if (dbName) and (info.dbName ~= dbName) then
            return iter()
        end
        local obj = DB.getObj(info.dbName, info.id)
        if (not obj) then
            list[key] = nil
            if (Map.size(list) <= 0) then
                tracked[id] = nil
                return
            end
            return iter()
        end
        if (obj.ent == ent) then
            return obj
        end
        return iter()
    end
    return iter
end

---@return fun():Slot
function EntDB.iterTrackedSlots(ent)
    return EntDB.iterTracked(ent, SL.dbName)
end

---@return fun():HiddenInserter
function EntDB.iterTrackedInserters(ent)
    return EntDB.iterTracked(ent, HI.dbName)
end

function EntDB.trackedCount(ent, dbName)
    local c = 0
    for obj in EntDB.iterTracked(ent, dbName) do
        c = c + 1
    end
    return c
end

function EntDB.entID(ent)
    if (not isValid(ent)) then
        return ""
    end
    local id = ""
    id = id .. ent.name
    id = id .. ent.force.name
    id = id .. ent.surface.name
    if (not SL.entCanMove(ent)) then
        local pos = ent.position
        -- id = id .. math.floor(pos.x)
        -- id = id .. math.floor(pos.y)
        id = id .. pos.x
        id = id .. pos.y
    end
    return id
end

function EntDB.purgeTracked()
    local tracked = EntDB.tracked()
    for entID, list in pairs(tracked) do
        for key, info in pairs(list) do
            local obj = DB.getObj(info.dbName, info.id)
            if (not obj) then
                list[key] = nil
            end
        end
        if (Map.size(list) <= 0) then
            tracked[entID] = nil
        end
    end
end
