local function debug(string)
    -- local player = game.players[1]
    -- player.print("VTK-CANNON-TURRET-DEBUG")
    -- player.print(string)
end

local function update_entity_life(entity, damage, type)
    if entity.force.technologies["vtk-cannon-turret-wall-resistance"].researched == false then
        return
    end
    
    if entity ~= nil
    -- and (entity.name == "stone-wall" or entity.name == "gate")
    and (entity.type == "wall" or entity.type == "gate")
    and type.name == "explosion" then
        debug("entity "..entity.name..""..entity.unit_number.." took "..damage.." damage of "..type.name.." type")
        debug("health before "..entity.health)
        entity.health = entity.health + damage*0.90
        debug("health after "..entity.health)
    end
end

-- events hooks
local events = defines.events

script.on_event({events.on_entity_damaged},
    function(event)
        update_entity_life(event.entity, event.final_damage_amount, event.damage_type)
    end
)
