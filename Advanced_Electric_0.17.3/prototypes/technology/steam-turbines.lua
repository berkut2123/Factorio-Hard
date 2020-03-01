table.insert(data.raw["technology"]["nuclear-power"].effects, {type = "unlock-recipe",recipe = "advanced-electric-primary-steam-turbine-1"})

local steam_turbine_mk2 = util.table.deepcopy(data.raw.technology["nuclear-power"])
steam_turbine_mk2.name = "advanced-electric-steam-turbine"
steam_turbine_mk2.icon = "__base__/graphics/icons/steam-turbine.png"
steam_turbine_mk2.icon_size = 32
steam_turbine_mk2.prerequisites =
{
  "nuclear-power",
}
steam_turbine_mk2.effects =
{
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-steam-turbine-2"
  },
  {
    type = "unlock-recipe",
    recipe = "advanced-electric-primary-steam-turbine-2"
  },
}
steam_turbine_mk2.unit.count = 500
steam_turbine_mk2.unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}
steam_turbine_mk2.unit.time = 30
steam_turbine_mk2.upgrade = true
steam_turbine_mk2.order = "[steam]-2"
data:extend({steam_turbine_mk2})