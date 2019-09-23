require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/assembling_machines.lua')
log('-------------------------------------------------------')

local assembling_machine = {}
assembling_machine.type = "assembling-machine"
assembling_machine.name = "apm_assembling_machine_0"
assembling_machine.icons = {
    apm.lib.utils.icon.dynamics.machine.t0,
    apm.lib.utils.icon.dynamics.lable_a
}
assembling_machine.icon_size = 32
assembling_machine.flags = {"placeable-neutral", "placeable-player", "player-creation"}
assembling_machine.minable = {mining_time = 0.2, result = "apm_assembling_machine_0"}
assembling_machine.crafting_categories = {"crafting", "advanced-crafting", "basic-crafting"}
assembling_machine.crafting_speed = 0.5
assembling_machine.fast_replaceable_group = "assembling-machine"
assembling_machine.next_upgrade = "apm_assembling_machine_1"
assembling_machine.max_health = 250
assembling_machine.corpse = "big-remnants"
assembling_machine.dying_explosion = "medium-explosion"
assembling_machine.resistances = {{type = "fire", percent = 90}}
assembling_machine.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
assembling_machine.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
assembling_machine.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
assembling_machine.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
assembling_machine.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
assembling_machine.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
assembling_machine.working_sound = {}
assembling_machine.working_sound.sound = {{filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8},
                                          {filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8}}
assembling_machine.working_sound.idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 }
assembling_machine.working_sound.apparent_volume = 1.5
assembling_machine.energy_usage = "130kW"
assembling_machine.module_specification = nil
assembling_machine.allowed_effects = {"consumption", "speed", "productivity", "pollution"} 
assembling_machine.energy_source = {}
assembling_machine.energy_source.type = "burner"
assembling_machine.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
assembling_machine.energy_source.effectivity = 1
assembling_machine.energy_source.fuel_inventory_size = 1
assembling_machine.energy_source.burnt_inventory_size = 1
assembling_machine.energy_source.emissions_per_minute = 5
assembling_machine.energy_source.smoke = {}
assembling_machine.energy_source.smoke[1] = {}
assembling_machine.energy_source.smoke[1].name = "apm_dark_smoke"
assembling_machine.energy_source.smoke[1].deviation = {0.1, 0.1}
assembling_machine.energy_source.smoke[1].frequency = 10
assembling_machine.energy_source.smoke[1].north_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].south_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].east_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].west_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].starting_vertical_speed = 0.08
assembling_machine.energy_source.smoke[1].starting_frame_deviation = 60
assembling_machine.energy_source.smoke[1].slow_down_factor = 1
assembling_machine.animation = {}
assembling_machine.animation.layers = {}
assembling_machine.animation.layers[1] = {}
assembling_machine.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/assembling_machine/assembling_machine_0.png"
assembling_machine.animation.layers[1].priority="high"
assembling_machine.animation.layers[1].width = 160
assembling_machine.animation.layers[1].height = 128
assembling_machine.animation.layers[1].frame_count = 32
assembling_machine.animation.layers[1].line_length = 8
assembling_machine.animation.layers[1].shift = {0.4375, -0.28125}
assembling_machine.animation.layers[1].animation_speed = 1.0666667
assembling_machine.animation.layers[1].hr_version = {}
assembling_machine.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/assembling_machine/hr_assembling_machine_0.png"
assembling_machine.animation.layers[1].hr_version.priority="high"
assembling_machine.animation.layers[1].hr_version.width = 320
assembling_machine.animation.layers[1].hr_version.height = 256
assembling_machine.animation.layers[1].hr_version.frame_count = 32
assembling_machine.animation.layers[1].hr_version.line_length = 8
assembling_machine.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
assembling_machine.animation.layers[1].hr_version.scale = 0.5
assembling_machine.animation.layers[1].hr_version.animation_speed = 1.0666667
assembling_machine.animation.layers[2] = {}
assembling_machine.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/assembling_machine/assembling_machine_shadow.png"
assembling_machine.animation.layers[2].priority="high"
assembling_machine.animation.layers[2].draw_as_shadow = true
assembling_machine.animation.layers[2].width = 160
assembling_machine.animation.layers[2].height = 128
assembling_machine.animation.layers[2].frame_count = 32
assembling_machine.animation.layers[2].line_length = 8
assembling_machine.animation.layers[2].shift = {0.4375, -0.28125}
assembling_machine.animation.layers[2].animation_speed = 1.0666667
assembling_machine.animation.layers[2].hr_version = {}
assembling_machine.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/assembling_machine/hr_assembling_machine_shadow.png"
assembling_machine.animation.layers[2].hr_version.priority="high"
assembling_machine.animation.layers[2].hr_version.draw_as_shadow = true
assembling_machine.animation.layers[2].hr_version.width = 320
assembling_machine.animation.layers[2].hr_version.height = 256
assembling_machine.animation.layers[2].hr_version.frame_count = 32
assembling_machine.animation.layers[2].hr_version.line_length = 8
assembling_machine.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
assembling_machine.animation.layers[2].hr_version.scale = 0.5
assembling_machine.animation.layers[2].hr_version.animation_speed = 1.0666667
data:extend({assembling_machine})

