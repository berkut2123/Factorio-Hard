require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/centrifuges.lua')
log('-------------------------------------------------------')

local centrifuge = {}
centrifuge.type = "assembling-machine"
centrifuge.name = "apm_centrifuge_0"
centrifuge.icons = {
    apm.lib.utils.icon.dynamics.machine.t0,
    apm.lib.utils.icon.dynamics.lable_ce
}
centrifuge.icon_size = 32
centrifuge.flags = {"placeable-neutral", "placeable-player", "player-creation"}
centrifuge.minable = {mining_time = 0.2, result = "apm_centrifuge_0"}
centrifuge.crafting_categories = {"apm_centrifuge_0"}
centrifuge.crafting_speed = 1
centrifuge.fast_replaceable_group = "apm_centrifuge"
centrifuge.next_upgrade = 'apm_centrifuge_1'
centrifuge.max_health = 250
centrifuge.corpse = "big-remnants"
centrifuge.dying_explosion = "medium-explosion"
centrifuge.resistances = {{type = "fire", percent = 90}}
centrifuge.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
centrifuge.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
centrifuge.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
centrifuge.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
centrifuge.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
centrifuge.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
centrifuge.working_sound = {}
centrifuge.working_sound.sound = {{filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8},
                                          {filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8}}
centrifuge.working_sound.idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 }
centrifuge.working_sound.apparent_volume = 1.5
centrifuge.energy_usage = "250kW"
centrifuge.module_specification = nil
centrifuge.allowed_effects = {"consumption", "pollution", "speed"}
centrifuge.energy_source = {}
centrifuge.energy_source.type = "burner"
centrifuge.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
centrifuge.energy_source.effectivity = 1
centrifuge.energy_source.fuel_inventory_size = 1
centrifuge.energy_source.burnt_inventory_size = 1
centrifuge.energy_source.emissions_per_minute = 5
centrifuge.energy_source.smoke = {}
centrifuge.energy_source.smoke[1] = {}
centrifuge.energy_source.smoke[1].name = "apm_dark_smoke"
centrifuge.energy_source.smoke[1].deviation = {0.1, 0.1}
centrifuge.energy_source.smoke[1].frequency = 5
centrifuge.energy_source.smoke[1].position = nil
centrifuge.energy_source.smoke[1].north_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].south_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].east_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].west_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].starting_vertical_speed = 0.08
centrifuge.energy_source.smoke[1].starting_frame_deviation = 60
centrifuge.energy_source.smoke[1].slow_down_factor = 1
centrifuge.animation = {}
centrifuge.animation.layers = {}
centrifuge.animation.layers[1] = {}
centrifuge.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/centrifuge/centrifuge_0.png"
centrifuge.animation.layers[1].priority="high"
centrifuge.animation.layers[1].width = 160
centrifuge.animation.layers[1].height = 128
centrifuge.animation.layers[1].frame_count = 32
centrifuge.animation.layers[1].line_length = 8
centrifuge.animation.layers[1].shift = {0.4375, -0.28125}
centrifuge.animation.layers[1].animation_speed = 1.0666667
centrifuge.animation.layers[1].hr_version = {}
centrifuge.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/centrifuge/hr_centrifuge_0.png"
centrifuge.animation.layers[1].hr_version.priority="high"
centrifuge.animation.layers[1].hr_version.width = 320
centrifuge.animation.layers[1].hr_version.height = 256
centrifuge.animation.layers[1].hr_version.frame_count = 32
centrifuge.animation.layers[1].hr_version.line_length = 8
centrifuge.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
centrifuge.animation.layers[1].hr_version.scale = 0.5
centrifuge.animation.layers[1].hr_version.animation_speed = 1.0666667
centrifuge.animation.layers[2] = {}
centrifuge.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/centrifuge/centrifuge_shadow.png"
centrifuge.animation.layers[2].priority="high"
centrifuge.animation.layers[2].draw_as_shadow = true
centrifuge.animation.layers[2].width = 160
centrifuge.animation.layers[2].height = 128
centrifuge.animation.layers[2].frame_count = 32
centrifuge.animation.layers[2].line_length = 8
centrifuge.animation.layers[2].shift = {0.4375, -0.28125}
centrifuge.animation.layers[2].animation_speed = 1.0666667
centrifuge.animation.layers[2].hr_version = {}
centrifuge.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/centrifuge/hr_centrifuge_shadow.png"
centrifuge.animation.layers[2].hr_version.priority="high"
centrifuge.animation.layers[2].hr_version.draw_as_shadow = true
centrifuge.animation.layers[2].hr_version.width = 320
centrifuge.animation.layers[2].hr_version.height = 256
centrifuge.animation.layers[2].hr_version.frame_count = 32
centrifuge.animation.layers[2].hr_version.line_length = 8
centrifuge.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
centrifuge.animation.layers[2].hr_version.scale = 0.5
centrifuge.animation.layers[2].hr_version.animation_speed = 1.0666667
centrifuge.fluid_boxes = {}
centrifuge.fluid_boxes[1] = {}
centrifuge.fluid_boxes[1].production_type = "input"
centrifuge.fluid_boxes[1].pipe_picture = assembler1pipepictures()
centrifuge.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
centrifuge.fluid_boxes[1].base_area = 1
centrifuge.fluid_boxes[1].base_level = -1
centrifuge.fluid_boxes[1].pipe_connections = {{ type="input", position = {-2, 0} }}
centrifuge.fluid_boxes[1].secondary_draw_orders = { north = -1 }
centrifuge.fluid_boxes[2] = {}
centrifuge.fluid_boxes[2].production_type = "output"
centrifuge.fluid_boxes[2].pipe_picture = assembler1pipepictures()
centrifuge.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
centrifuge.fluid_boxes[2].base_area = 1
centrifuge.fluid_boxes[2].base_level = 1
centrifuge.fluid_boxes[2].pipe_connections = {{ type="output", position = {2, 0} }}
centrifuge.fluid_boxes[2].secondary_draw_orders = { north = -1 }
centrifuge.fluid_boxes.off_when_no_fluid_recipe = true
data:extend({centrifuge})


