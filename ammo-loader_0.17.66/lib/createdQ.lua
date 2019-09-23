createdQ = {}

createdQ.waitQTriggers = {}
createdQ.waitQTriggers["heli-placement-entity-_-"] = "heli-entity-_-"

-- createdQ.heliNames = {}
-- createdQ.heliNames.placer = "heli-placement-entity-_-"
-- createdQ.heliNames.ent = "heli-entity-_-"
function createdQ._init()
    global["createdQ"] = {}
    global["createdQ"]["Q"] = Q.new()
    global["createdQ"]["last_tick"] = 0
    global["createdQ"]["isResetting"] = false
    global["createdQ"]["futureQ"] = Q.new()
    global["createdQ"]["waitQ"] = Q.new()
    global["createdQ"]["printLastTick"] = 0
end
Init.registerFunc(createdQ._init)

createdQ._onLoad =
    Init.registerOnLoadFunc(
    function()
        setmetatable(global["createdQ"]["Q"], Q.objMT)
        setmetatable(global["createdQ"]["waitQ"], Q.objMT)
        -- setmetatable(global["createdQ"]["futureQ"], Q.objMT)
    end
)

function createdQ.master()
    return global["createdQ"]
end
function createdQ.waitQ()
    return createdQ.master()["waitQ"]
end
function createdQ.get()
    return createdQ.master()["Q"]
end
createdQ.Q = createdQ.get
createdQ.q = createdQ.get
function createdQ.push(obj)
    -- if (isValid(obj)) then
    -- if (obj.surface.name ~= "nauvis") then
    -- createdQ.tick(obj)
    -- else
    return Q.pushleft(createdQ.Q(), obj)
    -- end
    -- end
end
function createdQ.pop()
    return Q.pop(createdQ.Q())
end
function createdQ.size()
    return Q.size(createdQ.Q())
end
function createdQ.getLastTick()
    return createdQ.master()["last_tick"]
end
function createdQ.setLastTick()
    createdQ.master()["last_tick"] = gSets.tick()
end
function createdQ.isResetting()
    return createdQ.master()["isResetting"]
end
function createdQ.startReset()
    createdQ.master()["isResetting"] = true
end
function createdQ.finishReset()
    createdQ.master()["isResetting"] = false
    ctInform("finished resetting globals")
    if (gSets.debugging()) then
        Rem.funcs.printNumTracked()
    end
end

-- function createdQ.getEntNames()
-- 	local res = {}
-- 	local protos = game.entity_prototypes
-- 	local chestNames = TC.chestNames("hash")
-- 	local count = 0
-- 	for name, proto in pairs(protos) do
-- 		local burnerProto = proto.burner_prototype
-- 		if (burnerProto) and (burnerProto.fuel_inventory_size > 0) then
-- 			count = count + 1
-- 			res[count] = proto.name
-- 		elseif (proto.type == "car") or (proto.automated_ammo_count) or (proto.type == "artillery-wagon") then
-- 			count = count + 1
-- 			res[count] = proto.name
-- 		elseif (chestNames[proto.name]) then
-- 			count = count + 1
-- 			res[count] = proto.name
-- 		end
-- 	end
-- 	return res
-- end

function createdQ.getForceNames()
    local res = {}
    c = 0
    for name, force in pairs(game.forces) do
        if (name ~= "enemy") and (name ~= "neutral") then
            c = c + 1
            res[c] = name
        end
    end
    return res
end

function createdQ.checkAllEntities(opts)
    opts = opts or {}
    local namesHash = global.EntDB.ents
    local names = {}
    local c = 0
    for name, _ in pairs(namesHash) do
        c = c + 1
        names[c] = name
    end
    for key, chestName in pairs(protoNames.chests) do
        c = c + 1
        names[c] = chestName
    end
    local forces = createdQ.getForceNames()
    opts.name = names
    opts.force = forces
    -- local slotOpts = Map.copy(opts)
    -- local slotEnts = util.allFind(slotOpts)

    -- local chestNames = TC.chestNames("list")
    -- Array.insert(types, "container")
    -- Array.insert(types, "logistic-container")
    -- local chestOpts = Map.copy(opts)
    -- chestOpts.name = chestNames
    -- local chestEnts = util.allFind(chestOpts)
    local ents = util.allFind(opts)

    inform("Queueing all entities...")
    -- local results = util.allFind(opts)
    -- local q = createdQ.q()
    -- for i = 1, #chestEnts do
    -- 	local ent = chestEnts[i]
    -- 	local forceName = ent.force.name
    -- 	if (forceName ~= "neutral") and (forceName ~= "enemy") then q:push(ent) end
    -- end
    -- for i = 1, #slotEnts do
    -- 	local ent = slotEnts[i]
    -- 	local forceName = ent.force.name
    -- 	if (forceName ~= "neutral") and (forceName ~= "enemy") and
    -- 		((Array.contains(SL.trackableTypes(), ent.type)) or (ent.get_fuel_inventory())) then q:push(ent) end
    -- end
    for i = 1, #ents do
        local ent = ents[i]
        createdQ.push(ent)
    end
    ctInform("Queued ", createdQ.size(), " entities for analysis.")
end
function createdQ.waitQAdd(entName)
    createdQ.waitQ():push({name = entName, tick = gSets.tick() + 10})
end

function createdQ.tickWaitQ()
    local waitQ = createdQ.waitQ()
    local size = waitQ:size()
    if size <= 0 then
        return
    end
    for i = 1, size do
        local pop = waitQ:pop()
        if gSets.tick() <= pop.tick then
            local res = util.allFind({name = pop.name})
            for j = 1, #res do
                local ent = res[j]
                SL.trackAllSlots(ent)
            end
        else
            waitQ:push(pop)
        end
    end
end

function createdQ.tick(cEnt)
    -- createdQ.futureQTick()
    local maxToCheck = gSets.entsCheckedPerCycle()
    if (cEnt) then
        maxToCheck = 1
        Q.pushleft(createdQ.q(), cEnt)
    end
    local createdQueueSize = createdQ.size()
    if (createdQueueSize < maxToCheck) then
        maxToCheck = createdQueueSize
    end
    -- if (maxToCheck > 0) then
    --     inform("Created Queue: " .. createdQueueSize .. " items remaining.")
    -- end
    if (createdQ.waitQ():size() > 0) then
        createdQ.tickWaitQ()
    end
    local c = 0
    for i = 1, maxToCheck do
        local popEnt = createdQ.pop()
        local chestObj
        local slots
        if (isValid(popEnt)) then
            -- if (string.contains(popEnt.name, "factory")) then
            -- ctInform("Reminder that Loader Chests must be inside factories when using Factorissimo.")
            -- end
            chestObj = TC.new(popEnt)
            if (not chestObj) then
                slots = SL.trackAllSlots(popEnt)
                c = c + #slots
            else
                c = c + 1
            end
        end
    end
    if (gSets.debugging()) and (c > 0) and (not createdQ.isResetting()) then
        Rem.funcs.printNumTracked()
    -- cInform("createdQ: ", c, " created")
    end
    if (createdQ.isResetting()) and (createdQ.size() <= 0) then
        createdQ.finishReset()
    end
    local cqSize = createdQ.size()
    -- if (cqSize > 0) and (global.createdQ.printLastTick + 60 >= gSets.tick()) then
    -- global.createdQ.printLastTick = gSets.tick()
    if (cqSize > 0) then
        cInform("createdQ: ", cqSize, " remaining")
    end
    -- end
end

return createdQ
