require('util')

local recycler = {}
recycler.type = "assembling-machine"
recycler.name = "apm_recycling_machine_0"
--recycler.icon = "__apm_resource_pack__/graphics/icons/apm_recycling_machine_0.png"
recycler.icons = {
	apm.lib.utils.icon.dynamics.machine.t0,
	apm.lib.utils.icon.dynamics.lable_r
}
recycler.icon_size = 32
recycler.flags = {"placeable-neutral", "placeable-player", "player-creation"}
recycler.minable = {mining_time = 0.2, result = "apm_recycling_machine_0"}
recycler.crafting_categories = {"apm_recycling_1"}
recycler.crafting_speed = 0.5
recycler.max_health = 250
recycler.corpse = "big-remnants"
recycler.dying_explosion = "medium-explosion"
recycler.fast_replaceable_group = "apm_recycling_machines"
recycler.next_upgrade = "apm_recycling_machine_2"
recycler.resistances = {{type = "fire", percent = 90}}
recycler.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
recycler.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
recycler.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}}
recycler.open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
recycler.close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
recycler.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
recycler.working_sound = {}
recycler.working_sound.sound = {{filename = "__base__/sound/assembling-machine-t2-1.ogg", volume = 0.8}}
recycler.energy_source = {}
recycler.energy_source.type = "burner"
recycler.energy_source.fuel_categories = {'chemical'}
recycler.energy_source.effectivity = 1
recycler.energy_source.fuel_inventory_size = 1
recycler.energy_source.smoke = {}
recycler.energy_source.smoke[1] = {}
recycler.energy_source.smoke[1].name = "smoke"
recycler.energy_source.smoke[1].deviation = {0.1, 0.1}
recycler.energy_source.smoke[1].frequency = 10
recycler.energy_source.smoke[1].position = {0.45, -1.95}
recycler.energy_source.smoke[1].starting_vertical_speed = 0.08
recycler.energy_source.smoke[1].starting_frame_deviation = 60
recycler.energy_source.smoke[1].slow_down_factor = 1
recycler.energy_source.emissions_per_minute = 5
recycler.energy_usage = "350kW"
recycler.module_specification = nil
recycler.allowed_effects = {"consumption", "pollution"}
recycler.animation = {}
recycler.animation.layers = {}
recycler.animation.layers[1] = {}
recycler.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_0.png"
recycler.animation.layers[1].priority="high"
recycler.animation.layers[1].width = 160
recycler.animation.layers[1].height = 128
recycler.animation.layers[1].frame_count = 64
recycler.animation.layers[1].line_length = 8
recycler.animation.layers[1].shift = {0.4375, -0.28125}
recycler.animation.layers[1].animation_speed = 1.0666667
recycler.animation.layers[1].hr_version = {}
recycler.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_0.png"
recycler.animation.layers[1].hr_version.priority="high"
recycler.animation.layers[1].hr_version.width = 320
recycler.animation.layers[1].hr_version.height = 256
recycler.animation.layers[1].hr_version.frame_count = 64
recycler.animation.layers[1].hr_version.line_length = 8
recycler.animation.layers[1].hr_version.shift = {0.4375, -0.28125}
recycler.animation.layers[1].hr_version.scale = 0.5
recycler.animation.layers[1].hr_version.animation_speed = 1.0666667
recycler.animation.layers[2] = {}
recycler.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_burner_shadow.png"
recycler.animation.layers[2].priority="high"
recycler.animation.layers[2].draw_as_shadow = true
recycler.animation.layers[2].width = 160
recycler.animation.layers[2].height = 128
recycler.animation.layers[2].frame_count = 64
recycler.animation.layers[2].line_length = 8
recycler.animation.layers[2].shift = {0.4375, -0.28125}
recycler.animation.layers[2].animation_speed =1.0666667
recycler.animation.layers[2].hr_version = {}
recycler.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_burner_shadow.png"
recycler.animation.layers[2].hr_version.priority="high"
recycler.animation.layers[2].hr_version.draw_as_shadow = true
recycler.animation.layers[2].hr_version.width = 320
recycler.animation.layers[2].hr_version.height = 256
recycler.animation.layers[2].hr_version.frame_count = 64
recycler.animation.layers[2].hr_version.line_length = 8
recycler.animation.layers[2].hr_version.shift = {0.4375, -0.28125}
recycler.animation.layers[2].hr_version.scale = 0.5
recycler.animation.layers[2].hr_version.animation_speed = 1.0666667
recycler.fluid_boxes = {}
recycler.fluid_boxes[1] = {}
recycler.fluid_boxes[1].production_type = "input"
recycler.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[1].base_area = 10
recycler.fluid_boxes[1].base_level = -1
recycler.fluid_boxes[1].pipe_connections = {{ type="input", position = {0, -2} }}
recycler.fluid_boxes[1].secondary_draw_orders = { north = -1 }
recycler.fluid_boxes[2] = {}
recycler.fluid_boxes[2].production_type = "input"
recycler.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[2].base_area = 10
recycler.fluid_boxes[2].base_level = -1
recycler.fluid_boxes[2].pipe_connections = {{ type="input", position = {-2, 0} }}
recycler.fluid_boxes[2].secondary_draw_orders = { north = -1 }
recycler.fluid_boxes[3] = {}
recycler.fluid_boxes[3].production_type = "output"
recycler.fluid_boxes[3].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[3].base_area = 10
recycler.fluid_boxes[3].base_level = 1
recycler.fluid_boxes[3].pipe_connections = {{ type="output", position = {0, 2} }}
recycler.fluid_boxes[3].secondary_draw_orders = { north = -1 }
recycler.fluid_boxes[4] = {}
recycler.fluid_boxes[4].production_type = "output"
recycler.fluid_boxes[4].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[4].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[4].base_area = 10
recycler.fluid_boxes[4].base_level = 1
recycler.fluid_boxes[4].pipe_connections = {{ type="output", position = {2, 0} }}
recycler.fluid_boxes[4].secondary_draw_orders = { north = -1 }
data:extend({recycler})

