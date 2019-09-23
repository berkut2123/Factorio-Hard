require("prototypes/recipe/recipe-final")
require("prototypes/recipe/recipe-vehicle-fuel")

-- if another mod has changed labs but not burner lab
data.raw.lab["burner-lab"].inputs = data.raw.lab["lab"].inputs


if data.raw.item["electronics-machine-1"] and data.raw.recipe["electronic-circuit-stone"] then
  data.raw.recipe["electronic-circuit-stone"].category = "electronics"
end

--log( serpent.block( data.raw.wall, {comment = false, numformat = '%1.8g' } ) )
--log( serpent.block( data.raw, {comment = false, numformat = '%1.8g' } ) )

local max_level = nil
for i = 2, 5 do
  local tech = data.raw.technology["toolbelt-" .. i]
  if tech and tech.max_level then
    max_level = tech.max_level
    tech.max_level = nil
  end
end
if max_level and (type(max_level) ~= "number" or max_level > 6) then
  data.raw.technology["toolbelt-6"].max_level = max_level
end
