require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/presses.lua')
log('-------------------------------------------------------')

local press = {}
press.type = "assembling-machine"
press.name = "apm_press_machine_0"
press.icons = {
    apm.lib.utils.icon.dynamics.machine.t0,
    apm.lib.utils.icon.dynamics.lable_p
}
press.icon_size = 32
press.flags = {"placeable-neutral", "placeable-player", "player-creation"}
press.minable = {mining_time = 0.1, result = "apm_press_machine_0"}
press.crafting_categories = {"apm_press"}
press.crafting_speed = 0.5
press.fast_replaceable_group = "apm_power_press_machine"
press.next_upgrade = "apm_press_machine_1"
press.max_health = 250
press.corpse = "big-remnants"
press.dying_explosion = "medium-explosion"
press.resistances = {{type = "fire", percent = 90}}
press.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
press.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
press.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
press.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
press.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
press.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
press.working_sound = {}
press.working_sound.sound = {{filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8},
                              {filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8}}
press.working_sound.idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 }
press.working_sound.apparent_volume = 1.5
press.energy_usage = "130kW"
press.module_specification = nil
press.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
press.energy_source = {}
press.energy_source.type = "burner"
press.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
press.energy_source.effectivity = 1
press.energy_source.fuel_inventory_size = 1
press.energy_source.burnt_inventory_size = 1
press.energy_source.emissions_per_minute = 5
press.energy_source.smoke = {}
press.energy_source.smoke[1] = {}
press.energy_source.smoke[1].name = "apm_dark_smoke"
press.energy_source.smoke[1].deviation = {0.1, 0.1}
press.energy_source.smoke[1].frequency = 6
press.energy_source.smoke[1].north_position = {-0.77, -1.95}
press.energy_source.smoke[1].south_position ={-0.77, -1.95}
press.energy_source.smoke[1].east_position = {-0.77, -1.95}
press.energy_source.smoke[1].west_position = {-0.77, -1.95}
press.energy_source.smoke[1].starting_vertical_speed = 0.08
press.energy_source.smoke[1].starting_frame_deviation = 60
press.energy_source.smoke[1].slow_down_factor = 1
press.animation = {}
press.animation.layers = {}
press.animation.layers[1] = {}
press.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/press/press_0.png"
press.animation.layers[1].priority="high"
press.animation.layers[1].width = 160
press.animation.layers[1].height = 128
press.animation.layers[1].frame_count = 64
press.animation.layers[1].line_length = 8
press.animation.layers[1].shift = {0.4375, -0.28125}
press.animation.layers[1].animation_speed = 1.0666667
press.animation.layers[1].hr_version = {}
press.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/press/hr_press_0.png"
press.animation.layers[1].hr_version.priority="high"
press.animation.layers[1].hr_version.width = 320
press.animation.layers[1].hr_version.height = 256
press.animation.layers[1].hr_version.frame_count = 64
press.animation.layers[1].hr_version.line_length = 8
press.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
press.animation.layers[1].hr_version.scale = 0.5
press.animation.layers[1].hr_version.animation_speed = 1.0666667
press.animation.layers[2] = {}
press.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/press/press_shadow.png"
press.animation.layers[2].priority="high"
press.animation.layers[2].draw_as_shadow = true
press.animation.layers[2].width = 160
press.animation.layers[2].height = 128
press.animation.layers[2].frame_count = 64
press.animation.layers[2].line_length = 8
press.animation.layers[2].shift = {0.4375, -0.28125}
press.animation.layers[2].animation_speed = 1.0666667
press.animation.layers[2].hr_version = {}
press.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/press/hr_press_shadow.png"
press.animation.layers[2].hr_version.priority="high"
press.animation.layers[2].hr_version.draw_as_shadow = true
press.animation.layers[2].hr_version.width = 320
press.animation.layers[2].hr_version.height = 256
press.animation.layers[2].hr_version.frame_count = 64
press.animation.layers[2].hr_version.line_length = 8
press.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
press.animation.layers[2].hr_version.scale = 0.5
press.animation.layers[2].hr_version.animation_speed = 1.0666667
data:extend({press})

