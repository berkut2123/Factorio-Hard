if not angel then angel = {} end

-- Locals ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local created_player_list={}

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function replace_angel_burner_crusher(player)
    local inventory_type = defines.inventory.character_main
    if not inventory_type then
        inventory_type = defines.inventory.player_main
    end
	local player_inventrory = player.get_inventory(inventory_type)
	local player_content = player_inventrory.get_contents()
	for item_name, item_count in pairs(player_content) do
		if item_name == 'burner-ore-crusher' then
			player.remove_item({name=item_name, count=item_count})
			player.insert({name="apm_crusher_machine_0", count=item_count*2})
		end
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function angel.player_create(event)
	if settings.startup['apm_power_compat_angel'].value then
		if game.active_mods['angelsrefining'] then
			local player = game.players[event.player_index]
			table.insert(created_player_list, player)
		end
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function angel.on_tick()
	for k, player in pairs(created_player_list) do
		if player.connected then
            if player.character ~= nil then
                replace_angel_burner_crusher(player)
                table.remove(created_player_list, k)
            end
        end
	end
end
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
return angel