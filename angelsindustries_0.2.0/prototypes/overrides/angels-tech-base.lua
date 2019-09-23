local OV = angelsmods.functions.OV

OV.global_replace_technology("logistic-science-pack", "tech-green-labs")
OV.global_replace_technology("chemical-science-pack", "tech-blue-labs")
OV.global_replace_technology("high-tech-science-pack", "tech-yellow-labs")

OV.remove_science_pack("automation", "angels-science-pack-red")
OV.set_science_pack("automation", "angels-science-pack-grey")
OV.remove_science_pack("logistics", "angels-science-pack-red")
OV.set_science_pack("logistics", "angels-science-pack-grey")
OV.remove_science_pack("turrets", "angels-science-pack-red")
OV.set_science_pack("turrets", "angels-science-pack-grey")

OV.remove_science_pack("advanced-material-processing", "angels-science-pack-red")
OV.set_science_pack("advanced-material-processing", "angels-science-pack-green")

OV.remove_science_pack("armor-making-2", "angels-science-pack-green")
OV.set_science_pack("armor-making-2", "angels-science-pack-red")

OV.remove_science_pack("battery", "angels-science-pack-green")
OV.set_science_pack("battery", "angels-science-pack-orange")
OV.remove_science_pack("oil-processing", "angels-science-pack-green")
OV.set_science_pack("oil-processing", "angels-science-pack-orange")
OV.remove_science_pack("circuit-network", "angels-science-pack-green")
OV.set_science_pack("circuit-network", "angels-science-pack-orange")
OV.remove_science_pack("armor-making-3", "angels-science-pack-green")
OV.set_science_pack("armor-making-3", "angels-science-pack-orange")
OV.remove_science_pack("solar-energy", "angels-science-pack-green")
OV.set_science_pack("solar-energy", "angels-science-pack-orange")
OV.remove_science_pack("electric-engine", "angels-science-pack-green")
OV.set_science_pack("electric-engine", "angels-science-pack-orange")
OV.remove_science_pack("electric-energy-accumulators-1", "angels-science-pack-green")
OV.set_science_pack("electric-energy-accumulators-1", "angels-science-pack-orange")
OV.remove_science_pack("energy-shield-equipment", "angels-science-pack-green")
OV.set_science_pack("energy-shield-equipment", "angels-science-pack-orange")
OV.remove_science_pack("night-vision-equipment", "angels-science-pack-green")
OV.set_science_pack("night-vision-equipment", "angels-science-pack-orange")
OV.remove_science_pack("battery-equipment", "angels-science-pack-green")
OV.set_science_pack("battery-equipment", "angels-science-pack-orange")
OV.remove_science_pack("solar-panel-equipment", "angels-science-pack-green")
OV.set_science_pack("solar-panel-equipment", "angels-science-pack-orange")
OV.remove_science_pack("sulfur-processing", "angels-science-pack-green")
OV.set_science_pack("sulfur-processing", "angels-science-pack-orange")
OV.remove_science_pack("plastics", "angels-science-pack-green")
OV.set_science_pack("plastics", "angels-science-pack-orange")
OV.remove_science_pack("modules", "angels-science-pack-green")
OV.set_science_pack("modules", "angels-science-pack-orange")
OV.remove_science_pack("speed-module", "angels-science-pack-green")
OV.set_science_pack("speed-module", "angels-science-pack-orange")
OV.remove_science_pack("productivity-module", "angels-science-pack-green")
OV.set_science_pack("productivity-module", "angels-science-pack-orange")
OV.remove_science_pack("effectivity-module", "angels-science-pack-green")
OV.set_science_pack("effectivity-module", "angels-science-pack-orange")
OV.remove_science_pack("combat-robotics", "angels-science-pack-green")
OV.set_science_pack("combat-robotics", "angels-science-pack-orange")
OV.remove_science_pack("flamethrower-damage-1", "angels-science-pack-green")
OV.set_science_pack("flamethrower-damage-1", "angels-science-pack-orange")
OV.remove_science_pack("bullet-damage-3", "angels-science-pack-green")
OV.set_science_pack("bullet-damage-3", "angels-science-pack-orange")
OV.remove_science_pack("flying", "angels-science-pack-green")
OV.set_science_pack("flying", "angels-science-pack-orange")
OV.remove_science_pack("robotics", "angels-science-pack-green")
OV.set_science_pack("robotics", "angels-science-pack-orange")
OV.remove_science_pack("automated-construction", "angels-science-pack-green")
OV.set_science_pack("automated-construction", "angels-science-pack-orange")
OV.remove_science_pack("construction-robotics", "angels-science-pack-green")
OV.set_science_pack("construction-robotics", "angels-science-pack-orange")

