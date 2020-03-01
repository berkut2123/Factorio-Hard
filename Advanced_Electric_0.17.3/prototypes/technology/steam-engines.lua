local steam_engine_mk2 = util.table.deepcopy(data.raw.technology["steel-processing"])
steam_engine_mk2.name = "advanced-electric-steam-engine-1"
steam_engine_mk2.icon = "__base__/graphics/icons/steam-engine.png"
steam_engine_mk2.icon_size = 32
steam_engine_mk2.prerequisites =
{
  "advanced-material-processing",
}
steam_engine_mk2.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-steam-engine-2"
  },
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-primary-steam-engine-2"
  },
}
steam_engine_mk2.unit.count = 50
steam_engine_mk2.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
steam_engine_mk2.unit.time = 30
steam_engine_mk2.upgrade = true
steam_engine_mk2.order = "[steam]-1"
data:extend({steam_engine_mk2})

local steam_engine_mk3 = util.table.deepcopy(data.raw.technology["steel-processing"])
steam_engine_mk3.name = "advanced-electric-steam-engine-2"
steam_engine_mk3.icon = "__base__/graphics/icons/steam-engine.png"
steam_engine_mk3.icon_size = 32
steam_engine_mk3.prerequisites =
{
  "advanced-electric-steam-engine-1",
  "advanced-electronics"
}
steam_engine_mk3.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-steam-engine-3"
  },
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-primary-steam-engine-3"
  },
}
steam_engine_mk3.unit.count = 50
steam_engine_mk3.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
steam_engine_mk3.unit.time = 30
steam_engine_mk3.upgrade = true
steam_engine_mk3.order = "[steam]-2"
data:extend({steam_engine_mk3})

local steam_engine_mk4 = util.table.deepcopy(data.raw.technology["steel-processing"])
steam_engine_mk4.name = "advanced-electric-steam-engine-3"
steam_engine_mk4.icon = "__base__/graphics/icons/steam-engine.png"
steam_engine_mk4.icon_size = 32
steam_engine_mk4.prerequisites =
{
  "advanced-electric-steam-engine-2",
  "advanced-electronics-2"
}
steam_engine_mk4.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-steam-engine-4"
  },
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-primary-steam-engine-4"
  },
}
steam_engine_mk4.unit.count = 50
steam_engine_mk4.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1}
}
steam_engine_mk4.unit.time = 30
steam_engine_mk4.upgrade = true
steam_engine_mk4.order = "[steam]-3"
data:extend({steam_engine_mk4})