-- NOT DISABLEABLE
-- ON 0.17 ALL FLAGS, GOES TO INVENTORY AND GOES TO QUICKBAR WAS REMOVED IN PORTING

data:extend({	
	{
		type = "item",
		name = "CW-basic-heat-pipe",
		icon = "__base__/graphics/icons/heat-pipe.png",
		icon_size = 32,
		subgroup = "energy",
		order = "f[nuclear-energy]-c[heat-pipe]",
		place_result = "CW-basic-heat-pipe",
		stack_size = 50,
	},
	
	
	{
		type = "item",
		name = "CW-molten-salt",
		icon = "__CW-thermal-solar-power__/graphics/icons/salt.png",
		icon_size = 32,
		subgroup = "raw-material",
		stack_size = 200
	},

	{
		type = "item",
		name = "CW-molten-salt-Heat-Accumulator",
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator1.png",
		icon_size = 32,
		subgroup = "energy",
		place_result = "CW-molten-salt-Heat-Accumulator",
		stack_size = 20
	},

	{
		type = "item",
		name = "CW-molten-salt-Heat-Accumulator2",
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator2.png",
		icon_size = 32,
		subgroup = "energy",
		place_result = "CW-molten-salt-Heat-Accumulator2",
		stack_size = 20
	},
	{
		type = "item",
		name = "CW-molten-salt-Heat-Accumulator3",
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator3.png",
		icon_size = 32,
		subgroup = "energy",
		place_result = "CW-molten-salt-Heat-Accumulator3",
		stack_size = 20
	},

	{
		type = "item",
		name = "CW-salt-evaporation-pond",
		icon = "__CW-thermal-solar-power__/graphics/icons/evaporation-pond.png",
		icon_size = 32,
		subgroup = "production-machine",
		place_result = "CW-salt-evaporation-pond",
		stack_size = 20
	},
	
	{
		type = "item",
		name = "CW-thermal-solar-panel",
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel1.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "CW-thermal-solar-panel",
		stack_size = 20
	},

	{
		type = "item",
		name = "CW-thermal-solar-panel2",
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel2.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "CW-thermal-solar-panel2",
		stack_size = 20
	},

	{
		type = "item",
		name = "CW-thermal-solar-panel3",
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel3.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "CW-thermal-solar-panel3",
		stack_size = 20
	},

	{
		type = "item",
		name = "CW-thermal-solar-panel4",
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel4.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "CW-thermal-solar-panel4",
		stack_size = 20
	},
	
	{
		type = "item",
		name = "CW-molten-salt-Heat-Accumulator",
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator1.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "CW-molten-salt-Heat-Accumulator",
		stack_size = 20
	},

	{
		type = "item",
		name = "CW-molten-salt-Heat-Accumulator2",
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator2.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "CW-molten-salt-Heat-Accumulator2",
		stack_size = 20
	},
	{
		type = "item",
		name = "CW-molten-salt-Heat-Accumulator3",
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator3.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "CW-molten-salt-Heat-Accumulator3",
		stack_size = 20
	},
})

-- ALL HEAT EXCHANGER
if settings.startup["heat-exchanger-enabled"].value then
	data:extend({
	{
			type = "item",
			name = "CW-basic-heat-exchanger",
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler1.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "f",
			place_result = "CW-basic-heat-exchanger",
			stack_size = 20,
		},
		{
			type = "item",
			name = "CW-basic-heat-exchanger2",
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler2.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "f",
			place_result = "CW-basic-heat-exchanger2",
			stack_size = 20,
		},
		{
			type = "item",
			name = "CW-basic-heat-exchanger3",
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler3.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "f",
			place_result = "CW-basic-heat-exchanger3",
			stack_size = 20,
		},
		{
			type = "item",
			name = "CW-basic-heat-exchanger4",
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler4.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "f",
			place_result = "CW-basic-heat-exchanger4",
			stack_size = 20,
		}
	})
end

-- ALL STEAM TURBINES
if settings.startup["steam-turbines-enabled"].value then
	data:extend({
		{
			type = "item",
			name = "CW-steam-engine-2",
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "b[steam-power]-b[steam-engine]",
			place_result = "CW-steam-engine-2",
			stack_size = 10
		},
		
		{
			type = "item",
			name = "CW-steam-engine-3",
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "b[steam-power]-b[steam-engine]",
			place_result = "CW-steam-engine-3",
			stack_size = 10
		},

		{
			type = "item",
			name = "CW-steam-engine-4",
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "b[steam-power]-b[steam-engine]",
			place_result = "CW-steam-engine-4",
			stack_size = 10
		}
	})
end