OV.remove_science_pack("electric-energy-distribution-2", "angels-science-pack-blue")
OV.set_science_pack("electric-energy-distribution-2", "angels-science-pack-orange")
OV.remove_science_pack("logistic-robotics", "angels-science-pack-green")
OV.set_science_pack("logistic-robotics", "angels-science-pack-blue")

OV.set_science_pack("rocket-silo", "angels-science-pack-grey")
OV.set_science_pack("rocket-silo", "angels-science-pack-red")
OV.set_science_pack("rocket-silo", "angels-science-pack-green")
OV.set_science_pack("rocket-silo", "angels-science-pack-orange")
OV.set_science_pack("rocket-silo", "angels-science-pack-blue")
OV.remove_science_pack("rocket-silo", "datacore-processing-1")
OV.remove_science_pack("rocket-silo", "datacore-war-1")

--BASIC
OV.set_science_pack("logistics", "datacore-basic", 2)
OV.set_science_pack("automation", "datacore-basic", 2)
--OV.set_research_difficulty("automation", 10, 16)
OV.set_science_pack("turrets", "datacore-basic", 2)

--ENERGY
OV.set_science_pack("solar-energy", "datacore-energy-1", 2)
OV.set_science_pack("optics", "datacore-energy-1", 2)
OV.set_science_pack("electric-energy-distribution-1", "datacore-energy-1", 2)
OV.set_science_pack("electric-energy-distribution-2", "datacore-energy-1", 2)
OV.set_science_pack("electric-energy-accumulators-1", "datacore-energy-1", 2)

--EXPLORATION

--ENHANCEMENT
OV.set_science_pack("effect-transmission", "datacore-enhance-1", 2)
OV.set_science_pack("toolbelt", "datacore-enhance-1", 2)
OV.set_science_pack("energy-shield-equipment", "datacore-enhance-1", 2)
OV.remove_science_pack("energy-shield-equipment", "datacore-war-1")
OV.set_science_pack("night-vision-equipment","datacore-enhance-1", 2)
OV.set_science_pack("battery-equipment", "datacore-enhance-1", 2)
OV.set_science_pack("solar-panel-equipment", "datacore-enhance-1", 2)
OV.set_science_pack("energy-shield-mk2-equipment", "datacore-enhance-2", 2)
OV.remove_science_pack("energy-shield-mk2-equipment", "datacore-war-1")
OV.set_science_pack("battery-mk2-equipment", "datacore-enhance-2", 2)
OV.set_science_pack("personal-laser-defense-equipment", "datacore-enhance-2", 2)
OV.remove_science_pack("personal-laser-defense-equipment", "datacore-war-1")
OV.set_science_pack("discharge-defense-equipment", "datacore-enhance-2", 2)
OV.remove_science_pack("discharge-defense-equipment", "datacore-war-1")
OV.set_science_pack("fusion-reactor-equipment", "datacore-enhance-2", 2)
OV.remove_science_pack("fusion-reactor-equipment", "datacore-war-1")
OV.set_science_pack("exoskeleton-equipment", "datacore-enhance-2", 2)
OV.set_science_pack("personal-roboport-equipment", "datacore-enhance-2", 2)
OV.set_science_pack("personal-roboport-equipment-2", "datacore-enhance-2", 2)
OV.set_science_pack("modules", "datacore-enhance-1", 2)
OV.set_science_pack("speed-module", "datacore-enhance-1", 2)
OV.set_science_pack("speed-module-2", "datacore-enhance-2", 2)
OV.set_science_pack("speed-module-3", "datacore-enhance-2", 2)
OV.set_science_pack("productivity-module", "datacore-enhance-1", 2)
OV.set_science_pack("productivity-module-2", "datacore-enhance-2", 2)
OV.set_science_pack("productivity-module-3", "datacore-enhance-2", 2)
OV.set_science_pack("effectivity-module", "datacore-enhance-1", 2)
OV.set_science_pack("effectivity-module-2", "datacore-enhance-2", 2)
OV.set_science_pack("effectivity-module-3", "datacore-enhance-2", 2)
OV.set_science_pack("modular-armor", "datacore-enhance-1", 2)
OV.remove_science_pack("modular-armor", "datacore-war-1")
OV.set_science_pack("power-armor", "datacore-enhance-2", 2)
OV.remove_science_pack("power-armor", "datacore-war-1")
OV.set_science_pack("power-armor-2", "datacore-enhance-2", 2)
OV.remove_science_pack("power-armor-2", "datacore-war-1")

