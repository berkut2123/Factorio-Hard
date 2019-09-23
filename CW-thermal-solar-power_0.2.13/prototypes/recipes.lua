-- NOT DISABLEABLE
data:extend({
	
	{
		type = "recipe-category",
		name = "CW-evaporation"
	},
	{
		type = "recipe",
		name = "CW-molten-salt",
		enabled = false,
		category = "crafting-with-fluid",
		energy_required = 20,
		ingredients = {{type="fluid", name="water", amount=25}},
		result = "CW-molten-salt"
	},

	{
		type = "recipe",
		name = "CW-molten-salt2",
		enabled = false,
		emissions_multiplier = 0,
		category = "CW-evaporation",
		energy_required = 20,
		ingredients = {{type = "fluid", name = "water", amount = 25}},
		hidden = true,
		results = {{type = "item" , name = "CW-molten-salt", amount = 1}}

	},

	{
		type = "recipe",
		name = "CW-basic-heat-pipe",
		enabled = false,
		energy_required = 5,
		ingredients =
		{
			{"iron-plate", 5}, 
			{"copper-plate", 5}
		},
		result = "CW-basic-heat-pipe",
	},
	
	
	{
		type = "recipe",
		name = "CW-molten-salt-Heat-Accumulator",
		enabled = false,
		energy_required = 5,
		ingredients = {{"steel-plate", 5}, {"CW-basic-heat-pipe", 6}, {"CW-molten-salt",20}},
		result = "CW-molten-salt-Heat-Accumulator"
	},

	
	{
		type = "recipe",
		name = "CW-molten-salt-Heat-Accumulator2",
		enabled = false,
		energy_required = 5,
		ingredients = {{"CW-molten-salt-Heat-Accumulator", 2},{"steel-plate",6},{"heat-pipe",2},{"CW-molten-salt",40}},
		result = "CW-molten-salt-Heat-Accumulator2"
	},

	
	{
		type = "recipe",
		name = "CW-molten-salt-Heat-Accumulator3",
		enabled = false,
		energy_required = 5,
		ingredients = {{"CW-molten-salt-Heat-Accumulator2", 2},{"steel-plate",10},{"heat-pipe",2},{"CW-molten-salt",60}},
		result = "CW-molten-salt-Heat-Accumulator3"
	},

	
	{
		type = "recipe",
		name = "CW-salt-evaporation-pond",
		enabled = false,
		energy_required = 5,
		ingredients = {{"iron-plate", 10}, {"copper-plate", 10}, {"pipe",5}},
		result = "CW-salt-evaporation-pond"
	},
	
	{
		type = "recipe",
		name = "CW-thermal-solar-panel",
		enabled = false,
		energy_required = 5,
		ingredients = {{"iron-plate", 4}, {"copper-plate", 10}, {"CW-basic-heat-pipe",4}},
		result = "CW-thermal-solar-panel"
	},
	
	{
		type = "recipe",
		name = "CW-thermal-solar-panel2",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 5}, {"CW-thermal-solar-panel", 2}, {"electronic-circuit",2},{"CW-molten-salt",10}},
		result = "CW-thermal-solar-panel2"
	},
	{
		type = "recipe",
		name = "CW-thermal-solar-panel3",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 6}, {"CW-thermal-solar-panel2", 2},{"CW-molten-salt",15}},
		result = "CW-thermal-solar-panel3"
	},
	{
		type = "recipe",
		name = "CW-thermal-solar-panel4",
		enabled = false,
		energy_required = 12,
		ingredients = {{"steel-plate", 7}, {"CW-thermal-solar-panel3", 2},{"CW-molten-salt",20}},
		result = "CW-thermal-solar-panel4"
	}	
})


-- ALL HEAT EXCHANGER
if settings.startup["heat-exchanger-enabled"].value then
	data:extend({
		{
			type = "recipe",
			name = "CW-basic-heat-exchanger",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"iron-plate", 20}, 
				{"copper-plate", 50}, 
				{"pipe",10}
			},
			result = "CW-basic-heat-exchanger",
		},

		{
			type = "recipe",
			name = "CW-basic-heat-exchanger2",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-basic-heat-exchanger", 1}, 
				{"steel-plate",10}		
			},
			result = "CW-basic-heat-exchanger2",
		},
		{
			type = "recipe",
			name = "CW-basic-heat-exchanger3",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-basic-heat-exchanger2", 1}, 
				{"steel-plate",10}
			},
			result = "CW-basic-heat-exchanger3",
		},
		{
			type = "recipe",
			name = "CW-basic-heat-exchanger4",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-basic-heat-exchanger3", 1}, 
				{"plastic-bar",10}
			},
			result = "CW-basic-heat-exchanger4",
		}	
	})
end

-- ALL STEAM TURBINES
if settings.startup["steam-turbines-enabled"].value then
	data:extend({
		{
			type = "recipe",
			name = "CW-steam-engine-2",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"steam-engine", 1}, 
				{"pipe",5},
				{"steel-plate",10}
			},
			result = "CW-steam-engine-2",
		},
		{
			type = "recipe",
			name = "CW-steam-engine-3",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-steam-engine-2", 1}, 
				{"electronic-circuit",1},
				{"steel-plate",10}		
			},
			result = "CW-steam-engine-3",
		},
		{
			type = "recipe",
			name = "CW-steam-engine-4",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-steam-engine-3", 1}, 
				{"electronic-circuit",1},
				{"steel-plate",10}		
			},
			result = "CW-steam-engine-4",
		}
	})
end






















