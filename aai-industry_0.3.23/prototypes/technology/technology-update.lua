local util = require("data-util")

util.tech_add_prerequisites("programmable-structures", "radar")

util.tech_add_prerequisites("nuclear-power", "steam-power")
util.tech_add_prerequisites("modules", "electric-lab")
util.tech_add_prerequisites("advanced-material-processing", "basic-automation")
util.tech_add_prerequisites("engine", "basic-automation")
util.tech_add_prerequisites("oil-processing", "fluid-handling")
util.tech_add_prerequisites("oil-processing", "glass-processing")
util.tech_add_prerequisites("steel", "basic-fluid-handling")

util.tech_add_prerequisites("concrete", "sand-processing")
util.tech_add_prerequisites("optics", "glass-processing")

util.tech_remove_prerequisites("automation-2", {"speed-module"})
util.tech_add_prerequisites("automation-2", "steel-processing")
util.tech_add_prerequisites("automation-3", "automation-2")
util.tech_add_prerequisites("automation-3", "electric-engine")

util.tech_add_prerequisites("advanced-electronics", "electronics")
util.tech_add_prerequisites("logistics-2", "electronics")
util.tech_add_prerequisites("robotics", "electronics")

util.tech_add_prerequisites("electric-engine", "engine")

util.tech_add_prerequisites("logistic-science-pack", {"basic-logistics", "electronics"})

util.tech_lock_recipes(
    "basic-logistics",  {
      "transport-belt"})

util.tech_lock_recipes(
    "logistics",  {
        "underground-belt",
        "splitter"})

--bobs
util.tech_add_prerequisites("radars", "radar")
util.tech_add_prerequisites("water-bore-1", "basic-fluid-handling")
util.tech_add_prerequisites("water-miner-1", "basic-fluid-handling")
util.tech_add_prerequisites("air-compressor-1", "basic-fluid-handling")
util.tech_add_prerequisites("electrolysis-1", "basic-fluid-handling")
util.tech_add_prerequisites("alloy-processing-1", "basic-fluid-handling")
util.tech_add_prerequisites("bob-greenhouse", "basic-fluid-handling")
util.tech_add_prerequisites("chemical-processing-1", "basic-fluid-handling")
util.tech_add_prerequisites("chemical-processing-1", "basic-fluid-handling")
util.tech_add_prerequisites("bob-drills-1", "electric-mining")
util.tech_add_prerequisites("bob-area-drills-1", "electric-mining")
util.tech_add_prerequisites("bob-pumpjacks-1", "basic-fluid-handling")
if data.raw.technology["bob-boiler-1"] then
  util.tech_add_prerequisites("bob-boiler-1", "steam-power")
else
  util.tech_add_prerequisites("bob-boiler-2", "steam-power")
end
util.tech_add_prerequisites("gas-canisters", "fluid-handling")

util.tech_add_prerequisites("steam-engine-generator-1", "steam-power")
util.tech_add_prerequisites("bob-steam-engine-2", "steam-power")
util.tech_add_prerequisites("bob-steam-power-1", "steam-power")
if data.raw.technology["bob-steam-power-1"] then
  data.raw.technology["bob-steam-power-1"].unit.count = 100
end
util.tech_add_prerequisites("bob-oil-boiler-1", "steam-power")

if data.raw.technology["logistics-0"] then -- which mod was this adding support for?
  data.raw.technology["basic-logistics"].localised_name = {"technology-name.basic-logistics-1"}
  data.raw.technology["logistics-0"].localised_name = {"technology-name.basic-logistics-2"}
  util.tech_remove_prerequisites("logistic-science-pack", {"basic-logistics"})
  util.tech_add_prerequisites("logistic-science-pack", {"logistics-0"})
  util.tech_add_prerequisites("logistics-0", "basic-logistics")
  if data.raw.recipe["basic-transport-belt"] then
    util.tech_lock_recipes(
        "basic-logistics",  {
            "basic-transport-belt"})
    util.tech_lock_recipes(
        "logistics",  {
            "transport-belt"})
  end
end

