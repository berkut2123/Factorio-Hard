data:extend(
{
	{
		type = "recipe",
		name = "medium-power-lamp",
		enabled = false,
		energy_required = 2.5,
		ingredients =
		{
			{"small-lamp", 5},
			{"electronic-circuit", 1},
		},
		result = "medium-power-lamp"
	},
	{
		type = "recipe",
		name = "high-power-lamp",
		enabled = false,
		energy_required = 3,
		ingredients =
		{
			{"medium-power-lamp", 3},
			{"electronic-circuit", 3},
		},
		result = "high-power-lamp"
	},
}
)