local assembling_machine = table.deepcopy(assembling_machine)
assembling_machine.name = "apm_assembling_machine_1"
assembling_machine.icons = {
    apm.lib.utils.icon.dynamics.machine.t1,
    apm.lib.utils.icon.dynamics.lable_a
}
assembling_machine.icon_size = 32
assembling_machine.minable = {mining_time = 0.2, result = "apm_assembling_machine_1"}
assembling_machine.crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid", "basic-crafting"}
assembling_machine.crafting_speed = 0.75
assembling_machine.energy_usage = "200kW"
assembling_machine.module_specification = {module_slots = 1}
assembling_machine.allowed_effects = {"consumption", "speed", "productivity", "pollution"} 
assembling_machine.fast_replaceable_group = "assembling-machine"
assembling_machine.next_upgrade = "assembling-machine-1"
assembling_machine.light = nil
assembling_machine.energy_source = {}
assembling_machine.energy_source.type = "fluid"
assembling_machine.energy_source.fluid_box = {}
assembling_machine.energy_source.fluid_box.production_type = "input"
assembling_machine.energy_source.fluid_box.pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
assembling_machine.energy_source.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
assembling_machine.energy_source.fluid_box.base_area = 1
assembling_machine.energy_source.fluid_box.pipe_connections = {{ type="input", position = {0, -2}},
                                                               --{ type="input-output", position = {2, 0}},
                                                               --{ type="input-output", position = {0, 2}},
                                                               --{ type="input-output", position = {-2, 0}}
                                                            }
assembling_machine.energy_source.fluid_box.secondary_draw_orders = {north = -1}
assembling_machine.energy_source.fluid_box.filter = "steam"
assembling_machine.energy_source.minimum_temperature = 100.0
assembling_machine.energy_source.maximum_temperature = 1000.0
assembling_machine.energy_source.burns_fluid = false
assembling_machine.energy_source.scale_fluid_usage = true
assembling_machine.energy_source.emissions_per_minute = 2.5
assembling_machine.energy_source.smoke = {}
assembling_machine.energy_source.smoke[1] = {}
assembling_machine.energy_source.smoke[1].name = "light-smoke"
assembling_machine.energy_source.smoke[1].deviation = {0.1, 0.1}
assembling_machine.energy_source.smoke[1].frequency = 12
assembling_machine.energy_source.smoke[1].position = nil
assembling_machine.energy_source.smoke[1].north_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].south_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].east_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].west_position = {-0.77, -1.95}
assembling_machine.energy_source.smoke[1].starting_vertical_speed = 0.08
assembling_machine.energy_source.smoke[1].starting_frame_deviation = 60
assembling_machine.energy_source.smoke[1].slow_down_factor = 1
assembling_machine.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/assembling_machine/assembling_machine_1.png"
assembling_machine.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/assembling_machine/hr_assembling_machine_1.png"
assembling_machine.fluid_boxes = {}
assembling_machine.fluid_boxes[1] = {}
assembling_machine.fluid_boxes[1].production_type = "output"
assembling_machine.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
assembling_machine.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
assembling_machine.fluid_boxes[1].base_area = 1
assembling_machine.fluid_boxes[1].base_level = 1
assembling_machine.fluid_boxes[1].pipe_connections = {{ type="output", position = {2, 0} }}
assembling_machine.fluid_boxes[1].secondary_draw_orders = { north = -1 }
assembling_machine.fluid_boxes[2] = {}
assembling_machine.fluid_boxes[2].production_type = "input"
assembling_machine.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
assembling_machine.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
assembling_machine.fluid_boxes[2].base_area = 1
assembling_machine.fluid_boxes[2].base_level = -1
assembling_machine.fluid_boxes[2].pipe_connections = {{ type="input", position = {-2, 0} }}
assembling_machine.fluid_boxes[2].secondary_draw_orders = { north = -1 }
assembling_machine.fluid_boxes.off_when_no_fluid_recipe = true
data:extend({assembling_machine})