--LOGISTIC
OV.set_science_pack("logistics-2", "datacore-logistic-1", 2)
OV.set_science_pack("railway", "datacore-logistic-1", 2)
OV.set_science_pack("fluid-wagon", "datacore-logistic-1", 2)
OV.set_science_pack("flying", "datacore-logistic-1", 2)
OV.set_science_pack("robotics", "datacore-logistic-1", 2)
OV.set_science_pack("automated-rail-transportation", "datacore-logistic-1", 2)
OV.set_science_pack("rail-signals", "datacore-logistic-1", 2)
OV.set_science_pack("construction-robotics", "datacore-logistic-1", 2)
OV.set_science_pack("automated-construction", "datacore-logistic-1", 2)
OV.set_science_pack("logistic-robotics", "datacore-logistic-2", 2)
OV.set_science_pack("fluid-handling", "datacore-logistic-1", 2)
OV.set_science_pack("stack-inserter", "datacore-logistic-1", 2)

OV.set_science_pack("worker-robots-speed-1", "datacore-logistic-1", 2)
OV.set_science_pack("worker-robots-speed-2", "datacore-logistic-1", 2)
OV.set_science_pack("worker-robots-storage-1", "datacore-logistic-1", 2)
OV.set_science_pack("character-logistic-slots-1", "datacore-logistic-1", 2)
OV.set_science_pack("character-logistic-slots-2", "datacore-logistic-1", 2)
OV.set_science_pack("character-logistic-slots-3", "datacore-logistic-1", 2)
OV.set_science_pack("character-logistic-trash-slots-1", "datacore-logistic-1", 2)
OV.set_science_pack("character-logistic-trash-slots-2", "datacore-logistic-1", 2)
OV.set_science_pack("character-logistic-trash-slots-3", "datacore-logistic-1", 2)
OV.set_science_pack("character-logistic-trash-slots-4", "datacore-logistic-1", 2)
OV.remove_science_pack("character-logistic-trash-slots-4", "datacore-processing-1")
OV.set_science_pack("character-logistic-trash-slots-5", "datacore-logistic-1", 2)
OV.remove_science_pack("character-logistic-trash-slots-5", "datacore-processing-1")
OV.set_science_pack("character-logistic-trash-slots-6", "datacore-logistic-1", 2)
OV.remove_science_pack("character-logistic-trash-slots-6", "datacore-processing-1")
OV.set_science_pack("auto-character-logistic-trash-slots", "datacore-logistic-1", 2)
OV.set_science_pack("braking-force-1", "datacore-logistic-1", 2)
OV.set_science_pack("braking-force-2", "datacore-logistic-1", 2)
OV.set_science_pack("braking-force-3", "datacore-logistic-1", 2)
OV.remove_science_pack("braking-force-3", "datacore-processing-1")
OV.set_science_pack("braking-force-4", "datacore-logistic-1", 2)
OV.remove_science_pack("braking-force-4", "datacore-processing-1")
OV.set_science_pack("braking-force-5", "datacore-logistic-1", 2)
OV.remove_science_pack("braking-force-5", "datacore-processing-1")
OV.set_science_pack("braking-force-6", "datacore-logistic-1", 2)
OV.remove_science_pack("braking-force-6", "datacore-processing-1")
OV.set_science_pack("braking-force-7", "datacore-logistic-1", 2)
OV.remove_science_pack("braking-force-7", "datacore-processing-1")

