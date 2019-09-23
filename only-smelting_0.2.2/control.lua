require("functions")
require("defines")
require("config")

if smeltingtinyequipment.value == true then
script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	--player.insert({name="steel-axe", count = 2})
	player.insert({name="coal", count = 50})
	player.insert({name="assembling-machine-2", count = 10})
	player.insert({name="transport-belt", count = 200})
	player.insert({name="inserter", count = 20})
	player.insert({name="electric-mining-drill", count = 10})
	player.insert({name="steam-engine", count = 2})
	player.insert({name="boiler", count = 1})
	player.insert({name="pipe", count = 50})
	player.insert({name="offshore-pump", count = 1})
	player.insert({name="medium-electric-pole", count = 10})
	player.insert({name="blast-furnace", count = 4})
	player.insert({name="induction-furnace", count = 3})
	player.insert({name="casting-machine", count = 6})
	player.insert({name="ore-crusher", count = 6})
	player.insert({name="iron-plate", count = 200})
	player.insert({name="copper-plate", count = 100})
end)
end

if smeltingstartresearch.value == true then
	--event.player.force.technologies["angels-iron-smelting-1"].researched = true
	--event.player.force.technologies["angels-copper-smelting-1"].researched = true
	--event.player.force.technologies["angels-metallurgy-1"].researched = true
	onlysmelting.giveresearch = function(force)
	local techs = {
	'angels-iron-smelting-1',
	'angels-copper-smelting-1',
	'angels-metallurgy-1',
	'angels-steel-smelting-1',
	}
	for _,v in ipairs(techs) do
	force.technologies[v].researched = true
	end
	end
	
	script.on_event(defines.events.on_player_joined_game, function(e)
	onlysmelting.giveresearch(game.players[e.player_index].force)
	end)

	script.on_event(defines.events.on_force_created, function(e)
	onlysmelting.giveresearch(e.force)
	end)
	
end

--/c game.player.force.recipes["tin-plate"].enabled = false