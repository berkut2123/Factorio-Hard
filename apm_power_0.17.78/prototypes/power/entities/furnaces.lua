require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/furnaces.lua')
log('-------------------------------------------------------')

local puddling_furnace = {}
puddling_furnace.type = "assembling-machine"
puddling_furnace.name = "apm_puddling_furnace_0"
puddling_furnace.icons = {
    apm.lib.utils.icon.dynamics.machine.t0,
    apm.lib.utils.icon.dynamics.lable_pf
}
puddling_furnace.icon_size = 32
puddling_furnace.flags = {"placeable-neutral", "placeable-player", "player-creation"}
puddling_furnace.minable = {mining_time = 0.2, result = "apm_puddling_furnace_0"}
puddling_furnace.crafting_categories = {"apm_puddling_furnace"}
puddling_furnace.crafting_speed = 1
puddling_furnace.fast_replaceable_group = "apm_steelworks"
puddling_furnace.next_upgrade = "apm_steelworks_0"
puddling_furnace.max_health = 250
puddling_furnace.corpse = "big-remnants"
puddling_furnace.dying_explosion = "medium-explosion"
puddling_furnace.resistances = {{type = "fire", percent = 90}}
puddling_furnace.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
puddling_furnace.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
puddling_furnace.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
puddling_furnace.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
puddling_furnace.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
puddling_furnace.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
puddling_furnace.working_sound = {}
puddling_furnace.working_sound.sound = {{filename = "__base__/sound/electric-furnace.ogg"}}
puddling_furnace.energy_usage = "560kW"
puddling_furnace.module_specification = nil
puddling_furnace.allowed_effects = {"consumption", "pollution", "speed"}
puddling_furnace.energy_source = {}
puddling_furnace.energy_source.type = "burner"
puddling_furnace.energy_source.fuel_categories = {'apm_refined_chemical'}
puddling_furnace.energy_source.effectivity = 1
puddling_furnace.energy_source.fuel_inventory_size = 1
puddling_furnace.energy_source.burnt_inventory_size = 1
puddling_furnace.energy_source.emissions_per_minute = 3.5
puddling_furnace.energy_source.smoke = {}
puddling_furnace.energy_source.smoke[1] = {}
puddling_furnace.energy_source.smoke[1].name = "apm_dark_light_smoke"
puddling_furnace.energy_source.smoke[1].deviation = {0.1, 0.1}
puddling_furnace.energy_source.smoke[1].frequency = 4
puddling_furnace.energy_source.smoke[1].north_position = {0, -0.55}
puddling_furnace.energy_source.smoke[1].south_position = {0, -0.55}
puddling_furnace.energy_source.smoke[1].east_position = {0, -0.55}
puddling_furnace.energy_source.smoke[1].west_position = {0, -0.55}
puddling_furnace.energy_source.smoke[1].starting_vertical_speed = 0.08
puddling_furnace.energy_source.smoke[1].starting_frame_deviation = 60
puddling_furnace.energy_source.smoke[1].slow_down_factor = 1
puddling_furnace.energy_source.smoke[2] = {}
puddling_furnace.energy_source.smoke[2].name = "apm_dark_light_smoke"
puddling_furnace.energy_source.smoke[2].deviation = {0.1, 0.1}
puddling_furnace.energy_source.smoke[2].frequency = 3.4
puddling_furnace.energy_source.smoke[2].north_position = {0, -1.15}
puddling_furnace.energy_source.smoke[2].south_position = {0, -1.15}
puddling_furnace.energy_source.smoke[2].east_position = {0, -1.15}
puddling_furnace.energy_source.smoke[2].west_position = {0, -1.15}
puddling_furnace.energy_source.smoke[2].starting_vertical_speed = 0.08
puddling_furnace.energy_source.smoke[2].starting_frame_deviation = 60
puddling_furnace.energy_source.smoke[2].slow_down_factor = 1
puddling_furnace.energy_source.smoke[3] = {}
puddling_furnace.energy_source.smoke[3].name = "apm_dark_light_smoke"
puddling_furnace.energy_source.smoke[3].deviation = {0.1, 0.1}
puddling_furnace.energy_source.smoke[3].frequency = 2.8
puddling_furnace.energy_source.smoke[3].north_position = {0, -1.75}
puddling_furnace.energy_source.smoke[3].south_position = {0, -1.75}
puddling_furnace.energy_source.smoke[3].east_position = {0, -1.75}
puddling_furnace.energy_source.smoke[3].west_position = {0, -1.75}
puddling_furnace.energy_source.smoke[3].starting_vertical_speed = 0.08
puddling_furnace.energy_source.smoke[3].starting_frame_deviation = 60
puddling_furnace.energy_source.smoke[3].slow_down_factor = 1
puddling_furnace.animation = {}
puddling_furnace.animation.layers = {}
puddling_furnace.animation.layers[1] = {}
puddling_furnace.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/puddling_furnace/puddling_furnace_0.png"
puddling_furnace.animation.layers[1].priority="high"
puddling_furnace.animation.layers[1].width = 160
puddling_furnace.animation.layers[1].height = 128
puddling_furnace.animation.layers[1].frame_count = 16
puddling_furnace.animation.layers[1].line_length = 8
puddling_furnace.animation.layers[1].shift = {0.4375, -0.28125}
puddling_furnace.animation.layers[1].animation_speed = 0.26666667
puddling_furnace.animation.layers[1].hr_version = {}
puddling_furnace.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/puddling_furnace/hr_puddling_furnace_0.png"
puddling_furnace.animation.layers[1].hr_version.priority="high"
puddling_furnace.animation.layers[1].hr_version.width = 320
puddling_furnace.animation.layers[1].hr_version.height = 256
puddling_furnace.animation.layers[1].hr_version.frame_count = 16
puddling_furnace.animation.layers[1].hr_version.line_length = 8
puddling_furnace.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
puddling_furnace.animation.layers[1].hr_version.scale = 0.5
puddling_furnace.animation.layers[1].hr_version.animation_speed = 0.26666667
puddling_furnace.animation.layers[2] = {}
puddling_furnace.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/puddling_furnace/puddling_furnace_shadow.png"
puddling_furnace.animation.layers[2].priority="high"
puddling_furnace.animation.layers[2].draw_as_shadow = true
puddling_furnace.animation.layers[2].width = 160
puddling_furnace.animation.layers[2].height = 128
puddling_furnace.animation.layers[2].frame_count = 16
puddling_furnace.animation.layers[2].line_length = 8
puddling_furnace.animation.layers[2].shift = {0.4375, -0.28125}
puddling_furnace.animation.layers[2].animation_speed = 0.26666667
puddling_furnace.animation.layers[2].hr_version = {}
puddling_furnace.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/puddling_furnace/hr_puddling_furnace_shadow.png"
puddling_furnace.animation.layers[2].hr_version.priority="high"
puddling_furnace.animation.layers[2].hr_version.draw_as_shadow = true
puddling_furnace.animation.layers[2].hr_version.width = 320
puddling_furnace.animation.layers[2].hr_version.height = 256
puddling_furnace.animation.layers[2].hr_version.frame_count = 16
puddling_furnace.animation.layers[2].hr_version.line_length = 8
puddling_furnace.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
puddling_furnace.animation.layers[2].hr_version.scale = 0.5
puddling_furnace.animation.layers[2].hr_version.animation_speed = 0.26666667
puddling_furnace.idle_animation = {}
puddling_furnace.idle_animation.layers = {}
puddling_furnace.idle_animation.layers[1] = {}
puddling_furnace.idle_animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/puddling_furnace/puddling_furnace_idle_0.png"
puddling_furnace.idle_animation.layers[1].priority="high"
puddling_furnace.idle_animation.layers[1].width = 160
puddling_furnace.idle_animation.layers[1].height = 128
puddling_furnace.idle_animation.layers[1].frame_count = 16
puddling_furnace.idle_animation.layers[1].line_length = 8
puddling_furnace.idle_animation.layers[1].shift = {0.4375, -0.28125}
puddling_furnace.idle_animation.layers[1].animation_speed = 0.26666667
puddling_furnace.idle_animation.layers[1].hr_version = {}
puddling_furnace.idle_animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/puddling_furnace/hr_puddling_furnace_idle_0.png"
puddling_furnace.idle_animation.layers[1].hr_version.priority="high"
puddling_furnace.idle_animation.layers[1].hr_version.width = 320
puddling_furnace.idle_animation.layers[1].hr_version.height = 256
puddling_furnace.idle_animation.layers[1].hr_version.frame_count = 16
puddling_furnace.idle_animation.layers[1].hr_version.line_length = 8
puddling_furnace.idle_animation.layers[1].hr_version.shift = {0.4375, -0.28125}
puddling_furnace.idle_animation.layers[1].hr_version.scale = 0.5
puddling_furnace.idle_animation.layers[1].hr_version.animation_speed = 0.26666667
puddling_furnace.idle_animation.layers[2] = puddling_furnace.animation.layers[2]
data:extend({puddling_furnace})

