require('util')
require('color.database')
require('color.util')
require('calculator')
require('painter')
require('mod_support.exemptions')
require('mod_support.LTN')

check_color(colors)

script.on_event(defines.events.on_tick, function(event)
	-- @doktorstick
	-- This is used to take care of initialization and housekeeping
	-- without having to use on_configuration_change.
	-- Useful for development.

	-- Purge everything in case trains have been deleted
	-- Any trains at stations will not have that station
	-- painted until the revisit it.
	global.train_at_station = {}

	-- And then disable the event callback.
	script.on_event(defines.events.on_tick, nil)
end)


script.on_event(defines.events.on_train_changed_state, function(event)
	local train = event.train

	if train.state == defines.train_state.wait_station then
		global.train_at_station[train.id] = train.station

	elseif (train.state == defines.train_state.on_the_path and not train.manual_mode) then
		--train content reader/counter
		local cargo_content = train.get_contents()
		local fluid_content = normalize(train.get_fluid_contents(), 5)
		local all_train_content = tableMerge(cargo_content, fluid_content)

		--color mixing calculator
		local final_color, flag = color_calculator(all_train_content, colors)

		-- @doktorstick
		-- No color has been mixed and so `final_color` is unneeded.
		if flag == false then
			final_color = nil
		end

		-- @doktorstick
		-- Paint the station; see the comment above `paint_station`.
		paint_station(train, final_color)

		--mod exemption check
		local exempt = exemption_check(train)
		if exempt == true then
			return
		end

		--unpaint empty trains
		unpaint_empty(train)
		unpaint_wagons(train)

		--check if mixed_colors were initialized
		if flag == false then
			return
		end

		--paint locomotives
		paint_locomotive(train, 'front_movers', final_color)
		paint_locomotive(train, 'back_movers', final_color)

		--paint cargo wagons
		paint_wagons(train.cargo_wagons, 'paint-cargo-wagon', default_cargo_color, final_color)
		paint_wagons(train.fluid_wagons, 'paint-fluid-wagon', default_fluid_color, final_color)
	end
end)