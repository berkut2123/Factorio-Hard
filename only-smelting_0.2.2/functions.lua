function recipe( name )
  return data.raw.recipe[name]
end

function add_technology_unlock(technology, recipe)
  if data.raw.technology[technology] and data.raw.recipe[recipe] then
    local addit = true
    if not data.raw.technology[technology].effects then
      data.raw.technology[technology].effects = {}
    end
    for i, effect in pairs(data.raw.technology[technology].effects) do
      if effect.type == "unlock-recipe" and effect.recipe == recipe then addit = false end
    end
    if addit then table.insert(data.raw.technology[technology].effects,{type = "unlock-recipe", recipe = recipe}) end
  else
    if not data.raw.technology[technology] then
      log("Technology does not exist.")
    end
    if not data.raw.recipe[recipe] then
      log("Recipe does not exist.")
    end
  end
end

function remove_technology_unlock(technology, recipe)
  if data.raw.technology[technology] and data.raw.technology[technology].effects then
    for i, effect in pairs(data.raw.technology[technology].effects) do
      if effect.type == "unlock-recipe" and effect.recipe == recipe then
        table.remove(data.raw.technology[technology].effects,i)
      end
    end
  else
    if not data.raw.technology[technology] then
      log("Technology " .. technology .. " does not exist.")
    end
  end
end



function technology_cost(Name, Ingredients, Count, Time)
    if data.raw.technology[Name] then
        data.raw.technology[Name].unit.ingredients = Ingredients
        data.raw.technology[Name].unit.count = Count
        data.raw.technology[Name].unit.time = Time
    end
end