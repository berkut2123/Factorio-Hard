------------------------------------------------------------------------------------------------------------------------------------------------------

require("code.functions.functions-technology")
require("code.functions.functions-recipes")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- TECHNOLOGY WORK-OVER PART 1
-- disable redundant vanilla techs, destroy the entire tree graph, add new techs, add conceptual prerequisites, add science pack prereqs

------------------------------------------------------------------------------------------------------------------------------------------------------

-- unwanted or obsolete vanilla tech

disable_technology("advanced-electronics") --> deadlock-electronics-2
disable_technology("advanced-electronics-2") --> deadlock-electronics-3
disable_technology("advanced-material-processing") --> no material equivalent, functionally this would be deadlock-furnaces-1
disable_technology("advanced-material-processing-2") --> no material equivalent, functionally this would be deadlock-furnaces-2
disable_technology("concrete") --> deadlock-concrete-1
disable_technology("effectivity-module") --> deadlock-modules-1
disable_technology("effectivity-module-2") --> deadlock-modules-2
disable_technology("effectivity-module-3") --> deadlock-modules-3
disable_technology("electronics") --> deadlock-electronics-1
disable_technology("fast-inserter") --> deadlock-inserters-2
disable_technology("flammables") --> no equivalent, unlocks nothing, arguably shouldn't exist
disable_technology("inserter-capacity-bonus-4") --> no equivalent really; in IR, non-stack inserters bonuses are from deadlock-normal-inserter-capacity-bonus-1/2; see also stack-inserter
disable_technology("inserter-capacity-bonus-5") --> inserter-capacity-bonus-1
disable_technology("inserter-capacity-bonus-6") --> inserter-capacity-bonus-2
disable_technology("inserter-capacity-bonus-7") --> inserter-capacity-bonus-3
disable_technology("laser-turret-speed-1") --> energy-weapons-damage-1
disable_technology("laser-turret-speed-2") --> energy-weapons-damage-2
disable_technology("laser-turret-speed-3") --> energy-weapons-damage-3
disable_technology("laser-turret-speed-4") --> energy-weapons-damage-4
disable_technology("laser-turret-speed-5") --> energy-weapons-damage-5
disable_technology("laser-turret-speed-6") --> no equivalent
disable_technology("laser-turret-speed-7") --> no equivalent
disable_technology("laser-turrets") --> deadlock-turrets-3
disable_technology("modules") --> no equivalent, IR reduces techs involved in unlocking modules from 10 to 3, deadlock-modules-1/2/3
disable_technology("productivity-module") --> deadlock-modules-1
disable_technology("productivity-module-2") --> deadlock-modules-2
disable_technology("productivity-module-3") --> deadlock-modules-3
disable_technology("rail-signals") --> automated-rail-transportation
disable_technology("solar-energy") --> deadlock-solar-energy-1
disable_technology("speed-module") --> deadlock-modules-1
disable_technology("speed-module-2") --> deadlock-modules-2
disable_technology("speed-module-3") --> deadlock-modules-3
disable_technology("stack-inserter") --> deadlock-inserters-3; also adds bonus to stack inserters covered in vanilla by inserter-capacity-bonus-1/2/3/4
disable_technology("steel-axe") --> no equivalent
disable_technology("steel-processing") --> deadlock-steel-age
disable_technology("toolbelt") --> no equivalent, inventory bonuses are purely armour-based in IR
disable_technology("uranium-ammo") --> military-4
disable_technology("weapon-shooting-speed-6") --> no equivalent, IR scales it 1-5
disable_technology("construction-robotics") --> personal-roboport-equipment
disable_technology("logistic-robotics") --> robotics

------------------------------------------------------------------------------------------------------------------------------------------------------

-- completely wipe all vanilla prereqs and all science packs. harsh but fair