OV.set_science_pack("inserter-capacity-bonus-1", "datacore-logistic-1", 2)
OV.set_science_pack("inserter-capacity-bonus-2", "datacore-logistic-1", 2)
OV.set_science_pack("inserter-capacity-bonus-3", "datacore-logistic-1", 2)
OV.set_science_pack("inserter-capacity-bonus-4", "datacore-logistic-1", 2)
OV.remove_science_pack("inserter-capacity-bonus-4", "datacore-processing-1")
OV.set_science_pack("inserter-capacity-bonus-5", "datacore-logistic-1", 2)
OV.remove_science_pack("inserter-capacity-bonus-5", "datacore-processing-1")
OV.set_science_pack("inserter-capacity-bonus-6", "datacore-logistic-1", 2)
OV.remove_science_pack("inserter-capacity-bonus-6", "datacore-processing-1")
OV.set_science_pack("inserter-capacity-bonus-7", "datacore-logistic-1", 2)
OV.remove_science_pack("inserter-capacity-bonus-7", "datacore-processing-1")

--PROCESSING
OV.set_science_pack("steel-processing", "datacore-processing-1", 2)
OV.set_science_pack("electronics", "datacore-processing-1", 2)
OV.set_science_pack("automation-2", "datacore-processing-1", 2)
OV.set_science_pack("advanced-material-processing", "datacore-processing-1", 2)
OV.set_science_pack("advanced-material-processing-2", "datacore-processing-1", 2)
OV.set_science_pack("concrete", "datacore-processing-1", 2)
OV.set_science_pack("circuit-network", "datacore-processing-1", 2)
OV.set_science_pack("advanced-electronics", "datacore-processing-1", 2)
OV.set_science_pack("advanced-electronics-2", "datacore-processing-1", 2)
OV.set_science_pack("oil-processing", "datacore-processing-1", 2)
OV.set_science_pack("engine", "datacore-processing-1", 2)
OV.set_science_pack("landfill", "datacore-processing-1", 2)
OV.set_science_pack("electric-engine", "datacore-processing-1", 2)
OV.set_science_pack("sulfur-processing", "datacore-processing-1", 2)
OV.set_science_pack("battery", "datacore-processing-1", 2)
OV.set_science_pack("automation-3", "datacore-processing-2", 2)
OV.remove_science_pack("automation-3", "datacore-processing-1")
OV.set_science_pack("advanced-oil-processing", "datacore-processing-2", 2)
OV.set_science_pack("plastics", "datacore-processing-2", 2)

OV.set_science_pack("research-speed-1", "datacore-processing-1", 2)
OV.set_science_pack("research-speed-2", "datacore-processing-1", 2)
OV.set_science_pack("research-speed-3", "datacore-processing-1", 2)
OV.set_science_pack("research-speed-4", "datacore-processing-1", 2)
OV.set_science_pack("mining-productivity-1", "datacore-processing-1", 2)
OV.set_science_pack("mining-productivity-4", "datacore-processing-1", 2)

--WAR
OV.set_science_pack("military", "datacore-war-1", 2)
OV.set_science_pack("military-2", "datacore-war-1", 2)
OV.set_science_pack("heavy-armor", "datacore-war-1", 2)
OV.set_science_pack("stone-walls", "datacore-war-1", 2)
OV.set_science_pack("gates", "datacore-war-1", 2)
OV.set_science_pack("flammables", "datacore-war-1", 2)
OV.set_science_pack("land-mine", "datacore-war-1", 2)
OV.set_science_pack("automobilism", "datacore-war-1", 2)
OV.set_science_pack("tanks", "datacore-war-1", 2)
OV.set_science_pack("laser", "datacore-war-1", 2)
OV.set_science_pack("combat-robotics", "datacore-war-1", 2)
OV.set_science_pack("combat-robotics-2", "datacore-war-2", 2)
OV.remove_science_pack("combat-robotics-2", "datacore-war-1")
OV.set_science_pack("combat-robotics-3", "datacore-war-2", 2)
OV.remove_science_pack("combat-robotics-3", "datacore-war-1")
OV.remove_science_pack("atomic-bomb", "datacore-processing-1")

