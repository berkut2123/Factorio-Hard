game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	if force.technologies["concrete"].researched then
	force.recipes["concrete"].enabled = false
	end
	if force.technologies["steel-processing"].researched then
	force.recipes["steel-plate"].enabled = false
	end
  
	force.recipes["copper-plate"].enabled = false
	force.recipes["iron-plate"].enabled = false

	if force.recipes["lead-plate"].enabled then
	force.recipes["lead-plate"].enabled = false
	end
	if force.recipes["silver-plate"].enabled then
	force.recipes["silver-plate"].enabled = false
	end
	if force.recipes["tin-plate"].enabled then
	force.recipes["tin-plate"].enabled = false
	end
	if force.recipes["quartz-glass"].enabled then
	force.recipes["quartz-glass"].enabled = false
	end
	
	if force.recipes["steelspc"] then
		if force.technologies["steel-processing"].researched then
		force.recipes["steelspc"].enabled = true
		end
	end
end