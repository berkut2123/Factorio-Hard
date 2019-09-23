require('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/entities.lua')
log('-------------------------------------------------------')

apm.lib.utils.assembler.centrifuge.overhaul('centrifuge', 1)
apm.lib.utils.reactor.overhaul('nuclear-reactor', 1)

local breeder_reactor = {}
breeder_reactor.type = "assembling-machine"
breeder_reactor.name = "apm_nuclear_breeder"
breeder_reactor.icons = {
	apm.nuclear.icons.breeder_reactor
}
breeder_reactor.icon_size = 32
breeder_reactor.flags = {"placeable-neutral", "placeable-player", "player-creation"}
breeder_reactor.minable = {mining_time = 0.5, result = "apm_nuclear_breeder"}
breeder_reactor.crafting_categories = {"apm_nuclear_breeding"}
breeder_reactor.crafting_speed = 1
breeder_reactor.fast_replaceable_group = "apm_nuclear_breeder"
breeder_reactor.max_health = 1000
breeder_reactor.corpse = "big-remnants"
breeder_reactor.dying_explosion = "medium-explosion"
breeder_reactor.resistances = {{type = "fire", percent = 90}}
breeder_reactor.collision_box = {{-2.2, -2.2}, {2.2, 2.2}}
breeder_reactor.selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
breeder_reactor.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
breeder_reactor.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
breeder_reactor.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
breeder_reactor.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
breeder_reactor.working_sound = {}
breeder_reactor.working_sound.sound = {}
breeder_reactor.working_sound.sound[1] = {}
breeder_reactor.working_sound.sound[1].filename = "__apm_resource_pack__/sounds/entities/breeder_working.ogg"
breeder_reactor.working_sound.sound[1].volume = 0.8
breeder_reactor.working_sound.idle_sound = { filename = "__apm_resource_pack__/sounds/entities/breeder_working.ogg", volume = 0.6 }
breeder_reactor.working_sound.apparent_volume = 1
breeder_reactor.energy_usage = "135MW"
breeder_reactor.energy_source = {}
breeder_reactor.energy_source.type = "burner"
breeder_reactor.energy_source.fuel_category = "apm_nuclear_mox"
breeder_reactor.energy_source.effectivity = 1
breeder_reactor.energy_source.fuel_inventory_size = 1
breeder_reactor.energy_source.burnt_inventory_size = 1
breeder_reactor.allowed_effects = {"consumption", "pollution"}
breeder_reactor.animation = {}
breeder_reactor.animation.layers = {}
breeder_reactor.animation.layers[1] = {}
breeder_reactor.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/breeder/breeder.png"
breeder_reactor.animation.layers[1].priority="high"
breeder_reactor.animation.layers[1].width = 244
breeder_reactor.animation.layers[1].height = 244
breeder_reactor.animation.layers[1].frame_count = 30
breeder_reactor.animation.layers[1].line_length = 6
breeder_reactor.animation.layers[1].shift = {1.25, 0}
breeder_reactor.animation.layers[1].animation_speed = 0.5
breeder_reactor.animation.layers[1].run_mode = 'forward-then-backward'
breeder_reactor.animation.layers[1].hr_version = {}
breeder_reactor.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/breeder/hr_breeder.png"
breeder_reactor.animation.layers[1].hr_version.priority="high"
breeder_reactor.animation.layers[1].hr_version.width = 488
breeder_reactor.animation.layers[1].hr_version.height = 488
breeder_reactor.animation.layers[1].hr_version.frame_count = 30
breeder_reactor.animation.layers[1].hr_version.line_length = 6
breeder_reactor.animation.layers[1].hr_version.shift = {1.25, 0}
breeder_reactor.animation.layers[1].hr_version.scale = 0.5
breeder_reactor.animation.layers[1].hr_version.animation_speed = 0.5
breeder_reactor.animation.layers[1].hr_version.run_mode = 'forward-then-backward'
breeder_reactor.animation.layers[2] = {}
breeder_reactor.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/breeder/breeder_shadow.png"
breeder_reactor.animation.layers[2].priority="high"
breeder_reactor.animation.layers[2].draw_as_shadow = true
breeder_reactor.animation.layers[2].width = 244
breeder_reactor.animation.layers[2].height = 244
breeder_reactor.animation.layers[2].frame_count = 30
breeder_reactor.animation.layers[2].line_length = 6
breeder_reactor.animation.layers[2].shift = {1.25, 0}
breeder_reactor.animation.layers[2].animation_speed = 0.5
breeder_reactor.animation.layers[2].run_mode = 'forward-then-backward'
breeder_reactor.animation.layers[2].hr_version = {}
breeder_reactor.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/breeder/hr_breeder_shadow.png"
breeder_reactor.animation.layers[2].hr_version.priority="high"
breeder_reactor.animation.layers[2].hr_version.draw_as_shadow = true
breeder_reactor.animation.layers[2].hr_version.width = 488
breeder_reactor.animation.layers[2].hr_version.height = 488
breeder_reactor.animation.layers[2].hr_version.frame_count = 30
breeder_reactor.animation.layers[2].hr_version.line_length = 6
breeder_reactor.animation.layers[2].hr_version.shift = {1.25, 0}
breeder_reactor.animation.layers[2].hr_version.scale = 0.5
breeder_reactor.animation.layers[2].hr_version.animation_speed = 0.5
breeder_reactor.animation.layers[2].hr_version.run_mode = 'forward-then-backward'
breeder_reactor.working_visualisations = {}
breeder_reactor.working_visualisations[1] = {}
breeder_reactor.working_visualisations[1].effect = "uranium-glow" -- changes alpha based on energy source light intensity
breeder_reactor.working_visualisations[1].light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
data:extend({breeder_reactor})