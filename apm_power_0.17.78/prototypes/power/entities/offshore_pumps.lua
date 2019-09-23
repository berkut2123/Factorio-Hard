require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/offshore_pumps.lua')
log('-------------------------------------------------------')

local offshore_pump_base = {}
offshore_pump_base.type = "offshore-pump"
offshore_pump_base.name = "apm_offshore_pump_0"
offshore_pump_base.icons = {
    {icon="__base__/graphics/icons/offshore-pump.png"},
    apm.lib.utils.icon.dynamics.t1
}
offshore_pump_base.icon_size = 32
offshore_pump_base.flags = {"placeable-neutral", "player-creation", "filter-directions"}
offshore_pump_base.collision_mask = { "ground-tile", "object-layer"}
--offshore_pump_base.selectable_in_game = false
offshore_pump_base.fluid_box_tile_collision_test = { "ground-tile" }
offshore_pump_base.adjacent_tile_collision_test = { "water-tile" }
offshore_pump_base.minable = {mining_time = 0.1, result = "apm_offshore_pump_0"}
offshore_pump_base.fast_replaceable_group = "apm_offshore_pump"
offshore_pump_base.next_upgrade = "apm_offshore_pump_1"
offshore_pump_base.max_health = 50
offshore_pump_base.corpse = "small-remnants"
offshore_pump_base.fluid = "apm_sea_water"
offshore_pump_base.resistances = {{type = "fire",percent = 70},{type = "impact", percent = 30}}
offshore_pump_base.collision_box = {{-0.6, -1.05}, {0.6, 0.3}}
offshore_pump_base.selection_box = {{-1, -1.49}, {1, 0.49}}
offshore_pump_base.fluid_box = {}
offshore_pump_base.fluid_box.base_area = 1
offshore_pump_base.fluid_box.base_level = 1
offshore_pump_base.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
offshore_pump_base.fluid_box.production_type = "output"
offshore_pump_base.fluid_box.filter = "apm_sea_water"
offshore_pump_base.fluid_box.pipe_connections = {}
offshore_pump_base.fluid_box.pipe_connections[1] = {}
offshore_pump_base.fluid_box.pipe_connections[1].position = {0, 1}
offshore_pump_base.fluid_box.pipe_connections[1].type = "output"
offshore_pump_base.pumping_speed = 2.5
offshore_pump_base.tile_width = 1
offshore_pump_base.tile_height = 1
offshore_pump_base.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
offshore_pump_base.picture = {}
offshore_pump_base.picture.north = {}
offshore_pump_base.picture.north.filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump_base.picture.north.priority = "medium"
offshore_pump_base.picture.north.shift = {0.90625, 0.0625}
offshore_pump_base.picture.north.width = 160
offshore_pump_base.picture.north.height = 102
offshore_pump_base.picture.east = {}
offshore_pump_base.picture.east.filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump_base.picture.east.priority = "medium"
offshore_pump_base.picture.east.shift = {0.90625, 0.0625}
offshore_pump_base.picture.east.x = 160
offshore_pump_base.picture.east.width = 160
offshore_pump_base.picture.east.height = 102
offshore_pump_base.picture.south = {}
offshore_pump_base.picture.south.filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump_base.picture.south.priority = "medium"
offshore_pump_base.picture.south.shift = {0.90625, 0.65625}
offshore_pump_base.picture.south.x = 320
offshore_pump_base.picture.south.width = 160
offshore_pump_base.picture.south.height = 102
offshore_pump_base.picture.west = {}
offshore_pump_base.picture.west.filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump_base.picture.west.priority = "medium"
offshore_pump_base.picture.west.shift = {1.0, 0.0625}
offshore_pump_base.picture.west.x = 480
offshore_pump_base.picture.west.width = 160
offshore_pump_base.picture.west.height = 102
offshore_pump_base.placeable_position_visualization = {}
offshore_pump_base.placeable_position_visualization.filename = "__core__/graphics/cursor-boxes-32x32.png"
offshore_pump_base.placeable_position_visualization.priority = "extra-high-no-scale"
offshore_pump_base.placeable_position_visualization.width = 64
offshore_pump_base.placeable_position_visualization.height = 64
offshore_pump_base.placeable_position_visualization.scale = 0.5
offshore_pump_base.placeable_position_visualization.x = 3*64
offshore_pump_base.picture.circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points
offshore_pump_base.picture.circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites
offshore_pump_base.picture.circuit_wire_max_distance = default_circuit_wire_max_distance
data:extend({offshore_pump_base})


