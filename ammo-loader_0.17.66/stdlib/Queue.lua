---@class Queue

Queue = {}
Q = Queue
Q.objMT = {
    __index = Q
}
function Q.new()
    local q = {first = 0, last = -1}
    setmetatable(q, Q.objMT)
    q.entries = {__mode = "v"}
    -- q.list = q.entries
    return q
end
Q.list = function(self)
    return self.entries
end

function Q.clear(self)
    self.first = 0
    self.last = -1
    self.entries = {}
    self.list = self.entries
end

function Q.pushleft(self, value)
    if (not value) then
        error("value cannot be nil")
    end
    local list = self.entries
    self.first = self.first - 1
    list[self.first] = value
end

function Q.pushright(self, value)
    if (not value) then
        error("value cannot be nil")
    end
    local list = self.entries
    self.last = self.last + 1
    list[self.last] = value
end
Q.push = Q.pushright

function Q.popleft(self)
    local list = self.entries
    if Q.size(self) <= 0 then
        return nil
    end
    local value = list[self.first]
    list[self.first] = nil -- to allow garbage collection
    self.first = self.first + 1
    return value
end
Q.pop = Q.popleft

function Q.popright(self)
    local list = self.entries
    if Q.size(self) <= 0 then
        return nil
    end
    local value = list[self.last]
    list[self.last] = nil -- to allow garbage collection
    self.last = self.last - 1
    return value
end

function Q.peekleft(self)
    local list = self:get_entries()
    if Q.size(self) <= 0 then
        return nil
    end
    local value = list[self.first]
    return value
end

function Q.peekright(self)
    local list = self.entries
    if Q.size(self) <= 0 then
        return nil
    end
    local value = list[self.last]
    return value
end

function Q.cycle(self)
    if Q.size(self) <= 0 then
        return nil
    end
    local next = Q.pop(self)
    if not next then
        return Q.cycle(self)
    end
    Q.push(self, next)
    return next
end

-- function q:cycle()
-- 	local size = self:getSize()
-- 	for i=1, size do
-- 		local cur = self:popleft()
-- 		if (cur ~= nil) then
-- 			self:pushright(cur)
-- 			return cur
-- 		end
-- 	end
-- 	return nil
-- end
function Q.isEmpty(self)
    return (Q.size(self) <= 0)
end
Q.isempty = Q.isEmpty
Q.is_empty = Q.isEmpty

function Q.size(self)
    return (self.last - self.first) + 1
end
Q.getsize = Q.size
Q.getSize = Q.size
Q.get_size = Q.size

function Q.get_entries(self)
    return self.entries
end

return Q
