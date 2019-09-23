--Adds recipe if tech is already researched.
for i, force in pairs(game.forces) do 
 	if force.technologies["concrete"].researched then 
		force.recipes["parkingzone"].enabled = true
		force.recipes["refined-parkingzone"].enabled = true
  	end

	if force.technologies["Arci-asphalt"] ~= nil and force.technologies["Arci-asphalt"].researched then 
		force.recipes["parkingzone-asphalt"].enabled = true
	end
end