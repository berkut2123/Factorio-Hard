script.on_event(defines.events.on_tick, function()
	if global["ss1"] == nil then
		global["ss1"] = false
		for _, player in pairs(game.players) do
			player.print("Speaker Signals: New 'Speaker Signals 2' is now out, you can download it on mods.factorio.com")
		end
	end
end)