if data.raw.technology["bob-logistics-0"] and data.raw.recipe["basic-transport-belt"] then -- bobs
    -- if bob-basic-logistics then use basic logistics to lock tsp-0
    data.raw.technology["basic-logistics"].localised_name = {"technology-name.basic-logistics-1"}
    data.raw.technology["bob-logistics-0"].localised_name = {"technology-name.basic-logistics-2"}
    data.raw.technology["bob-logistics-0"].prerequisites = {"basic-logistics"}
    data.raw.technology["bob-logistics-0"].unit.count = 20

    util.tech_lock_recipes(
        "basic-logistics",  {
            "basic-transport-belt"})

    data.raw.technology["logistics"].prerequisites = {"bob-logistics-0"}
    data.raw.technology["logistics"].unit.count = 100
    util.tech_lock_recipes(
          "logistics",  {
              "transport-belt"})

else
end


--angels
util.tech_add_prerequisites("ore-crushing", "electricity")
util.tech_add_prerequisites("angels-metallurgy-1", "electricity")
util.tech_add_prerequisites("basic-chemistry", "basic-fluid-handling")
util.tech_add_prerequisites("angels-fluid-control", "basic-fluid-handling")
util.tech_add_prerequisites("bio-processing-green", "basic-fluid-handling")
util.tech_add_prerequisites("bio-processing-brown", "basic-fluid-handling")
util.tech_add_prerequisites("water-treatment", "basic-fluid-handling")
util.tech_add_prerequisites("oil-gas-extraction", "basic-fluid-handling")
util.tech_add_prerequisites("slag-processing-1", "basic-fluid-handling")
util.tech_add_prerequisites("angels-glass-smelting-1", "glass-processing")
if data.raw.item["solid-sand"] then -- angels sand
  util.tech_lock_recipes(
      "water-washing-1",  {
          "sand-to-solid-sand"})
end


util.tech_lock_recipes(
    "sand-processing",  {
        "sand-from-stone"})

util.tech_lock_recipes(
    "glass-processing",  {
        "glass-from-sand", "quartz-glass"})

util.tech_lock_recipes(
    "fuel-processing",  {
        "fuel-processor"})

util.tech_lock_recipes(
    "basic-automation",  {
        "burner-assembling-machine",
        "burner-inserter"})

util.tech_lock_recipes(
    "automation",  {
        "inserter"})

-- now has own tech
--util.tech_lock_recipes(
--    "automation-2",  {
--        "fast-inserter"})





util.tech_lock_recipes(
    "electricity",  {
        "electric-motor",
        "burner-turbine",
        "inserter",
        "small-electric-pole",
        "small-iron-electric-pole"})

if data.raw.recipe["basic-circuit-board"] then -- bobs
  util.tech_lock_recipes(
      "electronics",  {
          "wooden-board",
          "basic-circuit-board"})
else
  util.tech_lock_recipes(
      "electronics",  {
          "electronic-circuit",
          "electronic-circuit-stone"})
end


util.tech_lock_recipes(
    "filter-inserters",  {
      "filter-inserter"})

util.tech_lock_recipes(
    "radar",  {
        "radar"})

util.tech_lock_recipes(
    "radar",  {
        "radar"})

util.tech_lock_recipes(
    "radar",  {
        "radar"})

util.tech_lock_recipes(
    "basic-fluid-handling",  {
        "pipe",
        "pipe-to-ground",
        "copper-pipe",
        "copper-pipe-to-ground",
        "stone-pipe",
        "stone-pipe-to-ground",
        "offshore-pump",
        "bob-valve"})

util.tech_lock_recipes(
    "fluid-handling",  {
        "pump"})

util.tech_lock_recipes(
    "steam-power",  {
        "boiler",
        "steam-engine"})

util.tech_lock_recipes(
    "electric-lab",  {
        "lab"})

util.tech_lock_recipes(
    "electric-mining",  {
        "electric-mining-drill"})

util.tech_lock_recipes(
    "concrete-walls",  {
        "concrete-wall"})

util.tech_lock_recipes(
    "steel-walls",  {
        "steel-wall"})

util.tech_lock_recipes(
    "circuit-network",  {
        "pushbutton"})
