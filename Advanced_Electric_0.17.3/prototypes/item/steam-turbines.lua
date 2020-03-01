data.raw.item["steam-turbine"].order = "b[steam-power]-b[steam-turbine-1]"
data.raw.item["steam-turbine"].subgroup = "advanced-electric-steam-turbine"
data.raw.item["steam-turbine"].icon = nil
data.raw.item["steam-turbine"].icons = secondary_steam_turbine_icons

local steam_turbine_mk2 = util.table.deepcopy(data.raw.item["steam-turbine"])
steam_turbine_mk2.name = "advanced-electric-steam-turbine-2"
steam_turbine_mk2.icon = nil
steam_turbine_mk2.icons = secondary_steam_turbine_icons
steam_turbine_mk2.subgroup = "advanced-electric-steam-turbine"
steam_turbine_mk2.order = "b[steam-power]-b[steam-turbine-2]"
steam_turbine_mk2.place_result = "advanced-electric-steam-turbine-2"
data:extend({steam_turbine_mk2})

--primary load engines
local primary_load_steam_engine = util.table.deepcopy(data.raw.item["steam-turbine"])
primary_load_steam_engine.name = "advanced-electric-primary-steam-turbine-1"
primary_load_steam_engine.icon = nil
primary_load_steam_engine.icons = primary_steam_turbine_icons
primary_load_steam_engine.subgroup = "advanced-electric-steam-turbine"
primary_load_steam_engine.order = "b[steam-power]-c[steam-turbine-1]"
primary_load_steam_engine.place_result = "advanced-electric-primary-steam-turbine-1"
data:extend({primary_load_steam_engine})

local primary_load_steam_turbine_mk2 = util.table.deepcopy(data.raw.item["steam-turbine"])
primary_load_steam_turbine_mk2.name = "advanced-electric-primary-steam-turbine-2"
primary_load_steam_turbine_mk2.icon = nil
primary_load_steam_turbine_mk2.icons = primary_steam_turbine_icons
primary_load_steam_turbine_mk2.subgroup = "advanced-electric-steam-turbine"
primary_load_steam_turbine_mk2.order = "b[steam-power]-c[steam-turbine-2]"
primary_load_steam_turbine_mk2.place_result = "advanced-electric-primary-steam-turbine-2"
data:extend({primary_load_steam_turbine_mk2})