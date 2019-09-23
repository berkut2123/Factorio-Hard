game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	
	if force.recipes["tin-cablespc"] then
		if force.technologies["electronics"].researched then
		force.recipes["tin-cablespc"].enabled = true
		end
	end
end