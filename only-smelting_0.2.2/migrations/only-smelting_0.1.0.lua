game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	
	if force.recipes["lead-ingotspc"] then
		if force.technologies["angels-lead-smelting-1"].researched then
		force.recipes["lead-ingotspc"].enabled = true
		end
	end
	if force.recipes["tin-ingotspc"] then
		if force.technologies["angels-tin-smelting-1"].researched then
		force.recipes["tin-ingotspc"].enabled = true
		end
	end
end