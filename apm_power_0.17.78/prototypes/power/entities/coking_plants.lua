require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/coking_plants.lua')
log('-------------------------------------------------------')

local coking_plant = {}
coking_plant.type = "assembling-machine"
coking_plant.name = "apm_coking_plant_0"
coking_plant.icons = {
    apm.lib.utils.icon.dynamics.machine.t0,
    apm.lib.utils.icon.dynamics.lable_cp
}
coking_plant.icon_size = 32
coking_plant.flags = {"placeable-neutral", "placeable-player", "player-creation"}
coking_plant.minable = {mining_time = 0.2, result = "apm_coking_plant_0"}
coking_plant.crafting_categories = {"apm_coking"}
coking_plant.crafting_speed = 1
coking_plant.fast_replaceable_group = "apm_coking_plant"
coking_plant.next_upgrade = "apm_coking_plant_1"
coking_plant.max_health = 250
coking_plant.corpse = "big-remnants"
coking_plant.dying_explosion = "medium-explosion"
coking_plant.resistances = {{type = "fire", percent = 90}}
coking_plant.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
coking_plant.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
coking_plant.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
coking_plant.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
coking_plant.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
coking_plant.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
coking_plant.working_sound = {}
coking_plant.working_sound.sound = {{filename = "__base__/sound/furnace.ogg"}}
coking_plant.energy_usage = "260kW"
coking_plant.module_specification = nil
coking_plant.allowed_effects = {"consumption", "speed", "productivity", "pollution"} 
coking_plant.energy_source = {}
coking_plant.energy_source.type = "burner"
coking_plant.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
coking_plant.energy_source.effectivity = 1
coking_plant.energy_source.fuel_inventory_size = 1
coking_plant.energy_source.burnt_inventory_size = 1
coking_plant.energy_source.emissions_per_minute = 8
coking_plant.energy_source.smoke = {}
coking_plant.energy_source.smoke[1] = {}
coking_plant.energy_source.smoke[1].name = "apm_dark_smoke"
coking_plant.energy_source.smoke[1].deviation = {0.1, 0.1}
coking_plant.energy_source.smoke[1].frequency = 5
coking_plant.energy_source.smoke[1].north_position = {-0.77, -0.55}
coking_plant.energy_source.smoke[1].south_position = {-0.77, -0.55}
coking_plant.energy_source.smoke[1].east_position = {-0.77, -0.55}
coking_plant.energy_source.smoke[1].west_position = {-0.77, -0.55}
coking_plant.energy_source.smoke[1].starting_vertical_speed = 0.08
coking_plant.energy_source.smoke[1].starting_frame_deviation = 60
coking_plant.energy_source.smoke[1].slow_down_factor = 1
coking_plant.energy_source.smoke[2] = {}
coking_plant.energy_source.smoke[2].name = "apm_dark_smoke"
coking_plant.energy_source.smoke[2].deviation = {0.1, 0.1}
coking_plant.energy_source.smoke[2].frequency = 7
coking_plant.energy_source.smoke[2].north_position = {-0.77, -1.15}
coking_plant.energy_source.smoke[2].south_position = {-0.77, -1.15}
coking_plant.energy_source.smoke[2].east_position = {-0.77, -1.15}
coking_plant.energy_source.smoke[2].west_position = {-0.77, -1.15}
coking_plant.energy_source.smoke[2].starting_vertical_speed = 0.08
coking_plant.energy_source.smoke[2].starting_frame_deviation = 60
coking_plant.energy_source.smoke[2].slow_down_factor = 1
coking_plant.energy_source.smoke[3] = {}
coking_plant.energy_source.smoke[3].name = "apm_dark_smoke"
coking_plant.energy_source.smoke[3].deviation = {0.1, 0.1}
coking_plant.energy_source.smoke[3].frequency = 6
coking_plant.energy_source.smoke[3].north_position = {-0.77, -1.75}
coking_plant.energy_source.smoke[3].south_position = {-0.77, -1.75}
coking_plant.energy_source.smoke[3].east_position = {-0.77, -1.75}
coking_plant.energy_source.smoke[3].west_position = {-0.77, -1.75}
coking_plant.energy_source.smoke[3].starting_vertical_speed = 0.08
coking_plant.energy_source.smoke[3].starting_frame_deviation = 60
coking_plant.energy_source.smoke[3].slow_down_factor = 1
coking_plant.animation = {}
coking_plant.animation.layers = {}
coking_plant.animation.layers[1] = {}
coking_plant.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/coking_plant/coking_plant_0.png"
coking_plant.animation.layers[1].priority="high"
coking_plant.animation.layers[1].width = 160
coking_plant.animation.layers[1].height = 128
coking_plant.animation.layers[1].frame_count = 16
coking_plant.animation.layers[1].line_length = 8
coking_plant.animation.layers[1].shift = {0.4375, -0.28125}
coking_plant.animation.layers[1].animation_speed = 0.26666667
coking_plant.animation.layers[1].hr_version = {}
coking_plant.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/coking_plant/hr_coking_plant_0.png"
coking_plant.animation.layers[1].hr_version.priority="high"
coking_plant.animation.layers[1].hr_version.width = 320
coking_plant.animation.layers[1].hr_version.height = 256
coking_plant.animation.layers[1].hr_version.frame_count = 16
coking_plant.animation.layers[1].hr_version.line_length = 8
coking_plant.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
coking_plant.animation.layers[1].hr_version.scale = 0.5
coking_plant.animation.layers[1].hr_version.animation_speed = 0.26666667
coking_plant.animation.layers[2] = {}
coking_plant.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/coking_plant/coking_plant_shadow.png"
coking_plant.animation.layers[2].priority="high"
coking_plant.animation.layers[2].draw_as_shadow = true
coking_plant.animation.layers[2].width = 160
coking_plant.animation.layers[2].height = 128
coking_plant.animation.layers[2].frame_count = 16
coking_plant.animation.layers[2].line_length = 8
coking_plant.animation.layers[2].shift = {0.4375, -0.28125}
coking_plant.animation.layers[2].animation_speed = 0.26666667
coking_plant.animation.layers[2].hr_version = {}
coking_plant.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/coking_plant/hr_coking_plant_shadow.png"
coking_plant.animation.layers[2].hr_version.priority="high"
coking_plant.animation.layers[2].hr_version.draw_as_shadow = true
coking_plant.animation.layers[2].hr_version.width = 320
coking_plant.animation.layers[2].hr_version.height = 256
coking_plant.animation.layers[2].hr_version.frame_count = 16
coking_plant.animation.layers[2].hr_version.line_length = 8
coking_plant.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
coking_plant.animation.layers[2].hr_version.scale = 0.5
coking_plant.animation.layers[2].hr_version.animation_speed = 0.26666667
coking_plant.idle_animation = {}
coking_plant.idle_animation.layers = {}
coking_plant.idle_animation.layers[1] = {}
coking_plant.idle_animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/coking_plant/coking_plant_idle_0.png"
coking_plant.idle_animation.layers[1].priority="high"
coking_plant.idle_animation.layers[1].width = 160
coking_plant.idle_animation.layers[1].height = 128
coking_plant.idle_animation.layers[1].frame_count = 16
coking_plant.idle_animation.layers[1].line_length = 8
coking_plant.idle_animation.layers[1].shift = {0.4375, -0.28125}
coking_plant.idle_animation.layers[1].animation_speed = 0.26666667
coking_plant.idle_animation.layers[1].hr_version = {}
coking_plant.idle_animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/coking_plant/hr_coking_plant_idle_0.png"
coking_plant.idle_animation.layers[1].hr_version.priority="high"
coking_plant.idle_animation.layers[1].hr_version.width = 320
coking_plant.idle_animation.layers[1].hr_version.height = 256
coking_plant.idle_animation.layers[1].hr_version.frame_count = 16
coking_plant.idle_animation.layers[1].hr_version.line_length = 8
coking_plant.idle_animation.layers[1].hr_version.shift = {0.4375, -0.28125}
coking_plant.idle_animation.layers[1].hr_version.scale = 0.5
coking_plant.idle_animation.layers[1].hr_version.animation_speed = 0.26666667
coking_plant.idle_animation.layers[2] = coking_plant.animation.layers[2]
coking_plant.fluid_boxes = {}
coking_plant.fluid_boxes[1] = {}
coking_plant.fluid_boxes[1].production_type = "input"
coking_plant.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
coking_plant.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
coking_plant.fluid_boxes[1].base_area = 10
coking_plant.fluid_boxes[1].base_level = -1
coking_plant.fluid_boxes[1].pipe_connections = {{ type="input", position = {0, 2} }}
coking_plant.fluid_boxes[1].secondary_draw_orders = { north = -1, south = 1 }
coking_plant.fluid_boxes[2] = {}
coking_plant.fluid_boxes[2].production_type = "output"
coking_plant.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
coking_plant.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
coking_plant.fluid_boxes[2].base_area = 10
coking_plant.fluid_boxes[2].base_level = 1
coking_plant.fluid_boxes[2].pipe_connections = {{ type="output", position = {0, -2} }}
coking_plant.fluid_boxes[2].secondary_draw_orders = { north = -1, south = 1  }
coking_plant.fluid_boxes[3] = {}
coking_plant.fluid_boxes[3].production_type = "output"
coking_plant.fluid_boxes[3].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
coking_plant.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
coking_plant.fluid_boxes[3].base_area = 10
coking_plant.fluid_boxes[3].base_level = 1
coking_plant.fluid_boxes[3].pipe_connections = {{ type="output", position = {2, 0} }}
coking_plant.fluid_boxes[3].secondary_draw_orders = { north = -1, south = 1  }
coking_plant.fluid_boxes[4] = {}
coking_plant.fluid_boxes[4].production_type = "output"
coking_plant.fluid_boxes[4].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
coking_plant.fluid_boxes[4].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
coking_plant.fluid_boxes[4].base_area = 10
coking_plant.fluid_boxes[4].base_level = 1
coking_plant.fluid_boxes[4].pipe_connections = {{ type="output", position = {-2, 0} }}
coking_plant.fluid_boxes[4].secondary_draw_orders = { north = -1, south = 1  }
coking_plant.fluid_boxes.off_when_no_fluid_recipe = true
data:extend({coking_plant})