local vanilla = require("code.data.vanilla-tech")
for _,tech in pairs(data.raw.technology) do
	if tech.enabled ~= false and (does_tech_unlock_recipes(tech) or is_value_in_table(vanilla,tech.name)) then
		tech.prerequisites = nil
		tech.unit.ingredients = {{"automation-science-pack",1}}
		tech.unit.time = 60
		tech.unit.count = 1
		tech.unit.count_formula = nil
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- set up mods that have specifically requested IR tech builder support

require("code.mods.mods-data-midtech")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- DIR-specific techs - costs added later
-- no need to specify numbered chains as prereqs, no need to specify prereqs that provide ingredients - conceptual prereqs only

add_new_minimal_tech("deadlock-advanced-batteries", "charged-advanced-battery", false, {"advanced-battery","charged-advanced-battery"}, {"battery"}) 
add_new_minimal_tech("deadlock-advanced-engine", "advanced-engine-unit", false, {"advanced-engine-unit"}, {"electric-engine"})
add_new_minimal_tech("deadlock-barrelling", "empty-barrel", false, {"empty-barrel"}, {"fluid-handling"}) 
add_new_minimal_tech("deadlock-bronze-construction", "steambot", false, {"burner-generator-equipment","bronze-roboport-equipment","steambot"}, {"heavy-armor"}, {{ type = "ghost-time-to-live", modifier = 36288000 }})
add_new_minimal_tech("deadlock-carbon-fibre", "carbon-plate", false, {"carbon-plate"}, {}) 
add_new_minimal_tech("deadlock-concrete-1", "concrete", true, {"concrete", "hazard-concrete"}, nil) 
add_new_minimal_tech("deadlock-concrete-2", "concrete", true, {"refined-concrete","refined-hazard-concrete"}, {}) 
add_new_minimal_tech("deadlock-electric-locomotives", "railway", true, {"electric-locomotive"}, {"battery","railway"}) 
add_new_minimal_tech("deadlock-electronics-1", "electronic-circuit", false, {"electronic-circuit","controller-mk1","computer-mk1","copper-foil"}, {"deadlock-steam-power"}) 
add_new_minimal_tech("deadlock-electronics-2", "advanced-circuit", false, {"advanced-circuit","controller-mk2","computer-mk2","gold-foil","gold-cable-heavy"}, {}) 
add_new_minimal_tech("deadlock-electronics-3", "processing-unit", false, {"processing-unit","controller-mk3","computer-mk3","glass-cable","glass-cable-heavy"}, {}) 
add_new_minimal_tech("deadlock-filtering-1", "simple-pollution-filter", false, {"simple-pollution-filter"}, {}) 
add_new_minimal_tech("deadlock-filtering-2", "standard-pollution-filter", false, {"standard-pollution-filter"}, {}) 
add_new_minimal_tech("deadlock-filtering-3", "advanced-pollution-filter", false, {"advanced-pollution-filter"}, {}) 
add_new_minimal_tech("deadlock-force-fields", "field-effector", false, {"field-effector"}, {}) 
add_new_minimal_tech("deadlock-forestry-1", "bronze-forestry", false, {"bronze-forestry","wood-sapling-growth","rubber-sapling-growth"}, {}) 
add_new_minimal_tech("deadlock-forestry-2", "iron-forestry", false, {"iron-forestry"}, {}) 
--add_new_minimal_tech("deadlock-holograms", "hologram-projector", false, {"projector-default"}, {}) 
add_new_minimal_tech("deadlock-inserters-1", "inserters-1", false, {"inserter","long-handed-inserter"}, {"automation","logistics"}) 
add_new_minimal_tech("deadlock-inserters-2", "fast-inserter", true, {"fast-inserter","filter-inserter"}, {}) 
add_new_minimal_tech("deadlock-inserters-3", "inserters-3", false, {"stack-inserter","stack-filter-inserter"}, {}, {{type = "stack-inserter-capacity-bonus", modifier = 4}}) 
add_new_minimal_tech("deadlock-modules-1", "effectivity-module", false, {"program-effectivity-module","deprogram-effectivity-module","program-productivity-module","deprogram-productivity-module","program-speed-module","deprogram-speed-module"}, {"deadlock-electronics-1"})
add_new_minimal_tech("deadlock-modules-2", "productivity-module-2", false, {"program-effectivity-module-2","deprogram-effectivity-module-2","program-productivity-module-2","deprogram-productivity-module-2","program-speed-module-2","deprogram-speed-module-2"}, {"deadlock-electronics-2"})
add_new_minimal_tech("deadlock-modules-3", "speed-module-3", false, {"program-effectivity-module-3","deprogram-effectivity-module-3","program-productivity-module-3","deprogram-productivity-module-3","program-speed-module-3","deprogram-speed-module-3"}, {"deadlock-electronics-3"})
add_new_minimal_tech("deadlock-monowheel", "monowheel", false, {"monowheel"}, {"logistics"})
add_new_minimal_tech("deadlock-radar", "radar", false, {"radar","magnetron"}, {}) 
add_new_minimal_tech("deadlock-research-1", "improved-research", false, {"lab"}, {}) 
add_new_minimal_tech("deadlock-research-2", "quantum-lab", false, {"quantum-lab","quantum-ring"}, {}) 
add_new_minimal_tech("deadlock-solar-energy-1", "solar-panel", false, {"solar-panel"}, {"electric-energy-distribution-1"}) 
add_new_minimal_tech("deadlock-solar-energy-2", "solar-array", false, {"solar-array"}, {}) 
add_new_minimal_tech("deadlock-storage-1", "bronze-storage-depot", false, {"bronze-storage-depot"}, {}) 
add_new_minimal_tech("deadlock-storage-2", "steel-storage-depot", false, {"steel-storage-depot"}, {}) 
add_new_minimal_tech("deadlock-space-surveys-1", "ion-probe", false, {"ion-probe"}, {}) 
add_new_minimal_tech("deadlock-space-surveys-2", "impulse-probe", false, {"impulse-probe"}, {}) 
add_machine_mask_to_tech(add_new_minimal_tech("deadlock-storage-3", "logistics-depot", false, {"logistics-depot-passive", "logistics-depot-storage"}, {"robotics"}), "logistics-depot-storage")
add_machine_mask_to_tech(add_new_minimal_tech("deadlock-storage-4", "logistics-depot", false, {"logistics-depot-active", "logistics-depot-requester", "logistics-depot-buffer"}, {"logistic-system"}), "logistics-depot-active")
-- add_new_minimal_tech("deadlock-steel-tank", "steel-tank", false, {"steel-tank"}, {})

