require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/crushers.lua')
log('-------------------------------------------------------')

local crusher = {}
crusher.type = "assembling-machine"
crusher.name = "apm_crusher_machine_0"
crusher.icons = {
    apm.lib.utils.icon.dynamics.machine.t0,
    apm.lib.utils.icon.dynamics.lable_c
}
crusher.icon_size = 32
crusher.flags = {"placeable-neutral", "placeable-player", "player-creation"}
crusher.minable = {mining_time = 0.1, result = "apm_crusher_machine_0"}
crusher.crafting_categories = {"apm_crusher"}
crusher.crafting_speed = 0.5
crusher.fast_replaceable_group = "apm_power_crusher_machine"
crusher.next_upgrade = "apm_crusher_machine_1"
crusher.max_health = 250
crusher.corpse = "big-remnants"
crusher.dying_explosion = "medium-explosion"
crusher.resistances = {{type = "fire", percent = 90}}
crusher.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
crusher.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
crusher.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
crusher.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
crusher.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
crusher.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
crusher.working_sound = {}
crusher.working_sound.sound = {{filename = "__base__/sound/burner-mining-drill.ogg", volume = 1.0}}
crusher.working_sound.idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 }
crusher.working_sound.apparent_volume = 1.5
crusher.energy_usage = "130kW"
crusher.module_specification = nil
crusher.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
crusher.energy_source = {}
crusher.energy_source.type = "burner"
crusher.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
crusher.energy_source.effectivity = 1
crusher.energy_source.fuel_inventory_size = 1
crusher.energy_source.burnt_inventory_size = 1
crusher.energy_source.emissions_per_minute = 5
crusher.energy_source.smoke = {}
crusher.energy_source.smoke[1] = {}
crusher.energy_source.smoke[1].name = "apm_dark_smoke"
crusher.energy_source.smoke[1].deviation = {0.1, 0.1}
crusher.energy_source.smoke[1].frequency = 6
crusher.energy_source.smoke[1].north_position = {0.35, -1.95}
crusher.energy_source.smoke[1].south_position ={0.35, -1.95}
crusher.energy_source.smoke[1].east_position = {0.35, -1.95}
crusher.energy_source.smoke[1].west_position = {0.35, -1.95}
crusher.energy_source.smoke[1].starting_vertical_speed = 0.08
crusher.energy_source.smoke[1].starting_frame_deviation = 60
crusher.energy_source.smoke[1].slow_down_factor = 1
crusher.animation = {}
crusher.animation.layers = {}
crusher.animation.layers[1] = {}
crusher.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/crusher/crusher_0.png"
crusher.animation.layers[1].priority="high"
crusher.animation.layers[1].width = 160
crusher.animation.layers[1].height = 128
crusher.animation.layers[1].frame_count = 32
crusher.animation.layers[1].line_length = 8
crusher.animation.layers[1].shift = {0.4375, -0.28125}
crusher.animation.layers[1].animation_speed = 1.0666667
crusher.animation.layers[1].hr_version = {}
crusher.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/crusher/hr_crusher_0.png"
crusher.animation.layers[1].hr_version.priority="high"
crusher.animation.layers[1].hr_version.width = 320
crusher.animation.layers[1].hr_version.height = 256
crusher.animation.layers[1].hr_version.frame_count = 32
crusher.animation.layers[1].hr_version.line_length = 8
crusher.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
crusher.animation.layers[1].hr_version.scale = 0.5
crusher.animation.layers[1].hr_version.animation_speed = 1.0666667
crusher.animation.layers[2] = {}
crusher.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/crusher/crusher_shadow.png"
crusher.animation.layers[2].priority="high"
crusher.animation.layers[2].draw_as_shadow = true
crusher.animation.layers[2].width = 160
crusher.animation.layers[2].height = 128
crusher.animation.layers[2].frame_count = 32
crusher.animation.layers[2].line_length = 8
crusher.animation.layers[2].shift = {0.4375, -0.28125}
crusher.animation.layers[2].animation_speed = 1.0666667
crusher.animation.layers[2].hr_version = {}
crusher.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/crusher/hr_crusher_shadow.png"
crusher.animation.layers[2].hr_version.priority="high"
crusher.animation.layers[2].hr_version.draw_as_shadow = true
crusher.animation.layers[2].hr_version.width = 320
crusher.animation.layers[2].hr_version.height = 256
crusher.animation.layers[2].hr_version.frame_count = 32
crusher.animation.layers[2].hr_version.line_length = 8
crusher.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
crusher.animation.layers[2].hr_version.scale = 0.5
crusher.animation.layers[2].hr_version.animation_speed = 1.0666667
data:extend({crusher})

