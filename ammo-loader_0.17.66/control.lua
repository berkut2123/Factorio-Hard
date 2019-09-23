-- Mod = require("lib/Import")
protoNames = require "prototypes/names"

require "lib/util"
require "lib/gSettings"
require "lib/Initializer"
require "lib/Version"
require "lib/ModCompat"
require "lib/Remote"
require "lib/Handlers"
require "lib/Gui"

require "lib/EntDB"
require "lib/ItemDB"
require "lib/createdQ"
require "lib/DB"
require "lib/idQ"

require "lib/Force"
require "lib/TrackedSlot"
require "lib/TrackedChest"
require "lib/HiddenInserter"

-- Init.registerFunc(
--     -- _init
--     function()
--         global["trackedPlayers"] = {}
--         local tp = global["trackedPlayers"]
--         for pInd, player in pairs(game.players) do
--             if (player.surface.name == "nauvis") then
--                 tp[pInd] = player.position
--             end
--         end
--     end
-- )
-- function trackedPlayers()
--     return global["trackedPlayers"]
-- end
-- function trackedPos(playerInd)
--     return trackedPlayers()[playerInd]
-- end

---@class LuaObject
---@field valid boolean

---@class LuaEntity : LuaObject
---@class LuaPlayer : LuaObject
---@class LuaSurface : LuaObject
---@class LuaInventory : LuaObject
---@class LuaForce

---@class ItemStack
---@field name string
---@field count integer

---@class LuaItemStack : ItemStack
---@field valid_for_read boolean

---@class Position
---@field x number
---@field y number

---@class LuaProfiler : LuaObject

---@class dbObject
