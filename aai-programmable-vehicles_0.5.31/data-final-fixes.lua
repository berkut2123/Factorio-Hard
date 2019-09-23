local data_util = require("data-util")

require("prototypes/entity/entity-update-externals")
require("prototypes/entity/entity-update")
require("prototypes/item-projectiles")

--log( serpent.block( data.raw["projectile"], {comment = false, numformat = '%1.8g' } ) )
--log( serpent.block( data.raw["utility-sprites"], {comment = false, numformat = '%1.8g' } ) )

local construction_denial_range = 50

-- worms
for _, turret in pairs(data.raw.turret) do
  if string.find(turret.name, "worm", 1, true) then
    if turret.attack_parameters and turret.attack_parameters.range and turret.attack_parameters.range < (data_util.construction_denial_range - 5)  then
      turret.attack_parameters.range = math.min( (data_util.construction_denial_range - 5), (turret.attack_parameters.range + 5) * 1.25)
      turret.attack_parameters.prepare_range = turret.attack_parameters.range + 5
    end
  end
end
