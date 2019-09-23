for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes
  
  if technologies["ScrapTank"].researched then
    recipes["HeavyTank-crude-autocannon-shell"].enabled = true
  end
  if technologies["MediumTank"].researched then
    recipes["normal-land-mine"].enabled = true
  end
  if technologies["atomic-bomb"].researched then
    recipes["HeavyTank-atomic-cannon-shell"].enabled = true
  end
end