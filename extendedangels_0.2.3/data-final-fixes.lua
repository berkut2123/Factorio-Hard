data.raw.recipe["pellet-tungsten-smelting"]=nil
data.raw.recipe["tungsten-carbide"]=nil
data.raw.recipe["tungsten-carbide-2"]=nil
data.raw.recipe["copper-tungsten-alloy"]=nil

local recipeList={
    "pellet-tungsten-smelting",
    "tungsten-carbide",
    "tungsten-carbide-2",
    "copper-tungsten-alloy"
   }
   for _,recipe in pairs(recipeList) do
    data.raw.recipe[recipe ]=nil
    for _, module in pairs(data.raw.module) do
     if module.limitation then
      for j,limit in pairs(module.limitation) do
        if limit == recipe then
         table.remove(module.limitation,j)
         break
        end
      end
     end
    end
   end