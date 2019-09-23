game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	if force.technologies["nickel-processing"].researched then
		if force.recipes["bob-nickel-plate"].enabled then
		force.recipes["bob-nickel-plate"].enabled = false
		end
	end
	if force.technologies["zinc-processing"].researched then
		if force.recipes["bob-zinc-plate"].enabled then
		force.recipes["bob-zinc-plate"].enabled = false
		end
	end
	if force.technologies["lead-processing"].researched then
		if force.recipes["lead-oxide"].enabled then
		force.recipes["lead-oxide"].enabled = false
		end
	end
	if force.technologies["lead-processing"].researched then
		if force.recipes["bob-lead-plate"].enabled then
		force.recipes["bob-lead-plate"].enabled = false
		end
	end
	if force.technologies["lead-processing"].researched then
		if force.recipes["silver-from-lead"].enabled then
		force.recipes["silver-from-lead"].enabled = false
		end
	end
	if force.technologies["aluminium-processing"].researched then
		if force.recipes["alumina"].enabled then
		force.recipes["alumina"].enabled = false
		end
	end
	if force.technologies["aluminium-processing"].researched then
		if force.recipes["bob-aluminium-plate"].enabled then
		force.recipes["bob-aluminium-plate"].enabled = false
		end
	end
	if force.technologies["gold-processing"].researched then
		if force.recipes["bob-gold-plate"].enabled then
		force.recipes["bob-gold-plate"].enabled = false
		end
	end
	if force.technologies["silicon-processing"].researched then
		if force.recipes["bob-silicon-plate"].enabled then
		force.recipes["bob-silicon-plate"].enabled = false
		end
	end
	if force.technologies["titanium-processing"].researched then
		if force.recipes["bob-titanium-plate"].enabled then
		force.recipes["bob-titanium-plate"].enabled = false
		end
	end
	if force.technologies["tungsten-processing"].researched then
		if force.recipes["bob-tungsten-plate"].enabled then
		force.recipes["bob-tungsten-plate"].enabled = false
		end
	end
	if force.technologies["cobalt-processing"].researched then
		if force.recipes["cobalt-oxide-from-copper"].enabled then
		force.recipes["cobalt-oxide-from-copper"].enabled = false
		end
	end
	if force.technologies["cobalt-processing"].researched then
		if force.recipes["cobalt-plate"].enabled then
		force.recipes["cobalt-plate"].enabled = false
		end
	end
	if force.technologies["cobalt-processing"].researched then
		if force.recipes["cobalt-oxide"].enabled then
		force.recipes["cobalt-oxide"].enabled = false
		end
	end
	if force.technologies["tungsten-processing"].researched then
		if force.recipes["tungstic-acid"].enabled then
		force.recipes["tungstic-acid"].enabled = false
		end
	end
	if force.technologies["tungsten-processing"].researched then
		if force.recipes["powdered-tungsten"].enabled then
		force.recipes["powdered-tungsten"].enabled = false
		end
	end
	if force.technologies["tungsten-processing"].researched then
		if force.recipes["tungsten-oxide"].enabled then
		force.recipes["tungsten-oxide"].enabled = false
		end
	end
	if force.technologies["battery-3"].researched then
		if force.recipes["silver-nitrate"].enabled then
		force.recipes["silver-nitrate"].enabled = false
		end
	end
	if force.technologies["electronics"].researched then
		if force.recipes["solder"] then
			if force.technologies["electronics"].researched then
			force.recipes["solder"].enabled = false
			end
		end
	end
	if force.technologies["alloy-processing-2"].researched then
		if force.recipes["solder-alloy"] then
			if force.technologies["alloy-processing-2"].researched then
			force.recipes["solder-alloy"].enabled = false
			end
		end
	end
	if force.technologies["electronics"].researched then
		if force.recipes["solder-alloy-lead"] then
			if force.technologies["electronics"].researched then
			force.recipes["solder-alloy-lead"].enabled = false
			end
		end
	end
end