local coking_plant = table.deepcopy(coking_plant)
coking_plant.name = "apm_coking_plant_1"
coking_plant.icons = {
    apm.lib.utils.icon.dynamics.machine.t1,
    apm.lib.utils.icon.dynamics.lable_cp
}
coking_plant.icon_size = 32
coking_plant.minable = {mining_time = 0.2, result = "apm_coking_plant_1"}
coking_plant.crafting_speed = 1.5
coking_plant.crafting_categories = {"apm_coking", "apm_coking_2"}
coking_plant.next_upgrade = 'apm_coking_plant_2'
coking_plant.energy_usage = "350kW"
coking_plant.module_specification = {module_slots = 1}
coking_plant.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
coking_plant.energy_source.fuel_categories = {'apm_refined_chemical'}
coking_plant.energy_source.emissions_per_minute = 6.5
coking_plant.energy_source.smoke[1].frequency = 7
coking_plant.energy_source.smoke[2].frequency = 9
coking_plant.energy_source.smoke[3].frequency = 8
coking_plant.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/coking_plant/coking_plant_1.png"
coking_plant.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/coking_plant/hr_coking_plant_1.png"
coking_plant.idle_animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/coking_plant/coking_plant_idle_1.png"
coking_plant.idle_animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/coking_plant/hr_coking_plant_idle_1.png"
coking_plant.animation.layers[1].animation_speed = 0.17777778
coking_plant.animation.layers[1].hr_version.animation_speed = 0.17777778
coking_plant.animation.layers[2].animation_speed = 0.17777778
coking_plant.animation.layers[2].hr_version.animation_speed = 0.17777778
coking_plant.idle_animation.layers[1].animation_speed = 0.17777778
coking_plant.idle_animation.layers[1].hr_version.animation_speed = 0.17777778
coking_plant.idle_animation.layers[2].animation_speed = 0.17777778
coking_plant.idle_animation.layers[2].hr_version.animation_speed = 0.17777778
data:extend({coking_plant})

