local data_util = require("data-util")

aai_vehicles = true

require("prototypes/input")
require("prototypes/shortcut")
require("prototypes/styles")
require("prototypes/animation")
require("prototypes/technology/technology")
require("prototypes/entity/entity")
require("prototypes/entity/entity-structures")
require("prototypes/entity/entity-deployer")
require("prototypes/entity/entity-depot")
require("prototypes/entity/entity-position-beacon")
require("prototypes/entity/projectiles")
require("prototypes/entity/entity-indicator")
require("prototypes/item-groups")
require("prototypes/item/item")
require("prototypes/item/ammo")
require("prototypes/recipe/recipe")
require("prototypes/recipe/ammo")
require("prototypes/sprites")
require("prototypes/signal")

aai_vehicle_exclusions = {"logicart", "nixie-tube"}

if settings.startup["exclude-vehicles"] and settings.startup["exclude-vehicles"].value then
  local vehicles_string = settings.startup["exclude-vehicles"].value
  local vehicle_words = data_util.just_words(vehicles_string)
  if vehicle_words then
    for _, vehicle in pairs(vehicle_words) do
      table.insert(aai_vehicle_exclusions, vehicle)
      log("Exclude vehicle name: " .. vehicle)
    end
  end
end
