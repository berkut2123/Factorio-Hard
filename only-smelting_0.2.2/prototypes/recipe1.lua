require("functions")

remove_technology_unlock("steel-processing", "steel-plate")
remove_technology_unlock("concrete", "concrete")

--help space
--recipe("electric-stone-furnace").ingredients = {{"stone-furnace", 1},{"basic-circuit-board", 2},{	"iron-plate", 1}}
--recipe("electric-stone-furnace").enabled = false
--remove_technology_unlock("steel-processing", "steel-plate")
	
recipe("copper-plate").enabled = false
recipe("iron-plate").enabled = false
recipe("concrete").enabled = false
if recipe("lead-plate") then
recipe("lead-plate").enabled = false
end
if recipe("silver-plate") then
recipe("silver-plate").enabled = false
end
if recipe("tin-plate") then
recipe("tin-plate").enabled = false
end
if recipe("quartz-glass") then
recipe("quartz-glass").enabled = false
end