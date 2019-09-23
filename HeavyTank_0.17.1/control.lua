----------------------------Mine deploy

math3d = require("math3d")

function isDrivingHeavyTank(p,h)
	return p.driving and p.vehicle.valid and p.vehicle.name == h 
end

function getTankMineCount(t,m)
	local inv = t.get_inventory(defines.inventory.car_trunk)
	return inv.get_item_count(m)
end

function placeMines(e)
	local p = game.players[e.player_index]

	if isDrivingHeavyTank(p, "HeavyTank_heavy_tank") or isDrivingHeavyTank(p, "HeavyTank_experimental_tank") then
		local width = 6
		local height = 6
		local spacing = 4

		local count = math.min(getTankMineCount(p.vehicle,"heavy-land-mine"), width * height)

		if count > 0 then
			p.vehicle.get_inventory(defines.inventory.car_trunk).remove{name = "heavy-land-mine", count = count}


			local orient = p.vehicle.orientation
			local curPos = {p.vehicle.position.x, p.vehicle.position.y}

			local up = math3d.vector2.rotate({0,-1}, math.pi * 2 * orient)
			local right = math3d.vector2.rotate({1,0}, math.pi * 2 * orient)

			curPos = math3d.vector2.sub(curPos, math3d.vector2.mul(up, (1-height)*spacing/2))
			curPos = math3d.vector2.sub(curPos, math3d.vector2.mul(right, (width-1)*spacing/2))

			up = math3d.vector2.mul(up, spacing)
			right = math3d.vector2.mul(right, spacing)

			for i = 1, width do
				local curPosH = math3d.vector2.mul(curPos, 1)
				for j = 1, height do
					p.vehicle.surface.create_entity{name="heavy-land-mine", force = p.vehicle.force, position = curPosH}
					count = count - 1

					if count == 0 then break end
					curPosH = math3d.vector2.sub(curPosH, up)
				end

				if count == 0 then break end
				curPos = math3d.vector2.add(curPos, right)
			end
		end
	end
	

	----------
	
	
	if isDrivingHeavyTank(p, "HeavyTank_medium_tank") then
		local width = 4
		local height = 4
		local spacing = 4

		local count = math.min(getTankMineCount(p.vehicle,"normal-land-mine"), width * height)

		if count > 0 then
			p.vehicle.get_inventory(defines.inventory.car_trunk).remove{name = "normal-land-mine", count = count}


			local orient = p.vehicle.orientation
			local curPos = {p.vehicle.position.x, p.vehicle.position.y}

			local up = math3d.vector2.rotate({0,-1}, math.pi * 2 * orient)
			local right = math3d.vector2.rotate({1,0}, math.pi * 2 * orient)

			curPos = math3d.vector2.sub(curPos, math3d.vector2.mul(up, (1-height)*spacing/2))
			curPos = math3d.vector2.sub(curPos, math3d.vector2.mul(right, (width-1)*spacing/2))

			up = math3d.vector2.mul(up, spacing)
			right = math3d.vector2.mul(right, spacing)

			for i = 1, width do
				local curPosH = math3d.vector2.mul(curPos, 1)
				for j = 1, height do
					p.vehicle.surface.create_entity{name="normal-land-mine", force = p.vehicle.force, position = curPosH}
					count = count - 1

					if count == 0 then break end
					curPosH = math3d.vector2.sub(curPosH, up)
				end

				if count == 0 then break end
				curPos = math3d.vector2.add(curPos, right)
			end
		end
	end
end

script.on_event("HeavyTank-place-mines", placeMines)

----------------------------------- No Ghost Mines

script.on_event(defines.events.on_entity_died, function(event)
	if (event.entity.name == 'heavy-land-mine')then
	center = event.entity.position
	for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.01, center.y-0.01}, {center.x+0.01, center.y+0.01}},
    name = "heavy-land-mine"}) do
    entity.destroy() 
	end

	elseif (event.entity.name == 'normal-land-mine')then
	center = event.entity.position
	for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.01, center.y-0.01}, {center.x+0.01, center.y+0.01}},
    name = "normal-land-mine"}) do
    entity.destroy() 
	end
	end
end)
----------------------------------- vehicle Armor

script.on_event(defines.events.on_player_placed_equipment, function(event)

	if (event.equipment.name == 'scrap-armor-unworn' or event.equipment.name == 'steel-armor-unworn'or event.equipment.name == 'dark-armor-unworn'or event.equipment.name == 'ht-uranium-armor-unworn') then
    

    local pname = string.sub(event.equipment.name, 1, -8)
    local ppos = event.equipment.position
    local gp = event.grid
    local discard = gp.take{position=ppos}
	
    discard=nil
    gp.put{name=pname,position=ppos}
    gp.get(ppos).energy = gp.get(ppos).max_energy

	elseif (event.equipment.name == 'gun-turret-equipment-NR1k' or event.equipment.name == 'gun-turret-equipment-PR1k'or event.equipment.name == 'gun-turret-equipment-UR1k' or event.equipment.name == 'autocannons-equipment-normal1k' or event.equipment.name == 'autocannons-equipment-fire1k' or event.equipment.name == 'autocannons-equipment-acid1k') then
    

    local pname = string.sub(event.equipment.name, 1, -3)
    local ppos = event.equipment.position
    local gp = event.grid
    local discard = gp.take{position=ppos}
	
    discard=nil
    gp.put{name=pname,position=ppos}
    gp.get(ppos).energy = gp.get(ppos).max_energy

    end
	
    
end)


