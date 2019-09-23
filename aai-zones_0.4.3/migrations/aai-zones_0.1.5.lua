for _, force in pairs(game.forces) do
    if force.technologies["electronics"] and force.technologies["electronics"].researched then
        force.recipes["zone-planner"].enabled = true
    end
end
