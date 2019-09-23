require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/burner_inserters.lua')
log('-------------------------------------------------------')

local burner_inserter =data.raw.inserter['burner-inserter']
burner_inserter.extension_speed = 0.0240 -- electric: 0.03
burner_inserter.rotation_speed = 0.0119 -- electric: 0.014
burner_inserter.energy_per_movement = "32363.6363636J"
burner_inserter.energy_per_rotation = "100000J"

local burner_inserter = table.deepcopy(data.raw.inserter['burner-inserter'])
burner_inserter.name = 'apm_burner_filter_inserter'
burner_inserter.icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png'
burner_inserter.minable = {mining_time = 0.1, result = "apm_burner_filter_inserter"}
burner_inserter.filter_count = 1
burner_inserter.hand_base_picture.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-hand-base.png'
burner_inserter.hand_base_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-hand-base.png'
burner_inserter.hand_closed_picture.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-hand-closed.png'
burner_inserter.hand_closed_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-hand-closed.png'
burner_inserter.hand_open_picture.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-hand-open.png'
burner_inserter.hand_open_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-hand-open.png'
burner_inserter.platform_picture.sheet.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/inserter-platform.png'
burner_inserter.platform_picture.sheet.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_filter_inserter/hr-inserter-platform.png'
data:extend({burner_inserter})

local burner_inserter = table.deepcopy(data.raw.inserter['burner-inserter'])
burner_inserter.name = 'apm_burner_long_inserter'
burner_inserter.icon = '__apm_resource_pack__/graphics/icons/apm_burner_filter_inserter.png'
burner_inserter.minable = {mining_time = 0.1, result = "apm_burner_long_inserter"}
burner_inserter.energy_per_movement = "38836.3636363J"
burner_inserter.energy_per_rotation = "120000J"
burner_inserter.hand_size = 1.5
burner_inserter.extension_speed = 0.018 -- electric: 0.02
burner_inserter.rotation_speed = 0.0119 -- electric: 0.0457
burner_inserter.pickup_position = {0, -2}
burner_inserter.insert_position = {0, 2.2}
burner_inserter.hand_base_picture.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-hand-base.png'
burner_inserter.hand_base_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-hand-base.png'
burner_inserter.hand_closed_picture.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-hand-closed.png'
burner_inserter.hand_closed_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-hand-closed.png'
burner_inserter.hand_open_picture.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-hand-open.png'
burner_inserter.hand_open_picture.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-hand-open.png'
burner_inserter.platform_picture.sheet.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/inserter-platform.png'
burner_inserter.platform_picture.sheet.hr_version.filename = '__apm_resource_pack__/graphics/entities/burner_long_inserter/hr-inserter-platform.png'
data:extend({burner_inserter})