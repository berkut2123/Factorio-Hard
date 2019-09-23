local snapping = {}
local snapTypes = {
	["loader"] = true,
	["splitter"] = true,
	["underground-belt"] = true,
	["transport-belt"] = true
}
-- set loader direction according to adjacent belts
local function snap_loader_to_target(loader, entity, event)
	if not entity or not entity.valid or not loader or not loader.valid then
		log("Entity or Loader where invalid.")
		return
	end
	if not snapTypes[entity.type] then
		log(entity.type.." not a valid entity for loader connection")
		return
	end
	local direction = loader.direction
	local loader_type = loader.loader_type
	if loader.direction == 0 or loader.direction == 4 then -- loader and entity are aligned vertically
		if loader.position.y > entity.position.y then
			if entity.direction == 4 then
				direction = 4
				loader_type = "input"
			else
				direction = 0
				loader_type = "output"
			end
		elseif loader.position.y < entity.position.y then
			if entity.direction == 0 then
				direction = 0
				loader_type = "input"
			else
				direction = 4
				loader_type = "output"
			end
		end
	else -- loader and entity are aligned horizontally
		if loader.position.x > entity.position.x then
			if entity.direction == 2 then
				direction = 2
				loader_type = "input"
			else
				direction = 6
				loader_type = "output"
			end
		elseif loader.position.x < entity.position.x then
			if entity.direction == 6 then
				direction = 6
				loader_type = "input"
			else
				direction = 2
				loader_type = "output"
			end
		end
	end
	if loader.direction ~= direction or loader.loader_type ~= loader_type then
		loader.loader_type = loader_type
		loader.direction = direction
	end
end
local function find_loader_by_entity(entity, supported_loader_names)
	local position = entity.position
	local box = entity.prototype.selection_box
	local area = {
		{position.x + box.left_top.x-1, position.y + box.left_top.y-1},
		{position.x + box.right_bottom.x + 1, position.y + box.right_bottom.y + 1}
	}
	return entity.surface.find_entities_filtered{type="loader", name=supported_loader_names, area=area, force=entity.force}
end
local function find_entity_by_loader(loader)
	local lbox = loader.prototype.selection_box
	local check
	if loader.direction == 0 or loader.direction == 4 then
		check = {
			{loader.position.x -.4, loader.position.y + lbox.left_top.y -1},
			{loader.position.x +.4, loader.position.y + lbox.right_bottom.y +1}
		}
	else
		check = {
			{loader.position.x + lbox.left_top.x - 1, loader.position.y - .4},
			{loader.position.x + lbox.right_bottom.x + 1, loader.position.y + .4}
		}
	end
	return loader.surface.find_entities_filtered{area=check, force=loader.force}
end
function snapping.check_for_loaders(event, supported_loader_names)
	local entity = event.created_entity or event.entity
	if snapTypes[entity.type] then
		local loaders = find_loader_by_entity(entity, supported_loader_names)
		for _, loader in pairs(loaders) do
		local entities = find_entity_by_loader(loader)
			for _, ent in pairs(entities) do
				if ent == entity and ent ~= loader and snapTypes[ent.type] then
					snap_loader_to_target(loader, ent, event)
				end
			end
		end
		if entity.type == "underground-belt" and entity.neighbours then
			local loaders = find_loader_by_entity(entity.neighbours, supported_loader_names)
			for _, loader in pairs(loaders) do
			local entities = find_entity_by_loader(loader)
				for _, ent in pairs(entities) do
					if ent == entity.neighbours and ent ~= loader and snapTypes[ent.type] then
						snap_loader_to_target(loader, ent, event)
					end
				end
			end
		end
	end
end
function snapping.snap_loader(loader, event)
	local entities = find_entity_by_loader(loader)
	local snapped = false
	for _, ent in pairs(entities) do
		if ent.valid and ent ~= loader and snapTypes[ent.type] then
			snap_loader_to_target(loader, ent, event)
			snapped = true
		end
	end
	if not snapped then
		for _, ent in pairs(entities) do
			if ent.valid and ent ~= loader then
				local loader_type = loader.loader_type
				local direction = loader.direction
				if loader.position.y > ent.position.y and ((loader.direction == 0 and loader.loader_type == "output") or (loader.direction == 4 and loader.loader_type == "input")) then
					direction = 4
					loader_type = "output"
				elseif loader.position.y < ent.position.y and ((loader.direction == 4 and loader.loader_type == "output") or (loader.direction == 0 and loader.loader_type == "input")) then
					direction = 0
					loader_type = "output"
				elseif loader.position.x > ent.position.x and ((loader.direction == 6 and loader.loader_type == "output") or (loader.direction == 2 and loader.loader_type == "input")) then
					direction = 2
					loader_type = "output"
				elseif loader.position.x < ent.position.x and ((loader.direction == 2 and loader.loader_type == "output") or (loader.direction == 6 and loader.loader_type == "input")) then
					direction = 6
					loader_type = "output"
				end
				if loader.direction ~= direction or loader.loader_type ~= loader_type then
					loader.loader_type = loader_type
					loader.direction = direction
				end
			end
		end
	end
end
return snapping