local inserter_effects = {{type = "inserter-stack-size-bonus", modifier = 1}}
add_new_minimal_tech("deadlock-normal-inserter-capacity-bonus-1", "inserter-capacity", true, nil, {}, inserter_effects)
add_new_minimal_tech("deadlock-normal-inserter-capacity-bonus-2", "inserter-capacity", true, nil, {"deadlock-inserters-2"}, inserter_effects)

------------------------------------------------------------------------------------------------------------------------------------------------------

-- fiddle with / replace / stretch out vanilla techs
-- no need to specify chains as prereqs, no need to specify prereqs that provide ingredients - conceptual prereqs only

add_new_minimal_tech("automated-rail-transportation", "automated-rail-transportation", true, {"train-stop","rail-signal","rail-chain-signal"}, {"railway"}) 
add_new_minimal_tech("battery", "charged-battery", false, {"battery","charged-battery","battery-discharge-equipment","iron-battery-charger","iron-battery-discharger"}, {}) 
add_new_minimal_tech("battery-equipment", "battery-equipment", true, {"battery-equipment"}, {}) 
add_new_minimal_tech("engine", "engine-unit", false, {"engine-unit"}, {})
add_new_minimal_tech("electric-engine", "electric-engine-unit", false, {"electric-engine-unit"}, {"engine"})
add_new_minimal_tech("laser", "laser", false, {"laser"}, {}) 
add_new_minimal_tech("military", "military", true, {"submachine-gun","iron-magazine","iron-cartridge"}, nil) 
add_new_minimal_tech("military-2", "military", true, {"grenade","steel-magazine","steel-cartridge"}, {}) 
add_new_minimal_tech("military-3", "military", true, {"combat-shotgun","poison-capsule","slowdown-capsule","titanium-magazine","titanium-cartridge"}, {}) 
add_new_minimal_tech("military-4", "military", true, {"uranium-magazine","uranium-cartridge","uranium-cannon-shell","explosive-uranium-cannon-shell","cluster-grenade"}, {}) 
add_new_minimal_tech("personal-roboport-equipment", "personal-roboport-equipment", true, {"construction-robot","personal-roboport-equipment"}, {"modular-armor"})
add_new_minimal_tech("plastics", "plastics", true, {"plastic-fluid","plastic-bar"}, {}) 
add_new_minimal_tech("robotics", "industrial-roboports", false, {"logistic-robot","roboport","logistic-chest-passive-provider","logistic-chest-storage"}, {"personal-roboport-equipment"})
add_new_minimal_tech("sulfur-processing", "sulfur", false, {"sulfur","sulfuric-acid","rubber-vulcanised"}, {"oil-processing"}) 
add_new_minimal_tech("turrets", "copper-turret", false, {"copper-turret"}, {}) 
add_new_minimal_tech("turrets-2", "gun-turret", false, {"gun-turret"}, {"military"}) 
add_new_minimal_tech("turrets-3", "laser-turret", false, {"laser-turret"}, {"military-2"}) 
add_new_minimal_tech("turrets-4", "steel-emp-turret", false, {"steel-emp-turret"}, {"military-3"}) 
add_new_minimal_tech("turrets-5", "chromium-photon-turret", false, {"chromium-photon-turret"}, {"military-4"}) 
add_new_minimal_tech("oil-processing","oil-processing",true, {"oil-refinery","pumpjack","chemical-plant","flare-stack","basic-oil-processing","heavy-oil-cracking","light-oil-cracking","solid-fuel-from-heavy-oil","solid-fuel-from-light-oil","solid-fuel-from-petroleum-gas"}, {"fluid-handling"})
add_new_minimal_tech("advanced-oil-processing","oil-processing",true, {"advanced-heavy-oil-cracking","advanced-light-oil-cracking"}, {"deadlock-grinding-3"}) -- explicit prereq because enrichment
add_new_minimal_tech("electric-energy-distribution-1","electric-energy-distribution",true, {"medium-electric-pole","big-electric-pole"}, {"deadlock-steam-power"})
add_new_minimal_tech("electric-energy-distribution-2","electric-energy-distribution",true, {"substation"}, {})

