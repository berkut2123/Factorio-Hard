require "util"

script.on_event(defines.events.on_tick, function(event)
    surface = game.surfaces[1]

    if global.wind_turbine == nil then
        global.wind_turbine = {}
        global.wind_prev = surface.wind_speed
        global.wind_next = surface.wind_speed
    end
	
	if global.wind_turbine2 == nil then
        global.wind_turbine2 = {}
        global.wind_prev = surface.wind_speed
        global.wind_next = surface.wind_speed
    end
	
	if global.wind_turbine3 == nil then
        global.wind_turbine3 = {}
        global.wind_prev = surface.wind_speed
        global.wind_next = surface.wind_speed
    end

	if (game.tick % 2500) == 0 then
        global.wind_prev = global.wind_next
        global.wind_next = math.random(25,40)/1000
	end

	if (game.tick % 125) == 0 then
        local t = (game.tick % 2500) / 2500.0
        surface.wind_speed = global.wind_prev + (global.wind_next-global.wind_prev) * t * t * (4.0 - 3.0 * t)

        for key,wind_turbine in pairs(global.wind_turbine) do
            if wind_turbine.valid then
                wind_turbine.fluidbox [1]= {name="steam", amount=200, temperature=100}
            else
                table.remove(global.wind_turbine, key)
            end
		end
	end
	
	if (game.tick % 125) == 0 then
        local t = (game.tick % 2500) / 2500.0
        surface.wind_speed = global.wind_prev + (global.wind_next-global.wind_prev) * t * t * (4.0 - 2.0 * t)

        for key,wind_turbine2 in pairs(global.wind_turbine2) do
            if wind_turbine2.valid then
                wind_turbine2.fluidbox [1]= {name="steam", amount=200, temperature=100}
            else
                table.remove(global.wind_turbine2, key)
            end
		end
	end
	
	if (game.tick % 125) == 0 then
        local t = (game.tick % 2500) / 2500.0
        surface.wind_speed = global.wind_prev + (global.wind_next-global.wind_prev) * t * t * (5.0 - 2.0 * t)

        for key,wind_turbine3 in pairs(global.wind_turbine3) do
            if wind_turbine3.valid then
                wind_turbine3.fluidbox [1]= {name="steam", amount=200, temperature=100}
            else
                table.remove(global.wind_turbine3, key)
            end
		end
	end
end)

function on_creation(event)
    if event.created_entity.name == "wind-turbine" then
        local wind_turbine = event.created_entity
        table.insert(global.wind_turbine, wind_turbine)
    end
	if event.created_entity.name == "wind-turbine2" then
        local wind_turbine2 = event.created_entity
        table.insert(global.wind_turbine2, wind_turbine2)
    end
	if event.created_entity.name == "wind-turbine3" then
        local wind_turbine3 = event.created_entity
        table.insert(global.wind_turbine3, wind_turbine3)
    end
	
end

script.on_event(defines.events.on_built_entity, on_creation)
script.on_event(defines.events.on_robot_built_entity, on_creation)
