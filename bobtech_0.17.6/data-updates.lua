require("prototypes.recipe.recipe-updates")
require("prototypes.productivity-limitations")
require("prototypes.technology.technology-updates")

bobmods.lib.safe_insert(data.raw["lab"]["lab"].inputs, "advanced-logistic-science-pack")
if settings.startup["bobmods-burnerphase"].value == true then
  bobmods.lib.safe_insert(data.raw["lab"]["burner-lab"].inputs, "steam-science-pack")
  bobmods.lib.safe_insert(data.raw["lab"]["burner-lab"].inputs, "automation-science-pack")
end

if settings.startup["bobmods-tech-colorupdate"].value == true then
  data.raw.tool["automation-science-pack"].icon = "__base__/graphics/icons/utility-science-pack.png"
  data.raw.tool["automation-science-pack"].icon_size = 32
  data.raw.tool["logistic-science-pack"].icon = "__base__/graphics/icons/automation-science-pack.png"
  data.raw.tool["logistic-science-pack"].icon_size = 32
  data.raw.tool["utility-science-pack"].icon = "__base__/graphics/icons/logistic-science-pack.png"
  data.raw.tool["utility-science-pack"].icon_size = 32

  if settings.startup["bobmods-burnerphase"].value == true then
    data.raw.technology["automation-science-pack"].icon = "__base__/graphics/technology/utility-science-pack.png"
    data.raw.technology["automation-science-pack"].icon_size = 128
  end
  data.raw.technology["logistic-science-pack"].icon = "__bobtech__/graphics/icons/red-science-pack-technology.png"
  data.raw.technology["logistic-science-pack"].icon_size = 128
  data.raw.technology["utility-science-pack"].icon = "__base__/graphics/technology/logistic-science-pack.png"
  data.raw.technology["utility-science-pack"].icon_size = 128
end

