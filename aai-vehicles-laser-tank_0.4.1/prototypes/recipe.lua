data:extend({{
	type = "recipe",
	name = "vehicle-laser-tank",
	ingredients =
	{
		{"tank", 1},
		{"laser-turret", 1},
		{"steel-plate", 25},
		{"advanced-circuit", 25}
	},
	enabled = data.raw["technology"]["tanks"] == nil,
	energy_required = 5,
	results=
	{
	  {type="item", name="vehicle-laser-tank", amount=1},
	}
},
{
	type = "recipe",
	name = "laser-cannon-battery-piercing",
	ingredients =
	{
		{"battery", 1},
		{"advanced-circuit", 1},
		{"solid-fuel", 5},
	},
	enabled = data.raw["technology"]["tanks"] == nil,
	energy_required = 10,
	result="laser-cannon-battery-piercing"
},
{
	type = "recipe",
	name = "laser-cannon-battery-focussed",
	ingredients =
	{
		{"battery", 1},
		{"advanced-circuit", 1},
		{"solid-fuel", 5},
	},
	enabled = data.raw["technology"]["tanks"] == nil,
	energy_required = 10,
	result="laser-cannon-battery-focussed"
}
})