local press = table.deepcopy(press)
press.name = "apm_press_machine_1"
press.icons = {
    apm.lib.utils.icon.dynamics.machine.t1,
    apm.lib.utils.icon.dynamics.lable_p
}
press.icon_size = 32
press.minable = {mining_time = 0.2, result = "apm_press_machine_1"}
press.light = nil
press.crafting_categories = {"apm_press", 'apm_press_with_fluid'}
press.crafting_speed = 1
press.fast_replaceable_group = "apm_power_press_machine"
press.next_upgrade = "apm_press_machine_2"
press.energy_usage = "200kW"
press.module_specification = {module_slots = 1}
press.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
press.energy_source = {}
press.energy_source.type = "fluid"
press.energy_source.fluid_box = {}
press.energy_source.fluid_box.production_type = "input"
press.energy_source.fluid_box.pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
press.energy_source.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
press.energy_source.fluid_box.base_area = 1
press.energy_source.fluid_box.pipe_connections = {{ type="input", position = {0, -2}},
                                                    --{ type="input-output", position = {2, 0}},
                                                    --{ type="input-output", position = {0, 2}},
                                                    --{ type="input-output", position = {-2, 0}}
                                                }
press.energy_source.fluid_box.secondary_draw_orders = {north = -1}
press.energy_source.fluid_box.filter = "steam"
press.energy_source.minimum_temperature = 100.0
press.energy_source.maximum_temperature = 1000.0
press.energy_source.burns_fluid = false
press.energy_source.scale_fluid_usage = true
press.energy_source.emissions_per_minute = 2.5
press.energy_source.smoke = {}
press.energy_source.smoke[1] = {}
press.energy_source.smoke[1].name = "light-smoke"
press.energy_source.smoke[1].deviation = {0.1, 0.1}
press.energy_source.smoke[1].frequency = 12
press.energy_source.smoke[1].position = nil
press.energy_source.smoke[1].north_position = {-0.77, -1.95}
press.energy_source.smoke[1].south_position ={-0.77, -1.95}
press.energy_source.smoke[1].east_position = {-0.77, -1.95}
press.energy_source.smoke[1].west_position = {-0.77, -1.95}
press.energy_source.smoke[1].starting_vertical_speed = 0.08
press.energy_source.smoke[1].starting_frame_deviation = 60
press.energy_source.smoke[1].slow_down_factor = 1
press.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/press/press_1.png"
press.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/press/hr_press_1.png"
press.fluid_boxes = {}
press.fluid_boxes[1] = {}
press.fluid_boxes[1].production_type = "input"
press.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
press.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
press.fluid_boxes[1].base_area = 1
press.fluid_boxes[1].base_level = -1
press.fluid_boxes[1].pipe_connections = {{ type="input", position = {2, 0} }}
press.fluid_boxes[1].secondary_draw_orders = { north = -1 }
press.fluid_boxes[2] = {}
press.fluid_boxes[2].production_type = "output"
press.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
press.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
press.fluid_boxes[2].base_area = 1
press.fluid_boxes[2].base_level = 1
press.fluid_boxes[2].pipe_connections = {{ type="output", position = {-2, 0} }}
press.fluid_boxes[2].secondary_draw_orders = { north = -1 }
press.fluid_boxes.off_when_no_fluid_recipe = true
data:extend({press})

local press = table.deepcopy(press)
press.name = "apm_press_machine_2"
press.icons = {
    apm.lib.utils.icon.dynamics.machine.t2,
    apm.lib.utils.icon.dynamics.lable_p
}
press.icon_size = 32
press.minable = {mining_time = 0.2, result = "apm_press_machine_2"}
press.light = nil
press.crafting_categories = {"apm_press", 'apm_press_with_fluid', 'apm_press_with_tool'}
press.crafting_speed = 1.5
press.fast_replaceable_group = "apm_power_press_machine"
press.next_upgrade = nil
press.energy_usage = "300kW"
press.module_specification = {module_slots = 2}
press.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
press.energy_source = {}
press.energy_source.type = 'electric'
press.energy_source.usage_priority = "secondary-input"
press.energy_source.emissions_per_minute = 1.25
press.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/press/press_2.png"
press.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/press/hr_press_2.png"
press.fluid_boxes = {}
press.fluid_boxes[1] = {}
press.fluid_boxes[1].production_type = "input"
press.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
press.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
press.fluid_boxes[1].base_area = 1
press.fluid_boxes[1].base_level = -1
press.fluid_boxes[1].pipe_connections = {{ type="input", position = {2, 0} }}
press.fluid_boxes[1].secondary_draw_orders = { north = -1}
press.fluid_boxes[2] = {}
press.fluid_boxes[2].production_type = "output"
press.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
press.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
press.fluid_boxes[2].base_area = 1
press.fluid_boxes[2].base_level = 1
press.fluid_boxes[2].pipe_connections = {{ type="output", position = {-2, 0} }}
press.fluid_boxes[2].secondary_draw_orders = { north = -1}
press.fluid_boxes.off_when_no_fluid_recipe = true 
data:extend({press})