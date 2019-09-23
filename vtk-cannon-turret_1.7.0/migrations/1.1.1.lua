-- Apply unlocks and bonuses if already researched (case of loading an existing savegame)
for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

	if technologies["uranium-ammo"].researched then 
		recipes["uranium-cannon-shell-magazine"].enabled = true
    recipes["explosive-uranium-cannon-shell-magazine"].enabled = true
	end

-- Magazine ammo bonus are = to non magazine ammo bonus, so we can just copy the bonuses to get the current researched bonus modifiers
    force.set_ammo_damage_modifier("cannon-shell-magazine", force.get_ammo_damage_modifier("cannon-shell"))
    force.set_gun_speed_modifier("cannon-shell-magazine", force.get_gun_speed_modifier("cannon-shell"))
end