add_unlock_to_tech("modular-armor", "iron-burner-generator-equipment")
add_unlock_to_tech("electric-energy-accumulators", "steel-ring")
remove_unlock_from_tech("automation", "long-handed-inserter")

remove_all_barrels_from_tech("fluid-handling")
-- remove_unlock_from_tech("fluid-handling", "empty-barrel")
add_unlock_to_tech("fluid-handling", "small-tank")

replace_tech_icon("automation","assembler1")
replace_tech_icon("automation-2","assembler2")
replace_tech_icon("automation-3","assembler3")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- rework weapon and other infinite upgrades 

local damage_icon = { icon = get_icon_path("damage", 64), icon_size = 64, scale = 0.67, shift = {-42,42} }
local rate_icon = { icon = get_icon_path("rate-of-fire", 64), icon_size = 64, scale = 0.67, shift = {-42,42} }

for i=1,7 do
	local tech = data.raw.technology["physical-projectile-damage-"..i]
	tech.effects = {
		{
			ammo_category = "bullet",
			modifier = 0.2,
			type = "ammo-damage"
		},
		{
			ammo_category = "shotgun-shell",
			modifier = 0.2,
			type = "ammo-damage"
		},
	}
	tech.icon = nil
	tech.icons = {
		{ icon = get_icon_path("physical-projectiles", 128), icon_size = 128 },
		damage_icon,
	}
	if i == 7 then
		tech.max_level = "infinite"
		tech.unit.count = nil
		tech.unit.count_formula = "(2^(L-7)*1000)"
	end
