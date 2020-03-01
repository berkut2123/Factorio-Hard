--small poles--
local small_electric_pole_mk2 = util.table.deepcopy(data.raw.recipe["small-electric-pole"])
small_electric_pole_mk2.name = "small-electric-pole-2"
small_electric_pole_mk2.enabled = "false"
small_electric_pole_mk2.ingredients =
{
  {"small-electric-pole", 2},
  {"iron-plate", 2},
  {"copper-plate", 2},
}
small_electric_pole_mk2.result = "small-electric-pole-2"
small_electric_pole_mk2.result_count = 2
data:extend({small_electric_pole_mk2})

--medium poles--
local medium_electric_pole_mk2 = util.table.deepcopy(data.raw.recipe["medium-electric-pole"])
medium_electric_pole_mk2.name = "medium-electric-pole-2"
medium_electric_pole_mk2.enabled = "false"
medium_electric_pole_mk2.ingredients =
{
  {"medium-electric-pole", 1},
  {"steel-plate", 1},
  {"copper-plate", 2},
}
medium_electric_pole_mk2.result = "medium-electric-pole-2"
data:extend({medium_electric_pole_mk2})

local medium_electric_pole_mk3 = util.table.deepcopy(data.raw.recipe["medium-electric-pole"])
medium_electric_pole_mk3.name = "medium-electric-pole-3"
medium_electric_pole_mk3.enabled = "false"
medium_electric_pole_mk3.ingredients =
{
  {"medium-electric-pole-2", 1},
  {"steel-plate", 1},
  {"copper-plate", 2},
}
medium_electric_pole_mk3.result = "medium-electric-pole-3"
data:extend({medium_electric_pole_mk3})

local medium_electric_pole_mk4 = util.table.deepcopy(data.raw.recipe["medium-electric-pole"])
medium_electric_pole_mk4.name = "medium-electric-pole-4"
medium_electric_pole_mk4.enabled = "false"
medium_electric_pole_mk4.ingredients =
{
  {"medium-electric-pole-3", 1},
  {"steel-plate", 1},
  {"copper-plate", 2},
}
medium_electric_pole_mk4.result = "medium-electric-pole-4"
data:extend({medium_electric_pole_mk4})

--big poles--
local big_electric_pole_mk2 = util.table.deepcopy(data.raw.recipe["big-electric-pole"])
big_electric_pole_mk2.name = "big-electric-pole-2"
big_electric_pole_mk2.enabled = "false"
big_electric_pole_mk2.ingredients =
{
  {"big-electric-pole", 1},
  {"steel-plate", 3},
  {"copper-plate", 3},
}
big_electric_pole_mk2.result = "big-electric-pole-2"
data:extend({big_electric_pole_mk2})

local big_electric_pole_mk3 = util.table.deepcopy(data.raw.recipe["big-electric-pole"])
big_electric_pole_mk3.name = "big-electric-pole-3"
big_electric_pole_mk3.enabled = "false"
big_electric_pole_mk3.ingredients =
{
  {"big-electric-pole-2", 1},
  {"steel-plate", 3},
  {"copper-plate", 3},
}
big_electric_pole_mk3.result = "big-electric-pole-3"
data:extend({big_electric_pole_mk3})

local big_electric_pole_mk4 = util.table.deepcopy(data.raw.recipe["big-electric-pole"])
big_electric_pole_mk4.name = "big-electric-pole-4"
big_electric_pole_mk4.enabled = "false"
big_electric_pole_mk4.ingredients =
{
  {"big-electric-pole-3", 1},
  {"steel-plate", 3},
  {"copper-plate", 3},
}
big_electric_pole_mk4.result = "big-electric-pole-4"
data:extend({big_electric_pole_mk4})

--substations--
local substation_mk2 = util.table.deepcopy(data.raw.recipe["substation"])
substation_mk2.name = "substation-2"
substation_mk2.enabled = "false"
substation_mk2.ingredients =
{
  {"substation", 1},
  {"advanced-circuit", 2},
  {"steel-plate", 10},
  {"copper-plate", 5},
}
substation_mk2.result = "substation-2"
data:extend({substation_mk2})

local substation_mk3 = util.table.deepcopy(data.raw.recipe["substation"])
substation_mk3.name = "substation-3"
substation_mk3.enabled = "false"
substation_mk3.ingredients =
{
  {"substation-2", 1},
  {"advanced-circuit", 2},
  {"steel-plate", 10},
  {"copper-plate", 5},
}
substation_mk3.result = "substation-3"
data:extend({substation_mk3})

local substation_mk4 = util.table.deepcopy(data.raw.recipe["substation"])
substation_mk4.name = "substation-4"
substation_mk4.enabled = "false"
substation_mk4.ingredients =
{
  {"substation-3", 1},
  {"processing-unit", 2},
  {"steel-plate", 10},
  {"copper-plate", 5},
}
substation_mk4.result = "substation-4"
data:extend({substation_mk4})
