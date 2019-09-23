require('util')

local car = table.deepcopy(data.raw.car['car'])
car.name = 'apm_electric_car'
car.icon = nil
car.icons = {
	{icon = data.raw.car['car'].icon},
	apm.lib.utils.icon.dynamics.t1
}
car.minable = {mining_time = 0.4, result = "apm_electric_car"}
car.burner.smoke = nil
car.sound_no_fuel[1].filename = "__apm_resource_pack__/sounds/car/car-no-fuel-1.ogg"
car.working_sound.sound.filename = "__apm_resource_pack__/sounds/car/car-engine.ogg"
car.working_sound.sound.volume = 1.0
car.working_sound.activate_sound = nil
car.working_sound.deactivate_sound = nil
data:extend({car})

local charging_station = {}
charging_station.type = "assembling-machine"
charging_station.name = "apm_battery_charging_station"
charging_station.icons = {
	apm.lib.utils.icon.dynamics.machine.t2,
	apm.lib.utils.icon.dynamics.lable_lightning 
}
charging_station.icon_size = 32
charging_station.flags = {"placeable-neutral", "placeable-player", "player-creation"}
charging_station.minable = {mining_time = 0.2, result = "apm_battery_charging_station"}
charging_station.crafting_categories = {"apm_electric_charging"}
charging_station.crafting_speed = 1
charging_station.fast_replaceable_group = "apm_battery_charging_station"
charging_station.next_upgrade = nil
charging_station.max_health = 500
charging_station.corpse = "big-remnants"
charging_station.dying_explosion = "medium-explosion"
charging_station.resistances = {{type = "fire", percent = 90}}
charging_station.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
charging_station.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
charging_station.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
charging_station.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
charging_station.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
charging_station.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
charging_station.working_sound = {}
charging_station.working_sound.sound = {{filename = "__base__/sound/furnace.ogg"}} --<<<<
charging_station.energy_usage = "5MW"
charging_station.module_specification = nil
charging_station.allowed_effects = nil
charging_station.energy_source = {}
charging_station.energy_source.type = "electric"
charging_station.energy_source.usage_priority = "secondary-input"
charging_station.animation = {}
charging_station.animation.layers = {}
charging_station.animation.layers[1] = {}
charging_station.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/charging_station/charging_station_0.png"
charging_station.animation.layers[1].priority="high"
charging_station.animation.layers[1].width = 160
charging_station.animation.layers[1].height = 128
charging_station.animation.layers[1].frame_count = 5
charging_station.animation.layers[1].line_length = 5
charging_station.animation.layers[1].shift = {0.4375, -0.28125}
charging_station.animation.layers[1].animation_speed = 0.16666667
charging_station.animation.layers[1].hr_version = {}
charging_station.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/charging_station/hr_charging_station_0.png"
charging_station.animation.layers[1].hr_version.priority="high"
charging_station.animation.layers[1].hr_version.width = 320
charging_station.animation.layers[1].hr_version.height = 256
charging_station.animation.layers[1].hr_version.frame_count = 5
charging_station.animation.layers[1].hr_version.line_length = 5
charging_station.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
charging_station.animation.layers[1].hr_version.scale = 0.5
charging_station.animation.layers[1].hr_version.animation_speed = 0.16666667
charging_station.animation.layers[2] = {}
charging_station.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/charging_station/charging_station_shadow.png"
charging_station.animation.layers[2].priority="high"
charging_station.animation.layers[2].draw_as_shadow = true
charging_station.animation.layers[2].width = 160
charging_station.animation.layers[2].height = 128
charging_station.animation.layers[2].frame_count = 5
charging_station.animation.layers[2].line_length = 5
charging_station.animation.layers[2].shift = {0.4375, -0.28125}
charging_station.animation.layers[2].animation_speed = 0.16666667
charging_station.animation.layers[2].hr_version = {}
charging_station.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/charging_station/hr_charging_station_shadow.png"
charging_station.animation.layers[2].hr_version.priority="high"
charging_station.animation.layers[2].hr_version.draw_as_shadow = true
charging_station.animation.layers[2].hr_version.width = 320
charging_station.animation.layers[2].hr_version.height = 256
charging_station.animation.layers[2].hr_version.frame_count = 5
charging_station.animation.layers[2].hr_version.line_length = 5
charging_station.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
charging_station.animation.layers[2].hr_version.scale = 0.5
charging_station.animation.layers[2].hr_version.animation_speed = 0.16666667
charging_station.idle_animation = {}
charging_station.idle_animation.layers = {}
charging_station.idle_animation.layers[1] = {}
charging_station.idle_animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/charging_station/charging_station_idle_0.png"
charging_station.idle_animation.layers[1].priority="high"
charging_station.idle_animation.layers[1].width = 160
charging_station.idle_animation.layers[1].height = 128
charging_station.idle_animation.layers[1].frame_count = 5
charging_station.idle_animation.layers[1].line_length = 5
charging_station.idle_animation.layers[1].shift = {0.4375, -0.28125}
charging_station.idle_animation.layers[1].animation_speed = 0.16666667
charging_station.idle_animation.layers[1].hr_version = {}
charging_station.idle_animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/charging_station/hr_charging_station_idle_0.png"
charging_station.idle_animation.layers[1].hr_version.priority="high"
charging_station.idle_animation.layers[1].hr_version.width = 320
charging_station.idle_animation.layers[1].hr_version.height = 256
charging_station.idle_animation.layers[1].hr_version.frame_count = 5
charging_station.idle_animation.layers[1].hr_version.line_length = 5
charging_station.idle_animation.layers[1].hr_version.shift = {0.4375, -0.28125}
charging_station.idle_animation.layers[1].hr_version.scale = 0.5
charging_station.idle_animation.layers[1].hr_version.animation_speed = 0.16666667
charging_station.idle_animation.layers[2] = charging_station.animation.layers[2]
data:extend({charging_station})