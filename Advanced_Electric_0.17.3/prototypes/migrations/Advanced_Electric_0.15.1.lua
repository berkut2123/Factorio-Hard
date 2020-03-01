for _, force in pairs(game.forces) do
    force.recipes["advanced-electric-primary-steam-turbine-1"].enabled = force.technologies["nuclear-power"].researched
end