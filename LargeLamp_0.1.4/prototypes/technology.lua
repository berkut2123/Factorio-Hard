data:extend({
  {
    type = "technology",
    name = "optics-2",
    icon = "__LargeLamp__/graphics/entity/large-lamp-off.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "LargeLamp"
      }
    },
	prerequisites = {"optics"},
    unit =
    {
      count = 20,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-h-a",
  },
})
