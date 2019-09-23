require("mod-gui")


function update_time()
	local time = 0

	if remote.interfaces.MoWeather then
		time = remote.call("MoWeather","getdaytime") *24 +12
	else
		time = game.surfaces[1].daytime *24 +12
	end
	if time >= 24 then
		time = time -24
	end

	local min = math.floor((time % 1) * 60)
	if global.min_previous ~= min then

		local hour = math.floor(time)
		local hour12 = hour % 12
		if hour12 == 0 then hour12 = 12 end

		global.time24 = string.format("%02d:%02d", hour, min)
		global.time12 = string.format("%d:%02d", hour12, min)
		if  hour / 12 < 1 then
			global.time12 = global.time12 .. " AM"
		else
			global.time12 = global.time12 .. " PM"
		end
	end

	global.min_previous = global.time.min
	global.time = 
	{
		min = min,
		hour = hour,
		hour12 = hour12
	}
end

function update_info()
	local played = game.ticks_played
	local played_sec = math.floor((played % 3600)/60)
	local played_min = math.floor((played % 216000)/3600)
	local played_hour = math.floor(played/216000)

	global.played =
	{
		sec = played_sec,
		min = played_min,
		hour = played_hour
	}
	global.time_played = string.format("%d:%02d:%02d", played_hour, played_min, played_sec)
	global.evolution_factor = string.format("%.2f%%", game.forces["enemy"].evolution_factor * 100)
	global.speed = string.format("%d%%", math.floor(game.speed * 100))
	if game.forces["robot-enemy"] then
		global.robot_evolution_factor = string.format("%.2f%%", game.forces["robot-enemy"].evolution_factor * 100)
	else
	end
end


script.on_event(defines.events.on_tick, function(event)
	update_time()

	if global.min_previous ~= global.time.min then
		for i, player in pairs(game.connected_players) do
			setup_clockGUI(player)

			local timetext = global.time12
			if settings.get_player_settings(player)["bobmods-clock-24hour"].value == true then
				timetext = global.time24
			end

			local update_interval = tonumber(settings.get_player_settings(player)["bobmods-clock-updateinterval"].value)
			if (update_interval == 1 or global.time.min % update_interval == 0) and settings.get_player_settings(player)["bobmods-clock-showonbutton"].value == "time" then
				global.player[player.index].clockGUI.caption = timetext
			end

			if global.player[player.index].gui then
				global.player[player.index].gui.time.caption = {"gui.clock-time", ": " .. timetext}
			end
		end
	end

	if game.ticks_played % 60 == 0 then -- once a second
		update_info()
		for i, player in pairs(game.connected_players) do
			if global.player[player.index].gui then
				global.player[player.index].gui.time_played.caption = {"gui.clock-time-played", ": " .. global.time_played }
				global.player[player.index].gui.speed.caption = {"gui.clock-game-speed", ": " .. global.speed }

				if global.player[player.index].gui.robot_evolution_factor then
					global.player[player.index].gui.evolution_factor.caption = {"gui.clock-enemy-evolution-factor", ": " .. global.evolution_factor }
					global.player[player.index].gui.robot_evolution_factor.caption = {"gui.clock-robot-evolution-factor", ": " .. global.robot_evolution_factor }
				else
					global.player[player.index].gui.evolution_factor.caption = {"gui.clock-evolution-factor", ": " .. global.evolution_factor }
				end

			end
			if settings.get_player_settings(player)["bobmods-clock-showonbutton"].value == "time_played" then
				global.player[player.index].clockGUI.caption = global.time_played
			end
			if settings.get_player_settings(player)["bobmods-clock-showonbutton"].value == "evolution_factor" then
				global.player[player.index].clockGUI.caption = global.evolution_factor
			end
		end
	end
end)


