﻿--control.lua
--This mod scans the map for gun-turrets and places alerts when turrets are low. 


script.on_event({defines.events.on_tick}, function (event)
	--Every minute the surface is rescanned for ammo-turret type entities. This is stored in the global table. 
	if event.tick%3600 == 0 or global.turret_entities == nil then
		local planet = game.surfaces
		for index,value in pairs(planet) do
			global.turret_entities = planet[index].find_entities_filtered{type = "ammo-turret"}
		end
	end
	
    if event.tick%600 == 0 then
	--Every 10 seconds recheck and give alerts to players for ammo-turret entities on the same force as them. 
		for index,player in pairs(game.connected_players) do
			
			GTA_enabled = player.mod_settings["gun-turret-alerts-enabled"].value
			player_threshold = player.mod_settings["gun-turret-alerts-threshold"].value
			if GTA_enabled then
				for index2, turret_entity in pairs(global.turret_entities) do
					if turret_entity.valid then
						inv_var = turret_entity.get_inventory(defines.inventory.turret_ammo)
						if inv_var.is_empty() then
							ammo_left = 0
						else
							ammo_left = inv_var[1].count
						end
						if turret_entity.force == player.force then
							if ammo_left == 0 then
								player.add_custom_alert(turret_entity, {type = "item", name = "piercing-rounds-magazine"}, "Out of ammo", true)
							elseif ammo_left < player_threshold then
								player.add_custom_alert(turret_entity, {type = "item", name = "firearm-magazine"}, "Ammo low", true)
							end
						end
					end
				end
			end
		end
	end 
end)



