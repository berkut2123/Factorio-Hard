local function on_init() 
	for _,force in pairs(game.forces) do
		force.recipes["advanced-electric-primary-steam-turbine-1"].enabled = force.technologies["nuclear-power"].researched
	end
end

script.on_init(on_init)

local function on_configuration_changed(data)
	for _,force in pairs(game.forces) do
		force.recipes["advanced-electric-primary-steam-turbine-1"].enabled = force.technologies["nuclear-power"].researched
	end
end

script.on_configuration_changed(on_configuration_changed)