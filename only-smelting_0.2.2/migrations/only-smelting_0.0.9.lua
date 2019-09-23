game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	
	if force.recipes["copper-cablespc"] then
		force.recipes["copper-cable"].enabled = false
		force.recipes["copper-cablespc"].enabled = true
	end
end