local centrifuge = table.deepcopy(centrifuge)
centrifuge.name = "apm_centrifuge_1"
centrifuge.icons = {
    apm.lib.utils.icon.dynamics.machine.t1,
    apm.lib.utils.icon.dynamics.lable_ce
}
centrifuge.icon_size = 32
centrifuge.flags = {"placeable-neutral", "placeable-player", "player-creation"}
centrifuge.minable = {mining_time = 0.2, result = "apm_centrifuge_1"}
centrifuge.crafting_categories = {"apm_centrifuge_0", "apm_centrifuge_1"}
centrifuge.crafting_speed = 1.5
centrifuge.fast_replaceable_group = "apm_centrifuge"
centrifuge.next_upgrade = 'apm_centrifuge_2'
centrifuge.energy_usage = "350kW"
centrifuge.module_specification = {module_slots = 1}
centrifuge.allowed_effects = {"consumption", "pollution", "speed"}
centrifuge.energy_source = {}
centrifuge.energy_source.type = "fluid"
centrifuge.energy_source.fluid_box = {}
centrifuge.energy_source.fluid_box.production_type = "input"
centrifuge.energy_source.fluid_box.pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
centrifuge.energy_source.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
centrifuge.energy_source.fluid_box.base_area = 1
centrifuge.energy_source.fluid_box.base_level = -1
centrifuge.energy_source.fluid_box.pipe_connections = {{ type="input", position = {0, -2} }}
centrifuge.energy_source.fluid_box.secondary_draw_orders = { north = -1 }
centrifuge.energy_source.fluid_box.filter = "steam"
centrifuge.energy_source.minimum_temperature = 100.0
centrifuge.energy_source.maximum_temperature = 1000.0
centrifuge.energy_source.burns_fluid = false
centrifuge.energy_source.scale_fluid_usage = true
centrifuge.energy_source.emissions_per_minute = 2.5
centrifuge.energy_source.smoke = {}
centrifuge.energy_source.smoke[1] = {}
centrifuge.energy_source.smoke[1].name = "light-smoke"
centrifuge.energy_source.smoke[1].deviation = {0.1, 0.1}
centrifuge.energy_source.smoke[1].frequency = 4
centrifuge.energy_source.smoke[1].position = nil
centrifuge.energy_source.smoke[1].north_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].south_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].east_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].west_position = {-0.77, -1.95}
centrifuge.energy_source.smoke[1].starting_vertical_speed = 0.08
centrifuge.energy_source.smoke[1].starting_frame_deviation = 60
centrifuge.energy_source.smoke[1].slow_down_factor = 1
centrifuge.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/centrifuge/centrifuge_1.png"
centrifuge.animation.layers[1].animation_speed = 1.0666667
centrifuge.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/centrifuge/hr_centrifuge_1.png"
centrifuge.animation.layers[1].hr_version.animation_speed = 1.0666667
centrifuge.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
centrifuge.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
centrifuge.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
centrifuge.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
data:extend({centrifuge})


local centrifuge = table.deepcopy(centrifuge)
centrifuge.name = "apm_centrifuge_2"
centrifuge.icons = {
    apm.lib.utils.icon.dynamics.machine.t2,
    apm.lib.utils.icon.dynamics.lable_ce
}
centrifuge.icon_size = 32
centrifuge.flags = {"placeable-neutral", "placeable-player", "player-creation"}
centrifuge.minable = {mining_time = 0.2, result = "apm_centrifuge_2"}
centrifuge.crafting_categories = {"apm_centrifuge_0", "apm_centrifuge_1", "apm_centrifuge_2"}
centrifuge.crafting_speed = 2
centrifuge.fast_replaceable_group = "apm_centrifuge"
centrifuge.next_upgrade = nil
centrifuge.energy_usage = "300kW"
centrifuge.module_specification = {module_slots = 2}
centrifuge.allowed_effects = {"consumption", "pollution", "speed"}
centrifuge.energy_source = {}
centrifuge.energy_source.type = 'electric'
centrifuge.energy_source.usage_priority = "secondary-input"
centrifuge.energy_source.emissions_per_minute = 1.25
centrifuge.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/centrifuge/centrifuge_2.png"
centrifuge.animation.layers[1].animation_speed = 0.53333335
centrifuge.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/centrifuge/hr_centrifuge_2.png"
centrifuge.animation.layers[1].hr_version.animation_speed = 0.53333335
centrifuge.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/centrifuge/centrifuge_shadow_2.png"
centrifuge.animation.layers[2].animation_speed = 0.53333335
centrifuge.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/centrifuge/hr_centrifuge_shadow_2.png"
centrifuge.animation.layers[2].hr_version.animation_speed = 0.53333335
centrifuge.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
centrifuge.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
centrifuge.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
centrifuge.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
data:extend({centrifuge})