function set_clock_button_colour(player)
	local clockGUI = global.player[player.index].clockGUI

	if settings.get_player_settings(player)["bobmods-clock-color"].value == "standard" then
		clockGUI.style.font_color = {r = 0, g = 0, b = 0}
	end
	if settings.get_player_settings(player)["bobmods-clock-color"].value == "red" then
		clockGUI.style.font_color = {r = 0.7, g = 0, b = 0}
	end
	if settings.get_player_settings(player)["bobmods-clock-color"].value == "green" then
		clockGUI.style.font_color = {r = 0, g = 1, b = 0}
	end
	if settings.get_player_settings(player)["bobmods-clock-color"].value == "yellow" then
		clockGUI.style.font_color = {r = 1, g = 1, b = 0}
	end
	if settings.get_player_settings(player)["bobmods-clock-color"].value == "blue" then
		clockGUI.style.font_color = {r = 0, g = 0.2, b = 0.7}
	end
end

function set_clock_button_font(player)
	global.player[player.index].clockGUI.style.font = settings.get_player_settings(player)["bobmods-clock-font"].value
end

function style_clock_button(button)
	button.style.top_padding = 1
	button.style.right_padding = 1
	button.style.bottom_padding = 1
	button.style.left_padding = 1
	button.style.minimal_width = 64
	button.style.height = 36
end

function setup_clockGUI(player)
	local clockGUI = global.player[player.index].clockGUI
 	if clockGUI == nil or not clockGUI.valid then
		if player.gui.top.clockGUI ~= nil and player.gui.top.clockGUI.valid then
			clockGUI = player.gui.top.clockGUI
		else
			clockGUI = player.gui.top.add{type="button", name="clockGUI"}
		end
		global.player[player.index].clockGUI = clockGUI
		clockGUI.visible = true
		style_clock_button(clockGUI)
		set_clock_button_font(player)
		set_clock_button_colour(player)
	end
end

function setup_player(player)
	if not global.player[player.index] then
		global.player[player.index] = {
			gui = nil,
			clockGUI = nil
		}
	end
	setup_clockGUI(player)
end

function setup(event)
	if not global.player then
		global.player = {}
	end
	if not global.time then
		global.time = {}
	end
	for i, player in pairs(game.players) do
		setup_player(player)
	end
end

script.on_init(setup)
script.on_configuration_changed(setup)

script.on_event(defines.events.on_player_created, function(event)
	if not global.player then
		setup(event)
	else
		setup_player(game.players[event.player_index])
	end
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
	if event.player_index then
		local player = game.players[event.player_index]
		if event.setting == "bobmods-clock-font" then
			set_clock_button_font(player)
		end
		if event.setting == "bobmods-clock-color" then
			set_clock_button_colour(player)
		end
	end
end)

script.on_event(defines.events.on_gui_click, function(event)
	if event.element.valid then
		if event.element.name == "clockGUI" then
			draw_gui(event.player_index)
		end
	end
end)


function draw_gui(player_index)
	local player = game.players[player_index]
	update_time() -- Added to try and stop the map editor from crashing if you click it without time having ever passed.
	update_info() -- Added to try and stop the map editor from crashing if you click it without time having ever passed.

	if global.player[player_index].gui ~= nil then
		global.player[player_index].gui.destroy()
		global.player[player_index].gui = nil
	else
		local gui = mod_gui.get_frame_flow(player).add({type = "frame", name = "clock_gui", direction = "vertical", caption = {"gui.clock-gui"}})
		global.player[player_index].gui = gui

		local timetext = global.time12
		if settings.get_player_settings(player)["bobmods-clock-24hour"].value == true then
			timetext = global.time24
		end
		gui.add({type = "label", name = "time", caption = {"gui.clock-time", ": " .. timetext }})
		gui.add({type = "label", name = "time_played", caption = {"gui.clock-time-played", ": " .. global.time_played }})
		if game.forces["robot-enemy"] then
			gui.add({type = "label", name = "evolution_factor", caption = {"gui.clock-enemy-evolution-factor", ": " .. global.evolution_factor }})
			gui.add({type = "label", name = "robot_evolution_factor", caption = {"gui.clock-robot-evolution-factor", ": " .. global.robot_evolution_factor }})
		else
			gui.add({type = "label", name = "evolution_factor", caption = {"gui.clock-evolution-factor", ": " .. global.evolution_factor }})
		end
		gui.add({type = "label", name = "speed", caption = {"gui.clock-game-speed", ": " .. global.speed }})
	end
end