end

for i=1,5 do
	local tech = data.raw.technology["weapon-shooting-speed-"..i]
	tech.effects = {
		{
			ammo_category = "bullet",
			modifier = 0.2,
			type = "gun-speed"
		},
		{
			ammo_category = "shotgun-shell",
			modifier = 0.2,
			type = "gun-speed"
		},
	}
	tech.icon = nil
	tech.icons = {
		{ icon = get_icon_path("physical-projectiles", 128), icon_size = 128 },
		rate_icon,
	}
end

for i=1,7 do
	local tech = data.raw.technology["energy-weapons-damage-"..i]
	tech.effects = {
		{
			ammo_category = "laser-turret",
			modifier = (i < 7) and 0.25 or 0.5,
			type = "ammo-damage"
		},
        {
			ammo_category = "combat-robot-laser",
			modifier = (i < 7) and 0.15 or 0.3,
			type = "ammo-damage"
        },
        {
			ammo_category = "combat-robot-beam",
			modifier = (i < 7) and 0.15 or 0.3,
			type = "ammo-damage"
        }
	}
	tech.icon = nil
	tech.icons = {
		{ icon = get_icon_path("energy-weapons-damage", 128), icon_size = 128 },
		damage_icon,
	}
	if i <= 5 then
		table.insert(tech.effects, 2,
			{
				ammo_category = "laser-turret",
				modifier = 0.1,
				type = "gun-speed"
			}
		)
		table.insert(tech.icons, { icon = get_icon_path("rate-of-fire", 64), icon_size = 64, scale = 0.67, shift = {42,42} })
	end
	if i == 7 then
		tech.max_level = "infinite"
		tech.unit.count = nil
		tech.unit.count_formula = "(2^(L-5)*1000)"
	end
end

for i=1,7 do
	local tech = add_new_minimal_tech("deadlock-physical-turret-damage-"..i, "", false, nil, {"turrets-2"},
		{
			{type = "turret-attack", modifier = 0.2, turret_id = "gun-turret"},
			{type = "turret-attack", modifier = 0.2, turret_id = "copper-turret"},
		}
	) 
	tech.icon = nil
	tech.icons = {
		{ icon = get_icon_path("physical-turret-damage", 128), icon_size = 128 },
		damage_icon,
	}
	tech.upgrade = true
	if i == 7 then
		tech.max_level = "infinite"
		tech.unit.count = nil
		tech.unit.count_formula = "2^(L-6)*1000"
	end
end

for i=1,4 do
	local tech = add_new_minimal_tech("deadlock-photon-turret-damage-"..i, "", false, nil, {"turrets-5"},
		{
			{type = "ammo-damage", modifier = 0.5, ammo_category = "photon-torpedo"},
		}
	) 
	tech.icon = nil
	tech.icons = {
		{ icon = get_icon_path("chromium-photon-turret", 128), icon_size = 128 },
		damage_icon,
	}
	tech.upgrade = true
	if i == 4 then
		tech.max_level = "infinite"
		tech.unit.count = nil
		tech.unit.count_formula = "2^(L-1)*1000"
	end
end

for i=1,5 do
	local tech = add_new_minimal_tech("deadlock-rocket-speed-"..i, "", false, nil, {"rocketry"},
		{
			{type = "gun-speed", modifier = 0.2, ammo_category = "rocket"},
		}
	) 
	tech.icon = nil
	tech.icons = {
		{ icon = "__base__/graphics/technology/rocketry.png", icon_size = 128 },
		rate_icon,
	}
	tech.upgrade = true
