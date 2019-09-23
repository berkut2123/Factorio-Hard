--game.player.force.resettechnologies()
--game.player.force.resetrecipes()

for index, force in pairs(game.forces) do
    force.recipes["substation-3"].enabled = false
end