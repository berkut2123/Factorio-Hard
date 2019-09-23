Init = {}
Initializer = Init
Initializer.funcBackup = {}
Initializer.localBackup = {}
Init._resetFuncs = {}

-- Initializer.globals = {}
function Init.funcs()
	if (global["_initFuncs"] == nil) then global["_initFuncs"] = Init.funcBackup end
	return global["_initFuncs"]
end
function Init.localFuncs()
	if global["_initLocalFuncs"] == nil then global["_initLocalFuncs"] = Init.localBackup end
	return global["_initLocalFuncs"]
end
function Init.resetFuncs() return Init._resetFuncs end
function Init.registerFunc(f)
	table.insert(Init.funcBackup, f)
	return f
end
Init.registerInitFunc = Init.registerFunc
function Init.registerOnLoadFunc(f)
	table.insert(Init.localBackup, f)
	return f
end
function Init.registerResetFunc(f)
	table.insert(Init._resetFuncs, f)
	return f
end

function Init.doInit()
	inform("Initializing")
	-- Init.reset()
	-- if (global["DB"] ~= nil) then
	--     HI.destroyAll()
	-- end
	local initFuncs = Init.funcBackup
	-- local trackedPlayers = global["trackedPlayers"]
	global = {}
	gSets._init()
	for ind, func in pairs(initFuncs) do func() end
	inform(#initFuncs .. " functions successfully executed.")
	-- if (trackedPlayers) then
	--     for playerInd, pos in pairs(trackedPlayers) do
	--         if not global["trackedPlayers"][playerInd] then
	--             global["trackedPlayers"][playerInd] = pos
	--         end
	--     end
	-- end
	if not gSets.enabled() then return nil end
	inform("resetting global tables...")
	createdQ.startReset()
	-- checkAllEntities()
	createdQ.checkAllEntities()
	return true
end
function Init.doOnLoad()
	local localFuncs = Init.localBackup
	for ind, func in pairs(localFuncs) do func() end
end

return Init
