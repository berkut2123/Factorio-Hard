------------------------------------------
-- THERMALSOLARPOWERTEC1

temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "CW-basic-heat-pipe",
	},

	{
		type = "unlock-recipe",
		recipe = "CW-thermal-solar-panel",
	},
	{
		type = "unlock-recipe",
		recipe = "CW-salt-evaporation-pond",
	},
	{
		type = "unlock-recipe",
		recipe = "CW-molten-salt",
	},
	{
		type = "unlock-recipe",
		recipe = "CW-molten-salt2",
	},

}

if settings.startup["heat-exchanger-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "CW-basic-heat-exchanger",
	})
end

ThermalSolarPowerTec1 =	{
	type = "technology",
	name = "CW-thermal-solar-power",
	icon_size = 128,
	icon = "__CW-thermal-solar-power__/graphics/tech/solar-energy.png",
	effects = temp_effect,

	prerequisites = {"optics"},
	unit = 
	{
		count = 30,
		ingredients =
		{
			{"automation-science-pack", 1},				
		},
		time = 20,
	}
}
	
------------------------------------------
-- THERMALSOLARPOWERTEC2

temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "CW-molten-salt-Heat-Accumulator",
	},
	{
		type = "unlock-recipe",
		recipe = "heat-pipe",
	},
	{
		type = "unlock-recipe",
		recipe = "CW-thermal-solar-panel2",
	}
}

if settings.startup["heat-exchanger-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "CW-basic-heat-exchanger2"
	})
end

if settings.startup["steam-turbines-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "CW-steam-engine-2"
	})
end

ThermalSolarPowerTec2 =	{
	type = "technology",
	name = "CW-thermal-solar-power-2",
	icon_size = 128,
	icon = "__CW-thermal-solar-power__/graphics/tech/solar-energy.png",
	upgrade = true,
	effects = temp_effect,
	prerequisites = {"CW-thermal-solar-power","steel-processing"},
	unit = 
	{
		count = 50,
		ingredients ={{"automation-science-pack", 1},},
		time = 25,
	}
}
	
------------------------------------------------------
-- THERMALSOLARPOWERTEC3
	
temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "CW-molten-salt-Heat-Accumulator2",
	},
	{
		type = "unlock-recipe",
		recipe = "CW-thermal-solar-panel3",
	}
}
	
if settings.startup["heat-exchanger-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "CW-basic-heat-exchanger3"
	})
end

if settings.startup["steam-turbines-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "CW-steam-engine-3"
	})
end
	
ThermalSolarPowerTec3 = {
	type = "technology",
	name = "CW-thermal-solar-power-3",
	icon_size = 128,
	icon = "__CW-thermal-solar-power__/graphics/tech/solar-energy.png",
	upgrade = true,
	effects = temp_effect,
	prerequisites = {"CW-thermal-solar-power-2"},
	unit = 
	{
		count = 80,
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1},},
		time = 30,
	}
}
	
--------------------------------------------------------
-- THERMALSOLARPOWERTEC4
	
temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "CW-molten-salt-Heat-Accumulator3",
	},
	{
		type = "unlock-recipe",
		recipe = "CW-thermal-solar-panel4",
	}
}

if settings.startup["heat-exchanger-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "CW-basic-heat-exchanger4"
	})
end

if settings.startup["steam-turbines-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "CW-steam-engine-4"
	})
end
	
ThermalSolarPowerTec4 =	{
	type = "technology",
	name = "CW-thermal-solar-power-4",
	icon_size = 128,
	icon = "__CW-thermal-solar-power__/graphics/tech/solar-energy.png",
	upgrade = true,
	effects = temp_effect,
	prerequisites = {"CW-thermal-solar-power-3"},
	unit = 
	{
		count = 100,
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}},
		time = 40,
	}
}

data:extend({ThermalSolarPowerTec1, ThermalSolarPowerTec2, ThermalSolarPowerTec3, ThermalSolarPowerTec4})