local steelworks = {}
steelworks.type = "assembling-machine"
steelworks.name = "apm_steelworks_0"
steelworks.icons = {
    apm.lib.utils.icon.dynamics.machine.t2,
    apm.lib.utils.icon.dynamics.lable_sw
}
steelworks.icon_size = 32
steelworks.flags = {"placeable-neutral", "placeable-player", "player-creation"}
steelworks.minable = {mining_time = 0.2, result = "apm_steelworks_0"}
steelworks.crafting_categories = {"apm_steelworks"}
steelworks.crafting_speed = 2
steelworks.fast_replaceable_group = "apm_steelworks"
steelworks.next_upgrade = nil
steelworks.max_health = 250
steelworks.corpse = "big-remnants"
steelworks.dying_explosion = "medium-explosion"
steelworks.resistances = {{type = "fire", percent = 90}}
steelworks.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
steelworks.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
steelworks.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
steelworks.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
steelworks.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
steelworks.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
steelworks.working_sound = {}
steelworks.working_sound.sound = {{filename = "__base__/sound/furnace.ogg"}}
steelworks.energy_usage = "1560kW"
steelworks.module_specification = {module_slots = 2}
steelworks.allowed_effects = {"consumption", "pollution", "speed", "productivity"}
steelworks.energy_source = {}
steelworks.energy_source.type = "electric"
steelworks.energy_source.usage_priority = "secondary-input"
steelworks.energy_source.drain = "200kW"
steelworks.energy_source.emissions_per_minute = 1.5
steelworks.smoke = {}
steelworks.smoke[1] = {}
steelworks.smoke[1].name = "apm_dark_light_smoke"
steelworks.smoke[1].deviation = {0.1, 0.1}
steelworks.smoke[1].frequency = 6
steelworks.smoke[1].north_position = {0, -0.55}
steelworks.smoke[1].south_position = {0, -0.55}
steelworks.smoke[1].east_position = {0, -0.55}
steelworks.smoke[1].west_position = {0, -0.55}
steelworks.smoke[1].starting_vertical_speed = 0.08
steelworks.smoke[1].starting_frame_deviation = 60
steelworks.smoke[1].slow_down_factor = 1
steelworks.animation = {}
steelworks.animation.layers = {}
steelworks.animation.layers[1] = {}
steelworks.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/steelworks/steelworks_0.png"
steelworks.animation.layers[1].priority="high"
steelworks.animation.layers[1].width = 160
steelworks.animation.layers[1].height = 128
steelworks.animation.layers[1].frame_count = 16
steelworks.animation.layers[1].line_length = 8
steelworks.animation.layers[1].shift = {0.4375, -0.28125}
steelworks.animation.layers[1].animation_speed = 0.53333334
steelworks.animation.layers[1].hr_version = {}
steelworks.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/steelworks/hr_steelworks_0.png"
steelworks.animation.layers[1].hr_version.priority="high"
steelworks.animation.layers[1].hr_version.width = 320
steelworks.animation.layers[1].hr_version.height = 256
steelworks.animation.layers[1].hr_version.frame_count = 16
steelworks.animation.layers[1].hr_version.line_length = 8
steelworks.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
steelworks.animation.layers[1].hr_version.scale = 0.5
steelworks.animation.layers[1].hr_version.animation_speed = 0.53333334
steelworks.animation.layers[2] = {}
steelworks.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/steelworks/steelworks_shadow.png"
steelworks.animation.layers[2].priority="high"
steelworks.animation.layers[2].draw_as_shadow = true
steelworks.animation.layers[2].width = 160
steelworks.animation.layers[2].height = 128
steelworks.animation.layers[2].frame_count = 16
steelworks.animation.layers[2].line_length = 8
steelworks.animation.layers[2].shift = {0.4375, -0.28125}
steelworks.animation.layers[2].animation_speed = 0.53333334
steelworks.animation.layers[2].hr_version = {}
steelworks.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steelworks/hr_steelworks_shadow.png"
steelworks.animation.layers[2].hr_version.priority="high"
steelworks.animation.layers[2].hr_version.draw_as_shadow = true
steelworks.animation.layers[2].hr_version.width = 320
steelworks.animation.layers[2].hr_version.height = 256
steelworks.animation.layers[2].hr_version.frame_count = 16
steelworks.animation.layers[2].hr_version.line_length = 8
steelworks.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
steelworks.animation.layers[2].hr_version.scale = 0.5
steelworks.animation.layers[2].hr_version.animation_speed = 0.53333334
steelworks.idle_animation = {}
steelworks.idle_animation.layers = {}
steelworks.idle_animation.layers[1] = {}
steelworks.idle_animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/steelworks/steelworks_idle_0.png"
steelworks.idle_animation.layers[1].priority="high"
steelworks.idle_animation.layers[1].width = 160
steelworks.idle_animation.layers[1].height = 128
steelworks.idle_animation.layers[1].frame_count = 16
steelworks.idle_animation.layers[1].line_length = 8
steelworks.idle_animation.layers[1].shift = {0.4375, -0.28125}
steelworks.idle_animation.layers[1].animation_speed = 0.53333334
steelworks.idle_animation.layers[1].hr_version = {}
steelworks.idle_animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/steelworks/hr_steelworks_idle_0.png"
steelworks.idle_animation.layers[1].hr_version.priority="high"
steelworks.idle_animation.layers[1].hr_version.width = 320
steelworks.idle_animation.layers[1].hr_version.height = 256
steelworks.idle_animation.layers[1].hr_version.frame_count = 16
steelworks.idle_animation.layers[1].hr_version.line_length = 8
steelworks.idle_animation.layers[1].hr_version.shift = {0.4375, -0.28125}
steelworks.idle_animation.layers[1].hr_version.scale = 0.5
steelworks.idle_animation.layers[1].hr_version.animation_speed = 0.53333334
steelworks.idle_animation.layers[2] = steelworks.animation.layers[2]
steelworks.fluid_boxes = {}
steelworks.fluid_boxes[1] = {}
steelworks.fluid_boxes[1].production_type = "input"
steelworks.fluid_boxes[1].pipe_picture = assembler1pipepictures()
steelworks.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
steelworks.fluid_boxes[1].base_area = 1
steelworks.fluid_boxes[1].base_level = -1
steelworks.fluid_boxes[1].pipe_connections = {{ type="input", position = {0, -2} }}
steelworks.fluid_boxes[1].secondary_draw_orders = { north = -1 }
steelworks.fluid_boxes[2] = {}
steelworks.fluid_boxes[2].production_type = "output"
steelworks.fluid_boxes[2].pipe_picture = assembler1pipepictures()
steelworks.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
steelworks.fluid_boxes[2].base_area = 1
steelworks.fluid_boxes[2].base_level = 1
steelworks.fluid_boxes[2].pipe_connections = {{ type="output", position = {-2, 0} }}
steelworks.fluid_boxes[2].secondary_draw_orders = { north = -1 }
steelworks.fluid_boxes[3] = {}
steelworks.fluid_boxes[3].production_type = "output"
steelworks.fluid_boxes[3].pipe_picture = assembler1pipepictures()
steelworks.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
steelworks.fluid_boxes[3].base_area = 1
steelworks.fluid_boxes[3].base_level = 1
steelworks.fluid_boxes[3].pipe_connections = {{ type="output", position = {2, 0} }}
steelworks.fluid_boxes[3].secondary_draw_orders = { north = -1 }
steelworks.fluid_boxes.off_when_no_fluid_recipe = true
data:extend({steelworks})