recycler = table.deepcopy(recycler)
recycler.name = "apm_recycling_machine_1"
--recycler.icon = "__apm_resource_pack__/graphics/icons/apm_recycling_machine_1.png"
recycler.icons = {
	apm.lib.utils.icon.dynamics.machine.t1,
	apm.lib.utils.icon.dynamics.lable_r
}
recycler.minable = {mining_time = 0.2, result = "apm_recycling_machine_1"}
recycler.crafting_speed = 1
recycler.crafting_categories = {"apm_recycling_1", "apm_recycling_2"}
recycler.next_upgrade = "apm_recycling_machine_1"
recycler.max_health = 350
recycler.energy_usage = "500kW"
recycler.module_specification = {module_slots = 1}
recycler.energy_source = {}
recycler.energy_source.type = "electric"
recycler.energy_source.usage_priority = "secondary-input"
recycler.energy_source.emissions_per_minute = 2.5
recycler.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_1.png"
recycler.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_1.png"
recycler.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_shadow.png"
recycler.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_shadow.png"
recycler.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[3].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[4].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
recycler.fluid_boxes[4].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
data:extend({recycler})

recycler = table.deepcopy(recycler)
recycler.name = "apm_recycling_machine_2"
--recycler.icon = "__apm_resource_pack__/graphics/icons/apm_recycling_machine_2.png"
recycler.icons = {
	apm.lib.utils.icon.dynamics.machine.t2,
	apm.lib.utils.icon.dynamics.lable_r
}
recycler.minable = {mining_time = 0.2, result = "apm_recycling_machine_2"}
recycler.crafting_speed = 1.5
recycler.crafting_categories = {"apm_recycling_1", "apm_recycling_2", "apm_recycling_3"}
recycler.next_upgrade = "apm_recycling_machine_3"
recycler.max_health = 350
recycler.energy_usage = "650kW"
recycler.module_specification = {module_slots = 2}
recycler.energy_source = {}
recycler.energy_source.type = "electric"
recycler.energy_source.usage_priority = "secondary-input"
recycler.energy_source.emissions_per_minute = 1.75
recycler.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_2.png"
recycler.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_2.png"
recycler.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_shadow.png"
recycler.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_shadow.png"
recycler.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[3].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[4].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[4].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
data:extend({recycler})

recycler = table.deepcopy(recycler)
recycler.name = "apm_recycling_machine_3"
--recycler.icon = "__apm_resource_pack__/graphics/icons/apm_recycling_machine_3.png"
recycler.icons = {
	apm.lib.utils.icon.dynamics.machine.t3,
	apm.lib.utils.icon.dynamics.lable_r
}
recycler.minable = {mining_time = 0.2, result = "apm_recycling_machine_3"}
recycler.crafting_speed = 2
recycler.crafting_categories = {"apm_recycling_1", "apm_recycling_2", "apm_recycling_3", "apm_recycling_4"}
recycler.next_upgrade = nil
recycler.max_health = 500
recycler.energy_usage = "800kW"
recycler.module_specification = {module_slots = 3}
recycler.energy_source = {}
recycler.energy_source.type = "electric"
recycler.energy_source.usage_priority = "secondary-input"
recycler.energy_source.emissions_per_minute = 1
recycler.animation.layers[1].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_3.png"
recycler.animation.layers[1].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_3.png"
recycler.animation.layers[2].filename = "__apm_resource_pack__/graphics/entities/recycler/recycler_shadow.png"
recycler.animation.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/recycler/hr_recycler_shadow.png"
recycler.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[3].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
recycler.fluid_boxes[4].pipe_picture = apm.lib.utils.pipecovers.assembler3pipepictures()
recycler.fluid_boxes[4].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
data:extend({recycler})