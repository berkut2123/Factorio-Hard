if not starfall then starfall = {} end

-- Definitions ----------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local area_border_inner = {x=100, y=100} --{x=settings.global['apm_starfall_area_inner_border'].value, y=settings.global['apm_starfall_area_inner_border'].value}
local area_border_outer = {x=2500, y=2500} --{x=settings.global['apm_starfall_area_outer_border'].value, y=settings.global['apm_starfall_area_outer_border'].value}
local on_min_tick = 1200*60 --settings.global['apm_starfall_event_min_secounds'].value * 60
local on_max_tick = 2400*60 --settings.global['apm_starfall_event_max_secounds'].value * 60
local delay_min = 30*60 --settings.global['apm_starfall_delay_min_secounds'].value * 60
local delay_max = 60*60 --settings.global['apm_starfall_delay_max_secounds'].value * 60
local resource_patch_size_max = 5 --settings.global['apm_starfall_patch_size_max'].value
local resource_patch_size_min = 2 --settings.global['apm_starfall_patch_size_min'].value
local guaranteed_starting_meteroids = 2
local max_meteroids = 2

-- Initial --------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function starfall.init()
	if global.apm_starfall == nil then global.apm_starfall = {} end
	--if global.apm_starfall.cycle_to_next_tick == nil then global.apm_starfall.cycle_to_next_tick = false end
	if global.apm_starfall.start_impacts == nil then global.apm_starfall.start_impacts = false end
	if global.apm_starfall.cycle_for_impact == nil then global.apm_starfall.cycle_for_impact = false end
	if global.apm_starfall.positions_next == nil then global.apm_starfall.positions_next = {} end
	if global.apm_starfall.next_impact_on_tick == nil then global.apm_starfall.next_impact_on_tick = 0 end
	if global.apm_starfall.event_tick == nil then global.apm_starfall.event_tick = 0 end
	if global.apm_starfall.cluster_counter == nil then global.apm_starfall.cluster_counter = 0 end
	if global.apm_starfall.near_impact_counter == nil then global.apm_starfall.near_impact_counter = 1 end
end

