function patchTable(t1, t2)
	for k,v in pairs(t2) do
	    if type(v) == "table" then
	      t1[k] = table.deepcopy(v)
	    else
			  t1[k] = v
	    end
	end
end


require("prototypes.equipment-plasma-laser")
require("prototypes.equipment-shield")
require("prototypes.tank-entity")
require("prototypes.ammo")
require("prototypes.ammo-recipe")
require("prototypes.gun")
require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.projectiles")
require("prototypes.tank-grid")
require("input.input")
require("prototypes.technology")
require("prototypes.subgroup")
require("prototypes.fuel-types")
require("prototypes.fuel")
require("prototypes.equipments")
require("prototypes.overrides")
--require("prototypes.particle-accelerator")
--require("prototypes.test_stuff")
