local function starts_with(str, start)
   return str:sub(1, #start) == start
end

game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  local technologies = force.technologies
  local recipes = force.recipes

  for _, technology in pairs(technologies) do
        if technology.researched then
            if starts_with(technology.name, 'apm_') then
                for _, effect in pairs(technology.effects) do
                    if effect.type == 'unlock-recipe' then
                        recipes[effect.recipe].enabled = true
                    end
                end
            end
        end
    end
end