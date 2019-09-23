local Fact = require("factorio")
local Global = require("global")

local Logistic = {}

-- Helper to collect a list of items in all logistic networks in the player's control.
function Logistic.findMatches(player, matchFunc)
  local matches = {}
  for surface, networks in pairs(player.force.logistic_networks) do
    for _, network in pairs(networks) do
      local c = network.cells[1]
      if c and c.owner and c.owner.name == "player" then
        -- skip player-owned roboports
      else
        local contents = network.get_contents()
        for name, count in pairs(contents) do
          if matchFunc(player, name) then
            local itemProto = game.item_prototypes[name]
            matches[name] = {
              name = name,
              number = count,
              order = (isFavorite(player, name) and "[a]" or "[b]") .. itemProto.order,
              sprite = "item/"..name,
              tooltip = {
                "",
                itemProto.localised_name,
                " (", name, ")",
                "\nclick = pick up ghost of item",
                "\nctrl+click = add 1 of this item to logistic requests",
                "\nshift+click = add a full stack of this item to logistic requests",
              },
              acceptFunc = "logistic",
            }
          end
        end
      end
    end
  end
  return matches
end

-- Player chose an item from a logistic network.
function Logistic.pick(player, match, event)
  local itemProto = game.item_prototypes[match.name]
  local request =
    (event.shift) and itemProto.stack_size or
    (event.control and event.button == defines.mouse_button_type.right) and 5 or
    (event.control) and 1 or
    0

  if request == 0 then
    -- Grab ghost of the item.
    if itemProto.place_result then
      Fact.createGhostTool(player, itemProto.place_result)
    end
    return
  end

  -- Add logitistic requests.
  if player.character then
    local playerCount = player.get_main_inventory().get_item_count(match.name)
    local currentCount = 0
    local slot
    for i=1,player.character.request_slot_count do
      local item = player.character.get_request_slot(i)
      if not item then
        -- Add player's inventory to request amount if this is the first time requesting.
        currentCount = playerCount
        slot = i
      elseif item.name == match.name then
        slot = i
        currentCount = item.count
        break
      end
    end
    if slot then
      debug(player, "requesting %s x %d in slot %d", match.name, request, slot)
      player.character.set_request_slot({name=match.name, count=currentCount + request}, slot)
      Global.get(player).awaitingLogisticRequest = Global.get(player).awaitingLogisticRequest or {}
      Global.get(player).awaitingLogisticRequest[match.name] = {slot=slot, count=currentCount + request}
    end
  end
end

function Logistic.maybeClearLogisticRequests(player)
  if player.character then
    local remove = {}
    for name, req in pairs(Global.get(player).awaitingLogisticRequest or {}) do
      local playerCount = player.get_main_inventory().get_item_count(name)
      if playerCount >= req.count then table.insert(remove, name) end
    end
    for _,name in pairs(remove) do
      local req = Global.get(player).awaitingLogisticRequest[name]
      local item = player.character.get_request_slot(req.slot)
      if item and item.name == name and item.count == req.count then
        player.character.clear_request_slot(req.slot)
      end
      Global.get(player).awaitingLogisticRequest[name] = nil
    end
  end
end

return Logistic