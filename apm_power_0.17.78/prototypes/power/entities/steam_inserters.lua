require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/steam_inserters.lua')
log('-------------------------------------------------------')

local steam_inserter = table.deepcopy(data.raw.inserter['burner-inserter'])
steam_inserter.flags = {"placeable-neutral", "placeable-player", "player-creation"}
steam_inserter.extension_speed = 0.0260 -- electric: 0.03
steam_inserter.rotation_speed = 0.0125 -- electric: 0.014
steam_inserter.name = 'apm_steam_inserter'
--steam_inserter.icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png'
steam_inserter.minable = {mining_time = 0.1, result = "apm_steam_inserter"}
--steam_inserter.energy_usage = "150kW"
steam_inserter.energy_per_movement = "16181.8181818J"
steam_inserter.energy_per_rotation = "50000J"
steam_inserter.energy_source = {}
steam_inserter.energy_source.type = "fluid"
steam_inserter.energy_source.fluid_box = {}
steam_inserter.energy_source.fluid_box.production_type = "input-output"
--steam_inserter.energy_source.fluid_box.pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
steam_inserter.energy_source.fluid_box.pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
steam_inserter.energy_source.fluid_box.base_area = 1
steam_inserter.energy_source.fluid_box.base_level = 0
steam_inserter.energy_source.fluid_box.pipe_connections = {
    { type="input-output", position = {0, -1} },
    { type="input-output", position = {-1, 0} },
    { type="input-output", position = {0, 1} },
    { type="input-output", position = {1, 0} }
}
steam_inserter.energy_source.fluid_box.secondary_draw_orders = { north = -1 }
steam_inserter.energy_source.fluid_box.filter = "steam"
steam_inserter.energy_source.minimum_temperature = 100.0
steam_inserter.energy_source.maximum_temperature = 1000.0
steam_inserter.energy_source.burns_fluid = false
steam_inserter.energy_source.scale_fluid_usage = true
steam_inserter.energy_source.smoke = {}
steam_inserter.energy_source.smoke[1] = {}
steam_inserter.energy_source.smoke[1].name = "light-smoke"
steam_inserter.energy_source.smoke[1].deviation = {0.1, 0.1}
steam_inserter.energy_source.smoke[1].frequency = 2
steam_inserter.energy_source.smoke[1].position = {0, 0}
--steam_inserter.energy_source.smoke[1].north_position = {-0.77, -1.95}
--steam_inserter.energy_source.smoke[1].south_position = {-0.77, -1.95}
--steam_inserter.energy_source.smoke[1].east_position = {-0.77, -1.95}
--steam_inserter.energy_source.smoke[1].west_position = {-0.77, -1.95}
steam_inserter.energy_source.smoke[1].starting_vertical_speed = 0.08
steam_inserter.energy_source.smoke[1].starting_frame_deviation = 60
steam_inserter.energy_source.smoke[1].slow_down_factor = 1
data:extend({steam_inserter})

local steam_inserter = table.deepcopy(data.raw.inserter['apm_steam_inserter'])
steam_inserter.name = 'apm_steam_filter_inserter'
steam_inserter.icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png'
steam_inserter.minable = {mining_time = 0.1, result = "apm_steam_filter_inserter"}
steam_inserter.filter_count = 1
steam_inserter.hand_base_picture.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-hand-base.png'
steam_inserter.hand_base_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-hand-base.png'
steam_inserter.hand_closed_picture.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-hand-closed.png'
steam_inserter.hand_closed_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-hand-closed.png'
steam_inserter.hand_open_picture.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-hand-open.png'
steam_inserter.hand_open_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-hand-open.png'
steam_inserter.platform_picture.sheet.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-platform.png'
steam_inserter.platform_picture.sheet.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-platform.png'
data:extend({steam_inserter})

local steam_inserter = table.deepcopy(data.raw.inserter['apm_steam_inserter'])
steam_inserter.name = 'apm_steam_long_inserter'
steam_inserter.icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png'
steam_inserter.minable = {mining_time = 0.1, result = "apm_steam_long_inserter"}
--steam_inserter.energy_per_movement = "24272.727272J"
steam_inserter.energy_per_rotation = "75000J"
steam_inserter.hand_size = 1.5
steam_inserter.extension_speed = 0.018 -- electric: 0.02
steam_inserter.rotation_speed = 0.0159 -- electric: 0.0457
steam_inserter.pickup_position = {0, -2}
steam_inserter.insert_position = {0, 2.2}
steam_inserter.hand_base_picture.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-hand-base.png'
steam_inserter.hand_base_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-hand-base.png'
steam_inserter.hand_closed_picture.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-hand-closed.png'
steam_inserter.hand_closed_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-hand-closed.png'
steam_inserter.hand_open_picture.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-hand-open.png'
steam_inserter.hand_open_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-hand-open.png'
steam_inserter.platform_picture.sheet.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-platform.png'
steam_inserter.platform_picture.sheet.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-platform.png'
data:extend({steam_inserter})