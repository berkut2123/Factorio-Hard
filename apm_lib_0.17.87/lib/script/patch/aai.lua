if not aai then aai = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function replace_aai_burner_assembling_machine()
	local surface = game.surfaces["nauvis"]
    local range = 20
	local container = surface.find_entities_filtered{type="container", area={{-range, -range}, {range, range}}}
	for _, container in pairs(container) do
        --if container.name == "aai-big-ship-wreck-1" then
        	local inventory = container.get_inventory(defines.inventory.chest)
        	local content = inventory.get_contents()
        	for item_name, item_count in pairs(content) do
				if item_name == 'burner-ore-crusher' then
        			if settings.startup['apm_power_compat_angel'].value then
						if game.active_mods['angelsrefining'] then
							inventory.remove({name = item_name, count = item_count})
							inventory.insert({name="apm_crusher_machine_0", count=item_count*2})
						end
					end
				end
        		if item_name == 'burner-assembling-machine' then
        			inventory.remove({name = item_name, count = item_count})
        			inventory.insert({name = 'apm_assembling_machine_0', count = 1})
        		end
        	end
        --end
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function aai.on_tick()
	if game.tick > 2 then return end
	if game.tick == 2 then
		if settings.startup['apm_power_compat_earendel'].value then
			if game.active_mods['aai-industry'] then
				if settings.startup['crash-sequence'].value then
					replace_aai_burner_assembling_machine()
				end
			end
		end
	end
end
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
return aai