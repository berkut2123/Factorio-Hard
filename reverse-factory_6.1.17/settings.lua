data:extend({
	{
		type = "bool-setting",
		name = "rf-compati",
		setting_type = "runtime-global",
		default_value = "true",
	},
	{
		type = "int-setting",
		name = "rf-delays",
		setting_type = "runtime-global",
		default_value = "30",
		minimum_value = "10",
		maximum_value = "1200"
	},
	{
		type = "bool-setting",
		name = "rf-vehicles",
		setting_type = "startup",
		default_value = "false"
	},
	{
		type = "int-setting",
		name = "rf-efficiency",
		setting_type = "startup",
		default_value = "100",
		minimum_value = "10",
		maximum_value = "100"
	},
})