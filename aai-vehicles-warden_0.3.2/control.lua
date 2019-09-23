require("stdlib/table")
require("stdlib/string")
local util = require("util")

local high_fuel_item = "rocket-fuel"
local fuel, trunk = defines.inventory.fuel, defines.inventory.car_trunk
local inv_nums = {fuel, trunk}

-- run mining 2 times per second
local passive_search_interval = 120
local active_search_interval = 30

-------------------------------------------------------------------------------
--[[HELPERS]]--
-------------------------------------------------------------------------------

local get_fuel = {
    --Build a table of fuel items, index as fuel name, value as table with name, fuel_value
    build = function()
        return table.map(game.item_prototypes,
            function(item, name)
                local fuel_item = {}
                if item.fuel_value and item.fuel_value > 0 then
                    fuel_item.fuel_value = item.fuel_value
                    fuel_item.name = name
                end
                --Return: index as item_name, value as fuel_value
                return fuel_item.name and fuel_item or nil
            end
        )
    end,

    --Return a fuel item table if a fuel item is in the contents.
    item = function(contents)
        local fuel_items = global.fuel_items
        for name in pairs(contents) do
            if fuel_items[name] then
                return fuel_items[name]
            end
        end
    end
}




local wardens = {
    --global refrence to all saved wardens, set in on_load and on_init
    wardens = {},

    --variant types of wardens, TODO in future move to sub-objects
    variants = {["vehicle-warden"] = {
        vehicle_name = "vehicle-warden",
        search_radius = 25, -- repair + items
    }},

    --metamethods for wardens.wardens
    mt = {
        --wardens[number] will return wardens.wardens[number]
        __index = function(tab, key)
            return type(key) == "number" and tab.wardens[key]
        end,
        --__newindex: wardens[number] = value store in wardens.wardens[number]
        __newindex = function(tab, key, value)
            if type(key) == "number" then
                tab.wardens[key] = value
            else
                rawset(tab, key, value)
            end
        end
    }
}
setmetatable(wardens, wardens.mt)

function wardens:new(entity)
    if entity.valid and self.variants[entity.name] then
        local warden = {
            unit_number = entity.unit_number,
            entity = entity,
            name = entity.name,
            mode = "active"
        }
        --metatables are not saved to global. Iterate and re-assign in on_load
        setmetatable(warden, {__index = wardens})
        self[entity.unit_number] = warden
        return warden
    end
end

--Replace and rekey the warden entity
function wardens.replace(event)
    if wardens[event.old_entity_unit_number] then
        local warden = table.deepcopy(wardens[event.old_entity_unit_number])
        warden.entity = event.new_entity
        warden.unit_number = event.new_entity_unit_number
        wardens[event.new_entity_unit_number] = warden
        wardens[event.old_entity_unit_number] = nil
    end
end

--destroy warden record
function wardens:die()
    if not self.entity.valid then
        self.wardens[self.unit_number] = nil
        self = nil
    end
    return not self
end

--Consume fuel from a list of fuels generated on init and changed

local function consume_fuel_or_equipment(warden)
    if warden.entity.grid and warden.entity.grid.available_in_batteries > 10000 then
        --Added by Undarl; basic battery fueling logic courtesy of Sirenfal
        ---Modified by the Nexela
        warden.entity.burner.currently_burning = high_fuel_item
        local energy_deficit = game.item_prototypes[high_fuel_item].fuel_value - warden.entity.burner.remaining_burning_fuel --use initial energy value as baseline
        local batteries = table.filter(warden.entity.grid.equipment, function(v) return v.type == "battery-equipment" end)
        local num_batteries = #batteries
        while num_batteries > 0 and energy_deficit > 0 do
            local battery = batteries[num_batteries]
            local energy_used = energy_deficit - math.max(battery.energy, energy_deficit)
            battery.energy = battery.energy - energy_used
            warden.entity.burner.remaining_burning_fuel = warden.entity.burner.remaining_burning_fuel + energy_used
            energy_deficit = energy_deficit - energy_used
            num_batteries = num_batteries - 1
        end
    else
        for _, inv_num in pairs(inv_nums) do
            local inventory = warden.entity.get_inventory(inv_num)
            if inventory then
                local fuel_item = get_fuel.item(inventory.get_contents())
                if fuel_item then
                    warden.entity.burner.currently_burning = fuel_item.name
                    warden.entity.burner.remaining_burning_fuel = warden.entity.burner.remaining_burning_fuel + fuel_item.fuel_value
                    inventory.remove({name=fuel_item.name, count=1})
                    return true
                end
            end
        end
    end
end

local function end_beam(warden)
  if warden.beam and warden.beam.valid then
    warden.beam.destroy()
    warden.beam = nil
  end
end

local function search_floor_items(warden)
  local range = warden.variants[warden.name].search_radius
  local area = {
      {warden.entity.position.x - range, warden.entity.position.y - range},
      {warden.entity.position.x + range, warden.entity.position.y + range}
  }
  for _, entity in pairs(warden.entity.surface.find_entities_filtered{area=area,type="item-entity"}) do
    local inserted = warden.entity.insert({name=entity.stack.name, count=entity.stack.count})
    if inserted > 0 then
      warden.mode = "active"
      if game.entity_prototypes[entity.stack.name .. "-_-" .. "projectile"] then -- aai vehicles transfer particles
        warden.entity.surface.create_entity {
          name= entity.stack.name .. "-_-" .. "projectile",
          position= entity.position,
          target= warden.entity,
          speed = math.random() * 0.2
        }
      end
      entity.stack.count = entity.stack.count - inserted
    else
      return -- full
    end
  end
end

