for _, type in pairs(textplates.types) do
  local size = type.size
  local material = type.material
  local recipe = {
    type = "recipe",
    name = type.name,
    icon = "__textplates__/graphics/icon/" .. material .. "/blank.png",
    icon_size = 64,
    category = "crafting",
    enabled = true,
    energy_required = 0.25,
    ingredients = {{type = "item", name = type.ingredient, amount = 1}},
    results= {{type = "item", name = type.name, amount = 1}},
  }
  if size == "large"  then
    recipe.ingredients[1].amount = 4
    recipe.energy_required = 0.5
    recipe.icon = "__textplates__/graphics/icon/" .. material .. "/square.png"
  end
  data:extend({recipe})
end
