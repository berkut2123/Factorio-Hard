local subgroup_vehrail = "transport"

if mods["SchallTransportGroup"] then
	subgroup_vehrail = "vehicles-railway"
end

data:extend({
	{
		type = "item",
		name = "vehicle-wagon",
		icon = "__VehicleWagon2__/graphics/tech-icon.png",
		icon_size = 128,
		subgroup = subgroup_vehrail,
		order = "a[train-system]-v[vehicle-wagon]",
		place_result = "vehicle-wagon",
		stack_size = 5
	},
	{
		type = "item",
		name = "loaded-vehicle-wagon-tank",
		icon = "__VehicleWagon2__/graphics/tech-icon.png",
		icon_size = 128,
		flags = {"hidden"},
		subgroup = "transport",
		order = "a[train-system]-z[vehicle-wagon]",
		place_result = "loaded-vehicle-wagon-tank",
		stack_size = 1
	},
	{
		type = "item",
		name = "loaded-vehicle-wagon-car",
		icon = "__VehicleWagon2__/graphics/tech-icon.png",
		icon_size = 128,
		flags = {"hidden"},
		subgroup = "transport",
		order = "a[train-system]-z[vehicle-wagon]",
		place_result = "loaded-vehicle-wagon-car",
		stack_size = 1
	},
	{
		type = "item",
		name = "loaded-vehicle-wagon-tarp",
		icon = "__VehicleWagon2__/graphics/tech-icon.png",
		icon_size = 128,
		flags = {"hidden"},
		subgroup = "transport",
		order = "a[train-system]-z[vehicle-wagon]",
		place_result = "loaded-vehicle-wagon-tarp",
		stack_size = 1
	},
	{
		type = "capsule",
		name = "winch",
		icon = "__VehicleWagon2__/graphics/winch-icon.png",
		icon_size = 64,
		subgroup = "transport",
		order = "a[train-system]-w[winch]",
		stack_size = 2,
		capsule_action =
		{
			type = "throw",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "melee",
				cooldown = 15,
				range = 9,
				ammo_type =
				{
					category = "melee",
					target_type = "entity",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								{
									type = "play-sound",
									sound =
									{
										{
											filename = "__VehicleWagon2__/sound/latchOn.ogg",
											volume = 0
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
})

if data.raw["car"]["dumper-truck"] then
	data:extend({
		{
			type = "item",
			name = "loaded-vehicle-wagon-truck",
			icon = "__VehicleWagon2__/graphics/tech-icon.png",
			icon_size = 128,
			flags = {"hidden"},
			subgroup = "transport",
			order = "a[train-system]-z[vehicle-wagon]",
			place_result = "loaded-vehicle-wagon-truck",
			stack_size = 1
		},
	})
end
