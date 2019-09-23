--if mixing furnace category exists, add it to characters with smelting category
if data.raw["recipe-category"]["mixing-furnace"] then
  for index, character in pairs(bobmods.classes.characters) do
    bobmods.lib.machine.type_if_add_category("character", "smelting", "mixing-furnace")
  end
end



if data.raw.item["rubber"] then
  bobmods.lib.recipe.replace_ingredient("player-boots", "plastic-bar", "rubber")
end


if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("player-gloves", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("player-gloves", {"steel-bearing", 8})
end


if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_ingredient("player-power-core", {"alien-artifact", 10})
end


if data.raw.tool["module-case"] then
  bobmods.lib.recipe.remove_ingredient("player-brain", "iron-plate")
  bobmods.lib.recipe.add_ingredient("player-brain", {"module-case", 1})
  bobmods.lib.tech.add_prerequisite("bodies", "modules")
elseif data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("player-brain", "iron-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bodies", "aluminium-processing")
end

if data.raw.recipe["player-brain"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["player-brain"].category = "electronics"
  end
  if data.raw.item["superior-circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] and data.raw.item["intergrated-electronics"] then
    bobmods.lib.recipe.add_ingredient("player-brain", {"superior-circuit-board", 5})
    bobmods.lib.recipe.add_ingredient("player-brain", {"basic-electronic-components", 10})
    bobmods.lib.recipe.add_ingredient("player-brain", {"electronic-components", 25})
    bobmods.lib.recipe.add_ingredient("player-brain", {"intergrated-electronics", 10})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("player-brain", {"solder", 5})
    end
  else
    bobmods.lib.recipe.add_ingredient("player-brain", {"advanced-circuit", 10})
    bobmods.lib.recipe.add_ingredient("player-brain", {"processing-unit", 5})
  end
end

