function ac(e)
	local p = game.players[e.player_index]
	if p.admin then
		if e.parameter then
			if not (e.name == "silent-admin-command") then
				game.print({"ac-command", p.name, e.parameter}, p.chat_color)
			end
			local success, err = pcall(loadstring(e.parameter))
			if err then
				p.print({"ac-error-running-command", err})
			end
		end
	else 
		p.print({"ac-admin"})
	end
end

commands.add_command("ac", {"ac-admin-command-description"}, ac)
commands.add_command("admin-command", {"ac-admin-command-description"}, ac)
commands.add_command("silent-admin-command", {"ac-silent-admin-command-description"}, ac)