-- Settings -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function starfall.mod_setting_changed()
	area_border_outer = {x=settings.global['apm_starfall_area_outer_border'].value, y=settings.global['apm_starfall_area_outer_border'].value}
	area_border_inner = {x=settings.global['apm_starfall_area_inner_border'].value, y=settings.global['apm_starfall_area_inner_border'].value}
	-- Now a test against a wrong user input if he sets the inner border bigger then the outer border
	if area_border_outer.x <= area_border_inner.x then
		area_border_outer.x = area_border_outer.x + area_border_inner.x
	end
	if area_border_outer.y <= area_border_inner.y then
		area_border_outer.y = area_border_outer.y + area_border_inner.y
	end

	on_min_tick = settings.global['apm_starfall_event_min_secounds'].value * 60
	on_max_tick = settings.global['apm_starfall_event_max_secounds'].value * 60
	-- Now a test against a wrong user input if he sets the min. event tick bigger then the max. event tick.
	if on_min_tick > on_max_tick then
		on_max_tick = on_min_tick
	end
	global.apm_starfall.event_tick = math.random(on_min_tick, on_max_tick) + game.tick

	delay_min = settings.global['apm_starfall_delay_min_secounds'].value * 60
	delay_max = settings.global['apm_starfall_delay_max_secounds'].value * 60
	-- Now a test against a wrong user input if he sets the min. delay bigger then the max. delay.
	if delay_min > delay_max then
		delay_max = delay_min
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function convert_ticks_to_cloack(ticks)
	local seconds = ticks/60

    local h = string.format("%02.f", math.floor(seconds/3600));
    local m = string.format("%02.f", math.floor(seconds/60 - (h*60)));
	local s = string.format("%02.f", math.floor(seconds - h*3600 - m *60));

  	if seconds <= 0 then
    	return "now"
  	else
    	return h..":"..m..":"..s
  	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function get_random_multi()
	local rnd = math.random()
	if rnd >= 0.5 then
		return -1
	end
	return 1
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function get_random_position(surface, range)
	local position_x = 0
	local position_y = 0
	local x_multi = get_random_multi()
	local y_multi = get_random_multi()

	if range ~= nil then
		position_x = x_multi * math.random(0, range.max)
		position_y = y_multi * math.random(0, range.max)

		if math.pow(position_x,2) < math.pow(range.min,2) and math.pow(position_y,2) < math.pow(range.min,2) then
			if math.pow(position_x,2) < math.pow(10,2) then
				position_x = position_x + x_multi*range.min
			else
				position_y = position_y + x_multi*range.min
			end
		end

		local position = {x=position_x, y=position_y}
		if surface.is_chunk_generated(position) ~= true then
			surface.request_to_generate_chunks(position, 0)
		end
		return position
	end

	global.apm_starfall.cluster_last_positions = nil
	local probability_near_impact = 0.05 * global.apm_starfall.near_impact_counter
	if math.random() <= probability_near_impact then
		global.apm_starfall.near_impact_counter = 1
		position_x = get_random_multi() * round(math.random(0, area_border_outer.x) / 2, 0)
		position_y = get_random_multi() * round(math.random(0, area_border_outer.y) / 2, 0)
		if math.pow(position_x,2) < math.pow(area_border_inner.x,2) and math.pow(position_y,2) < math.pow(area_border_inner.y,2) then
			if math.pow(position_x,2) < math.pow(10,2) then
				position_x = position_x + x_multi*area_border_inner.x
			else
				position_y = position_y + x_multi*area_border_inner.y
			end
		end
	else
		global.apm_starfall.cluster_counter = 3
		global.apm_starfall.near_impact_counter = global.apm_starfall.near_impact_counter + 1
		position_x = get_random_multi() * math.random(0, area_border_outer.x)
		position_y = get_random_multi() * math.random(0, area_border_outer.y)
		if math.pow(position_x,2) < math.pow(area_border_inner.x,2) and math.pow(position_y,2) < math.pow(area_border_inner.y,2) then
			if math.pow(position_x,2) < math.pow(10,2) then
				position_x = position_x + x_multi*area_border_inner.x
			else
				position_y = position_y + x_multi*area_border_inner.y
			end
		end
	end
	
	local position = {x=position_x, y=position_y}
	if surface.is_chunk_generated(position) ~= true then
		surface.request_to_generate_chunks(position, 0)
	end
	return position
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_if_position_is_valid(surface, position)
	local tile_check_area = ({
		                      {position.x-resource_patch_size_max, position.y-resource_patch_size_max},
							  {position.x+resource_patch_size_max, position.y+resource_patch_size_max}
							})
	
	local tiles = surface.find_tiles_filtered({area=tile_check_area})
	local water_not_tiles = {
			["water"] = true,
			["deepwater"] = true,
			["water-green"] = true,
			["deepwater-green"] = true
			}

	for _, tile in pairs(tiles) do
		if water_not_tiles[tile.name] == true then
			return false
		end
	end

	return true
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function probability(x, y, size)
	if x < 0 then x = x * -1 end
	if y < 0 then y = y * -1 end

	local high_value = x + y
	local probability = math.random()

	if probability <= ((size * 2 + 1 - high_value) / (size * 2)) then 
		return true 
	end
	return false
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function get_amount(x, y, size)
	if x < 0 then x = x * -1 end
	if y < 0 then y = y * -1 end

	local amount_max = 2500
	local amount_min = 80 * size
	local high_value = x + y
	local amount = round(math.random(amount_min, amount_max) * (size * 2 + 1 - high_value) / (size * 2), 0)

	return amount
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function starts_with(str, start)
   return str:sub(1, #start) == start
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function tablelength(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1 
    end
    return count
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function generate_resource_lists()
    if not resources_list then
        resources_list = {}
        resources_list_without_fuild = {}
        resources_list_with_fuild = {}
        for _, resource in pairs(game.entity_prototypes) do
            if starts_with(resource.name, 'apm_meteorite_ore_') then
                table.insert(resources_list, resource.name)
				if resource.subgroup.name =='apm_starfall_res' then
					table.insert(resources_list_without_fuild, resource.name)
				else
					table.insert(resources_list_with_fuild, resource.name)
				end
            end
        end
    	resources_list_size = #resources_list
    	resources_list_without_fuild_size = #resources_list_without_fuild
    	resources_list_with_fuild_size = #resources_list_with_fuild
    	
    	log('---- Info: generate_resource_lists(): ----------------------')
    	log('Number of total resources: ' .. tostring(resources_list_size))
    	log('Number of resources without fluid: ' .. tostring(resources_list_without_fuild_size))
    	log('Number of resources with fluid: ' .. tostring(resources_list_with_fuild_size))
    	log('------------------------------------------------------------')
    end
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function create_ore_remains(surface, position, overwrite_ore, overwrite_patch_size)
	local size = overwrite_patch_size
	if overwrite_patch_size == nil then
		size = math.random(resource_patch_size_min, resource_patch_size_max)
	end

	local ore_name = overwrite_ore
	if overwrite_ore == nil then
		local ore_key = math.random(1, resources_list_size)
		ore_name = resources_list[ore_key]
	end

	for y=-size, size do
		for x=-size, size do
			local spawn_position = {position.x+x, position.y+y}
			local spawn_amount = get_amount(x, y, size)

			if position.x == position.x+x and position.y == position.y+y then
				surface.create_entity({name = ore_name, position = spawn_position, amount = spawn_amount, force='neutral'})
			else
				if probability(x, y, size) then
					surface.create_entity({name = ore_name, position = spawn_position, amount = spawn_amount, force='neutral'})
				end
			end
		end
	end
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function create_alerts(surface, positions)
	for _, force in pairs(game.forces) do
		if force.name ~= 'enemy' and force.name ~= 'neutral' then

			for _, position in pairs(positions) do
				local tag = {icon={type='item', name='apm_starfall_target_marker'}, position=position}
				force.add_chart_tag(surface, tag)
			end

			for _, player in pairs(force.connected_players) do
				if player.surface.name == surface.name then
					for _, position in pairs(positions) do
						local marker = surface.create_entity({name = "apm_starfall_target_explosion", position = position})
						player.add_custom_alert(marker, {type = "item", name = "apm_starfall_target_marker"}, {"", "Expected meteorite impact zone."}, true)
					end
					player.play_sound({path = 'apm_meteorite_discovered'})
				end
			end

		end
	end
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function generate_game_start_impacts()
	local surface = game.surfaces[1]
	local positions = {}
	local position = nil
	local impact_amount = guaranteed_starting_meteroids

    while #positions < impact_amount do
    	position = get_random_position(surface, {min=60,max=160})
		if check_if_position_is_valid(surface, position) then
			table.insert(positions, position)
		end
    end

	global.apm_starfall.positions_next = positions
	global.apm_starfall.next_impact_on_tick = game.tick + 10*60
	global.apm_starfall.cycle_for_impact = true
	create_alerts(surface, positions)
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function determine_next_position()
	local surface = game.surfaces[1]
	local positions = {}
	local impact_amount = math.random(1,max_meteroids)
	local position = nil

	while #positions < impact_amount do
    	position = get_random_position(surface, nil)
		if check_if_position_is_valid(surface, position) then
			table.insert(positions, position)
		end
    end

	global.apm_starfall.positions_next = positions
	global.apm_starfall.next_impact_on_tick = game.tick + math.random(delay_min, delay_max)
	global.apm_starfall.cycle_for_impact = true
	create_alerts(surface, positions)
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function generate_next_meteorite_event()
	local ticks_to_next_event = math.random(on_min_tick, on_max_tick)
	if math.random() <= 0.15 then -- stray bullet chance (15%)
		ticks_to_next_event = round(ticks_to_next_event / 2, 0)
	end
	global.apm_starfall.event_tick = ticks_to_next_event + game.tick
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function create_impact_fire(surface, position)
	local fire_size = {a = math.random(2,4), b = math.random(2,4)}
	for y=-fire_size.a, fire_size.a do
		for x=-fire_size.b, fire_size.b do
			local spawn_position = {position.x+x, position.y+y}
			if math.random() <= 0.6 then
				surface.create_entity({name = 'fire-flame', position = spawn_position})
			end
		end
	end
end

-- Function ----------------------------------------------------------------
--
--
----------------------------------------------------------------------------
local function create_impact()
	local surface = game.surfaces[1]
	local positions = global.apm_starfall.positions_next
	local iteration_ore = 1
	local overwrite_ore = nil
	local overwrite_patch_size = nil

	for _, position in pairs(positions) do
		local entity = surface.create_entity({name='apm_starfall_dummy_target', position=position})
		surface.create_entity({name = "massive-explosion", position=entity.position})
		surface.create_entity({name = 'apm_meteorite_impact', target = entity, speed = 1.0, position = entity.position})
		create_impact_fire(surface, position)
		entity.destroy()

		if global.apm_starfall.start_impacts == false then
			overwrite_patch_size = 7
			overwrite_ore = resources_list_without_fuild[iteration_ore]
		end

		create_ore_remains(surface, position, overwrite_ore, overwrite_patch_size)
		surface.play_sound({path = 'apm_meteorite_impact'})

		iteration_ore = iteration_ore + 1
		if iteration_ore > #resources_list_without_fuild then
			iteration_ore = 1
		end
	end

	global.apm_starfall.start_impacts = true
	global.apm_starfall.cycle_for_impact = false
	generate_next_meteorite_event()
end

-- Function --------------------------------------------------------------------
-- We will do this all 30 minutes? see if ther is any chunk on a position (-x,-y/x,y > 5000+100)
-- then we will decrease the border for falling rocks.
-------------------------------------------------------------------------------
local function calculate_border()
	-- nothing here at the moment
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_impact_surface()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function starfall.on_tick()
	generate_resource_lists()

	if game.tick <= 180 then
		return
	end

	if global.apm_starfall.start_impacts == false and global.apm_starfall.cycle_for_impact == false then
		generate_game_start_impacts()
		return
	end
	--end

	if global.apm_starfall.cycle_for_impact == false and game.tick >= global.apm_starfall.event_tick then
		determine_next_position()
		return
	end

	if global.apm_starfall.cycle_for_impact == true and game.tick >= global.apm_starfall.next_impact_on_tick then
		create_impact()
		return
	end
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
return starfall