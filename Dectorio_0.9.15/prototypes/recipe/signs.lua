-- recipe/signs

if DECT.ENABLED["signs"] then

	data:extend({
		{
			type = "recipe",
			name = "dect-sign-wood",
			enabled = false,
			ingredients = {
				{"wood", 2},
			},
			result = "dect-sign-wood"
		},
		{
			type = "recipe",
			name = "dect-sign-steel",
			enabled = false,
			ingredients = {
				{"iron-plate", 1},
				{"steel-plate", 1},
			},
			result = "dect-sign-steel"
		}
	})

end
