secondary_tint = { r = 0.125, g = 0.25, b = 0.5, a = 0.333 }
primary_tint = { r = 0.125, g = 0.5, b = 0.25, a = 0.333 }
secondary_entity_tint = { r = 0.625, g = 0.75, b = 1, a = 1 }
primary_entity_tint = { r = 0.625, g = 1, b = 0.75, a = 1 }

secondary_steam_engine_icons = {{icon = "__base__/graphics/icons/steam-engine.png"},{ icon = "__base__/graphics/icons/steam-engine.png", tint = secondary_tint}}
primary_steam_engine_icons = {{icon = "__base__/graphics/icons/steam-engine.png"},{ icon = "__base__/graphics/icons/steam-engine.png", tint = primary_tint}}

secondary_steam_turbine_icons = {{ icon = "__base__/graphics/icons/steam-turbine.png"}, { icon = "__base__/graphics/icons/steam-turbine.png", tint = secondary_tint}}
primary_steam_turbine_icons = {{ icon = "__base__/graphics/icons/steam-turbine.png"}, { icon = "__base__/graphics/icons/steam-turbine.png", tint = primary_tint}}

require("prototypes.category")

require("prototypes.entity.poles")
require("prototypes.entity.boilers")
require("prototypes.entity.reactors")
require("prototypes.entity.steam-engines")
require("prototypes.entity.steam-turbines")
require("prototypes.entity.heat-exchangers")
require("prototypes.entity.heat-pipe")

require("prototypes.item.poles")
require("prototypes.item.boilers")
require("prototypes.item.reactors")
require("prototypes.item.steam-engines")
require("prototypes.item.steam-turbines")
require("prototypes.item.heat-exchangers")
require("prototypes.item.heat-pipe")

require("prototypes.recipe.poles")
require("prototypes.recipe.boilers")
require("prototypes.recipe.reactors")
require("prototypes.recipe.steam-engines")
require("prototypes.recipe.steam-turbines")
require("prototypes.recipe.heat-exchangers")
require("prototypes.recipe.heat-pipe")

require("prototypes.technology.poles")
require("prototypes.technology.boilers")
require("prototypes.technology.reactors")
require("prototypes.technology.steam-engines")
require("prototypes.technology.steam-turbines")
require("prototypes.technology.heat-exchangers")
require("prototypes.technology.heat-pipe")