local offshore_pump = table.deepcopy(offshore_pump_base)
offshore_pump.name = "apm_offshore_pump_1"
offshore_pump.icons = {
    {icon="__base__/graphics/icons/offshore-pump.png"},
    apm.lib.utils.icon.dynamics.t2
}
offshore_pump.collision_box = offshore_pump_base.collision_box
offshore_pump.selection_box = offshore_pump_base.selection_box
offshore_pump.minable = {mining_time = 0.1, result = "apm_offshore_pump_1"}
offshore_pump.fast_replaceable_group = "apm_offshore_pump"
offshore_pump.next_upgrade = nil
offshore_pump.max_health = 100
offshore_pump.pumping_speed = 6.66666668
offshore_pump.fluid = "apm_sea_water"
offshore_pump.fluid_box.filter = "apm_sea_water"
data:extend({offshore_pump})

-- Replacements ---------------------------------------------------------------
--
--
-------------------------------------------------------------------------------

local offshore_pump = {}
offshore_pump.type = "assembling-machine"
offshore_pump.name = "apm_offshore_pump_burner"
--offshore_pump.name = "apm_offshore_pump"
offshore_pump.localised_name = {"entity-name.apm_offshore_pump_0"}
offshore_pump.localised_description = {"entity-description.apm_offshore_pump_0"}
offshore_pump.icons = {
    {icon="__base__/graphics/icons/offshore-pump.png"},
    apm.lib.utils.icon.dynamics.t1
}
offshore_pump.icon_size = 32
offshore_pump.group = "apm_power"
offshore_pump.subgroup = "apm_power_machines_miner"
offshore_pump.order = 'ab_a'
offshore_pump.minable = {mining_time = 0.1, result = "apm_offshore_pump"}
offshore_pump.flags = {"placeable-neutral", "player-creation", "filter-directions"}
offshore_pump.collision_mask = { "ground-tile", "object-layer" }

offshore_pump.adjacent_tile_collision_test = { "water-tile" }

offshore_pump.minable = {mining_time = 0.1, result = "apm_offshore_pump_0"}
offshore_pump.max_health = 100
offshore_pump.corpse = "small-remnants"

offshore_pump.resistances = {{type = "fire",percent = 70},{type = "impact", percent = 30}}
--offshore_pump.collision_box = {{-0.6, -1.05}, {0.6, 0.3}}
--offshore_pump.selection_box = {{-1, -1.49}, {1, 0.49}}
offshore_pump.collision_box = offshore_pump_base.collision_box
offshore_pump.selection_box = offshore_pump_base.selection_box

offshore_pump.fast_replaceable_group = "apm_offshore_pump"
offshore_pump.next_upgrade = "apm_offshore_pump_1"
offshore_pump.trigger_created_entity = true

offshore_pump.crafting_categories = {"apm_fluids_from_the_void"}
offshore_pump.crafting_speed = 1
offshore_pump.fixed_recipe = "apm_sea_water_from_void_1"

offshore_pump.energy_usage = "130kW"
offshore_pump.module_specification = nil
offshore_pump.allowed_effects = {"consumption", "pollution", "speed"}
offshore_pump.energy_source = {}
offshore_pump.energy_source.type = "burner"
offshore_pump.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
offshore_pump.energy_source.effectivity = 1
offshore_pump.energy_source.fuel_inventory_size = 1
offshore_pump.energy_source.burnt_inventory_size = 1
offshore_pump.energy_source.emissions_per_minute = 3

offshore_pump.energy_source.smoke = {}
offshore_pump.energy_source.smoke[1] = {}
offshore_pump.energy_source.smoke[1].name = "apm_dark_smoke"
offshore_pump.energy_source.smoke[1].deviation = {0.1, 0.1}
offshore_pump.energy_source.smoke[1].frequency = 10
offshore_pump.energy_source.smoke[1].north_position = {0, 0}
offshore_pump.energy_source.smoke[1].south_position = {0, 0}
offshore_pump.energy_source.smoke[1].east_position = {0, 0}
offshore_pump.energy_source.smoke[1].west_position = {0, 0}
offshore_pump.energy_source.smoke[1].starting_vertical_speed = 0.08
offshore_pump.energy_source.smoke[1].starting_frame_deviation = 60
offshore_pump.energy_source.smoke[1].slow_down_factor = 1

offshore_pump.fluid_boxes = {}
offshore_pump.fluid_boxes[1] = {}
offshore_pump.fluid_boxes[1].base_area = 1
offshore_pump.fluid_boxes[1].base_level = 1
offshore_pump.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
offshore_pump.fluid_boxes[1].production_type = "output"
offshore_pump.fluid_boxes[1].filter = "apm_sea_water"
offshore_pump.fluid_boxes[1].pipe_connections = {}
offshore_pump.fluid_boxes[1].pipe_connections[1] = {}
offshore_pump.fluid_boxes[1].pipe_connections[1].position = {0, 1}
offshore_pump.fluid_boxes[1].pipe_connections[1].type = "output"
offshore_pump.fluid_boxes[1].off_when_no_fluid_recipe = false

offshore_pump.tile_width = 1
offshore_pump.tile_height = 1
offshore_pump.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }

