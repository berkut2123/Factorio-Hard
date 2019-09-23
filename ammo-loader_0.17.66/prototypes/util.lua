local names = require("prototypes.names")
local util = {}

function util.deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == "table" then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[util.deepcopy(orig_key)] = util.deepcopy(orig_value)
        end
        setmetatable(copy, util.deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end
function util.writeToObj(obj, args)
    for key, value in pairs(args) do
        if (value == "nil") then
            value = nil
        end
        if (type(value) == "table") then
            local objVal = obj[key]
            if (not objVal) then
                obj[key] = value
            else -- and (type(value) == "table") then
                util.writeToObj(obj[key], value)
            end
        else
            obj[key] = value
        end
    end
    return obj
end

function util.modifiedEnt(entObj, args, overwrite)
    local newObj = util.deepcopy(entObj)
    util.writeToObj(newObj, args)
    if (overwrite) then
        for key, val in pairs(overwrite) do
            if (val == "nil") then
                val = nil
            end
            newObj[key] = val
        end
    end
    return newObj
end

util.filePath = function(name, type)
    local base = "__ammo-loader__/graphics/"
    local newBase = base .. type .. "/"
    local path = newBase .. name .. ".png"
    return path
end

-- util.invisIcon = "__ammo-loader__/graphics/empty.png"
-- util.invisPic = {
--     filename = "__ammo-loader__/graphics/empty.png",
--     priority = "low",
--     width = 1,
--     height = 1,
--     hr_version = {
--         filename = "__ammo-loader__/graphics/empty.png",
--         priority = "low",
--         width = 1,
--         height = 1,
--         scale = 0.25
--     }
-- }
util.invisPic = {
    filename = "__core__/graphics/empty.png",
    priority = "very-low",
    width = 1,
    height = 1,
    frames = 1,
    -- frame_count = 1,
    -- shift = {0, 0},
    hr_version = {
        filename = "__core__/graphics/empty.png",
        priority = "very-low",
        width = 1,
        height = 1,
        frames = 1
        -- frame_count = 1,
        -- shift = {0, 0},
        -- scale = 0.5
    }
}
util.invisIcon = "__core__/graphics/empty.png"
util.iconOverlay = {
    icon = util.filePath(names.iconOverlay, "icon"),
    icon_size = 12
    -- shift = {0, 12}
}
util.bulletCaseIcon = {icon = util.filePath(names.bulletCaseIcon, "icon"), icon_size = 32}
function util.iconWithOverlay(icon)
    return {{icon = icon, icon_size = 32}, util.iconOverlay}
end
function util.ammoIcons(proto)
    local iconScale = 0.5
    local iconShift = {10, 0}
    local protoIcon = proto.icon
    local protoIcons = proto.icons
    local iconType = type(protoIcon)
    if (iconType == "string") then
        return {util.bulletCaseIcon, {icon = protoIcon, icon_size = 32, scale = 0.5, shift = {10, 0}}}
    elseif (iconType == "table") then
        local scale = protoIcon.scale or 1
        scale = scale * iconScale
        local shift = protoIcon.shift or {0, 0}
        shift[1] = shift[1] + iconShift[1]
        shift[2] = shift[2] + iconShift[2]
        return {
            util.bulletCaseIcon,
            {icon = protoIcon.icon, icon_size = protoIcon.icon_size, scale = scale, shift = shift}
        }
    elseif (protoIcons) then
        local res = {util.bulletCaseIcon}
        for i = 1, #protoIcons do
            local curIcon = protoIcons[i]
            if (type(curIcon) == "table") then
                local scale = curIcon.scale or 1
                scale = scale * iconScale
                local shift = curIcon.shift or {0, 0}
                shift[1] = shift[1] + iconShift[1]
                shift[2] = shift[2] + iconShift[2]
                res[i + 1] = {icon = curIcon.icon, icon_size = curIcon.icon_size, scale = scale, shift = shift}
            else
                res[i + 1] = curIcon
            end
        end
        return res
    end
    return {util.bulletCaseIcon}
    -- local iconType = type(icon)
    -- local res = {
    --     util.bulletCaseIcon
    -- }
    -- if (iconType == "string") then
    --     icon = {
    --         icon = icon,
    --         icon_size = 32,
    --         scale = 0.5,
    --         shift = {10, 0}
    --     }
    -- end
    -- for
    -- return {
    --     util.bulletCaseIcon,
    --     {
    --         icon = icon,
    --         icon_size = 32,
    --         scale = 0.5,
    --         shift = {10, 0}
    --     }
    -- }
end

return util