local crusher = table.deepcopy(crusher)
crusher.name = "apm_crusher_machine_1"
crusher.icons = {
    apm.lib.utils.icon.dynamics.machine.t1,
    apm.lib.utils.icon.dynamics.lable_c
}
crusher.icon_size = 32
crusher.minable = {mining_time = 0.2, result = "apm_crusher_machine_1"}
crusher.light = nil
crusher.crafting_categories = {"apm_crusher", "apm_crusher_with_fluid"}
crusher.crafting_speed = 1
crusher.fast_replaceable_group = "apm_power_crusher_machine"
crusher.next_upgrade = 'apm_crusher_machine_2'
crusher.energy_usage = "200kW"
crusher.module_specification = {module_slots = 1}
crusher.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
crusher.energy_source = {}
crusher.energy_source.type = "fluid"
crusher.energy_source.fluid_box = {}
crusher.energy_source.fluid_box.production_type = "input"
crusher.energy_source.fluid_box.pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
crusher.energy_source.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
crusher.energy_source.fluid_box.base_area = 1
crusher.energy_source.fluid_box.pipe_connections = {{ type="input", position = {0, -2}},
                                                    --{ type="input-output", position = {2, 0}},
                                                    --{ type="input-output", position = {0, 2}},
                                                    --{ type="input-output", position = {-2, 0}}
                                                }
crusher.energy_source.fluid_box.secondary_draw_orders = {north = -1}
crusher.energy_source.fluid_box.filter = "steam"
crusher.energy_source.minimum_temperature = 100.0
crusher.energy_source.maximum_temperature = 1000.0
crusher.energy_source.burns_fluid = false
crusher.energy_source.scale_fluid_usage = true
crusher.energy_source.emissions_per_minute = 2.5
crusher.energy_source.smoke = {}
crusher.energy_source.smoke[1] = {}
crusher.energy_source.smoke[1].name = "light-smoke"
crusher.energy_source.smoke[1].deviation = {0.1, 0.1}
crusher.energy_source.smoke[1].frequency = 12
crusher.energy_source.smoke[1].position = nil
crusher.energy_source.smoke[1].north_position = {0.35, -1.95}
crusher.energy_source.smoke[1].south_position ={0.35, -1.95}
crusher.energy_source.smoke[1].east_position = {0.35, -1.95}
crusher.energy_source.smoke[1].west_position = {0.35, -1.95}
crusher.energy_source.smoke[1].starting_vertical_speed = 0.08
crusher.energy_source.smoke[1].starting_frame_deviation = 60
crusher.energy_source.smoke[1].slow_down_factor = 1
crusher.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/crusher/crusher_1.png"
crusher.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/crusher/hr_crusher_1.png"
crusher.fluid_boxes = {}
crusher.fluid_boxes[1] = {}
crusher.fluid_boxes[1].production_type = "input"
crusher.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
crusher.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
crusher.fluid_boxes[1].base_area = 1
crusher.fluid_boxes[1].base_level = -1
crusher.fluid_boxes[1].pipe_connections = {{ type="input", position = {2, 0} }}
crusher.fluid_boxes[1].secondary_draw_orders = { north = -1 }
crusher.fluid_boxes[2] = {}
crusher.fluid_boxes[2].production_type = "output"
crusher.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
crusher.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
crusher.fluid_boxes[2].base_area = 1
crusher.fluid_boxes[2].base_level = 1
crusher.fluid_boxes[2].pipe_connections = {{ type="output", position = {-2, 0} }}
crusher.fluid_boxes[2].secondary_draw_orders = { north = -1 }
crusher.fluid_boxes.off_when_no_fluid_recipe = true
data:extend({crusher})

local crusher = table.deepcopy(crusher)
crusher.name = "apm_crusher_machine_2"
crusher.icons = {
    apm.lib.utils.icon.dynamics.machine.t2,
    apm.lib.utils.icon.dynamics.lable_c
}
crusher.icon_size = 32
crusher.minable = {mining_time = 0.2, result = "apm_crusher_machine_2"}
crusher.light = nil
crusher.crafting_categories = {"apm_crusher", "apm_crusher_with_fluid", "apm_crusher_with_tool"}
crusher.crafting_speed = 1.5
crusher.fast_replaceable_group = "apm_power_crusher_machine"
crusher.next_upgrade = nil
crusher.energy_usage = "300kW"
crusher.module_specification = {module_slots = 2}
crusher.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
crusher.energy_source = {}
crusher.energy_source.type = 'electric'
crusher.energy_source.usage_priority = "secondary-input"
crusher.energy_source.emissions_per_minute = 1.25
crusher.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/crusher/crusher_2.png"
crusher.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/crusher/crusher_shadow_electric.png"
crusher.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/crusher/hr_crusher_2.png"
crusher.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/crusher/hr_crusher_shadow_electric.png"
crusher.fluid_boxes = {}
crusher.fluid_boxes[1] = {}
crusher.fluid_boxes[1].production_type = "input"
crusher.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
crusher.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
crusher.fluid_boxes[1].base_area = 1
crusher.fluid_boxes[1].base_level = -1
crusher.fluid_boxes[1].pipe_connections = {{ type="input", position = {2, 0} }}
crusher.fluid_boxes[1].secondary_draw_orders = { north = -1 }
crusher.fluid_boxes[2] = {}
crusher.fluid_boxes[2].production_type = "output"
crusher.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
crusher.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
crusher.fluid_boxes[2].base_area = 1
crusher.fluid_boxes[2].base_level = 1
crusher.fluid_boxes[2].pipe_connections = {{ type="output", position = {-2, 0} }}
crusher.fluid_boxes[2].secondary_draw_orders = { north = -1 }
crusher.fluid_boxes.off_when_no_fluid_recipe = true 
data:extend({crusher})