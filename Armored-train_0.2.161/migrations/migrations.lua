for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes

	--expmpls
	--recipes["rail-chain-signal"].enabled = technologies["rail-signals"].researched

	--load tech / res if researched!
	if technologies["Armored-train"].researched then
		
		--Common wagons/platforms
		recipes["armored-platform-mk1"].enabled = true
		recipes["armored-wagon-mk1"].enabled = true
		
		--Turret items
		recipes["platform-minigun-turret-mk1"].enabled = true
		recipes["platform-rocket-turret-mk1"].enabled = true
		recipes["wagon-cannon-turret-mk1"].enabled = true
		
		recipes["armored-wagon-cannon-mk1"].enabled = true
		recipes["armored-platform-rocket-mk1"].enabled = true
		recipes["armored-platform-minigun-mk1"].enabled = true
		recipes["armored-wagon-chaingun-mk1"].enabled = true
		
		--expmpls
		-- recipes["cannon-shell"].reload()
		-- recipes["explosive-cannon-shell"].reload()
	end
end