version = {}
version._latest = 101

function version._init()
    global["version"] = {}
    global["version"]["cur"] = version._latest
end
Init.registerFunc(version._init)
-- version.latest = version._latest
-- version.debugUpdate = true
function version.latest()
    return version._latest
end
function version.needUpdate()
    local mas = global["version"]
    if not mas then
        return true
    end
    local ver = mas.cur
    if not ver then
        return true
    end
    if (version._latest ~= ver) then
        -- inform("need update!")
        return true
    end
    return false
end
function version.update()
    util.clearRenders()
    -- local latest = version.latest()
    Init.doInit()
    -- global["_ver"] = {}
    global["version"].cur = version._latest
    -- global["_ver"].latest = latest
    -- version.set(version.latest())
    inform("successfully updated globals")
end
