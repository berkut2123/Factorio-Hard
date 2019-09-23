require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/sieve.lua')
log('-------------------------------------------------------')

local sieve = {}
sieve.type = "assembling-machine"
sieve.name = "apm_sieve_0"
sieve.icons = {
    apm.lib.utils.icon.dynamics.machine.t1,
    apm.lib.utils.icon.dynamics.lable_si
}
sieve.icon_size = 32
sieve.flags = {"placeable-neutral", "placeable-player", "player-creation"}
sieve.minable = {mining_time = 0.2, result = "apm_sieve_0"}
sieve.crafting_categories = {"apm_sifting_0"}
sieve.crafting_speed = 1
sieve.fast_replaceable_group = "apm_sieve"
sieve.next_upgrade = nil
sieve.max_health = 250
sieve.corpse = "big-remnants"
sieve.dying_explosion = "medium-explosion"
sieve.resistances = {{type = "fire", percent = 90}}
sieve.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
sieve.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
sieve.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
sieve.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
sieve.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
sieve.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
sieve.working_sound = {}
sieve.working_sound.sound = {{filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8},
                                          {filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8}}
sieve.working_sound.idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 }
sieve.working_sound.apparent_volume = 1.5
sieve.energy_usage = "200kW"
sieve.module_specification = {module_slots = 3}
sieve.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
sieve.energy_source = {}
sieve.energy_source.type = "fluid"
sieve.energy_source.fluid_box = {}
sieve.energy_source.fluid_box.production_type = "input"
sieve.energy_source.fluid_box.pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
sieve.energy_source.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
sieve.energy_source.fluid_box.base_area = 1
sieve.energy_source.fluid_box.base_level = -1
sieve.energy_source.fluid_box.pipe_connections = {{ type="input", position = {0, -2} }}
sieve.energy_source.fluid_box.secondary_draw_orders = { north = -1 }
sieve.energy_source.fluid_box.filter = "steam"
sieve.energy_source.minimum_temperature = 100.0
sieve.energy_source.maximum_temperature = 1000.0
sieve.energy_source.burns_fluid = false
sieve.energy_source.scale_fluid_usage = true
sieve.energy_source.emissions_per_minute = 3.5
sieve.energy_source.smoke = {}
sieve.energy_source.smoke[1] = {}
sieve.energy_source.smoke[1].name = "light-smoke"
sieve.energy_source.smoke[1].deviation = {0.1, 0.1}
sieve.energy_source.smoke[1].frequency = 3.2
--sieve.energy_source.smoke[1].position = nil
sieve.energy_source.smoke[1].north_position = {-0.77, -1.95}
sieve.energy_source.smoke[1].south_position = {-0.77, -1.95}
sieve.energy_source.smoke[1].east_position = {-0.77, -1.95}
sieve.energy_source.smoke[1].west_position = {-0.77, -1.95}
sieve.energy_source.smoke[1].starting_vertical_speed = 0.08
sieve.energy_source.smoke[1].starting_frame_deviation = 60
sieve.energy_source.smoke[1].slow_down_factor = 1
sieve.animation = {}
sieve.animation.layers = {}
sieve.animation.layers[1] = {}
sieve.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/sieve/sieve_0.png"
sieve.animation.layers[1].priority="high"
sieve.animation.layers[1].width = 160
sieve.animation.layers[1].height = 128
sieve.animation.layers[1].frame_count = 32
sieve.animation.layers[1].line_length = 8
sieve.animation.layers[1].shift = {0.4375, -0.28125}
sieve.animation.layers[1].animation_speed = 1.0666667
sieve.animation.layers[1].hr_version = {}
sieve.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/sieve/hr_sieve_0.png"
sieve.animation.layers[1].hr_version.priority="high"
sieve.animation.layers[1].hr_version.width = 320
sieve.animation.layers[1].hr_version.height = 256
sieve.animation.layers[1].hr_version.frame_count = 32
sieve.animation.layers[1].hr_version.line_length = 8
sieve.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
sieve.animation.layers[1].hr_version.scale = 0.5
sieve.animation.layers[1].hr_version.animation_speed = 1.0666667
sieve.animation.layers[2] = {}
sieve.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/sieve/sieve_shadow.png"
sieve.animation.layers[2].priority="high"
sieve.animation.layers[2].draw_as_shadow = true
sieve.animation.layers[2].width = 160
sieve.animation.layers[2].height = 128
sieve.animation.layers[2].frame_count = 32
sieve.animation.layers[2].line_length = 8
sieve.animation.layers[2].shift = {0.4375, -0.28125}
sieve.animation.layers[2].animation_speed = 1.0666667
sieve.animation.layers[2].hr_version = {}
sieve.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/sieve/hr_sieve_shadow.png"
sieve.animation.layers[2].hr_version.priority="high"
sieve.animation.layers[2].hr_version.draw_as_shadow = true
sieve.animation.layers[2].hr_version.width = 320
sieve.animation.layers[2].hr_version.height = 256
sieve.animation.layers[2].hr_version.frame_count = 32
sieve.animation.layers[2].hr_version.line_length = 8
sieve.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
sieve.animation.layers[2].hr_version.scale = 0.5
sieve.animation.layers[2].hr_version.animation_speed = 1.0666667
--[[
sieve.fluid_boxes = {}
sieve.fluid_boxes[1] = {}
sieve.fluid_boxes[1].production_type = "output"
sieve.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
sieve.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
sieve.fluid_boxes[1].base_area = 1
sieve.fluid_boxes[1].base_level = 1
sieve.fluid_boxes[1].pipe_connections = {{ type="output", position = {0, 2} }}
sieve.fluid_boxes[1].secondary_draw_orders = { north = -1 }
]]--
data:extend({sieve})