offshore_pump.animation = {}
offshore_pump.animation.north = {}
offshore_pump.animation.north.layers = {}
offshore_pump.animation.north.layers[1] = {}
offshore_pump.animation.north.layers[1].filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump.animation.north.layers[1].priority = "high"
offshore_pump.animation.north.layers[1].shift = {0.90625, 0.0625}
offshore_pump.animation.north.layers[1].width = 160
offshore_pump.animation.north.layers[1].height = 102
offshore_pump.animation.north.layers[1].frame_count = 1
offshore_pump.animation.north.layers[1].line_length = 1
offshore_pump.animation.north.layers[1].animation_speed = 1
offshore_pump.animation.east = {}
offshore_pump.animation.east.layers = {}
offshore_pump.animation.east.layers[1] = {}
offshore_pump.animation.east.layers[1].filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump.animation.east.layers[1].priority = "high"
offshore_pump.animation.east.layers[1].shift = {0.90625, 0.0625}
offshore_pump.animation.east.layers[1].x = 160
offshore_pump.animation.east.layers[1].width = 160
offshore_pump.animation.east.layers[1].height = 102
offshore_pump.animation.east.layers[1].frame_count = 1
offshore_pump.animation.east.layers[1].line_length = 1
offshore_pump.animation.east.layers[1].animation_speed = 1
offshore_pump.animation.south = {}
offshore_pump.animation.south.layers = {}
offshore_pump.animation.south.layers[1] = {}
offshore_pump.animation.south.layers[1].filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump.animation.south.layers[1].priority = "high"
offshore_pump.animation.south.layers[1].shift = {0.90625, 0.65625}
offshore_pump.animation.south.layers[1].x = 320
offshore_pump.animation.south.layers[1].width = 160
offshore_pump.animation.south.layers[1].height = 102
offshore_pump.animation.south.layers[1].frame_count = 1
offshore_pump.animation.south.layers[1].line_length = 1
offshore_pump.animation.south.layers[1].animation_speed = 1
offshore_pump.animation.west = {}
offshore_pump.animation.west.layers = {}
offshore_pump.animation.west.layers[1] = {}
offshore_pump.animation.west.layers[1].filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png"
offshore_pump.animation.west.layers[1].priority = "high"
offshore_pump.animation.west.layers[1].shift = {1.0, 0.0625}
offshore_pump.animation.west.layers[1].x = 480
offshore_pump.animation.west.layers[1].width = 160
offshore_pump.animation.west.layers[1].height = 102
offshore_pump.animation.west.layers[1].frame_count = 1
offshore_pump.animation.west.layers[1].line_length = 1
offshore_pump.animation.west.layers[1].animation_speed = 1

offshore_pump.placeable_position_visualization = {}
offshore_pump.placeable_position_visualization.filename = "__core__/graphics/cursor-boxes-32x32.png"
offshore_pump.placeable_position_visualization.priority = "extra-high-no-scale"
offshore_pump.placeable_position_visualization.width = 64
offshore_pump.placeable_position_visualization.height = 64
offshore_pump.placeable_position_visualization.scale = 0.5
offshore_pump.placeable_position_visualization.x = 3*64

offshore_pump.picture = {}
offshore_pump.picture.circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points
offshore_pump.picture.circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites
offshore_pump.picture.circuit_wire_max_distance = default_circuit_wire_max_distance
data:extend({offshore_pump})


local offshore_pump = table.deepcopy(offshore_pump)
offshore_pump.name = "apm_offshore_pump_electric"
offshore_pump.localised_name = {"entity-name.apm_offshore_pump_1"}
offshore_pump.localised_description = {"entity-description.apm_offshore_pump_1"}
offshore_pump.icons = {
    {icon="__base__/graphics/icons/offshore-pump.png"},
    apm.lib.utils.icon.dynamics.t2
}
offshore_pump.collision_box = offshore_pump_base.collision_box
offshore_pump.selection_box = offshore_pump_base.selection_box

offshore_pump.minable = {mining_time = 0.1, result = "apm_offshore_pump_1"}

offshore_pump.fast_replaceable_group = "apm_offshore_pump"
offshore_pump.next_upgrade = nil

offshore_pump.module_specification = {module_slots = 2}
offshore_pump.allowed_effects = {"consumption", "pollution", "speed"}

offshore_pump.icon_size = 32
offshore_pump.group = "apm_power"
offshore_pump.subgroup = "apm_power_machines_miner"
offshore_pump.order = 'ab_b'
offshore_pump.crafting_speed = 1
offshore_pump.fixed_recipe = "apm_sea_water_from_void_2"
offshore_pump.energy_source = {}
offshore_pump.energy_usage = "95kW"
offshore_pump.energy_source = {}
offshore_pump.energy_source.type = 'electric'
offshore_pump.energy_source.usage_priority = "secondary-input"
offshore_pump.energy_source.emissions_per_minute = 1.5
data:extend({offshore_pump})