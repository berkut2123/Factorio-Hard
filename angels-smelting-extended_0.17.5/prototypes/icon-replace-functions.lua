function ReplaceRollIcons(metal)
  local RollItem=data.raw.item["angels-roll-"..metal]
  local RollConvRecipe=data.raw.recipe["angels-roll-"..metal.."-converting"]
  local RollCreateRecipe=data.raw.recipe["angels-roll-"..metal.."-casting"]
  if metal=="brass" or metal=="bronze" or metal=="nitinol" then
    RollItem.icons={
      {
        icon = "__angels-smelting-extended__/graphics/icons/roll-"..metal..".png",
        icon_size=32
      }
    }
    RollConvRecipe.icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-"..metal..".png"
      },
      {
        icon = "__angels-smelting-extended__/graphics/icons/roll-"..metal..".png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    }
    RollCreateRecipe.icons={
      {
        icon="__angels-smelting-extended__/graphics/icons/roll-"..metal..".png",icon_size=32
      }
    }
  elseif metal=="invar" or metal=="gunmetal" or metal=="cobalt-steel" then
  else
    RollItem.icons={
      {
        icon="__angelssmelting__/graphics/icons/roll-"..metal..".png",
        icon_size=32
      }
    }
    RollConvRecipe.icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-"..metal..".png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/roll-"..metal..".png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    }
    RollCreateRecipe.icons={
      {
        icon="__angelssmelting__/graphics/icons/roll-"..metal..".png", icon_size=32
      }
    }
  end
end