end

for i=1,5 do
	local tech = add_new_minimal_tech("deadlock-cannon-speed-"..i, "", false, nil, {"tanks"},
		{
			{type = "gun-speed", modifier = 0.2, ammo_category = "cannon-shell"},
		}
	) 
	tech.icon = nil
	tech.icons = {
		{ icon = "__base__/graphics/technology/tanks.png", icon_size = 128 },
		rate_icon,
	}
	tech.upgrade = true
end

for i=1,7 do
	local tech = add_new_minimal_tech("inserter-capacity-bonus-"..i, "stack-inserter", true, nil, {"deadlock-inserters-3"},
		{
			{type = "stack-inserter-capacity-bonus", modifier = 2}
		}
	) 
	tech.upgrade = (i < 4)
	tech.enabled = (i < 4)
end

for i=1,5 do
	local tech = add_new_minimal_tech("deadlock-robot-battery-"..i, "robot-battery", false, nil, {"robotics"},
		{
			{type = "worker-robot-battery", modifier = 0.2}
		}
	) 
	tech.upgrade = true
end

table.insert(data.raw.technology["stronger-explosives-3"].effects, {type = "ammo-damage", modifier = 0.3, ammo_category = "cannon-shell"})
table.insert(data.raw.technology["stronger-explosives-4"].effects, {type = "ammo-damage", modifier = 0.4, ammo_category = "cannon-shell"})
table.insert(data.raw.technology["stronger-explosives-5"].effects, {type = "ammo-damage", modifier = 0.5, ammo_category = "cannon-shell"})
table.insert(data.raw.technology["stronger-explosives-5"].effects, {type = "ammo-damage", modifier = 0.5, ammo_category = "cannon-shell"})
table.insert(data.raw.technology["stronger-explosives-6"].effects, {type = "ammo-damage", modifier = 0.5, ammo_category = "cannon-shell"})
table.insert(data.raw.technology["stronger-explosives-7"].effects, {type = "ammo-damage", modifier = 0.5, ammo_category = "cannon-shell"})
add_prereq_to_tech("stronger-explosives-3","tanks")
add_prereq_to_tech("stronger-explosives-3","rocketry")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- re-create chains 

for _,tech in pairs(data.raw.technology) do
	base,_ = string.gsub(tech.name, "-%d$", "")
	for i=10,2,-1 do
		if tech.name == (base.."-"..i) then 
			if i > 2 then
				if data.raw.technology[base.."-"..(i-1)] then add_prereq_to_tech(tech.name, base.."-"..(i-1)) end
			else
				if data.raw.technology[base.."-1"] then add_prereq_to_tech(tech.name, base.."-1")
				elseif data.raw.technology[base] then add_prereq_to_tech(tech.name, base) end
			end
		end
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- add conceptual prerequisites

