data.raw.item["steam-engine"].order="b[steam-power]-b[steam-engine-1]"
data.raw.item["steam-engine"].subgroup = "advanced-electric-steam-engine"
data.raw.item["steam-engine"].icon = nil
data.raw.item["steam-engine"].icons = secondary_steam_engine_icons

local steam_engine_mk2 = util.table.deepcopy(data.raw.item["steam-engine"])
steam_engine_mk2.name = "advanced-electric-steam-engine-2"
steam_engine_mk2.icon = nil
steam_engine_mk2.icons = secondary_steam_engine_icons
steam_engine_mk2.subgroup = "advanced-electric-steam-engine"
steam_engine_mk2.order = "b[steam-power]-b[steam-engine-2]"
steam_engine_mk2.place_result = "advanced-electric-steam-engine-2"
data:extend({steam_engine_mk2})

local steam_engine_mk3 = util.table.deepcopy(data.raw.item["steam-engine"])
steam_engine_mk3.name = "advanced-electric-steam-engine-3"
steam_engine_mk3.icon = nil
steam_engine_mk3.icons = secondary_steam_engine_icons
steam_engine_mk3.subgroup = "advanced-electric-steam-engine"
steam_engine_mk3.order = "b[steam-power]-b[steam-engine-3]"
steam_engine_mk3.place_result = "advanced-electric-steam-engine-3"
data:extend({steam_engine_mk3})

local steam_engine_mk4 = util.table.deepcopy(data.raw.item["steam-engine"])
steam_engine_mk4.name = "advanced-electric-steam-engine-4"
steam_engine_mk4.icon = nil
steam_engine_mk4.icons = secondary_steam_engine_icons
steam_engine_mk4.subgroup = "advanced-electric-steam-engine"
steam_engine_mk4.order = "b[steam-power]-b[steam-engine-4]"
steam_engine_mk4.place_result = "advanced-electric-steam-engine-4"
data:extend({steam_engine_mk4})

--primary load engines
local primary_load_steam_engine = util.table.deepcopy(data.raw.item["steam-engine"])
primary_load_steam_engine.name = "advanced-electric-primary-steam-engine-1"
primary_load_steam_engine.icon = nil
primary_load_steam_engine.icons = primary_steam_engine_icons
primary_load_steam_engine.subgroup = "advanced-electric-steam-engine"
primary_load_steam_engine.order = "b[steam-power]-c[steam-engine-1]"
primary_load_steam_engine.place_result = "advanced-electric-primary-steam-engine-1"
data:extend({primary_load_steam_engine})

local primary_load_steam_engine_mk2 = util.table.deepcopy(data.raw.item["steam-engine"])
primary_load_steam_engine_mk2.name = "advanced-electric-primary-steam-engine-2"
primary_load_steam_engine_mk2.icon = nil
primary_load_steam_engine_mk2.icons = primary_steam_engine_icons
primary_load_steam_engine_mk2.subgroup = "advanced-electric-steam-engine"
primary_load_steam_engine_mk2.order = "b[steam-power]-c[steam-engine-2]"
primary_load_steam_engine_mk2.place_result = "advanced-electric-primary-steam-engine-2"
data:extend({primary_load_steam_engine_mk2})

local primary_load_steam_engine_mk3 = util.table.deepcopy(data.raw.item["steam-engine"])
primary_load_steam_engine_mk3.name = "advanced-electric-primary-steam-engine-3"
primary_load_steam_engine_mk3.icon = nil
primary_load_steam_engine_mk3.icons = primary_steam_engine_icons
primary_load_steam_engine_mk3.subgroup = "advanced-electric-steam-engine"
primary_load_steam_engine_mk3.order = "b[steam-power]-c[steam-engine-3]"
primary_load_steam_engine_mk3.place_result = "advanced-electric-primary-steam-engine-3"
data:extend({primary_load_steam_engine_mk3})

local primary_load_steam_engine_mk4 = util.table.deepcopy(data.raw.item["steam-engine"])
primary_load_steam_engine_mk4.name = "advanced-electric-primary-steam-engine-4"
primary_load_steam_engine_mk4.icon = nil
primary_load_steam_engine_mk4.icons = primary_steam_engine_icons
primary_load_steam_engine_mk4.subgroup = "advanced-electric-steam-engine"
primary_load_steam_engine_mk4.order = "b[steam-power]-c[steam-engine-4]"
primary_load_steam_engine_mk4.place_result = "advanced-electric-primary-steam-engine-4"
data:extend({primary_load_steam_engine_mk4})