local coking_plant = table.deepcopy(coking_plant)
coking_plant.name = "apm_coking_plant_2"
coking_plant.icons = {
    apm.lib.utils.icon.dynamics.machine.t2,
    apm.lib.utils.icon.dynamics.lable_cp
}
coking_plant.icon_size = 32
coking_plant.minable = {mining_time = 0.2, result = "apm_coking_plant_2"}
coking_plant.crafting_speed = 2
coking_plant.crafting_categories = {"apm_coking", "apm_coking_2", "apm_coking_3"}
coking_plant.next_upgrade = nil
coking_plant.energy_usage = "450kW"
coking_plant.module_specification = {module_slots = 2}
coking_plant.allowed_effects = {"consumption", "speed", "productivity", "pollution"} 
coking_plant.energy_source.fuel_categories = {'apm_refined_chemical'}
coking_plant.energy_source.emissions_per_minute = 5
coking_plant.energy_source.smoke[1].frequency = 4
coking_plant.energy_source.smoke[2].frequency = 5
coking_plant.energy_source.smoke[3].frequency = 4
coking_plant.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/coking_plant/coking_plant_2.png"
coking_plant.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/coking_plant/hr_coking_plant_2.png"
coking_plant.idle_animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/coking_plant/coking_plant_idle_2.png"
coking_plant.idle_animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/coking_plant/hr_coking_plant_idle_2.png"
coking_plant.animation.layers[1].animation_speed = 0.133333335
coking_plant.animation.layers[1].hr_version.animation_speed = 0.133333335
coking_plant.animation.layers[2].animation_speed = 0.133333335
coking_plant.animation.layers[2].hr_version.animation_speed = 0.133333335
coking_plant.idle_animation.layers[1].animation_speed = 0.133333335
coking_plant.idle_animation.layers[1].hr_version.animation_speed = 0.133333335
coking_plant.idle_animation.layers[2].animation_speed = 0.133333335
coking_plant.idle_animation.layers[2].hr_version.animation_speed = 0.133333335
coking_plant.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
coking_plant.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
coking_plant.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
coking_plant.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
coking_plant.fluid_boxes[3].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
coking_plant.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
coking_plant.fluid_boxes[4].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
coking_plant.fluid_boxes[4].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
data:extend({coking_plant})