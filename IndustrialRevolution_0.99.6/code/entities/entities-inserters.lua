------------------------------------------------------------------------------------------------------------------------------------------------------

-- make inserters adjustable

if settings.startup["deadlock-industry-inserter-adjustment"].value then
	for _,inserter in pairs(data.raw.inserter) do
		inserter.allow_custom_vectors = true
		inserter.localised_description = {"entity-description.deadlock-adjust-inserters"}
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- burner inserter buff

data.raw.inserter["burner-inserter"].extension_speed = data.raw.inserter["inserter"].extension_speed
data.raw.inserter["burner-inserter"].rotation_speed = data.raw.inserter["inserter"].rotation_speed
data.raw.inserter["burner-inserter"].allow_burner_leech = settings.startup["deadlock-industry-enable-burner-leech"].value

------------------------------------------------------------------------------------------------------------------------------------------------------

-- long burner-inserter

local inserter = table.deepcopy(data.raw.inserter["burner-inserter"])

inserter.name = "long-handed-burner-inserter"
inserter.energy_per_rotation = "65KJ"
inserter.insert_position = data.raw.inserter["long-handed-inserter"].insert_position
inserter.pickup_position = data.raw.inserter["long-handed-inserter"].pickup_position
inserter.extension_speed = data.raw.inserter["long-handed-inserter"].extension_speed
inserter.rotation_speed = data.raw.inserter["long-handed-inserter"].rotation_speed
inserter.minable.result = "long-handed-burner-inserter"
inserter.fast_replaceable_group = "long-handed-inserter"
inserter.next_upgrade = "long-handed-inserter"
inserter.hand_size = 1.5
inserter.icon = get_icon_path("long-handed-burner-inserter")
inserter.icon_size = DIR.icon_size

data:extend({inserter})

-------------------------------------------------------------------------------------

-- re-skin inserters

-- local copper_base = get_layer("inserters/copper-inserter-base", 1, 1, false, nil, 1, 80, 80, 0, 0, 80, 80, {0,0})
-- local iron_base = get_layer("inserters/iron-inserter-base", 1, 1, false, nil, 1, 80, 80, 0, 0, 80, 80, {0,0})
-- local steel_base = get_layer("inserters/steel-inserter-base", 1, 1, false, nil, 1, 80, 80, 0, 0, 80, 80, {0,0})

-- local copper_lower = get_layer("inserters/copper-inserter-arm-lower", 1, 1, false, nil, 1, 32, 136, 0, 0, 32, 136, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local copper_lower_shadow = get_layer("inserters/copper-inserter-arm-lower", 1, 1, true, nil, 1, 32, 136, 0, 0, 32, 136, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)
-- local copper_upper_closed = get_layer("inserters/copper-inserter-arm-upper-closed", 1, 1, false, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local copper_upper_open = get_layer("inserters/copper-inserter-arm-upper-open", 1, 1, false, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local copper_upper_closed_shadow = get_layer("inserters/copper-inserter-arm-upper-closed", 1, 1, true, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)
-- local copper_upper_open_shadow = get_layer("inserters/copper-inserter-arm-upper-open", 1, 1, true, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)

-- local iron_lower = get_layer("inserters/iron-inserter-arm-lower", 1, 1, false, nil, 1, 32, 136, 0, 0, 32, 136, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local iron_lower_shadow = get_layer("inserters/iron-inserter-arm-lower", 1, 1, true, nil, 1, 32, 136, 0, 0, 32, 136, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)
-- local iron_upper_closed = get_layer("inserters/iron-inserter-arm-upper-closed", 1, 1, false, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local iron_upper_open = get_layer("inserters/iron-inserter-arm-upper-open", 1, 1, false, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local iron_upper_closed_shadow = get_layer("inserters/iron-inserter-arm-upper-closed", 1, 1, true, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)
-- local iron_upper_open_shadow = get_layer("inserters/iron-inserter-arm-upper-open", 1, 1, true, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)
-- local iron_upper_closed_sensor = get_layer("inserters/iron-inserter-arm-upper-closed-sensor", 1, 1, false, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local iron_upper_open_sensor = get_layer("inserters/iron-inserter-arm-upper-open-sensor", 1, 1, false, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, nil, nil, nil, nil, 0.25)
-- local iron_upper_closed_shadow_sensor = get_layer("inserters/iron-inserter-arm-upper-closed-sensor", 1, 1, true, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)
-- local iron_upper_open_shadow_sensor = get_layer("inserters/iron-inserter-arm-upper-open-sensor", 1, 1, true, nil, 1, 72, 164, 0, 0, 72, 164, {0,0}, nil, nil, {0,0,0,1}, nil, nil, nil, 0.25)


-- local copper = data.raw.inserter["burner-inserter"]
-- copper.platform_picture.sheet = copper_base
-- copper.hand_base_picture = copper_lower
-- copper.hand_base_shadow = copper_lower_shadow
-- copper.hand_closed_picture = copper_upper_closed
-- copper.hand_closed_shadow = copper_upper_closed_shadow
-- copper.hand_open_picture = copper_upper_open
-- copper.hand_open_shadow = copper_upper_open_shadow

-- local iron = data.raw.inserter["inserter"]
-- iron.platform_picture.sheet = iron_base
-- iron.hand_base_picture = iron_lower
-- iron.hand_base_shadow = iron_lower_shadow
-- iron.hand_closed_picture = iron_upper_closed
-- iron.hand_closed_shadow = iron_upper_closed_shadow
-- iron.hand_open_picture = iron_upper_open
-- iron.hand_open_shadow = iron_upper_open_shadow

-- local iron = data.raw.inserter["filter-inserter"]
-- iron.platform_picture.sheet = iron_base
-- iron.hand_base_picture = iron_lower
-- iron.hand_base_shadow = iron_lower_shadow
-- iron.hand_closed_picture = iron_upper_closed_sensor
-- iron.hand_closed_shadow = iron_upper_closed_shadow_sensor
-- iron.hand_open_picture = iron_upper_open_sensor
-- iron.hand_open_shadow = iron_upper_open_shadow_sensor

------------------------------------------------------------------------------------------------------------------------------------------------------
