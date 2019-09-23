-- active recipes
for _, force in pairs(game.forces) do
    if force.technologies["automobilism"] and force.technologies["automobilism"].researched then
        force.recipes["cannon-shell-precision"].enabled = true
        force.recipes["explosive-cannon-shell-precision"].enabled = true
    end
end
