require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/air_cleaner.lua')
log('-------------------------------------------------------')

local air_cleaner = {}
air_cleaner.type = "assembling-machine"
air_cleaner.name = "apm_air_cleaner_machine_0"
air_cleaner.icons = {
    apm.lib.utils.icon.dynamics.machine.t1,
    apm.lib.utils.icon.dynamics.lable_ac
}
air_cleaner.icon_size = 32
air_cleaner.flags = {"placeable-neutral", "placeable-player", "player-creation"}
air_cleaner.minable = {mining_time = 0.2, result = "apm_air_cleaner_machine_0"}
air_cleaner.crafting_categories = {"apm_air_cleaner"}
air_cleaner.crafting_speed = 1
air_cleaner.fast_replaceable_group = "air_cleaner"
air_cleaner.next_upgrade = nil
air_cleaner.max_health = 250
air_cleaner.corpse = "big-remnants"
air_cleaner.dying_explosion = "medium-explosion"
air_cleaner.resistances = {{type = "fire", percent = 90}}
air_cleaner.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
air_cleaner.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
air_cleaner.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
air_cleaner.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
air_cleaner.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
air_cleaner.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
air_cleaner.working_sound = {}
air_cleaner.working_sound.sound = {{filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8},
                                          {filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8}}
air_cleaner.working_sound.idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 }
air_cleaner.working_sound.apparent_volume = 1.5
air_cleaner.energy_usage = "400kW"
air_cleaner.module_specification = nil
air_cleaner.allowed_effects = {"consumption", "pollution", "speed"}
air_cleaner.energy_source = {}
air_cleaner.energy_source.type = "fluid"
air_cleaner.energy_source.fluid_box = {}
air_cleaner.energy_source.fluid_box.production_type = "input"
air_cleaner.energy_source.fluid_box.pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
air_cleaner.energy_source.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
air_cleaner.energy_source.fluid_box.base_area = 1
air_cleaner.energy_source.fluid_box.base_level = -1
air_cleaner.energy_source.fluid_box.pipe_connections = {{ type="input", position = {0, -2} }}
air_cleaner.energy_source.fluid_box.secondary_draw_orders = { north = -1 }
air_cleaner.energy_source.fluid_box.filter = "steam"
air_cleaner.energy_source.minimum_temperature = 100.0
air_cleaner.energy_source.maximum_temperature = 1000.0
air_cleaner.energy_source.burns_fluid = false
air_cleaner.energy_source.scale_fluid_usage = true
air_cleaner.energy_source.emissions_per_minute = -50
air_cleaner.energy_source.smoke = {}
air_cleaner.energy_source.smoke[1] = {}
air_cleaner.energy_source.smoke[1].name = "light-smoke"
air_cleaner.energy_source.smoke[1].deviation = {0.1, 0.1}
air_cleaner.energy_source.smoke[1].frequency = 4
air_cleaner.energy_source.smoke[1].position = nil
air_cleaner.energy_source.smoke[1].north_position = {-0.77, -1.95}
air_cleaner.energy_source.smoke[1].south_position = {-0.77, -1.95}
air_cleaner.energy_source.smoke[1].east_position = {-0.77, -1.95}
air_cleaner.energy_source.smoke[1].west_position = {-0.77, -1.95}
air_cleaner.energy_source.smoke[1].starting_vertical_speed = 0.08
air_cleaner.energy_source.smoke[1].starting_frame_deviation = 60
air_cleaner.energy_source.smoke[1].slow_down_factor = 1
air_cleaner.animation = {}
air_cleaner.animation.layers = {}
air_cleaner.animation.layers[1] = {}
air_cleaner.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/air_cleaner/air_cleaner_0.png"
air_cleaner.animation.layers[1].priority="high"
air_cleaner.animation.layers[1].width = 160
air_cleaner.animation.layers[1].height = 128
air_cleaner.animation.layers[1].frame_count = 32
air_cleaner.animation.layers[1].line_length = 8
air_cleaner.animation.layers[1].shift = {0.4375, -0.28125}
air_cleaner.animation.layers[1].animation_speed = 1.0666667
air_cleaner.animation.layers[1].hr_version = {}
air_cleaner.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/air_cleaner/hr_air_cleaner_0.png"
air_cleaner.animation.layers[1].hr_version.priority="high"
air_cleaner.animation.layers[1].hr_version.width = 320
air_cleaner.animation.layers[1].hr_version.height = 256
air_cleaner.animation.layers[1].hr_version.frame_count = 32
air_cleaner.animation.layers[1].hr_version.line_length = 8
air_cleaner.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
air_cleaner.animation.layers[1].hr_version.scale = 0.5
air_cleaner.animation.layers[1].hr_version.animation_speed = 1.0666667
air_cleaner.animation.layers[2] = {}
air_cleaner.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/air_cleaner/air_cleaner_shadow.png"
air_cleaner.animation.layers[2].priority="high"
air_cleaner.animation.layers[2].draw_as_shadow = true
air_cleaner.animation.layers[2].width = 160
air_cleaner.animation.layers[2].height = 128
air_cleaner.animation.layers[2].frame_count = 32
air_cleaner.animation.layers[2].line_length = 8
air_cleaner.animation.layers[2].shift = {0.4375, -0.28125}
air_cleaner.animation.layers[2].animation_speed = 1.0666667
air_cleaner.animation.layers[2].hr_version = {}
air_cleaner.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/air_cleaner/hr_air_cleaner_shadow.png"
air_cleaner.animation.layers[2].hr_version.priority="high"
air_cleaner.animation.layers[2].hr_version.draw_as_shadow = true
air_cleaner.animation.layers[2].hr_version.width = 320
air_cleaner.animation.layers[2].hr_version.height = 256
air_cleaner.animation.layers[2].hr_version.frame_count = 32
air_cleaner.animation.layers[2].hr_version.line_length = 8
air_cleaner.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
air_cleaner.animation.layers[2].hr_version.scale = 0.5
air_cleaner.animation.layers[2].hr_version.animation_speed = 1.0666667
air_cleaner.fluid_boxes = {}
air_cleaner.fluid_boxes[1] = {}
air_cleaner.fluid_boxes[1].production_type = "output"
air_cleaner.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
air_cleaner.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
air_cleaner.fluid_boxes[1].base_area = 1
air_cleaner.fluid_boxes[1].base_level = 1
air_cleaner.fluid_boxes[1].pipe_connections = {{ type="output", position = {-2, 0} }}
air_cleaner.fluid_boxes[1].secondary_draw_orders = { north = -1 }
air_cleaner.fluid_boxes[2] = {}
air_cleaner.fluid_boxes[2].production_type = "input"
air_cleaner.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
air_cleaner.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
air_cleaner.fluid_boxes[2].base_area = 1
air_cleaner.fluid_boxes[2].base_level = -1
air_cleaner.fluid_boxes[2].pipe_connections = {{ type="input", position = {2, 0} }}
air_cleaner.fluid_boxes[2].secondary_draw_orders = { north = -1 }
air_cleaner.fluid_boxes.off_when_no_fluid_recipe = true
data:extend({air_cleaner})