local function get_repair_items()
  if not global.repair_items then
    global.repair_items = {}
    for _, item in pairs(game.item_prototypes) do
      if item.type == "repair-tool" then
        global.repair_items[item.name] = item.speed
      end
    end
  end
  return global.repair_items
end

local function repair_area(warden, repair_item_name, speed)
  local range = warden.variants[warden.name].search_radius
  local area = {
      {warden.entity.position.x - range, warden.entity.position.y - range},
      {warden.entity.position.x + range, warden.entity.position.y + range}
  }
  local best_repair_target = nil
  local best_health_percent = 1

  for _, entity in pairs(warden.entity.surface.find_entities_filtered{area=area, force=warden.entity.force}) do
    if entity.health and entity.health < entity.prototype.max_health then
      local health_percent = entity.health / entity.prototype.max_health
      if health_percent < 1
          and (best_repair_target == nil or health_percent < best_health_percent)
          and not entity.prototype.has_flag("not-repairable") then
        best_repair_target = entity
        best_health_percent = health_percent
      end
    end
  end

  if best_repair_target and best_repair_target.valid then
    warden.mode = "active"
    --best_repair_target.prototype.repair_speed_modifier is unit???
    local to_repair = math.min(best_repair_target.prototype.max_health - best_repair_target.health, active_search_interval * best_repair_target.prototype.repair_speed_modifier * speed)
    best_repair_target.health = best_repair_target.health + to_repair

    warden.entity.get_inventory(defines.inventory.car_trunk).find_item_stack(repair_item_name).drain_durability(to_repair / best_repair_target.prototype.repair_speed_modifier * speed)

    -- play sound and FX
    end_beam(warden)
    warden.beam = warden.entity.surface.create_entity{
      name="repair-beam",
      position= warden.entity.position,
      source= warden.entity,
      target= best_repair_target}
  elseif warden.beam and warden.beam.valid then
    end_beam(warden)
  end

end


--local function on_tick(event)
local function on_tick()

    for _, warden in pairs(wardens.wardens) do
        if warden.entity.valid then
          if (warden.mode == "active" and (game.tick + warden.unit_number) % active_search_interval == 0) or
             (game.tick + warden.unit_number) % passive_search_interval == 0 then

            if (not warden.entity.burner.currently_burning) or (warden.entity.burner.remaining_burning_fuel < warden.entity.burner.currently_burning.fuel_value * 0.02 + 1) then
                consume_fuel_or_equipment(warden)
            end

            if warden.entity.burner.remaining_burning_fuel > 0 then

                local can_repair = false

                for name, speed in pairs(get_repair_items()) do
                  if warden.entity.get_inventory(defines.inventory.car_trunk).get_item_count(name) > 0 then
                    repair_area(warden, name, speed)
                    can_repair = true
                    break
                  end
                end

                if not can_repair then
                  warden.mode = "passive"
                  end_beam(warden)
                end

                if (game.tick + warden.unit_number) % (passive_search_interval * 2) == 0 then
                  if warden.entity.can_insert("rocket-part") then search_floor_items(warden) end
                  warden.entity.burner.remaining_burning_fuel = warden.entity.burner.remaining_burning_fuel - 2000
                  local chart_range = 128
                  warden.entity.force.chart(warden.entity.surface,
                            {{x = warden.entity.position.x - chart_range, y = warden.entity.position.y - chart_range},
                            {x = warden.entity.position.x + chart_range, y = warden.entity.position.y + chart_range}})
                end
            else
              warden.mode = "passive"
              end_beam(warden)
            end
          end
        else -- not warden.entity.valid
            warden:die()
        end

    end
end

-------------------------------------------------------------------------------
--[[EVENTS]]--
-------------------------------------------------------------------------------
script.on_event(defines.events.on_tick, on_tick)
script.on_event(defines.events.on_built_entity, function(event) wardens:new(event.created_entity) end)
script.on_event(defines.events.on_pre_player_mined_item, function(event) if wardens[event.entity.unit_number] then wardens[event.entity.unit_number]:die() end end)

-------------------------------------------------------------------------------
--[[INIT]]--
-------------------------------------------------------------------------------
local function on_load()
    wardens.wardens = global.wardens
    for _, warden in pairs(wardens.wardens) do
        setmetatable(warden, {__index = wardens})
    end
end
script.on_load(on_load)

local function on_configuration_changed()
    --update fuel items every change
    global.fuel_items = get_fuel.build()
    global.repair_items = nil
end
script.on_configuration_changed(on_configuration_changed)

local function on_init()
    global.wardens = global.wardens or {}
    wardens.wardens = global.wardens
    global.fuel_items = get_fuel.build()
    global.repair_items = nil
end
script.on_init(on_init)

-------------------------------------------------------------------------------
--[[REMOTE]]--
-------------------------------------------------------------------------------
local function write_global()
    game.write_file("AAI/warden.global.lua", serpent.dump(global, {comment=false, sparse=true, indent = "\t", nocode=true, name="global"}), false)
    game.write_file("AAI/warden.wardens.lua", serpent.dump(wardens, {comment=false, sparse=true, indent = "\t", nocode=true, name="wardens"}), false)
    game.write_file("AAI/warden._ENV.lua", serpent.block(_ENV, {comment=false, sparse=true, indent = "\t", nocode=true}), false)
end

remote.add_interface(
    "aai-vehicles-warden",
    {
        -- sent by aai-programmable-structures
        on_entity_deployed = function(event) wardens:new(event.entity) end,
        -- sent by aai-programmable-vehicles -- replaced by equivalent
        on_entity_replaced = function(event) wardens.replace(event) end,
        write_global = write_global
    }
)
