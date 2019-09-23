Array = {}
-- List = Array

--[[-- Metatable for all instances to use.
@table objMT
]]
Array.objMT = {
    __index = Array
}

--[[--
Create new Array.
@return New Array object

]]
function Array.new()
    local obj = setmetatable({}, Array.objMT)
    return obj
end

-- function Array.insert(self, val, ind)
--     local newInd = #self + 1
--     if (not ind) or (ind > newInd) then
--         ind = newInd
--     end
--     if (ind < 1) then
--         ind = 1
--     end
--     local i = newInd
--     while (i > ind) do
--         self[i] = self[i - 1]
--         i = i - 1
--     end
--     self[ind] = val
-- end
function Array.insert(self, val)
    table.insert(self, val)
end
--[[--
Remove all values from Array equivalent to object.
Uses "==" to compare equivalency.
@param self
@param val object to remove
]]
function Array.remove(self, val)
    local ind = Array.getIndex(self, val)
    while (ind) do
        Array.removeIndex(self, ind)
        ind = Array.getIndex(self, val)
    end
end
Array.removeValue = Array.remove

--[[--
Remove index from Array.
@param self
@param ind
]]
function Array.removeIndex(self, ind)
    local size = #self
    for j = ind, size do
        self[j] = self[j + 1]
    end
    return true
end

--[[--
Check for presence of object in Array values.
@param self
@param val Object to check against values for equivalency
@return true if Array contains at least one instance of object in values, otherwise false
]]
function Array.contains(self, val)
    local size = #self
    for i = 1, size do
        if self[i] == val then
            return true
        end
    end
    return false
end

function Array.getIndex(self, val, limit)
    local size = #self
    local curOcc = limit or 1
    for i = 1, size do
        local cur = self[i]
        if cur == val then
            if (curOcc <= 1) then
                return i
            else
                curOcc = curOcc - 1
            end
        end
    end
    return nil
end
Array.indexOf = Array.getIndex

function Array.merge(t1, t2)
    for _, v in pairs(t2) do
        table.insert(t1, v)
    end
end

--[[--
Check for equivalency of all key/value pairs in two tables.
@param a1
@param a2
@return bool
]]
function Array.equals(a1, a2)
    local size1 = #a1
    local size2 = #a2
    if size1 == size2 then
        for k, v in pairs(a1) do
            if a2[k] ~= v then
                return false
            end
        end
        return true
    end
    return false
end

function Array.toHash(self)
    local hash = {}
    for i = 1, #self do
        local v = self[i]
        hash[v] = true
    end
    return hash
end

function Array.iter(self)
    local i = 0
    local size = #self
    return function()
        i = i + 1
        if (i <= size) then
            return self[i]
        end
    end
end

return Array
