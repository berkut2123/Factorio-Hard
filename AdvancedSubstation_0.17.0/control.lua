--control.lua

script.on_event(defines.events.on_entity_died, function(event)
	--game.print (tostring(event.entity.name))
	local entity=event.entity
	if entity.name == "substation-3" then
		entity.surface.create_entity{name = "atomic-rocket", position = entity.position, force = entity.force, target = entity, speed = 1000}
	end
end)
