-- fix ammo after 0.15
-- active recipes
for _, force in pairs(game.forces) do
    if force.technologies["flamethrower"] and force.technologies["flamethrower"].researched then
        force.recipes["flamethrower-ammo"].enabled = true
    end
end