add_prereq_to_tech("advanced-oil-processing", "oil-processing")
add_prereq_to_tech("artillery", "military-4")
add_prereq_to_tech("artillery-shell-range-1", "artillery")
add_prereq_to_tech("artillery-shell-speed-1", "artillery")
add_prereq_to_tech("atomic-bomb", "uranium-processing")
add_prereq_to_tech("auto-character-logistic-trash-slots", "character-logistic-trash-slots-1")
add_prereq_to_tech("automated-rail-transportation", "railway")
add_prereq_to_tech("battery-equipment", "modular-armor")
add_prereq_to_tech("battery-mk2-equipment", "battery-equipment")
add_prereq_to_tech("belt-immunity-equipment", "modular-armor")
add_prereq_to_tech("braking-force-1", "railway")
add_prereq_to_tech("character-logistic-slots-1", "robotics")
add_prereq_to_tech("character-logistic-trash-slots-1", "robotics")
add_prereq_to_tech("chemical-science-pack", "deadlock-research-1")
add_prereq_to_tech("cliff-explosives", "military-2")
add_prereq_to_tech("coal-liquefaction", "advanced-oil-processing")
add_prereq_to_tech("combat-robotics", "military-2")
add_prereq_to_tech("combat-robotics-2", "military-3")
add_prereq_to_tech("discharge-defense-equipment", "power-armor")
add_prereq_to_tech("discharge-defense-equipment", "military-4")
add_prereq_to_tech("discharge-defense-equipment", "turrets-4")
add_prereq_to_tech("effect-transmission", "deadlock-modules-3")
add_prereq_to_tech("energy-shield-equipment", "power-armor")
add_prereq_to_tech("energy-shield-mk2-equipment", "energy-shield-equipment")
add_prereq_to_tech("energy-weapons-damage-1", "turrets-3")
add_prereq_to_tech("exoskeleton-equipment", "modular-armor")
add_prereq_to_tech("flamethrower", "military-2")
add_prereq_to_tech("fluid-handling", "deadlock-steam-power")
add_prereq_to_tech("fluid-wagon", "railway")
add_prereq_to_tech("follower-robot-count-1", "combat-robotics")
add_prereq_to_tech("follower-robot-count-4", "combat-robotics-2")
add_prereq_to_tech("follower-robot-count-7", "combat-robotics-3")
add_prereq_to_tech("fusion-reactor-equipment", "power-armor")
add_prereq_to_tech("fusion-reactor-equipment", "nuclear-power")
add_prereq_to_tech("inserter-capacity-bonus-1", "deadlock-inserters-3")
add_prereq_to_tech("kovarex-enrichment-process", "nuclear-power")
add_prereq_to_tech("land-mine", "military-2")
add_prereq_to_tech("laser-turret-speed-1", "turrets-3")
add_prereq_to_tech("logistic-system", "robotics")
add_prereq_to_tech("military-science-pack", "military")
add_prereq_to_tech("military-science-pack", "deadlock-research-1")
add_prereq_to_tech("modular-armor", "heavy-armor")
add_prereq_to_tech("modules", "production-science-pack")
add_prereq_to_tech("night-vision-equipment", "modular-armor")
add_prereq_to_tech("night-vision-equipment", "optics")
add_prereq_to_tech("nuclear-fuel-reprocessing", "nuclear-power")
add_prereq_to_tech("nuclear-power", "uranium-processing")
add_prereq_to_tech("personal-laser-defense-equipment", "power-armor")
add_prereq_to_tech("personal-laser-defense-equipment", "military-4")
add_prereq_to_tech("personal-roboport-equipment", "modular-armor")
add_prereq_to_tech("personal-roboport-mk2-equipment", "personal-roboport-equipment")
add_prereq_to_tech("physical-projectile-damage-1", "military")
add_prereq_to_tech("power-armor", "modular-armor")
add_prereq_to_tech("power-armor-mk2", "power-armor")
add_prereq_to_tech("rail-signals", "railway")
add_prereq_to_tech("refined-flammables-1", "flamethrower")
add_prereq_to_tech("research-speed-1", "deadlock-research-1")
add_prereq_to_tech("rocket-fuel", "advanced-oil-processing")
add_prereq_to_tech("rocketry", "military-2")
add_prereq_to_tech("solar-panel-equipment", "modular-armor")
add_prereq_to_tech("space-science-pack", "rocket-silo")
add_prereq_to_tech("stronger-explosives-1", "military-2")
add_prereq_to_tech("stronger-explosives-1", "explosives")
add_prereq_to_tech("tanks", "automobilism")
add_prereq_to_tech("tanks", "military-3")
add_prereq_to_tech("weapon-shooting-speed-1", "military")
add_prereq_to_tech("worker-robots-speed-1", "robotics")
add_prereq_to_tech("worker-robots-storage-1", "robotics")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- NATIVE TECHNOLOGIES - different to minimals in that they consult material-component tables - defined in globals

