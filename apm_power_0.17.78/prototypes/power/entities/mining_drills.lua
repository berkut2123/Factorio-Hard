require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/entities/mining_drills.lua')
log('-------------------------------------------------------')

local burner_miner = table.deepcopy(data.raw['mining-drill']['burner-mining-drill'])
burner_miner.name = 'apm_burner_miner_drill_2'
burner_miner.icon = nil
burner_miner.icons = {
    {icon = data.raw['mining-drill']['burner-mining-drill'].icon},
    apm.lib.utils.icon.dynamics.t2
}
burner_miner.minable = {mining_time = 0.3, result = "apm_burner_miner_drill_2"}
data:extend({burner_miner})

local steam_mining_drill = {}
steam_mining_drill.type = "mining-drill"
steam_mining_drill.name = "apm_steam_mining_drill"
steam_mining_drill.icon = "__base__/graphics/icons/electric-mining-drill.png"
steam_mining_drill.icon_size = 32
steam_mining_drill.flags = {"placeable-neutral", "player-creation"}
steam_mining_drill.minable = {mining_time = 0.3, result = "apm_steam_mining_drill"}
steam_mining_drill.max_health = 300
steam_mining_drill.resource_categories = {"basic-solid"}
steam_mining_drill.corpse = "big-remnants"
steam_mining_drill.collision_box = {{ -1.4, -1.4}, {1.4, 1.4}}
steam_mining_drill.selection_box = {{ -1.5, -1.5}, {1.5, 1.5}}
steam_mining_drill.working_sound = {sound = { filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.75}, apparent_volume = 1.5}
steam_mining_drill.vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
steam_mining_drill.animations = {}
steam_mining_drill.animations.north = {}
steam_mining_drill.animations.north.layers = {}
steam_mining_drill.animations.north.layers[1] = {}
steam_mining_drill.animations.north.layers[1].priority = "high"
steam_mining_drill.animations.north.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png"
steam_mining_drill.animations.north.layers[1].line_length = 8
steam_mining_drill.animations.north.layers[1].width = 98
steam_mining_drill.animations.north.layers[1].height = 113
steam_mining_drill.animations.north.layers[1].frame_count = 64
steam_mining_drill.animations.north.layers[1].animation_speed = 0.5
steam_mining_drill.animations.north.layers[1].direction_count = 1
steam_mining_drill.animations.north.layers[1].shift = util.by_pixel(0, -8.5)
steam_mining_drill.animations.north.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.animations.north.layers[1].hr_version = {}
steam_mining_drill.animations.north.layers[1].hr_version.priority = "high"
steam_mining_drill.animations.north.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png"
steam_mining_drill.animations.north.layers[1].hr_version.line_length = 8
steam_mining_drill.animations.north.layers[1].hr_version.width = 196
steam_mining_drill.animations.north.layers[1].hr_version.height = 226
steam_mining_drill.animations.north.layers[1].hr_version.frame_count = 64
steam_mining_drill.animations.north.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.animations.north.layers[1].hr_version.direction_count = 1
steam_mining_drill.animations.north.layers[1].hr_version.shift = util.by_pixel(0, -8)
steam_mining_drill.animations.north.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.north.layers[1].hr_version.scale = 0.5
steam_mining_drill.animations.north.layers[2] = {}
steam_mining_drill.animations.north.layers[2].priority = "extra-high"
steam_mining_drill.animations.north.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-N-patch.png"
steam_mining_drill.animations.north.layers[2].line_length = 8
steam_mining_drill.animations.north.layers[2].width = 100
steam_mining_drill.animations.north.layers[2].height = 111
steam_mining_drill.animations.north.layers[2].frame_count = 64
steam_mining_drill.animations.north.layers[2].animation_speed = 0.5
steam_mining_drill.animations.north.layers[2].direction_count = 1
steam_mining_drill.animations.north.layers[2].shift = util.by_pixel(0, -6.5)
steam_mining_drill.animations.north.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.animations.north.layers[2].hr_version = {}
steam_mining_drill.animations.north.layers[2].hr_version.priority = "high"
steam_mining_drill.animations.north.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-N-patch.png"
steam_mining_drill.animations.north.layers[2].hr_version.line_length = 8
steam_mining_drill.animations.north.layers[2].hr_version.width = 200
steam_mining_drill.animations.north.layers[2].hr_version.height = 222
steam_mining_drill.animations.north.layers[2].hr_version.frame_count = 64
steam_mining_drill.animations.north.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.animations.north.layers[2].hr_version.direction_count = 1
steam_mining_drill.animations.north.layers[2].hr_version.shift = util.by_pixel(-0.5, -6.5)
steam_mining_drill.animations.north.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.north.layers[2].hr_version.scale = 0.5
steam_mining_drill.animations.east = {}
steam_mining_drill.animations.east.layers = {}
steam_mining_drill.animations.east.layers[1] = {}
steam_mining_drill.animations.east.layers[1].priority = "high"
steam_mining_drill.animations.east.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png"
steam_mining_drill.animations.east.layers[1].line_length = 8
steam_mining_drill.animations.east.layers[1].width = 105
steam_mining_drill.animations.east.layers[1].height = 98
steam_mining_drill.animations.east.layers[1].frame_count = 64
steam_mining_drill.animations.east.layers[1].animation_speed = 0.5
steam_mining_drill.animations.east.layers[1].direction_count = 1
steam_mining_drill.animations.east.layers[1].shift = util.by_pixel(3.5, -1)
steam_mining_drill.animations.east.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.animations.east.layers[1].hr_version = {}
steam_mining_drill.animations.east.layers[1].hr_version.priority = "high"
steam_mining_drill.animations.east.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png"
steam_mining_drill.animations.east.layers[1].hr_version.line_length = 8
steam_mining_drill.animations.east.layers[1].hr_version.width = 211
steam_mining_drill.animations.east.layers[1].hr_version.height = 197
steam_mining_drill.animations.east.layers[1].hr_version.frame_count = 64
steam_mining_drill.animations.east.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.animations.east.layers[1].hr_version.direction_count = 1
steam_mining_drill.animations.east.layers[1].hr_version.shift = util.by_pixel(3.75, -1.25)
steam_mining_drill.animations.east.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.east.layers[1].hr_version.scale = 0.5
steam_mining_drill.animations.east.layers[2] = {}
steam_mining_drill.animations.east.layers[2].priority = "extra-high"
steam_mining_drill.animations.east.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-E-patch.png"
steam_mining_drill.animations.east.layers[2].line_length = 8
steam_mining_drill.animations.east.layers[2].width = 100
steam_mining_drill.animations.east.layers[2].height = 110
steam_mining_drill.animations.east.layers[2].frame_count = 64
steam_mining_drill.animations.east.layers[2].animation_speed = 0.5
steam_mining_drill.animations.east.layers[2].direction_count = 1
steam_mining_drill.animations.east.layers[2].shift = util.by_pixel(0, -6)
steam_mining_drill.animations.east.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.animations.east.layers[2].hr_version = {}
steam_mining_drill.animations.east.layers[2].hr_version.priority = "high"
steam_mining_drill.animations.east.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-E-patch.png"
steam_mining_drill.animations.east.layers[2].hr_version.line_length = 8
steam_mining_drill.animations.east.layers[2].hr_version.width = 200
steam_mining_drill.animations.east.layers[2].hr_version.height = 219
steam_mining_drill.animations.east.layers[2].hr_version.frame_count = 64
steam_mining_drill.animations.east.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.animations.east.layers[2].hr_version.direction_count = 1
steam_mining_drill.animations.east.layers[2].hr_version.shift = util.by_pixel(0, -5.75)
steam_mining_drill.animations.east.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.east.layers[2].hr_version.scale = 0.5
steam_mining_drill.animations.south = {}
steam_mining_drill.animations.south.layers = {}
steam_mining_drill.animations.south.layers[1] = {}
steam_mining_drill.animations.south.layers[1].priority = "high"
steam_mining_drill.animations.south.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png"
steam_mining_drill.animations.south.layers[1].line_length = 8
steam_mining_drill.animations.south.layers[1].width = 98
steam_mining_drill.animations.south.layers[1].height = 109
steam_mining_drill.animations.south.layers[1].frame_count = 64
steam_mining_drill.animations.south.layers[1].animation_speed = 0.5
steam_mining_drill.animations.south.layers[1].direction_count = 1
steam_mining_drill.animations.south.layers[1].shift = util.by_pixel(0, -1.5)
steam_mining_drill.animations.south.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.animations.south.layers[1].hr_version = {}
steam_mining_drill.animations.south.layers[1].hr_version.priority = "high"
steam_mining_drill.animations.south.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png"
steam_mining_drill.animations.south.layers[1].hr_version.line_length = 8
steam_mining_drill.animations.south.layers[1].hr_version.width = 196
steam_mining_drill.animations.south.layers[1].hr_version.height = 219
steam_mining_drill.animations.south.layers[1].hr_version.frame_count = 64
steam_mining_drill.animations.south.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.animations.south.layers[1].hr_version.direction_count = 1
steam_mining_drill.animations.south.layers[1].hr_version.shift = util.by_pixel(0, -1.25)
steam_mining_drill.animations.south.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.south.layers[1].hr_version.scale = 0.5
steam_mining_drill.animations.south.layers[2] = {}
steam_mining_drill.animations.south.layers[2].priority = "extra-high"
steam_mining_drill.animations.south.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-S-patch.png"
steam_mining_drill.animations.south.layers[2].line_length = 8
steam_mining_drill.animations.south.layers[2].width = 100
steam_mining_drill.animations.south.layers[2].height = 113
steam_mining_drill.animations.south.layers[2].frame_count = 64
steam_mining_drill.animations.south.layers[2].animation_speed = 0.5
steam_mining_drill.animations.south.layers[2].direction_count = 1
steam_mining_drill.animations.south.layers[2].shift = util.by_pixel(0, -7.5)
steam_mining_drill.animations.south.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.animations.south.layers[2].hr_version = {}
steam_mining_drill.animations.south.layers[2].hr_version.priority = "high"
steam_mining_drill.animations.south.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-S-patch.png"
steam_mining_drill.animations.south.layers[2].hr_version.line_length = 8
steam_mining_drill.animations.south.layers[2].hr_version.width = 200
steam_mining_drill.animations.south.layers[2].hr_version.height = 226
steam_mining_drill.animations.south.layers[2].hr_version.frame_count = 64
steam_mining_drill.animations.south.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.animations.south.layers[2].hr_version.direction_count = 1
steam_mining_drill.animations.south.layers[2].hr_version.shift = util.by_pixel(-0.5, -7.5)
steam_mining_drill.animations.south.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.south.layers[2].hr_version.scale = 0.5
steam_mining_drill.animations.west = {}
steam_mining_drill.animations.west.layers = {}
steam_mining_drill.animations.west.layers[1] = {}
steam_mining_drill.animations.west.layers[1].priority = "high"
steam_mining_drill.animations.west.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png"
steam_mining_drill.animations.west.layers[1].line_length = 8
steam_mining_drill.animations.west.layers[1].width = 105
steam_mining_drill.animations.west.layers[1].height = 98
steam_mining_drill.animations.west.layers[1].frame_count = 64
steam_mining_drill.animations.west.layers[1].animation_speed = 0.5
steam_mining_drill.animations.west.layers[1].direction_count = 1
steam_mining_drill.animations.west.layers[1].shift = util.by_pixel(-3.5, -1)
steam_mining_drill.animations.west.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.animations.west.layers[1].hr_version = {}
steam_mining_drill.animations.west.layers[1].hr_version.priority = "high"
steam_mining_drill.animations.west.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png"
steam_mining_drill.animations.west.layers[1].hr_version.line_length = 8
steam_mining_drill.animations.west.layers[1].hr_version.width = 211
steam_mining_drill.animations.west.layers[1].hr_version.height = 197
steam_mining_drill.animations.west.layers[1].hr_version.frame_count = 64
steam_mining_drill.animations.west.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.animations.west.layers[1].hr_version.direction_count = 1
steam_mining_drill.animations.west.layers[1].hr_version.shift = util.by_pixel(-3.75, -0.75)
steam_mining_drill.animations.west.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.west.layers[1].hr_version.scale = 0.5
steam_mining_drill.animations.west.layers[2] = {}
steam_mining_drill.animations.west.layers[2].priority = "extra-high"
steam_mining_drill.animations.west.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-W-patch.png"
steam_mining_drill.animations.west.layers[2].line_length = 8
steam_mining_drill.animations.west.layers[2].width = 100
steam_mining_drill.animations.west.layers[2].height = 108
steam_mining_drill.animations.west.layers[2].frame_count = 64
steam_mining_drill.animations.west.layers[2].animation_speed = 0.5
steam_mining_drill.animations.west.layers[2].direction_count = 1
steam_mining_drill.animations.west.layers[2].shift = util.by_pixel(0, -5)
steam_mining_drill.animations.west.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.animations.west.layers[2].hr_version = {}
steam_mining_drill.animations.west.layers[2].hr_version.priority = "high"
steam_mining_drill.animations.west.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-W-patch.png"
steam_mining_drill.animations.west.layers[2].hr_version.line_length = 8
steam_mining_drill.animations.west.layers[2].hr_version.width = 200
steam_mining_drill.animations.west.layers[2].hr_version.height = 220
steam_mining_drill.animations.west.layers[2].hr_version.frame_count = 64
steam_mining_drill.animations.west.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.animations.west.layers[2].hr_version.direction_count = 1
steam_mining_drill.animations.west.layers[2].hr_version.shift = util.by_pixel(-0.5, -6)
steam_mining_drill.animations.west.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.animations.west.layers[2].hr_version.scale = 0.5
steam_mining_drill.shadow_animations = {}
steam_mining_drill.shadow_animations.north = {}
steam_mining_drill.shadow_animations.north.layers = {}
steam_mining_drill.shadow_animations.north.layers[1] = {}
steam_mining_drill.shadow_animations.north.layers[1].priority = "high"
steam_mining_drill.shadow_animations.north.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-shadow.png"
steam_mining_drill.shadow_animations.north.layers[1].flags = { "shadow" }
steam_mining_drill.shadow_animations.north.layers[1].line_length = 8
steam_mining_drill.shadow_animations.north.layers[1].width = 101
steam_mining_drill.shadow_animations.north.layers[1].height = 111
steam_mining_drill.shadow_animations.north.layers[1].frame_count = 64
steam_mining_drill.shadow_animations.north.layers[1].animation_speed = 0.5
steam_mining_drill.shadow_animations.north.layers[1].direction_count = 1
steam_mining_drill.shadow_animations.north.layers[1].shift = util.by_pixel(1.5, -7.5)
steam_mining_drill.shadow_animations.north.layers[1].draw_as_shadow = true
steam_mining_drill.shadow_animations.north.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.north.layers[1].hr_version = {}
steam_mining_drill.shadow_animations.north.layers[1].hr_version.priority = "high"
steam_mining_drill.shadow_animations.north.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-shadow.png"
steam_mining_drill.shadow_animations.north.layers[1].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.north.layers[1].hr_version.line_length = 8
steam_mining_drill.shadow_animations.north.layers[1].hr_version.width = 201
steam_mining_drill.shadow_animations.north.layers[1].hr_version.height = 223
steam_mining_drill.shadow_animations.north.layers[1].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.north.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.north.layers[1].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.north.layers[1].hr_version.shift = util.by_pixel(1.25, -7.25)
steam_mining_drill.shadow_animations.north.layers[1].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.north.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.north.layers[1].hr_version.scale = 0.5
steam_mining_drill.shadow_animations.north.layers[2] = {}
steam_mining_drill.shadow_animations.north.layers[2].priority = "extra-high"
steam_mining_drill.shadow_animations.north.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-N-patch-shadow.png"
steam_mining_drill.shadow_animations.north.layers[2].flags = { "shadow" }
steam_mining_drill.shadow_animations.north.layers[2].line_length = 8
steam_mining_drill.shadow_animations.north.layers[2].width = 110
steam_mining_drill.shadow_animations.north.layers[2].height = 98
steam_mining_drill.shadow_animations.north.layers[2].frame_count = 64
steam_mining_drill.shadow_animations.north.layers[2].animation_speed = 0.5
steam_mining_drill.shadow_animations.north.layers[2].direction_count = 1
steam_mining_drill.shadow_animations.north.layers[2].shift = util.by_pixel(5, 0)
steam_mining_drill.shadow_animations.north.layers[2].draw_as_shadow = true
steam_mining_drill.shadow_animations.north.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.north.layers[2].hr_version = {}
steam_mining_drill.shadow_animations.north.layers[2].hr_version.priority = "extra-high"
steam_mining_drill.shadow_animations.north.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-N-patch-shadow.png"
steam_mining_drill.shadow_animations.north.layers[2].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.north.layers[2].hr_version.line_length = 8
steam_mining_drill.shadow_animations.north.layers[2].hr_version.width = 220
steam_mining_drill.shadow_animations.north.layers[2].hr_version.height = 197
steam_mining_drill.shadow_animations.north.layers[2].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.north.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.north.layers[2].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.north.layers[2].hr_version.shift = util.by_pixel(5, -0.25)
steam_mining_drill.shadow_animations.north.layers[2].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.north.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.north.layers[2].hr_version.scale = 0.5
steam_mining_drill.shadow_animations.east = {}
steam_mining_drill.shadow_animations.east.layers = {}
steam_mining_drill.shadow_animations.east.layers[1] = {}
steam_mining_drill.shadow_animations.east.layers[1].priority = "high"
steam_mining_drill.shadow_animations.east.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-shadow.png"
steam_mining_drill.shadow_animations.east.layers[1].flags = { "shadow" }
steam_mining_drill.shadow_animations.east.layers[1].line_length = 8
steam_mining_drill.shadow_animations.east.layers[1].width = 110
steam_mining_drill.shadow_animations.east.layers[1].height = 97
steam_mining_drill.shadow_animations.east.layers[1].frame_count = 64
steam_mining_drill.shadow_animations.east.layers[1].animation_speed = 0.5
steam_mining_drill.shadow_animations.east.layers[1].direction_count = 1
steam_mining_drill.shadow_animations.east.layers[1].shift = util.by_pixel(6, -0.5)
steam_mining_drill.shadow_animations.east.layers[1].draw_as_shadow = true
steam_mining_drill.shadow_animations.east.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.east.layers[1].hr_version = {}
steam_mining_drill.shadow_animations.east.layers[1].hr_version.priority = "high"
steam_mining_drill.shadow_animations.east.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-shadow.png"
steam_mining_drill.shadow_animations.east.layers[1].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.east.layers[1].hr_version.line_length = 8
steam_mining_drill.shadow_animations.east.layers[1].hr_version.width = 221
steam_mining_drill.shadow_animations.east.layers[1].hr_version.height = 195
steam_mining_drill.shadow_animations.east.layers[1].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.east.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.east.layers[1].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.east.layers[1].hr_version.shift = util.by_pixel(6.25, -0.25)
steam_mining_drill.shadow_animations.east.layers[1].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.east.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.east.layers[1].hr_version.scale = 0.5
steam_mining_drill.shadow_animations.east.layers[2] = {}
steam_mining_drill.shadow_animations.east.layers[2].priority = "extra-high"
steam_mining_drill.shadow_animations.east.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-E-patch-shadow.png"
steam_mining_drill.shadow_animations.east.layers[2].flags = { "shadow" }
steam_mining_drill.shadow_animations.east.layers[2].line_length = 8
steam_mining_drill.shadow_animations.east.layers[2].width = 112
steam_mining_drill.shadow_animations.east.layers[2].height = 98
steam_mining_drill.shadow_animations.east.layers[2].frame_count = 64
steam_mining_drill.shadow_animations.east.layers[2].animation_speed = 0.5
steam_mining_drill.shadow_animations.east.layers[2].direction_count = 1
steam_mining_drill.shadow_animations.east.layers[2].shift = util.by_pixel(6, 0)
steam_mining_drill.shadow_animations.east.layers[2].draw_as_shadow = true
steam_mining_drill.shadow_animations.east.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.east.layers[2].hr_version = {}
steam_mining_drill.shadow_animations.east.layers[2].hr_version.priority = "extra-high"
steam_mining_drill.shadow_animations.east.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-E-patch-shadow.png"
steam_mining_drill.shadow_animations.east.layers[2].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.east.layers[2].hr_version.line_length = 8
steam_mining_drill.shadow_animations.east.layers[2].hr_version.width = 224
steam_mining_drill.shadow_animations.east.layers[2].hr_version.height = 198
steam_mining_drill.shadow_animations.east.layers[2].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.east.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.east.layers[2].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.east.layers[2].hr_version.shift = util.by_pixel(6, 0)
steam_mining_drill.shadow_animations.east.layers[2].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.east.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.east.layers[2].hr_version.scale = 0.5
steam_mining_drill.shadow_animations.south = {}
steam_mining_drill.shadow_animations.south.layers = {}
steam_mining_drill.shadow_animations.south.layers[1] = {}
steam_mining_drill.shadow_animations.south.layers[1].priority = "high"
steam_mining_drill.shadow_animations.south.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-shadow.png"
steam_mining_drill.shadow_animations.south.layers[1].flags = { "shadow" }
steam_mining_drill.shadow_animations.south.layers[1].line_length = 8
steam_mining_drill.shadow_animations.south.layers[1].width = 100
steam_mining_drill.shadow_animations.south.layers[1].height = 103
steam_mining_drill.shadow_animations.south.layers[1].frame_count = 64
steam_mining_drill.shadow_animations.south.layers[1].animation_speed = 0.5
steam_mining_drill.shadow_animations.south.layers[1].direction_count = 1
steam_mining_drill.shadow_animations.south.layers[1].shift = util.by_pixel(1, 2.5)
steam_mining_drill.shadow_animations.south.layers[1].draw_as_shadow = true
steam_mining_drill.shadow_animations.south.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.south.layers[1].hr_version = {}
steam_mining_drill.shadow_animations.south.layers[1].hr_version.priority = "high"
steam_mining_drill.shadow_animations.south.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-shadow.png"
steam_mining_drill.shadow_animations.south.layers[1].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.south.layers[1].hr_version.line_length = 8
steam_mining_drill.shadow_animations.south.layers[1].hr_version.width = 200
steam_mining_drill.shadow_animations.south.layers[1].hr_version.height = 206
steam_mining_drill.shadow_animations.south.layers[1].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.south.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.south.layers[1].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.south.layers[1].hr_version.shift = util.by_pixel(1, 2.5)
steam_mining_drill.shadow_animations.south.layers[1].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.south.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.south.layers[1].hr_version.scale = 0.5
steam_mining_drill.shadow_animations.south = {}
steam_mining_drill.shadow_animations.south.layers = {}
steam_mining_drill.shadow_animations.south.layers[2] = {}
steam_mining_drill.shadow_animations.south.layers[2].priority = "extra-high"
steam_mining_drill.shadow_animations.south.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-S-patch-shadow.png"
steam_mining_drill.shadow_animations.south.layers[2].flags = { "shadow" }
steam_mining_drill.shadow_animations.south.layers[2].line_length = 8
steam_mining_drill.shadow_animations.south.layers[2].width = 110
steam_mining_drill.shadow_animations.south.layers[2].height = 98
steam_mining_drill.shadow_animations.south.layers[2].frame_count = 64
steam_mining_drill.shadow_animations.south.layers[2].animation_speed = 0.5
steam_mining_drill.shadow_animations.south.layers[2].direction_count = 1
steam_mining_drill.shadow_animations.south.layers[2].shift = util.by_pixel(5, 0)
steam_mining_drill.shadow_animations.south.layers[2].draw_as_shadow = true
steam_mining_drill.shadow_animations.south.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.south.layers[2].hr_version = {}
steam_mining_drill.shadow_animations.south.layers[2].hr_version.priority = "extra-high"
steam_mining_drill.shadow_animations.south.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-S-patch-shadow.png"
steam_mining_drill.shadow_animations.south.layers[2].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.south.layers[2].hr_version.line_length = 8
steam_mining_drill.shadow_animations.south.layers[2].hr_version.width = 220
steam_mining_drill.shadow_animations.south.layers[2].hr_version.height = 197
steam_mining_drill.shadow_animations.south.layers[2].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.south.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.south.layers[2].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.south.layers[2].hr_version.shift = util.by_pixel(5, -0.25)
steam_mining_drill.shadow_animations.south.layers[2].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.south.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.south.layers[2].hr_version.scale = 0.5
steam_mining_drill.shadow_animations.west = {}
steam_mining_drill.shadow_animations.west.layers = {}
steam_mining_drill.shadow_animations.west.layers[1] = {}
steam_mining_drill.shadow_animations.west.layers[1].priority = "high"
steam_mining_drill.shadow_animations.west.layers[1].filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-shadow.png"
steam_mining_drill.shadow_animations.west.layers[1].flags = { "shadow" }
steam_mining_drill.shadow_animations.west.layers[1].line_length = 8
steam_mining_drill.shadow_animations.west.layers[1].width = 114
steam_mining_drill.shadow_animations.west.layers[1].height = 97
steam_mining_drill.shadow_animations.west.layers[1].frame_count = 64
steam_mining_drill.shadow_animations.west.layers[1].animation_speed = 0.5
steam_mining_drill.shadow_animations.west.layers[1].direction_count = 1
steam_mining_drill.shadow_animations.west.layers[1].shift = util.by_pixel(1, -0.5)
steam_mining_drill.shadow_animations.west.layers[1].draw_as_shadow = true
steam_mining_drill.shadow_animations.west.layers[1].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.west.layers[1].hr_version = {}
steam_mining_drill.shadow_animations.west.layers[1].hr_version.priority = "high"
steam_mining_drill.shadow_animations.west.layers[1].hr_version.filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-shadow.png"
steam_mining_drill.shadow_animations.west.layers[1].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.west.layers[1].hr_version.line_length = 8
steam_mining_drill.shadow_animations.west.layers[1].hr_version.width = 229
steam_mining_drill.shadow_animations.west.layers[1].hr_version.height = 195
steam_mining_drill.shadow_animations.west.layers[1].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.west.layers[1].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.west.layers[1].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.west.layers[1].hr_version.shift = util.by_pixel(1.25, -0.25)
steam_mining_drill.shadow_animations.west.layers[1].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.west.layers[1].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.west.layers[1].hr_version.scale = 0.5
steam_mining_drill.shadow_animations.west = {}
steam_mining_drill.shadow_animations.west.layers = {}
steam_mining_drill.shadow_animations.west.layers[2] = {}
steam_mining_drill.shadow_animations.west.layers[2].priority = "extra-high"
steam_mining_drill.shadow_animations.west.layers[2].filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/electric-mining-drill-W-patch-shadow.png"
steam_mining_drill.shadow_animations.west.layers[2].flags = { "shadow" }
steam_mining_drill.shadow_animations.west.layers[2].line_length = 8
steam_mining_drill.shadow_animations.west.layers[2].width = 110
steam_mining_drill.shadow_animations.west.layers[2].height = 98
steam_mining_drill.shadow_animations.west.layers[2].frame_count = 64
steam_mining_drill.shadow_animations.west.layers[2].animation_speed = 0.5
steam_mining_drill.shadow_animations.west.layers[2].direction_count = 1
steam_mining_drill.shadow_animations.west.layers[2].shift = util.by_pixel(5, 0)
steam_mining_drill.shadow_animations.west.layers[2].draw_as_shadow = true
steam_mining_drill.shadow_animations.west.layers[2].run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.west.layers[2].hr_version = {}
steam_mining_drill.shadow_animations.west.layers[2].hr_version.priority = "extra-high"
steam_mining_drill.shadow_animations.west.layers[2].hr_version.filename = "__apm_resource_pack__/graphics/entities/steam_mining_drill/hr-electric-mining-drill-W-patch-shadow.png"
steam_mining_drill.shadow_animations.west.layers[2].hr_version.flags = { "shadow" }
steam_mining_drill.shadow_animations.west.layers[2].hr_version.line_length = 8
steam_mining_drill.shadow_animations.west.layers[2].hr_version.width = 220
steam_mining_drill.shadow_animations.west.layers[2].hr_version.height = 197
steam_mining_drill.shadow_animations.west.layers[2].hr_version.frame_count = 64
steam_mining_drill.shadow_animations.west.layers[2].hr_version.animation_speed = 0.5
steam_mining_drill.shadow_animations.west.layers[2].hr_version.direction_count = 1
steam_mining_drill.shadow_animations.west.layers[2].hr_version.shift = util.by_pixel(5, -0.25)
steam_mining_drill.shadow_animations.west.layers[2].hr_version.draw_as_shadow = true
steam_mining_drill.shadow_animations.west.layers[2].hr_version.run_mode = "forward-then-backward"
steam_mining_drill.shadow_animations.west.layers[2].hr_version.scale = 0.5
steam_mining_drill.mining_speed = 0.55
steam_mining_drill.energy_source = {}
steam_mining_drill.energy_source.type = "fluid"
steam_mining_drill.energy_source.fluid_box = {}
steam_mining_drill.energy_source.fluid_box.production_type = "input-output"
steam_mining_drill.energy_source.fluid_box.pipe_covers = pipecoverspictures()
steam_mining_drill.energy_source.fluid_box.base_area = 1
steam_mining_drill.energy_source.fluid_box.pipe_connections = {
  { type="input-output", position = {2, 0}},
  { type="input-output", position = {0, 2}},
  { type="input-output", position = {-2, 0}}
}
steam_mining_drill.energy_source.fluid_box.filter = "steam"
steam_mining_drill.energy_source.minimum_temperature = 100.0
steam_mining_drill.energy_source.maximum_temperature = 1000.0
steam_mining_drill.energy_source.burns_fluid = false
steam_mining_drill.energy_source.scale_fluid_usage = true
steam_mining_drill.energy_source.emissions_per_minute = 5
steam_mining_drill.energy_source.smoke = {}
steam_mining_drill.energy_source.smoke[1] = {}
steam_mining_drill.energy_source.smoke[1].name = "light-smoke"
steam_mining_drill.energy_source.smoke[1].deviation = {0.1, 0.1}
steam_mining_drill.energy_source.smoke[1].frequency = 8
steam_mining_drill.energy_source.smoke[1].position = nil
steam_mining_drill.energy_source.smoke[1].north_position = {0, 1}
steam_mining_drill.energy_source.smoke[1].south_position = {0, -1}
steam_mining_drill.energy_source.smoke[1].east_position = {-1, 0}
steam_mining_drill.energy_source.smoke[1].west_position = {1, 0}
steam_mining_drill.energy_source.smoke[1].starting_vertical_speed = 0.08
steam_mining_drill.energy_source.smoke[1].starting_frame_deviation = 60
steam_mining_drill.energy_source.smoke[1].slow_down_factor = 1
steam_mining_drill.energy_usage = "300kW"
steam_mining_drill.resource_searching_radius = 2.49
steam_mining_drill.vector_to_place_result = {0, -1.85}
steam_mining_drill.module_specification = { module_slots = 2 }
steam_mining_drill.radius_visualisation_picture = {
  filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
  width = 10,
  height = 10
}
steam_mining_drill.monitor_visualization_tint = {r=78, g=173, b=255}
steam_mining_drill.fast_replaceable_group = "mining-drill"
steam_mining_drill.circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points
steam_mining_drill.circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites
steam_mining_drill.circuit_wire_max_distance = default_circuit_wire_max_distance
data:extend({steam_mining_drill})