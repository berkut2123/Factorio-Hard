--game.player.force.resettechnologies()
--game.player.force.resetrecipes()

for index, force in pairs(game.forces) do
  if force.technologies["electric-substation-3"].researched then
    force.recipes["substation-3"].enabled = true
  end
end