OV.set_science_pack("shotgun-shell-damage-1", "datacore-war-1", 2)
OV.set_science_pack("shotgun-shell-damage-2", "datacore-war-1", 2)
OV.set_science_pack("shotgun-shell-speed-1", "datacore-war-1", 2)
OV.set_science_pack("shotgun-shell-speed-2", "datacore-war-1", 2)
OV.set_science_pack("shotgun-shell-speed-3", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-damage-1", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-damage-2", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-damage-3", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-damage-4", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-damage-5", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-damage-6", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-speed-1", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-speed-2", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-speed-3", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-speed-4", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-speed-5", "datacore-war-1", 2)
OV.set_science_pack("laser-turret-speed-6", "datacore-war-1", 2)
OV.set_science_pack("gun-turret-damage-1", "datacore-war-1", 2)
OV.set_science_pack("gun-turret-damage-2", "datacore-war-1", 2)
OV.set_science_pack("gun-turret-damage-3", "datacore-war-1", 2)
OV.set_science_pack("gun-turret-damage-4", "datacore-war-1", 2)
OV.set_science_pack("gun-turret-damage-5", "datacore-war-1", 2)
OV.set_science_pack("gun-turret-damage-6", "datacore-war-1", 2)
OV.set_science_pack("flamethrower-damage-1", "datacore-war-1", 2)
OV.set_science_pack("flamethrower-damage-2", "datacore-war-1", 2)
OV.set_science_pack("flamethrower-damage-3", "datacore-war-1", 2)
OV.set_science_pack("flamethrower-damage-4", "datacore-war-1", 2)
OV.set_science_pack("flamethrower-damage-5", "datacore-war-1", 2)
OV.set_science_pack("flamethrower-damage-6", "datacore-war-1", 2)
OV.set_science_pack("bullet-damage-1", "datacore-war-1", 2)
OV.set_science_pack("bullet-damage-2", "datacore-war-1", 2)
OV.set_science_pack("bullet-damage-3", "datacore-war-1", 2)
OV.set_science_pack("bullet-damage-4", "datacore-war-1", 2)
OV.set_science_pack("bullet-damage-5", "datacore-war-1", 2)
OV.set_science_pack("bullet-damage-6", "datacore-war-1", 2)
OV.set_science_pack("bullet-speed-1", "datacore-war-1", 2)
OV.set_science_pack("bullet-speed-2", "datacore-war-1", 2)
OV.set_science_pack("bullet-speed-3", "datacore-war-1", 2)
OV.set_science_pack("bullet-speed-4", "datacore-war-1", 2)
OV.set_science_pack("bullet-speed-5", "datacore-war-1", 2)
OV.set_science_pack("bullet-speed-6", "datacore-war-1", 2)
OV.set_science_pack("combat-robot-damage-1", "datacore-war-1", 2)
OV.set_science_pack("combat-robot-damage-2", "datacore-war-1", 2)
OV.set_science_pack("combat-robot-damage-3", "datacore-war-1", 2)
OV.set_science_pack("combat-robot-damage-4", "datacore-war-1", 2)
OV.set_science_pack("combat-robot-damage-5", "datacore-war-1", 2)
OV.set_science_pack("rocket-damage-1", "datacore-war-1", 2)
OV.set_science_pack("rocket-damage-2", "datacore-war-1", 2)
OV.set_science_pack("rocket-damage-3", "datacore-war-1", 2)
OV.set_science_pack("rocket-damage-4", "datacore-war-1", 2)
OV.set_science_pack("rocket-damage-5", "datacore-war-1", 2)
OV.set_science_pack("rocket-speed-1", "datacore-war-1", 2)
OV.set_science_pack("rocket-speed-2", "datacore-war-1", 2)
OV.set_science_pack("rocket-speed-3", "datacore-war-1", 2)
OV.set_science_pack("rocket-speed-4", "datacore-war-1", 2)
OV.set_science_pack("rocket-speed-5", "datacore-war-1", 2)
OV.remove_science_pack("follower-robot-count-7", "datacore-processing-1")