for techname,techdata in pairs(DIR.technologies) do
	local ingredients = {}
	for _,pack in pairs(techdata.packs) do
		table.insert(ingredients, { DIR.science_packs[pack], 1 })
	end
	local icon = nil
	local icons = nil
	if not techdata.icon and not techdata.icons then
		error("Native tech "..techname.." does not provide icon or icons")
	elseif not techdata.icons then
		icon = get_icon_path(techdata.icon,128)
	else 
		icons = {}
		local i = table_length(techdata.icons) - 1
		local s = 1/3
		local dy = 42
		local dx = -42
		local ddx = 42
		local count = 1
		for _,v in pairs(techdata.icons) do
			if count == 1 then
				table.insert(icons, { icon = get_icon_path(v,128), icon_size = 128 })
			else
				table.insert(icons, { icon = get_icon_path(v,128), icon_size = 128, scale = s, shift = { dx, dy } })
				dx = dx + ddx
			end
			count = count + 1
		end
	end
	local tech = {
		name = techname,
		type = "technology",
		icon = icon,
		icons = icons,
		icon_size = 128,
		upgrade = false,
		enabled = true,
		unit = {
			count = 1, -- overridden later
			time = 60,
			ingredients = ingredients,
		},
		prerequisites = techdata.prerequisites,
		effects = {},
	}
	for _,unlock in pairs(techdata.machines) do
		table.insert(tech.effects, { type = "unlock-recipe", recipe = unlock })
	end
	for material,unlocks in pairs(techdata.unlocks) do
		for _,unlock in pairs(unlocks) do
			if unlock == "derivatives" then
				for component,componentdata in pairs(DIR.components) do
					local recipe = get_item_name(material, component)
					if componentdata.derivative and not (componentdata.made_from_exceptions and componentdata.made_from_exceptions[material]) then
						if data.raw.recipe[recipe] then
							table.insert(tech.effects, {type = "unlock-recipe", recipe = recipe })
							if componentdata.reversed then table.insert(tech.effects, {type = "unlock-recipe", recipe = recipe.."-reversed" }) end
						end
					end
				end
			else
				local recipe = get_item_name(material, unlock)
				if data.raw.recipe[recipe] then
					table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe })
					if data.raw.recipe[recipe.."-reversed"] then table.insert(tech.effects, {type = "unlock-recipe", recipe = recipe.."-reversed" }) end
				end
			end
		end
	end
	if techdata.additional_unlocks then
		for _,unlock in pairs(techdata.additional_unlocks) do
			table.insert(tech.effects, { type = "unlock-recipe", recipe = unlock })
		end
	end
	if techdata.category_unlocks then
		for _,recipe in pairs(data.raw.recipe) do
			if recipe.category == techdata.category_unlocks then table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe.name }) end
		end
	end
	data:extend({tech})
end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- TECHNOLOGY CLASSES
-- techs further down the tree inherit dependencies on science packs automatically
-- this partly comes from the DIR tech backbone, but there are special cases that need "seeding" - all defined in globals

for pack,tech_class in pairs(DIR.tech_classes) do
	for _,tech in pairs(tech_class) do
		add_pack_to_tech(DIR.science_packs[pack], tech)
	end
end

-- add space pack to all infinite researches

for _,tech in pairs(data.raw.technology) do
	if tech.enabled ~= false and tech.max_level == "infinite" then
		add_pack_to_tech(DIR.science_packs["space"], tech.name)
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- SCIENCE PACK PREREQUISITES
-- any tech that uses a science pack must have that science pack unlock as a prereq
-- any redundancies are stripped later on

for _,tech in pairs(data.raw.technology) do
	if tech.enabled ~= false and tech.effects then
		-- add prereqs for packs
		for id,pack in pairs(DIR.science_packs) do
			if id ~= "automation" then
				for _,ingredient in pairs(tech.unit.ingredients) do
					if ingredient[1] == pack then
						if not tech.prerequisites then tech.prerequisites = {} end
						table.insert(tech.prerequisites, pack)
					end
				end
			end
		end
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------
