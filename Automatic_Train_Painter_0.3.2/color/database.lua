--default colors
default_cargo_color 		= {['r']=109, ['g']=058, ['b']=000, ['a']=127,}
default_fluid_color 		= {['r']=000, ['g']=000, ['b']=000, ['a']=000,} -- hides modded fluid wagon masks
default_loco_color 			= {['r']=228, ['g']=209, ['b']=199, ['a']=127,}

--entity colors
colors = {

--	 ______                  _                    _
--	|  ____|                | |                  (_)
--	| |__      __ _    ___  | |_    ___    _ __   _    ___
--	|  __|    / _` |  / __| | __|  / _ \  | '__| | |  / _ \
--	| |      | (_| | | (__  | |_  | (_) | | |    | | | (_) |
--	|_|       \__,_|  \___|  \__|  \___/  |_|    |_|  \___/

-- intermediate products
	['wood']								={r=226, g=069, b=000, a=127},
	['coal']								={r=000, g=000, b=000, a=127},
	['stone']								={r=100, g=060, b=020, a=127},
	['iron-ore']							={r=056, g=133, b=255, a=127},
	['copper-ore']							={r=255, g=050, b=000, a=127},
	['uranium-ore']							={r=100, g=255, b=000, a=127},
	['raw-fish']							={r=255, g=107, b=031, a=127},
	['crude-oil']							={r=000, g=000, b=000, a=127},
	['heavy-oil']							={r=255, g=050, b=000, a=127},
	['light-oil']							={r=255, g=150, b=000, a=127},
	['lubricant']							={r=020, g=200, b=000, a=127},
	['petroleum-gas']						={r=090, g=000, b=090, a=127},
	['sulfuric-acid']						={r=255, g=200, b=000, a=127},
	['water']								={r=000, g=120, b=255, a=127},
	['steam']								={r=255, g=255, b=255, a=127},
	['iron-plate']							={r=160, g=160, b=160, a=127},
	['copper-plate']						={r=255, g=080, b=020, a=127},
	['solid-fuel']							={r=000, g=000, b=000, a=127},
	['steel-plate']							={r=220, g=220, b=220, a=127},
	['plastic-bar']							={r=255, g=255, b=255, a=127},
	['sulfur']								={r=255, g=200, b=000, a=127},
	['battery']								={r=060, g=170, b=255, a=127},
	['explosives']							={r=255, g=050, b=000, a=127},
	['copper-cable']						={r=199, g=071, b=024, a=127},
	['iron-stick']							={r=188, g=191, b=200, a=127},
	['iron-gear-wheel']						={r=100, g=100, b=100, a=127},
	['empty-barrel']						={r=100, g=100, b=100, a=127},
	['electronic-circuit']					={r=100, g=255, b=000, a=127},
	['advanced-circuit']					={r=255, g=000, b=000, a=127},
	['processing-unit']						={r=000, g=000, b=255, a=127},
	['engine-unit']							={r=255, g=160, b=000, a=127},
	['electric-engine-unit']				={r=192, g=000, b=000, a=127},
	['flying-robot-frame']					={r=020, g=020, b=020, a=127},
	['low-density-structure']				={r=120, g=060, b=000, a=127},
	['rocket-control-unit']					={r=100, g=255, b=100, a=127},
	['rocket-fuel']							={r=255, g=106, b=000, a=127},
	['nuclear-fuel']						={r=020, g=255, b=000, a=127},
	['uranium-235']							={r=055, g=255, b=000, a=127},
	['uranium-238']							={r=000, g=100, b=000, a=127},
	['uranium-fuel-cell']					={r=038, g=255, b=000, a=127},
	['used-up-uranium-fuel-cell']			={r=000, g=071, b=016, a=127},
	['satellite'] 							={r=175, g=164, b=255, a=127},
	['automation-science-pack'] 			={r=255, g=000, b=000, a=127},
	['logistic-science-pack'] 				={r=040, g=200, b=040, a=127},
	['military-science-pack'] 				={r=100, g=100, b=120, a=127},
	['chemical-science-pack'] 				={r=040, g=160, b=255, a=127},
	['production-science-pack'] 			={r=200, g=070, b=255, a=127},
	['utility-science-pack'] 				={r=255, g=188, b=000, a=127},
	['space-science-pack']					={r=255, g=255, b=255, a=127},

	-- logistics
	['wooden-chest']						={r=255, g=142, b=040, a=127},
	['iron-chest']							={r=200, g=102, b=087, a=127},
	['steel-chest']							={r=200, g=131, b=127, a=127},
	['storage-tank']						={r=135, g=075, b=020, a=127},
	['transport-belt']						={r=233, g=164, b=044, a=127},
	['underground-belt']					={r=233, g=164, b=044, a=127},
	['splitter']							={r=233, g=164, b=044, a=127},
	['fast-transport-belt']					={r=215, g=040, b=040, a=127},
	['fast-underground-belt']				={r=215, g=040, b=040, a=127},
	['fast-splitter']						={r=215, g=040, b=040, a=127},
	['express-transport-belt']				={r=025, g=142, b=222, a=127},
	['express-underground-belt']			={r=025, g=142, b=222, a=127},
	['express-splitter']					={r=025, g=142, b=222, a=127},
	['burner-inserter']						={r=080, g=040, b=040, a=127},
	['inserter']							={r=255, g=113, b=000, a=127},
	['long-handed-inserter']				={r=255, g=000, b=000, a=127},
	['fast-inserter']						={r=000, g=150, b=255, a=127},
	['filter-inserter']						={r=120, g=000, b=255, a=127},
	['stack-inserter']						={r=171, g=208, b=025, a=127},
	['stack-filter-inserter']				={r=171, g=208, b=025, a=127},
	['small-electric-pole']					={r=226, g=069, b=000, a=127},
	['medium-electric-pole']				={r=255, g=113, b=000, a=127},
	['big-electric-pole']					={r=160, g=160, b=160, a=127},
	['substation']							={r=000, g=035, b=093, a=127},
	['pipe']								={r=135, g=075, b=020, a=127},
	['pipe-to-ground']						={r=135, g=075, b=020, a=127},
	['pump']								={r=135, g=075, b=020, a=127},
	['rail']								={r=135, g=055, b=000, a=127},
	['train-stop']							={r=177, g=100, b=060, a=127},
	['rail-signal']							={r=255, g=255, b=089, a=127},
	['rail-chain-signal']					={r=064, g=173, b=255, a=127},
	['locomotive']							={r=234, g=017, b=000, a=127},
	['cargo-wagon']							={r=109, g=058, b=000, a=127},
	['fluid-wagon']							={r=255, g=255, b=255, a=127},
	['artillery-wagon']						={r=255, g=191, b=000, a=127},
	['car']									={r=255, g=129, b=000, a=127},
	['tank']								={r=255, g=104, b=000, a=127},
	['logistic-robot']						={r=144, g=126, b=130, a=127},
	['construction-robot']					={r=217, g=162, b=111, a=127},
	['logistic-chest-active-provider']		={r=120, g=000, b=255, a=127},
	['logistic-chest-passive-provider']		={r=255, g=000, b=000, a=127},
	['logistic-chest-storage']				={r=255, g=160, b=000, a=127},
	['logistic-chest-buffer']				={r=000, g=255, b=000, a=127},
	['logistic-chest-requester']			={r=000, g=150, b=255, a=127},
	['roboport']							={r=000, g=000, b=000, a=127},
	['small-lamp']							={r=255, g=255, b=255, a=127},
	['red-wire']							={r=255, g=000, b=000, a=127},
	['green-wire']							={r=000, g=255, b=000, a=127},
	['arithmetic-combinator']				={r=000, g=056, b=042, a=127},
	['decider-combinator']					={r=126, g=067, b=000, a=127},
	['constant-combinator']					={r=129, g=000, b=000, a=127},
	['power-switch']						={r=140, g=082, b=093, a=127},
	['programmable-speaker']				={r=169, g=177, b=169, a=127},
	['stone-brick']							={r=130, g=130, b=130, a=127},
	['concrete']							={r=130, g=130, b=130, a=127},
	['hazard-concrete']						={r=255, g=160, b=000, a=127},
	['refined-concrete']					={r=130, g=130, b=130, a=127},
	['refined-hazard-concrete']				={r=255, g=160, b=000, a=127},
	['landfill']							={r=120, g=180, b=000, a=127},
	['cliff-explosives']					={r=000, g=150, b=255, a=127},

	-- production
	['repair-pack']							={r=220, g=220, b=220, a=127},
	['blueprint']							={r=000, g=140, b=255, a=127},
	['deconstruction-planner']				={r=255, g=000, b=013, a=127},
	['upgrade-planner']						={r=228, g=255, b=000, a=127},
	['blueprint-book']						={r=000, g=115, b=230, a=127},
	['boiler']								={r=231, g=166, b=053, a=127},
	['steam-engine']						={r=184, g=129, b=111, a=127},
	['steam-turbine']						={r=110, g=110, b=155, a=127},
	['solar-panel']							={r=000, g=050, b=100, a=127},
	['accumulator']							={r=050, g=220, b=255, a=127},
	['nuclear-reactor']						={r=069, g=255, b=036, a=127},
	['heat-exchanger']						={r=255, g=040, b=018, a=127},
	['heat-pipe']							={r=255, g=040, b=018, a=127},
	['burner-mining-drill']					={r=080, g=040, b=040, a=127},
	['electric-mining-drill']				={r=200, g=102, b=087, a=127},
	['offshore-pump']						={r=000, g=040, b=080, a=127},
	['pumpjack']							={r=120, g=180, b=000, a=127},
	['stone-furnace']						={r=197, g=127, b=000, a=127},
	['steel-furnace']						={r=178, g=091, b=022, a=127},
	['electric-furnace']					={r=011, g=000, b=025, a=127},
	['assembling-machine-1']				={r=200, g=102, b=087, a=127},
	['assembling-machine-2']				={r=000, g=091, b=255, a=127},
	['assembling-machine-3']				={r=226, g=208, b=025, a=127},
	['oil-refinery']						={r=186, g=055, b=000, a=127},
	['chemical-plant']						={r=240, g=113, b=000, a=127},
	['centrifuge']							={r=069, g=255, b=036, a=127},
	['lab']									={r=050, g=220, b=255, a=127},
	['beacon']								={r=200, g=102, b=087, a=127},
	['speed-module']						={r=000, g=150, b=255, a=127},
	['speed-module-2']						={r=000, g=150, b=255, a=127},
	['speed-module-3']						={r=000, g=150, b=255, a=127},
	['effectivity-module']					={r=020, g=255, b=000, a=127},
	['effectivity-module-2']				={r=020, g=255, b=000, a=127},
	['effectivity-module-3']				={r=020, g=255, b=000, a=127},
	['productivity-module']					={r=250, g=070, b=000, a=127},
	['productivity-module-2']				={r=250, g=070, b=000, a=127},
	['productivity-module-3']				={r=250, g=070, b=000, a=127},

	--combat
	['pistol']								={r=050, g=035, b=050, a=127},
	['submachine-gun']						={r=050, g=035, b=050, a=127},
	['shotgun']								={r=111, g=046, b=016, a=127},
	['combat-shotgun']						={r=177, g=046, b=000, a=127},
	['rocket-launcher']						={r=038, g=067, b=038, a=127},
	['flamethrower']						={r=100, g=035, b=035, a=127},
	['land-mine']							={r=137, g=064, b=024, a=127},
	['firearm-magazine']					={r=255, g=215, b=000, a=127},
	['piercing-rounds-magazine']			={r=255, g=000, b=000, a=127},
	['uranium-rounds-magazine']				={r=000, g=255, b=000, a=127},
	['shotgun-shell']						={r=255, g=000, b=000, a=127},
	['piercing-shotgun-shell']				={r=000, g=149, b=255, a=127},
	['cannon-shell']						={r=095, g=047, b=000, a=127},
	['explosive-cannon-shell']				={r=255, g=000, b=000, a=127},
	['uranium-cannon-shell']				={r=000, g=255, b=000, a=127},
	['explosive-uranium-cannon-shell']		={r=020, g=200, b=020, a=127},
	['artillery-shell']						={r=255, g=135, b=084, a=127},
	['rocket']								={r=255, g=164, b=000, a=127},
	['explosive-rocket']					={r=255, g=000, b=000, a=127},
	['atomic-bomb']							={r=000, g=255, b=000, a=127},
	['flamethrower-ammo']					={r=117, g=018, b=040, a=127},
	['grenade']								={r=000, g=025, b=025, a=127},
	['cluster-grenade']						={r=122, g=009, b=056, a=127},
	['poison-capsule']						={r=075, g=255, b=016, a=127},
	['slowdown-capsule']					={r=042, g=107, b=255, a=127},
	['defender-capsule']					={r=000, g=118, b=151, a=127},
	['distractor-capsule']					={r=107, g=169, b=005, a=127},
	['destroyer-capsule']					={r=180, g=000, b=000, a=127},
	['discharge-defense-remote']			={r=009, g=000, b=188, a=127},
	['artillery-targeting-remote']			={r=255, g=135, b=084, a=127},
	['light-armor']							={r=255, g=090, b=000, a=127},
	['heavy-armor']							={r=255, g=090, b=000, a=127},
	['modular-armor']						={r=255, g=090, b=000, a=127},
	['power-armor']							={r=255, g=090, b=000, a=127},
	['power-armor-mk2']						={r=255, g=090, b=000, a=127},
	['solar-panel-equipment']				={r=155, g=155, b=255, a=127},
	['fusion-reactor-equipment']			={r=255, g=255, b=255, a=127},
	['energy-shield-equipment']				={r=000, g=255, b=255, a=127},
	['energy-shield-mk2-equipment']			={r=255, g=020, b=000, a=127},
	['battery-equipment']					={r=050, g=255, b=000, a=127},
	['battery-mk2-equipment']				={r=050, g=255, b=000, a=127},
	['personal-laser-defense-equipment']	={r=090, g=255, b=255, a=127},
	['discharge-defense-equipment']			={r=220, g=220, b=220, a=127},
	['belt-immunity-equipment']				={r=233, g=164, b=044, a=127},
	['exoskeleton-equipment']				={r=080, g=080, b=080, a=127},
	['personal-roboport-equipment']			={r=138, g=120, b=000, a=127},
	['personal-roboport-mk2-equipment']		={r=164, g=000, b=000, a=127},
	['night-vision-equipment']				={r=022, g=058, b=000, a=127},
	['stone-wall']							={r=130, g=130, b=130, a=127},
	['gate']								={r=095, g=036, b=000, a=127},
	['gun-turret']							={r=073, g=036, b=000, a=127},
	['laser-turret']						={r=073, g=124, b=153, a=127},
	['flamethrower-turret']					={r=255, g=117, b=000, a=127},
	['artillery-turret']					={r=255, g=182, b=029, a=127},
	['radar']								={r=220, g=180, b=120, a=127},
	['rocket-silo']							={r=124, g=062, b=000, a=127},

-- --------------------------------------------------------------------------------------------

--	        __  __    ____    _____       _____    ____    _         ____    _____     _____
-- ______  |  \/  |  / __ \  |  __ \     / ____|  / __ \  | |       / __ \  |  __ \   / ____|  ______
--|______| | \  / | | |  | | | |  | |   | |      | |  | | | |      | |  | | | |__) | | (___   |______|
-- ______  | |\/| | | |  | | | |  | |   | |      | |  | | | |      | |  | | |  _  /   \___ \   ______
--|______| | |  | | | |__| | | |__| |   | |____  | |__| | | |____  | |__| | | | \ \   ____) | |______|
--         |_|  |_|  \____/  |_____/     \_____|  \____/  |______|  \____/  |_|  \_\ |_____/

-- --------------------------------------------------------------------------------------------

--	 _____                   _   _         _     _           ____
--	|  __ \                 | | (_)       | |   (_)         / __ \
--	| |__) |   ___    __ _  | |  _   ___  | |_   _    ___  | |  | |  _ __    ___   ___
--	|  _  /   / _ \  / _` | | | | | / __| | __| | |  / __| | |  | | | '__|  / _ \ / __|
--	| | \ \  |  __/ | (_| | | | | | \__ \ | |_  | | | (__  | |__| | | |    |  __/ \__ \
--	|_|  \_\  \___|  \__,_| |_| |_| |___/  \__| |_|  \___|  \____/  |_|     \___| |___/

	['iron-ore-realistic']						={r=255, g=035, b=000, a=127},
	['copper-ore-realistic']					={r=000, g=173, b=155, a=127},
	['uranium-ore-realistic']					={r=133, g=133, b=000, a=127},

-- --------------------------------------------------------------------------------------------

--	 _____       _   _
--	| ____|     | | (_)
--	| |__     __| |  _   _ __ ___
--	|___ \   / _` | | | | '_ ` _ \
--	 ___) | | (_| | | | | | | | | |
--	|____/   \__,_| |_| |_| |_| |_|

	--5dim automatization
	['5d-assembling-machine-4']					={r=000, g=215, b=182, a=127},	--Assembling Machine 4
	['5d-assembling-machine-5']					={r=215, g=000, b=124, a=127},	--Assembling Machine 5
	['basic-inserter']							={r=255, g=113, b=000, a=127},	--Inserter
	['5d-inserter-speed1-range3']				={r=000, g=127, b=000, a=127},	--Extra long inserter
	['5d-inserter-speed2-range2']				={r=000, g=127, b=000, a=127},	--Fast long inserter
	['5d-inserter-speed2-range3']				={r=000, g=127, b=000, a=127},	--Fast extra long inserter
	['5d-inserter-speed3-range1']				={r=000, g=127, b=000, a=127},	--Extra speed inserter
	['5d-inserter-speed3-range2']				={r=000, g=127, b=000, a=127},	--Extra speed long inserter
	['5d-inserter-speed3-range3']				={r=000, g=127, b=000, a=127},	--Extra speed extra long inserter
	['5d-inserter-speed1-range1-close']			={r=175, g=055, b=000, a=127},	--Inserter near
	['5d-inserter-speed1-range2-close']			={r=175, g=055, b=000, a=127},	--Long inserter near
	['5d-inserter-speed1-range3-close']			={r=175, g=055, b=000, a=127},	--Extra long inserter near
	['5d-inserter-speed2-range1-close']			={r=175, g=055, b=000, a=127},	--Fast speed inserter near
	['5d-inserter-speed2-range2-close']			={r=175, g=055, b=000, a=127},	--Fast speed long inserter near
	['5d-inserter-speed2-range3-close']			={r=175, g=055, b=000, a=127},	--Fast speed extra long inserter near
	['5d-inserter-speed3-range1-close']			={r=175, g=055, b=000, a=127},	--Extra speed inserter near
	['5d-inserter-speed3-range2-close']			={r=175, g=055, b=000, a=127},	--Extra speed long inserter near
	['5d-inserter-speed3-range3-close']			={r=175, g=055, b=000, a=127},	--Extra speed extra long inserter near
	['5d-fast-inserter-left-90d']				={r=000, g=127, b=000, a=127},	--Fast speed left inserter
	['5d-basic-inserter-left-90d']				={r=000, g=127, b=000, a=127},	--Left inserter
	['5d-fast-inserter-right-90d']				={r=000, g=127, b=000, a=127},	--Fast speed right inserter
	['5d-basic-inserter-right-90d']				={r=000, g=127, b=000, a=127},	--Right inserter
	['5d-fast-inserter-left-90d-close']			={r=175, g=055, b=000, a=127},	--Fast speed left inserter near
	['5d-basic-inserter-left-90d-close']		={r=175, g=055, b=000, a=127},	--Left inserter near
	['5d-fast-inserter-right-90d-close']		={r=175, g=055, b=000, a=127},	--Fast speed right inserter near
	['5d-basic-inserter-right-90d-close']		={r=175, g=055, b=000, a=127},	--Right inserter near
	['5d-oil-refinery-2']						={r=087, g=036, b=000, a=127},	--Oil refinery MK2
	['5d-oil-refinery-3']						={r=087, g=036, b=000, a=127},	--Oil refinery MK3
	['5d-chemical-plant-2']						={r=135, g=058, b=000, a=127},	--Chemical plant MK2
	['5d-chemical-plant-3']						={r=135, g=058, b=000, a=127},	--Chemical plant MK3
	['5d-inserter-smart-speed2-range1-close']	={r=120, g=000, b=255, a=127},	--Fast smart inserter near
	['5d-inserter-smart-speed2-range2']			={r=120, g=000, b=255, a=127},	--Fast smart long inserter
	['5d-inserter-smart-speed2-range2-close']	={r=120, g=000, b=255, a=127},	--Fast smart long inserter near
	['5d-inserter-smart-speed3-range1']			={r=120, g=000, b=255, a=127},	--Extra speed smart inserter
	['5d-inserter-smart-speed3-range1-close']	={r=120, g=000, b=255, a=127},	--Extra speed smart inserter near
	['5d-extreme-inserter-right-90d']			={r=000, g=127, b=000, a=127},	--Extra speed right inserter
	['5d-extreme-inserter-right-90d-close']		={r=175, g=055, b=000, a=127},	--Extra speed right inserter near
	['5d-extreme-inserter-left-90d']			={r=000, g=127, b=000, a=127},	--Extra speed left inserter
	['5d-extreme-inserter-left-90d-close']		={r=175, g=055, b=000, a=127},	--Extra speed left inserter near
--	['loader']									={r=   , g=   , b=   , a=127},	--Loader
--	['fast-loader']								={r=   , g=   , b=   , a=127},	--Fast loader
--	['express-loader']							={r=   , g=   , b=   , a=127},	--Express loader
	['5d-loader-4']								={r=050, g=184, b=049, a=127},	--Supersonic loader
	['5d-loader-5']								={r=255, g=255, b=255, a=127},	--Hypersonic loader

	--5dim battlefield
--	['5d-gun-turret-big']					={r=   , g=   , b=   , a=127},	--Big gun turret
--	['5d-laser-turret-big']					={r=   , g=   , b=   , a=127},	--Big laser turret
--	['5d-gun-turret-small']					={r=   , g=   , b=   , a=127},	--Small gun turret
--	['5d-laser-turret-small']				={r=   , g=   , b=   , a=127},	--Small laser turret
--	['5d-flamethrower-turret-2']			={r=   , g=   , b=   , a=127},	--FlameThrower Turret MK2
--	['5d-tesla-turret']						={r=   , g=   , b=   , a=127},	--Sniper laser turret
--	['5d-gun-turret-exp']					={r=   , g=   , b=   , a=127},	--Sniper Gun turret
--	['5d-electric-turret']					={r=   , g=   , b=   , a=127},	--Electric turret
--	['5d-metal-wall']						={r=   , g=   , b=   , a=127},	--Metal wall
--	['5d-gate']								={r=   , g=   , b=   , a=127},	--Metal gate
--	['5d-artillery']						={r=   , g=   , b=   , a=127},	--Self-propelled artillery
--	['artillery-shell']						={r=   , g=   , b=   , a=127},	--Artillery shell
--	['5d-tank']								={r=   , g=   , b=   , a=127},	--Tank MK2
--	['5d-radar']							={r=   , g=   , b=   , a=127},	--Radar MK2

	--5dim bot recaller
	['5d-logistic-chest-botRecaller']		={r=000, g=255, b=127, a=127},	--Robot Recaller Chest

	--5dim decoration
	['5d-banner-1']							={r=127, g=000, b=000, a=127},	--Banner
	['5d-banner-2']							={r=000, g=036, b=087, a=127},	--Banner 5Dim
	['5d-banner-3']							={r=255, g=058, b=000, a=127},	--Banner
	['5d-obelisk']							={r=255, g=146, b=095, a=127},	--Obelisk
	['5d-statue']							={r=018, g=018, b=095, a=127},	--Statue
	['5d-letter-01']						={r=255, g=255, b=255, a=127},	--a
	['5d-letter-02']						={r=255, g=255, b=255, a=127},	--b
	['5d-letter-03']						={r=255, g=255, b=255, a=127},	--c
	['5d-letter-04']						={r=255, g=255, b=255, a=127},	--d
	['5d-letter-05']						={r=255, g=255, b=255, a=127},	--e
	['5d-letter-06']						={r=255, g=255, b=255, a=127},	--f
	['5d-letter-07']						={r=255, g=255, b=255, a=127},	--g
	['5d-letter-08']						={r=255, g=255, b=255, a=127},	--h
	['5d-letter-09']						={r=255, g=255, b=255, a=127},	--i
	['5d-letter-10']						={r=255, g=255, b=255, a=127},	--j
	['5d-letter-11']						={r=255, g=255, b=255, a=127},	--k
	['5d-letter-12']						={r=255, g=255, b=255, a=127},	--l
	['5d-letter-13']						={r=255, g=255, b=255, a=127},	--m
	['5d-letter-14']						={r=255, g=255, b=255, a=127},	--n
  	['5d-letter-15']						={r=255, g=255, b=255, a=127},	--o
	['5d-letter-16']						={r=255, g=255, b=255, a=127},	--p
	['5d-letter-17']						={r=255, g=255, b=255, a=127},	--q
	['5d-letter-18']						={r=255, g=255, b=255, a=127},	--r
	['5d-letter-19']						={r=255, g=255, b=255, a=127},	--s
	['5d-letter-20']						={r=255, g=255, b=255, a=127},	--t
	['5d-letter-21']						={r=255, g=255, b=255, a=127},	--u
	['5d-letter-22']						={r=255, g=255, b=255, a=127},	--v
	['5d-letter-23']						={r=255, g=255, b=255, a=127},	--w
	['5d-letter-24']						={r=255, g=255, b=255, a=127},	--x
	['5d-letter-25']						={r=255, g=255, b=255, a=127},	--y
	['5d-letter-26']						={r=255, g=255, b=255, a=127},	--z
	['5d-letter-27']						={r=255, g=255, b=255, a=127},	--ñ
	['5d-letter-28']						={r=255, g=255, b=255, a=127},	--¡
	['5d-letter-29']						={r=255, g=255, b=255, a=127},	--?
	['5d-letter-30']						={r=255, g=255, b=255, a=127},	--!
	['5d-letter-31']						={r=255, g=255, b=255, a=127},	--$
	['5d-letter-32']						={r=255, g=255, b=255, a=127},	-->
	['5d-letter-33']						={r=255, g=255, b=255, a=127},	--<
	['5d-letter-34']						={r=255, g=255, b=255, a=127},	---
	['5d-letter-35']						={r=255, g=255, b=255, a=127},	--_
	['5d-letter-36']						={r=255, g=255, b=255, a=127},	--:
	['5d-letter-37']						={r=255, g=255, b=255, a=127},	--[
	['5d-letter-38']						={r=255, g=255, b=255, a=127},	--]
	['5d-letter-39']						={r=255, g=255, b=255, a=127},	--/
	['5d-letter-40']						={r=255, g=255, b=255, a=127},	--"
	['5d-letter-41']						={r=255, g=255, b=255, a=127},	--.
	['5d-letter-42']						={r=255, g=255, b=255, a=127},	--,
	['5d-letter-43']						={r=255, g=255, b=255, a=127},	--@
	['5d-letter-44']						={r=255, g=255, b=255, a=127},	--&
	['5d-letter-45']						={r=255, g=255, b=255, a=127},	--+
	['5d-letter-46']						={r=255, g=255, b=255, a=127},	--0
	['5d-letter-47']						={r=255, g=255, b=255, a=127},	--1
	['5d-letter-48']						={r=255, g=255, b=255, a=127},	--2
	['5d-letter-49']						={r=255, g=255, b=255, a=127},	--3
	['5d-letter-50']						={r=255, g=255, b=255, a=127},	--4
	['5d-letter-51']						={r=255, g=255, b=255, a=127},	--5
	['5d-letter-52']						={r=255, g=255, b=255, a=127},	--6
	['5d-letter-53']						={r=255, g=255, b=255, a=127},	--7
	['5d-letter-54']						={r=255, g=255, b=255, a=127},	--8
	['5d-letter-55']						={r=255, g=255, b=255, a=127},	--9
	['5d-arrow-1']							={r=222, g=222, b=222, a=127},	--Arrow top
	['5d-arrow-2']							={r=222, g=222, b=222, a=127},	--Arrow right
	['5d-arrow-3']							={r=222, g=222, b=222, a=127},	--Arrow down
	['5d-arrow-4']							={r=222, g=222, b=222, a=127},	--Arrow left
	['5d-concrete-a']						={r=211, g=211, b=076, a=127},	--Yellow floor
	['5d-concrete-m']						={r=255, g=073, b=255, a=127},	--Purple floor
	['5d-concrete-v']						={r=073, g=255, b=073, a=127},	--Green floor
	['5d-concrete-b2']						={r=073, g=255, b=255, a=127},	--Cyan floor
	['5d-concrete-b']						={r=073, g=073, b=255, a=127},	--Blue floor
	['5d-concrete-r']						={r=255, g=073, b=073, a=127},	--Red floor
--	['stone-floor']							={r=   , g=   , b=   , a=127},	--Stone Floor
--	['wood-floor']							={r=   , g=   , b=   , a=127},	--Wood Floor
--	['wood-floor-2']						={r=   , g=   , b=   , a=127},	--Wood Floor
--	['concrete-floor']						={r=   , g=   , b=   , a=127},	--Concrete Floor
--	['concrete-floor-2']					={r=   , g=   , b=   , a=127},	--Borderless Concrete Floor
--	['plastic-floor-red']					={r=   , g=   , b=   , a=127},	--Red Plastic Floor
--	['plastic-floor-green']					={r=   , g=   , b=   , a=127},	--Green Plastic Floor
--	['plastic-floor-blue']					={r=   , g=   , b=   , a=127},	--Blue Plastic Floor
--	['plastic-floor-yellow']				={r=   , g=   , b=   , a=127},	--Yellow Plastic Floor
--	['plastic-floor-chess']					={r=   , g=   , b=   , a=127},	--Checkered Plastic Floor
--	['metal-floor']							={r=   , g=   , b=   , a=127},	--Metal Floor
--	['floor-o-matic']						={r=   , g=   , b=   , a=127},	--Floor-O-Matic
--	['floor-b-gone']						={r=   , g=   , b=   , a=127},	--Floor-B-Gone

	--5dim energy
	['5d-basic-accumulator-2']				={r=155, g=155, b=155, a=127},	--Accumulator MK2
	['5d-basic-accumulator-3']				={r=155, g=055, b=055, a=127},	--Accumulator MK3
	['5d-electric-pole-4']					={r=082, g=035, b=035, a=127},	--Medium electric pole MK2
	['5d-electric-pole-5']					={r=082, g=035, b=035, a=127},	--Big electric pole MK2
	['5d-solar-panel-2']					={r=000, g=027, b=220, a=127},	--Solar panel MK2
	['5d-solar-panel-3']					={r=000, g=020, b=075, a=127},	--Solar panel MK3
	['5d-steam-engine-2']					={r=062, g=033, b=022, a=127},	--Steam engine MK2
	['5d-steam-engine-3']					={r=062, g=033, b=022, a=127},	--Steam engine MK3
	['5d-lamp']								={r=158, g=148, b=255, a=127},	--Big Lamp
	['5d-electric-pole-6']					={r=046, g=016, b=000, a=127},	--Wifi electric pole
	['5d-boiler']							={r=164, g=025, b=022, a=127},	--Boiler MK2
	['5d-boiler-2']							={r=062, g=033, b=022, a=127},	--Boiler MK3
	['5d-offshore-pump']					={r=222, g=051, b=066, a=127},	--Offshore pump MK2
	['5d-offshore-pump-2']					={r=062, g=033, b=022, a=127},	--Offshore pump MK3
	['5d-small-pump']						={r=000, g=031, b=255, a=127},	--Small pump MK2
	['5d-small-pump-2']						={r=155, g=255, b=158, a=127},	--Small pump MK3

	--5dim equipment
	['5d-battery-mk3-equipment']					={r=000, g=158, b=255, a=127},	--Battery MK3
	['5d-battery-mk4-equipment']					={r=255, g=122, b=000, a=127},	--Battery MK4
	['5d-exoskeleton-mk2-equipment']				={r=080, g=080, b=080, a=127},	--Exoskeleton MK2
	['5d-exoskeleton-mk3-equipment']				={r=080, g=080, b=080, a=127},	--Exoskeleton MK3
	['5d-fusion-reactor-mk2-equipment']				={r=067, g=180, b=255, a=127},	--Portable fusion reactor MK2
--	['5d-personal-roboport-mk2-equipment']			={r=   , g=   , b=   , a=127},	--Personal roboport MK2
	['5d-energy-shield-mk3-equipment']				={r=000, g=129, b=255, a=127},	--Energy shield MK3
	['5d-energy-shield-mk4-equipment']				={r=067, g=220, b=100, a=127},	--Energy shield MK4
	['5d-solar-panel-mk2-equipment']				={r=107, g=255, b=255, a=127},	--Portable solar panel MK2
--	['5d-personal-yellow-laser-defense-equipment']	={r=   , g=   , b=   , a=127},	--Yellow personal defense laser
--	['5d-personal-blue-laser-defense-equipment']	={r=   , g=   , b=   , a=127},	--Blue personal defense laser

	--5dim logistics
	['5d-logistic-robot-2']					={r=255, g=124, b=153, a=127},	--Logistic Robot MK2
	['5d-construction-robot-2']				={r=255, g=124, b=153, a=127},	--Construction Robot MK2
	['5d-logistic-robot-3']					={r=204, g=255, b=106, a=127},	--Logistic Robot MK3
	['5d-construction-robot-3']				={r=204, g=255, b=106, a=127},	--Construction Robot MK3
	['5d-logistic-robot-4']					={r=255, g=226, b=076, a=127},	--Logistic Robot MK4
	['5d-construction-robot-4']				={r=255, g=226, b=076, a=127},	--Construction Robot MK4
	['5d-construction-robot-p']				={r=255, g=135, b=058, a=127},	--Personal construction robot
	['5d-roboport-2']						={r=153, g=000, b=146, a=127},	--Roboport MK2
	['5d-roboport-3']						={r=000, g=124, b=000, a=127},	--Roboport MK3
	['5d-roboport-4']						={r=117, g=124, b=000, a=127},	--Roboport MK4
	['5d-active']							={r=120, g=000, b=255, a=127},	--Active provider chest MK2
	['5d-passive']							={r=255, g=000, b=000, a=127},	--Passive provider chest MK2
	['5d-requester']						={r=000, g=150, b=255, a=127},	--Requester Chest MK2
	['5d-storage']							={r=255, g=160, b=000, a=127},	--Storage Chest MK2
	['5d-repair-pack-2']					={r=220, g=220, b=220, a=127},	--Repair pack MK2

	--5dim mining
	['5d-mining-drill-speed-1']				={r=080, g=000, b=113, a=127},	--Mining Drill - Speed MK1
	['5d-mining-drill-speed-2']				={r=110, g=000, b=055, a=127},	--Mining Drill - Speed MK2
	['5d-mining-drill-speed-3']				={r=084, g=005, b=000, a=127},	--Mining Drill - Speed MK3
	['5d-mining-drill-range-1']				={r=036, g=109, b=000, a=127},	--Mining Drill - Range MK1
	['5d-mining-drill-range-2']				={r=036, g=000, b=066, a=127},	--Mining Drill - Range MK2
	['5d-mining-drill-range-3']				={r=084, g=000, b=066, a=127},	--Mining Drill - Range MK3
	['5d-pumpjack-2']						={r=120, g=180, b=000, a=127},	--Pumpjack MK2
	['5d-pumpjack-3']						={r=120, g=180, b=000, a=127},	--Pumpjack MK3
	['5d-water-pumpjack']					={r=000, g=138, b=168, a=127},	--Water pumpjack

	--5dim module
	['5d-effectivity-module-4']				={r=020, g=255, b=000, a=127},	--Efficiency module 4
	['5d-effectivity-module-5']				={r=020, g=255, b=000, a=127},	--Efficiency module 5
	['5d-productivity-module-4']			={r=250, g=070, b=000, a=127},	--Productivity module 4
	['5d-productivity-module-5']			={r=250, g=070, b=000, a=127},	--Productivity module 5
	['5d-speed-module-4']					={r=000, g=150, b=255, a=127},	--Speed module 4
	['5d-speed-module-5']					={r=000, g=150, b=255, a=127},	--Speed module 5
	['5d-pollution-module-1']				={r=255, g=255, b=000, a=127},	--Pollution module 1
	['5d-pollution-module-2']				={r=255, g=255, b=000, a=127},	--Pollution module 2
	['5d-pollution-module-3']				={r=255, g=255, b=000, a=127},	--Pollution module 3
	['5d-pollution-module-4']				={r=255, g=255, b=000, a=127},	--Pollution module 4
	['5d-pollution-module-5']				={r=255, g=255, b=000, a=127},	--Pollution module 5
	['5d-effectivity-productivity-4']		={r=255, g=215, b=000, a=127},	--Efficiency and productivity mix module 4
	['5d-effectivity-productivity-5']		={r=255, g=215, b=000, a=127},	--Efficiency and productivity mix module 5
	['5d-pollution-effectivity-4']			={r=180, g=255, b=000, a=127},	--Pollution and efficiency mix module 4
	['5d-pollution-effectivity-5']			={r=180, g=255, b=000, a=127},	--Pollution and efficiency mix module 5
	['5d-pollution-productivity-4']			={r=255, g=150, b=000, a=127},	--Pollution and productivity mix module 4
	['5d-pollution-productivity-5']			={r=255, g=150, b=000, a=127},	--Pollution and productivity mix module 5
	['5d-speed-productivity-4']				={r=200, g=000, b=180, a=127},	--Speed and productivity mix module 4
	['5d-speed-productivity-5']				={r=200, g=000, b=180, a=127},	--Speed and productivity mix module 5
	['5d-speed-effectivity-4']				={r=000, g=215, b=255, a=127},	--Speed and efficiency mix module 4
	['5d-speed-effectivity-5']				={r=000, g=215, b=255, a=127},	--Speed and efficiency mix module 5
	['5d-speed-pollution-4']				={r=117, g=237, b=255, a=127},	--Speed and pollution mix module 4
	['5d-speed-pollution-5']				={r=117, g=237, b=255, a=127},	--Speed and pollution mix module 5
	['5d-welder']							={r=033, g=044, b=080, a=127},	--Welder

	--5dim nuclear
	['5d-steam-turbine-2']					={r=255, g=164, b=000, a=127},	--Steam turbine MK2
	['5d-centrifuge-2']						={r=255, g=164, b=000, a=127},	--Centrifuge MK2
	['5d-heat-exchanger-2']					={r=255, g=164, b=000, a=127},	--Heat exchanger MK2
	['5d-nuclear-reactor-2']				={r=255, g=164, b=000, a=127},	--Nuclear reactor MK2

	--5dim resources
	['5d-electric-furnace']					={r=197, g=131, b=087, a=127},	--Electric furnace MK2
	['5d-furnace']							={r=197, g=131, b=087, a=127},	--Steel furnace MK2
	['5d-masher']							={r=197, g=066, b=029, a=127},	--Masher
	['5d-masher-2']							={r=197, g=066, b=029, a=127},	--Masher MK2
	['5d-iron-dust']						={r=056, g=133, b=255, a=127},	--Iron dust
	['5d-copper-dust']						={r=255, g=050, b=000, a=127},	--Copper dust
	['5d-tin-dust']							={r=082, g=078, b=078, a=127},	--Tin dust
	['5d-zinc-dust']						={r=027, g=209, b=217, a=127},	--Zinc dust
	['5d-aluminium-dust']					={r=180, g=093, b=071, a=127},	--Aluminium dust
	['5d-gold-dust']						={r=255, g=157, b=000, a=127},	--Gold dust
	['5d-lead-dust']						={r=090, g=080, b=080, a=127},	--Lead dust
	['5d-tin-gear-wheel']					={r=255, g=169, b=000, a=127},	--Tin gear wheel
	['5d-zinc-gear-wheel']					={r=255, g=199, b=115, a=127},	--Zinc gear wheel
	['5d-lead-gear-wheel']					={r=082, g=169, b=255, a=127},	--Lead gear Wheel
	['5d-aluminium-gear-wheel']				={r=229, g=229, b=229, a=127},	--Aluminium gear Wheel
	['5d-gold-wire']						={r=255, g=157, b=000, a=127},	--Gold wire
	['5d-aluminium-wire']					={r=229, g=229, b=229, a=127},	--Aluminium wire
	['5d-gold-circuit']						={r=255, g=157, b=000, a=127},	--Gold electronic circuit
	['5d-industrial-furnace']				={r=197, g=178, b=000, a=127},	--Industrial furnace

	--5dim trade
	['5d-trader']							={r=226, g=208, b=025, a=127},	--Trader
	['5d-coin']								={r=255, g=160, b=000, a=127},	--5D coin

	--5dim trains
	['5d-locomotive-hs']					={r=091, g=066, b=255, a=127},	--High speed locomotive
	['5d-locomotive-reinforced']			={r=025, g=004, b=000, a=127},	--Reinforced locomotive
	['5d-fluid-wagon-2']					={r=091, g=066, b=255, a=127},	--Fluid wagon MK2
	['5d-fluid-wagon-3']					={r=084, g=255, b=087, a=127},	--Fluid wagon MK3
	['5d-cargo-wagon-2']					={r=091, g=066, b=255, a=127},	--Wagon MK2
	['5d-cargo-wagon-3']					={r=084, g=255, b=087, a=127},	--Wagon MK3

	--5dim transport
	['5d-mk4-transport-belt']				={r=050, g=184, b=049, a=127},	--Supersonic transport belt
	['5d-mk5-transport-belt']				={r=255, g=255, b=255, a=127},	--Hypersonic transport belt
	['5d-mk4-transport-belt-to-ground']		={r=050, g=184, b=049, a=127},	--Supersonic underground belt
	['5d-mk5-transport-belt-to-ground']		={r=255, g=255, b=255, a=127},	--Hypersonic underground belt
	['5d-mk1-transport-belt-to-ground-30']	={r=233, g=164, b=044, a=127},	--Underground belt (30)
	['5d-mk2-transport-belt-to-ground-30']	={r=215, g=040, b=040, a=127},	--Fast underground belt (30)
	['5d-mk3-transport-belt-to-ground-30']	={r=025, g=142, b=222, a=127},	--Express underground belt (30)
	['5d-mk4-transport-belt-to-ground-30']	={r=050, g=184, b=049, a=127},	--Supersonic underground belt (30)
	['5d-mk5-transport-belt-to-ground-30']	={r=255, g=255, b=255, a=127},	--Hypersonic underground belt (30)
	['5d-mk1-transport-belt-to-ground-50']	={r=233, g=164, b=044, a=127},	--Underground belt (50)
	['5d-mk2-transport-belt-to-ground-50']	={r=215, g=040, b=040, a=127},	--Fast underground belt (50)
	['5d-mk3-transport-belt-to-ground-50']	={r=025, g=142, b=222, a=127},	--Express underground belt (50)
	['5d-mk4-transport-belt-to-ground-50']	={r=050, g=184, b=049, a=127},	--Supersonic underground belt (50)
	['5d-mk5-transport-belt-to-ground-50']	={r=255, g=255, b=255, a=127},	--Hypersonic underground belt (50)
	['5d-mk4-splitter']						={r=050, g=184, b=049, a=127},	--Supersonic splitter
	['5d-mk5-splitter']						={r=255, g=255, b=255, a=127},	--Hypersonic splitter
-- 	['5d-iron-chest-mk2']					={r=   , g=   , b=   , a=127},	--Iron chest 2x1
--	['5d-iron-chest-mk3']					={r=   , g=   , b=   , a=127},	--Iron chest 2x2
--	['5d-iron-chest-mk2-3']					={r=   , g=   , b=   , a=127},	--Big chest
--	['5d-iron-chest-mk2-2']					={r=   , g=   , b=   , a=127},	--Iron chest 1x2
	['5d-pipe-mk2']							={r=189, g=109, b=000, a=127},	--Copper pipe
	['5d-pipe-mk3']							={r=109, g=109, b=109, a=127},	--Steel pipe
	['5d-pipe-to-ground-mk2']				={r=189, g=109, b=000, a=127},	--Copper pipe-to-ground
	['5d-pipe-to-ground-mk3']				={r=109, g=109, b=109, a=127},	--Steel pipe-to-ground
	['5d-pipe-to-ground-mk1-30']			={r=135, g=075, b=020, a=127},	--Pipe-to-ground (30)
	['5d-pipe-to-ground-mk2-30']			={r=189, g=109, b=000, a=127},	--Copper pipe-to-ground (30)
	['5d-pipe-to-ground-mk3-30']			={r=109, g=109, b=109, a=127},	--Steel pipe-to-ground (30)
	['5d-pipe-to-ground-mk1-50']			={r=135, g=075, b=020, a=127},	--Pipe-to-ground (50)
	['5d-pipe-to-ground-mk2-50']			={r=189, g=109, b=000, a=127},	--Copper pipe-to-ground (50)
	['5d-pipe-to-ground-mk3-50']			={r=109, g=109, b=109, a=127},	--Steel pipe-to-ground (50)
--	['5d-belt-blocker']						={r=   , g=   , b=   , a=127},	--Belt Blocker
	['5d-storage-tank']						={r=135, g=075, b=020, a=127},	--Underground fluid tank

	--5dim vehicle
	['5d-boat']								={r=050, g=000, b=000, a=127},	--Boat
	['5d-air-plane']						={r=076, g=098, b=040, a=127},	--Air plane
	['5d-truck']							={r=200, g=138, b=117, a=127},	--Truck

-- --------------------------------------------------------------------------------------------

--									   _   _
--		/\                            | | ( )
--	   /  \     _ __     __ _    ___  | | |/   ___
--	  / /\ \   | '_ \   / _` |  / _ \ | |     / __|
--	 / ____ \  | | | | | (_| | |  __/ | |     \__ \
--	/_/    \_\ |_| |_|  \__, |  \___| |_|     |___/
--						 __/ |
--						|___/

	--refining
	['angels-ore1']							={r=000, g=038, b=100, a=127}, 	--Sapphirite
	['angels-ore2']							={r=255, g=220, b=000, a=127}, 	--Jivolite
	['angels-ore3']							={r=071, g=162, b=255, a=127}, 	--Stiratite
	['angels-ore4']							={r=239, g=239, b=239, a=127}, 	--Crotinnium
	['angels-ore5']							={r=151, g=000, b=000, a=127}, 	--Rubyte
	['angels-ore6']							={r=144, g=046, b=000, a=127}, 	--Bobmonium
--	['angels-fissure']						={r=   , g=   , b=   , a=127},	--Fissure
--	['angels-crystal-rock']					={r=   , g=   , b=   , a=127},	--Crystal Rock
	['burner-ore-crusher']					={r=000, g=000, b=000, a=127},	--Burner Ore Crusher
	['ore-crusher']							={r=071, g=071, b=078, a=127},	--Ore Crusher
	['ore-crusher-2']						={r=000, g=038, b=100, a=127},	--Ore Crusher Mk 2
	['ore-crusher-3']						={r=122, g=000, b=009, a=127},	--Ore Crusher Mk 3
	['ore-floatation-cell']					={r=071, g=071, b=078, a=127},	--Floatation Cell
	['ore-floatation-cell-2']				={r=000, g=038, b=100, a=127},	--Floatation Cell Mk 2
	['ore-floatation-cell-3']				={r=122, g=000, b=009, a=127},	--Floatation Cell Mk 3
	['ore-leaching-plant']					={r=078, g=035, b=049, a=127},	--Leaching Plant
	['ore-leaching-plant-2']				={r=000, g=038, b=100, a=127},	--Leaching Plant Mk 2
	['ore-leaching-plant-3']				={r=122, g=000, b=009, a=127},	--Leaching Plant Mk 3
	['ore-refinery']						={r=082, g=000, b=000, a=127},	--Ore Refinery
	['ore-refinery-2']						={r=000, g=038, b=100, a=127},	--Ore Refinery Mk 2
	['ore-refinery-3']						={r=122, g=000, b=009, a=127},	--Ore Refinery Mk 3
	['ore-sorting-facility']				={r=078, g=035, b=049, a=127},	--Ore Sorting Facility
	['ore-sorting-facility-2']				={r=000, g=038, b=100, a=127},	--Ore Sorting Facility Mk 2
	['ore-sorting-facility-3']				={r=122, g=000, b=009, a=127},	--Ore Sorting Facility Mk 3
	['ore-sorting-facility-4']				={r=140, g=107, b=000, a=127},	--Ore Sorting Facility Mk 4
	['liquifier']							={r=178, g=098, b=066, a=127},	--Liquifier
	['liquifier-2']							={r=178, g=098, b=066, a=127},	--Liquifier Mk 2
	['liquifier-3']							={r=178, g=098, b=066, a=127},	--Liquifier Mk 3
	['liquifier-4']							={r=178, g=098, b=066, a=127},	--Liquifier Mk 4
	['electro-whinning-cell']				={r=144, g=046, b=000, a=127},	--Electro Whinning Cell
	['electro-whinning-cell-2']				={r=144, g=046, b=000, a=127},	--Electro Whinning Cell MK2
	['electro-whinning-cell-3']				={r=144, g=046, b=000, a=127},	--Electro Whinning Cell MK3
	['ore-powderizer']						={r=071, g=025, b=000, a=127},	--Ore Powderizer
	['ore-powderizer-2']					={r=071, g=025, b=000, a=127},	--Ore Powderizer MK2
	['ore-powderizer-3']					={r=071, g=025, b=000, a=127},	--Ore Powderizer MK3
	['filtration-unit']						={r=093, g=071, b=000, a=127},	--Filtration Unit
	['filtration-unit-2']					={r=093, g=071, b=000, a=127},	--Filtration Unit Mk 2
	['crystallizer']						={r=000, g=100, b=140, a=127},	--Crystallizer
	['crystallizer-2']						={r=000, g=100, b=140, a=127},	--Crystallizer Mk 2
	['slag']								={r=100, g=024, b=016, a=127},	--Slag
	['filter-frame']						={r=173, g=173, b=173, a=127},	--Filter Frame
	['filter-coal']							={r=000, g=000, b=000, a=127},	--Coal Filter
	['filter-ceramic']						={r=133, g=133, b=064, a=127},	--Ceramic Filter
	['filter-ceramic-used']					={r=133, g=071, b=046, a=127},	--Spent Ceramic Filter
	['angels-ore1-crushed']					={r=000, g=038, b=100, a=127},	--Crushed Saphirite
	['angels-ore2-crushed']					={r=255, g=220, b=000, a=127},	--Crushed Jivolite
	['angels-ore3-crushed']					={r=071, g=162, b=255, a=127},	--Crushed Stiratite
	['angels-ore4-crushed']					={r=239, g=239, b=239, a=127},	--Crushed Crotinnium
	['angels-ore5-crushed']					={r=151, g=000, b=000, a=127},	--Crushed Rubyte
	['angels-ore6-crushed']					={r=144, g=046, b=000, a=127},	--Crushed Bobmonium
	['stone-crushed']						={r=222, g=222, b=222, a=127},	--Crushed Stone
	['angels-ore8-crushed']					={r=155, g=255, b=031, a=127},	--Crushed Ferrous Ore
	['angels-ore8-powder']					={r=155, g=255, b=031, a=127},	--Ferrous Ore Powder
	['angels-ore9-crushed']					={r=255, g=078, b=000, a=127},	--Crushed Cupric Ore
	['angels-ore9-powder']					={r=255, g=078, b=000, a=127},	--Cupric Ore Powder
	['angels-ore1-chunk']					={r=000, g=038, b=100, a=127},	--Saphirite Chunks
	['angels-ore2-chunk']					={r=255, g=220, b=000, a=127},	--Jivolite Chunks
	['angels-ore3-chunk']					={r=071, g=162, b=255, a=127},	--Stiratite Chunks
	['angels-ore4-chunk']					={r=239, g=239, b=239, a=127},	--Crotinnium Chunks
	['angels-ore5-chunk']					={r=151, g=000, b=000, a=127},	--Rubyte Chunks
	['angels-ore6-chunk']					={r=144, g=046, b=000, a=127},	--Bobmonium Chunks
	['angels-ore8-dust']					={r=155, g=255, b=031, a=127},	--Ferrous Ore Dust
	['angels-ore9-dust']					={r=255, g=078, b=000, a=127},	--Cupric Ore Dust
	['angels-ore1-crystal']					={r=000, g=038, b=100, a=127},	--Saphirite Crystals
	['angels-ore2-crystal']					={r=255, g=220, b=000, a=127},	--Jivolite Crystals
	['angels-ore3-crystal']					={r=071, g=162, b=255, a=127},	--Stiratite Crystals
	['angels-ore4-crystal']					={r=239, g=239, b=239, a=127},	--Crotinnium Crystals
	['angels-ore5-crystal']					={r=151, g=000, b=000, a=127},	--Rubyte Crystals
	['angels-ore6-crystal']					={r=144, g=046, b=000, a=127},	--Bobmonium Crystals
	['angels-ore8-crystal']					={r=155, g=255, b=031, a=127},	--Ferrous Crystal
	['angels-ore9-crystal']					={r=255, g=078, b=000, a=127},	--Cupric Crystal
	['angels-ore1-pure']					={r=000, g=038, b=100, a=127},	--Purified Saphirite
	['angels-ore2-pure']					={r=255, g=220, b=000, a=127},	--Purified Jivolite
	['angels-ore3-pure']					={r=071, g=162, b=255, a=127},	--Purified Stiratite
	['angels-ore4-pure']					={r=239, g=239, b=239, a=127},	--Purified Crotinnium
	['angels-ore5-pure']					={r=151, g=000, b=000, a=127},	--Purified Rubyte
	['angels-ore6-pure']					={r=144, g=046, b=000, a=127},	--Purified Bobmonium
	['catalysator-brown']					={r=144, g=046, b=000, a=127},	--Mineral Catalyst
	['catalysator-green']					={r=155, g=255, b=031, a=127},	--Crystal Catalyst
	['catalysator-orange']					={r=255, g=078, b=000, a=127},	--Hybrid Catalyst
	['milling-drum']						={r=053, g=000, b=000, a=127},	--Milling Drum
	['milling-drum-used']					={r=053, g=000, b=000, a=127},	--Used Milling Drum
	['crystal-dust']						={r=000, g=255, b=166, a=127},	--Crystal Dust
	['geode-blue']							={r=000, g=064, b=255, a=127},	--Blue Geode
	['geode-cyan']							={r=000, g=224, b=199, a=127},	--Cyan Geode
	['geode-lightgreen']					={r=155, g=255, b=031, a=127},	--Lightgreen Geode
	['geode-purple']						={r=195, g=000, b=255, a=127},	--Purple Geode
	['geode-red']							={r=255, g=000, b=000, a=127},	--Red Geode
	['geode-yellow']						={r=255, g=151, b=000, a=127},	--Yellow Geode
--	['angels-iron-nugget']					={r=   , g=   , b=   , a=127},	--Iron Nugget
--	['angels-iron-pebbles']					={r=   , g=   , b=   , a=127},	--Iron Pebbles
--	['angels-iron-slag']					={r=   , g=   , b=   , a=127},	--Iron Slag
--	['angels-copper-nugget']				={r=   , g=   , b=   , a=127},	--Copper Nugget
--	['angels-copper-pebbles']				={r=   , g=   , b=   , a=127},	--Copper Pebbles
--	['angels-copper-slag']					={r=   , g=   , b=   , a=127},	--Copper Slag
	['thermal-water']						={r=255, g=090, b=000, a=127},	--Thermal Water
	['slag-slurry']							={r=137, g=111, b=000, a=127},	--Slag Slurry
	['mineral-sludge']						={r=255, g=209, b=118, a=127},	--Mineral Sludge
	['crystal-slurry']						={r=255, g=209, b=118, a=127},	--Crystal Slurry
	['crystal-seedling']					={r=255, g=209, b=118, a=127},	--Crystal Seedling
	['crystal-matrix']						={r=255, g=209, b=118, a=127},	--Crystal Matrix
	['angels-ore8-sludge']					={r=155, g=180, b=000, a=127},	--Ferrous Sludge
	['angels-ore8-solution']				={r=255, g=120, b=000, a=127},	--Ferrous Solution
	['angels-ore8-anode-sludge']			={r=255, g=120, b=000, a=127},	--Ferrous Anode Sludge
	['angels-ore8-slime']					={r=255, g=120, b=000, a=127},	--Ferrous Essence
	['angels-ore9-sludge']					={r=255, g=120, b=000, a=127},	--Cupric Sludge
	['angels-ore9-solution']				={r=255, g=120, b=000, a=127},	--Cupric Solution
	['angels-ore9-anode-sludge']			={r=255, g=120, b=000, a=127},	--Cupric Anode Sludge
	['angels-ore9-slime']					={r=255, g=120, b=000, a=127},	--Cupric Essence
	['thermal-extractor']					={r=050, g=050, b=050, a=127},	--Thermal Water Extractor
	['water-purified']						={r=217, g=206, b=255, a=127},	--Purified Water
	['water-mineralized']					={r=255, g=224, b=206, a=127},	--Mineralized Water
	['water-yellow-waste']					={r=255, g=224, b=093, a=127},	--Sulfuric Waste Water
	['water-red-waste']						={r=255, g=075, b=078, a=127},	--Nitric Waste Water
	['water-green-waste']					={r=133, g=255, b=133, a=127},	--Chloric Waste Water
	['water-greenyellow-waste']				={r=255, g=233, b=133, a=127},	--Fluoric Waste Water
	['water-saline']						={r=219, g=219, b=255, a=127},	--Saline Water
	['water-viscous-mud']					={r=219, g=219, b=178, a=127},	--Viscous Mud Water
	['water-heavy-mud']						={r=219, g=219, b=178, a=127},	--Heavy Mud Water
	['water-concentrated-mud']				={r=219, g=219, b=178, a=127},	--Concentrated Mud Water
	['water-light-mud']						={r=219, g=219, b=178, a=127},	--Light Mud Water
	['water-thin-mud']						={r=219, g=219, b=178, a=127},	--Thin Mud Water
--	['nodule-slurry']						={r=   , g=   , b=   , a=127},	--Nodule Slurry
--	['nodule-sludge']						={r=   , g=   , b=   , a=127},	--Nodule Sludge
	['hydro-plant']							={r=195, g=220, b=220, a=127},	--Hydro Plant
	['hydro-plant-2']						={r=195, g=220, b=220, a=127},	--Hydro Plant Mk2
	['hydro-plant-3']						={r=195, g=220, b=220, a=127},	--Hydro Plant Mk3
	['clarifier']							={r=075, g=046, b=089, a=127},	--Clarifier
	['salination-plant']					={r=202, g=202, b=235, a=127},	--Salination Plant
	['salination-plant-2']					={r=202, g=202, b=235, a=127},	--Salination Plant Mk2
	['seafloor-pump']						={r=200, g=137, b=040, a=127},	--Seafloor Pump
	['washing-plant']						={r=200, g=126, b=040, a=127},	--Washing Plant
	['washing-plant-2']						={r=200, g=126, b=040, a=127},	--Washing Plant MK2
	['barreling-pump']						={r=086, g=000, b=000, a=127},	--Barreling Pump
	['solid-mud']							={r=148, g=042, b=000, a=127},	--Mud
	['solid-limestone']						={r=255, g=184, b=162, a=127},	--Limestone
	['solid-sand']							={r=255, g=224, b=213, a=127},	--Sand
	['solid-clay']							={r=148, g=042, b=000, a=127},	--Clay
--	['water-void']							={r=   , g=   , b=   , a=127},	--Water Void

	--petrochem
	['gas-hydrogen']						={r=255, g=255, b=255, a=127},	--Hydrogen Gas
	['gas-oxygen']							={r=255, g=000, b=000, a=127},	--Oxygen Gas
	['gas-hydrogen-peroxide']				={r=255, g=000, b=000, a=127},	--Hydrogen Peroxide Gas
	['gas-chlorine']						={r=000, g=255, b=000, a=127},	--Chlorine Gas
	['gas-hydrogen-chloride']				={r=000, g=255, b=000, a=127},	--Hydrogen Chloride Gas
	['liquid-hydrochloric-acid']			={r=127, g=255, b=127, a=127},	--Hydrochloric Acid
	['gas-carbon-monoxide']					={r=255, g=100, b=100, a=127},	--Carbon Monoxide
	['gas-carbon-dioxide']					={r=255, g=100, b=100, a=127},	--Carbon Dioxide
	['liquid-hydrofluoric-acid']			={r=046, g=255, b=162, a=127},	--Hydrofluoric Acid
	['gas-allylchlorid']					={r=082, g=255, b=064, a=127},	--Allylchlorid Gas
	['gas-epichlorhydrin']					={r=082, g=255, b=064, a=127},	--Epichlorhydrin Gas
	['gas-glycerol']						={r=255, g=100, b=100, a=127},	--Glycerol Gas
	['liquid-perchloric-acid']				={r=127, g=255, b=127, a=127},	--Perchloric Acid
	['gas-phosgene']						={r=127, g=255, b=127, a=127},	--Phosgene Gas
	['liquid-ferric-chloride-solution']		={r=127, g=255, b=127, a=127},	--Ferric Chloride Solution
	['liquid-cupric-chloride-solution']		={r=127, g=255, b=127, a=127},	--Cupric Chloride Solution
	['gas-methane']							={r=100, g=100, b=100, a=127},	--Methane Gas
	['gas-ethane']							={r=100, g=100, b=100, a=127},	--Ethane Gas
	['gas-butane']							={r=150, g=150, b=150, a=127},	--Butane Gas
	['gas-propene']							={r=024, g=024, b=024, a=127},	--Propene Gas
	['liquid-naphtha']						={r=195, g=064, b=064, a=127},	--Naphtha
	['liquid-mineral-oil']					={r=064, g=195, b=064, a=127},	--Base Mineral Oil
	['liquid-fuel-oil']						={r=255, g=231, b=000, a=127},	--Fuel Oil
	['gas-methanol']						={r=115, g=027, b=031, a=127},	--Methanol Gas
	['gas-ethylene']						={r=180, g=180, b=180, a=127},	--Ethylene Gas
	['gas-benzene']							={r=180, g=180, b=180, a=127},	--Benzene Gas
	['gas-synthesis']						={r=255, g=118, b=220, a=127},	--Synthesis Gas
	['gas-butadiene']						={r=040, g=040, b=040, a=127},	--Butadiene Gas
	['gas-phenol']							={r=155, g=046, b=046, a=127},	--Phenol Gas
	['gas-ethylbenzene']					={r=180, g=180, b=180, a=127},	--Ethylbenzene Gas
	['gas-styrene']							={r=210, g=210, b=210, a=127},	--Styrene Gas
	['gas-formaldehyde']					={r=155, g=046, b=046, a=127},	--Formaldehyde Gas
	['gas-polyethylene']					={r=240, g=240, b=240, a=127},	--Polyethylene Gas
	['gas-chlor-methane']					={r=035, g=235, b=000, a=127},	--Chlor Methane Gas
	['liquid-toluene']						={r=065, g=065, b=065, a=127},	--Toluene
	['gas-bisphenol-a']						={r=255, g=177, b=177, a=127},	--Bisphenol-A Gas
	['gas-acetone']							={r=255, g=053, b=049, a=127},	--Acetone Gas
	['gas-compressed-air']					={r=255, g=255, b=255, a=127},	--Compressed Air
	['gas-nitrogen']						={r=000, g=027, b=255, a=127},	--Nitrogen Gas
	['gas-ammonia']							={r=000, g=027, b=255, a=127},	--Ammonia Gas
	['gas-nitrogen-monoxide']				={r=000, g=027, b=255, a=127},	--Nitrogen Monoxide Gas
	['gas-nitrogen-dioxide']				={r=000, g=000, b=255, a=127},	--Nitrogen Dioxide Gas
	['gas-dinitrogen-tetroxide']			={r=000, g=000, b=255, a=127},	--Dinitrogen Tetroxide Gas
	['gas-ammonium-chloride']				={r=050, g=050, b=255, a=127},	--Ammonium Chloride Gas
	['gas-urea']							={r=080, g=080, b=255, a=127},	--Urea Gas
	['gas-melamine']						={r=080, g=080, b=255, a=127},	--Melamine Gas
	['liquid-nitric-acid']					={r=080, g=100, b=000, a=127},	--Nitric Acid
	['gas-monochloramine']					={r=100, g=100, b=255, a=127},	--Monochloramine Gas
	['gas-hydrazine']						={r=100, g=100, b=255, a=127},	--Hydrazine Gas
	['gas-methylamine']						={r=160, g=150, b=000, a=127},	--Methylamine Gas
	['gas-dimethylamine']					={r=160, g=160, b=255, a=127},	--Dimethylamine Gas
	['gas-dimethylhydrazine']				={r=180, g=160, b=255, a=127},	--Dimethylhydrazine Gas
	['gas-natural-1']						={r=050, g=100, b=050, a=127},	--Natural Gas
	['liquid-multi-phase-oil']				={r=100, g=140, b=100, a=127},	--Multi Phase Oil
	['gas-raw-1']							={r=050, g=140, b=050, a=127},	--Raw Gas
	['liquid-condensates']					={r=210, g=210, b=210, a=127},	--Gas Condensates
	['gas-acid']							={r=255, g=255, b=000, a=127},	--Acid Gas
	['liquid-ngl']							={r=080, g=140, b=080, a=127},	--Natural Gas Liquids
	['gas-residual']						={r=173, g=000, b=151, a=127},	--Residual Gas
	['gas-hydrogen-sulfide']				={r=255, g=255, b=030, a=127},	--Hydrogen Sulfide Gas
	['gas-sulfur-dioxide']					={r=255, g=255, b=030, a=127},	--Sulfur Dioxide Gas
	['liquid-sulfuric-acid']				={r=255, g=255, b=030, a=127},	--Sulfuric Acid
	['liquid-plastic']						={r=228, g=199, b=255, a=127},	--Liquid Plastic
	['liquid-resin']						={r=255, g=188, b=100, a=127},	--Liquid Resin
	['liquid-rubber']						={r=104, g=255, b=148, a=127},	--Liquid Rubber
--	['angels-natural-gas']					={r=   , g=   , b=   , a=127},	--Gas Well
	['advanced-chemical-plant']				={r=255, g=209, b=206, a=127},	--Advanced Chemical Plant
	['advanced-chemical-plant-2']			={r=255, g=209, b=206, a=127},	--Advanced Chemical Plant MK2
	['angels-flare-stack']					={r=046, g=000, b=000, a=127},	--Flare Stack
--	['angels-fluid-splitter-2-way']			={r=   , g=   , b=   , a=127},	--2 Way Fluid Splitter
--	['angels-fluid-splitter-3-way']			={r=   , g=   , b=   , a=127},	--3 Way Fluid Splitter
	['gas-refinery-small']					={r=255, g=209, b=206, a=127},	--Gas Refinery
	['gas-refinery-small-2']				={r=255, g=209, b=206, a=127},	--Gas Refinery MK2
	['gas-refinery-small-3']				={r=255, g=209, b=206, a=127},	--Gas Refinery MK3
	['gas-refinery-small-4']				={r=255, g=209, b=206, a=127},	--Gas Refinery MK4
	['gas-refinery']						={r=255, g=209, b=206, a=127},	--Advanced Gas Refinery
	['gas-refinery-2']						={r=255, g=209, b=206, a=127},	--Advanced Gas Refinery MK2
	['gas-refinery-3']						={r=255, g=209, b=206, a=127},	--Advanced Gas Refinery MK3
	['gas-refinery-4']						={r=255, g=209, b=206, a=127},	--Advanced Gas Refinery MK4
	['separator']							={r=255, g=209, b=206, a=127},	--Oil & Gas Separator
	['separator-2']							={r=255, g=209, b=206, a=127},	--Oil & Gas Separator MK2
	['separator-3']							={r=255, g=209, b=206, a=127},	--Oil & Gas Separator MK3
	['separator-4']							={r=255, g=209, b=206, a=127},	--Oil & Gas Separator MK4
	['steam-cracker']						={r=255, g=209, b=206, a=127},	--Steam Cracker
	['steam-cracker-2']						={r=255, g=209, b=206, a=127},	--Steam Cracker MK2
	['steam-cracker-3']						={r=255, g=209, b=206, a=127},	--Steam Cracker MK3
	['steam-cracker-4']						={r=255, g=209, b=206, a=127},	--Steam Cracker MK4
	['angels-electrolyser']					={r=255, g=209, b=206, a=127},	--Electrolyser
	['angels-electrolyser-2']				={r=255, g=209, b=206, a=127},	--Electrolyser MK2
	['angels-electrolyser-3']				={r=255, g=209, b=206, a=127},	--Electrolyser MK3
	['angels-electrolyser-4']				={r=255, g=209, b=206, a=127},	--Electrolyser MK4
	['angels-storage-tank-1']				={r=148, g=020, b=000, a=127},	--Petrochem Gas Tank
	['angels-storage-tank-2']				={r=148, g=020, b=000, a=127},	--Petrochem Oil Tank
	['angels-storage-tank-3']				={r=126, g=009, b=005, a=127},	--Petrochem Small Inline Tank
	['angels-air-filter']					={r=129, g=024, b=005, a=127},	--Air Filter
	['angels-air-filter-2']					={r=129, g=024, b=005, a=127},	--Air Filter MK2
	['angels-chemical-plant']				={r=140, g=042, b=042, a=127},	--Chemical Plant
	['angels-chemical-plant-2']				={r=140, g=042, b=042, a=127},	--Chemical Plant MK2
	['angels-chemical-plant-3']				={r=140, g=042, b=042, a=127},	--Chemical Plant MK3
	['angels-chemical-plant-4']				={r=140, g=042, b=042, a=127},	--Chemical Plant MK4
	['oil-refinery-2']						={r=186, g=055, b=000, a=127},	--Oil Refinery MK2
	['oil-refinery-3']						={r=186, g=055, b=000, a=127},	--Oil Refinery MK3
	['oil-refinery-4']						={r=186, g=055, b=000, a=127},	--Oil Refinery MK4
	['valve-check']							={r=086, g=140, b=038, a=127},	--Check Valve
	['valve-return']						={r=100, g=035, b=000, a=127},	--Non-Return Valve
	['valve-overflow']						={r=078, g=107, b=180, a=127},	--Overflow Valve
	['valve-converter']						={r=255, g=199, b=024, a=127},	--Converter Valve
	['valve-underflow']						={r=224, g=224, b=224, a=127},	--Top-Up Valve
	['angels-electric-boiler']				={r=199, g=024, b=000, a=127},	--Electric Boiler
	['solid-sodium-hydroxide']				={r=199, g=199, b=199, a=127},	--Sodium Hydroxide
	['solid-sodium-hypochlorite']			={r=137, g=199, b=140, a=127},	--Sodium Hypochlorite
	['solid-sodium']						={r=000, g=038, b=140, a=127},	--Sodium
	['solid-sodium-carbonate']				={r=111, g=140, b=255, a=127},	--Sodium Carbonate
	['solid-sodium-cyanide']				={r=073, g=076, b=255, a=127},	--Sodium Cyanide
	['solid-sodium-sulfate']				={r=231, g=199, b=031, a=127},	--Sodium Sulfate
	['solid-calcium-sulfate']				={r=089, g=089, b=100, a=127},	--Calcium Sulfate
	['solid-calcium-chloride']				={r=217, g=255, b=000, a=127},	--Calcium Chloride
	['solid-sodium-chlorate']				={r=255, g=151, b=078, a=127},	--Sodium Chlorate
	['solid-sodium-perchlorate']			={r=255, g=151, b=078, a=127},	--Sodium Perchlorate
	['solid-oil-residual']					={r=173, g=000, b=151, a=127},	--Oil Residuals
	['solid-salt']							={r=220, g=220, b=220, a=127},	--Salt (Sodium Chloride)
	['solid-lithium']						={r=100, g=220, b=220, a=127},	--Lithia Salt (Lithium Chloride)
	['solid-ammonium-nitrate']				={r=146, g=153, b=219, a=127},	--Ammonium Nitrate
	['solid-ammonium-perchlorate']			={r=131, g=219, b=193, a=127},	--Ammonium Perchlorate
--	['solid-plastic-1']						={r=   , g=   , b=   , a=127},	--Polypropylen Plastic
--	['solid-plastic-2']						={r=   , g=   , b=   , a=127},	--Phenolic Plastic
--	['solid-plastic-3']						={r=   , g=   , b=   , a=127},	--Polyethylene Plastic
--	['solid-resin']							={r=   , g=   , b=   , a=127},	--Resin 1
--	['solid-resin-2']						={r=   , g=   , b=   , a=127},	--Resin 2
--	['solid-rubber']						={r=   , g=   , b=   , a=127},	--Rubber
	['fluorite-ore']						={r=217, g=255, b=000, a=127},	--Fluorite Ore
	['coal-crushed']						={r=000, g=000, b=000, a=127},	--Crushed Coal
	['solid-carbon']						={r=000, g=000, b=000, a=127},	--Carbon
	['solid-coke']							={r=000, g=000, b=000, a=127},	--Coke
	['pellet-coke']							={r=000, g=000, b=000, a=127},	--Coke Pellet
	['catalyst-metal-carrier']				={r=038, g=038, b=053, a=127},	--Metal Catalyst Carrier
	['catalyst-metal-red']					={r=153, g=000, b=000, a=127},	--Red Metal Catalyst
	['catalyst-metal-green']				={r=025, g=100, b=025, a=127},	--Green Metal Catalyst
	['catalyst-metal-blue']					={r=036, g=047, b=226, a=127},	--Blue Metal Catalyst
	['catalyst-metal-yellow']				={r=200, g=178, b=000, a=127},	--Yellow Metal Catalyst
	['filter-lime']							={r=129, g=024, b=005, a=127},	--Porous Lime Filter
	['filter-lime-used']					={r=093, g=013, b=016, a=127},	--Used Lime Filter
	['rocket-fuel-capsule']					={r=042, g=082, b=255, a=127},	--Rocket Fuel Capsule
	['rocket-oxidizer-capsule']				={r=020, g=060, b=024, a=127},	--Rocket Oxidizer Capsule
	['rocket-booster']						={r=000, g=013, b=078, a=127},	--Rocket Booster

	--smelting
	['liquid-molten-aluminium']				={r=246, g=195, b=000, a=127},	--Molten Aluminium
	['liquid-molten-chrome']				={r=206, g=169, b=255, a=127},	--Molten Chrome
	['liquid-molten-cobalt']				={r=000, g=042, b=151, a=127},	--Molten Cobalt
	['liquid-molten-copper']				={r=151, g=035, b=027, a=127},	--Molten Copper
	['liquid-molten-glass']					={r=228, g=209, b=199, a=127},	--Molten Glass
	['liquid-molten-gold']					={r=255, g=157, b=000, a=127},	--Molten Gold
	['liquid-molten-iron']					={r=118, g=148, b=209, a=127},	--Molten Iron
	['liquid-molten-lead']					={r=053, g=031, b=053, a=127},	--Molten Lead
	['liquid-molten-manganese']				={r=255, g=000, b=000, a=127},	--Molten Manganese
	['liquid-molten-nickel']				={r=000, g=115, b=122, a=127},	--Molten Nickel
	['liquid-molten-platinum']				={r=255, g=184, b=162, a=127},	--Molten Platinum
	['liquid-molten-silicon']				={r=235, g=235, b=235, a=127},	--Molten Silicon
	['liquid-molten-silver']				={r=169, g=209, b=255, a=127},	--Molten Silver
	['liquid-molten-solder']				={r=177, g=231, b=255, a=127},	--Molten Solder
	['liquid-molten-steel']					={r=255, g=255, b=255, a=127},	--Molten Steel
	['liquid-concrete']						={r=104, g=093, b=093, a=127},	--Concrete
	['liquid-molten-tin']					={r=038, g=107, b=056, a=127},	--Molten Tin
	['liquid-molten-titanium']				={r=107, g=035, b=082, a=127},	--Molten Titanium
	['liquid-molten-tungsten']				={r=133, g=053, b=000, a=127},	--Molten Tungsten
	['liquid-molten-zinc']					={r=056, g=209, b=209, a=127},	--Molten Zinc
	['liquid-molten-bronze']				={r=255, g=131, b=000, a=127},	--Molten Bronze
	['liquid-molten-brass']					={r=255, g=158, b=086, a=127},	--Molten Brass
--	['liquid-molten-electrum']				={r=   , g=   , b=   , a=127},	--Molten Electrum
	['liquid-molten-gunmetal']				={r=255, g=058, b=025, a=127},	--Molten Gunmetal
	['liquid-molten-invar']					={r=219, g=255, b=255, a=127},	--Molten Invar
	['liquid-molten-cobalt-steel']			={r=178, g=197, b=255, a=127},	--Molten Cobalt Steel
	['liquid-molten-nitinol']				={r=120, g=069, b=255, a=127},	--Molten Nitinol
	['liquid-chlorauric-acid']				={r=255, g=180, b=000, a=127},	--Chlorauric Acid
	['liquid-hexachloroplatinic-acid']		={r=255, g=191, b=180, a=127},	--Hexachloroplatinic Acid
	['gas-silane']							={r=231, g=231, b=231, a=127},	--Silane Gas
	['liquid-trichlorosilane']				={r=231, g=231, b=231, a=127},	--Trichlorosilane
	['liquid-titanium-tetrachloride']		={r=231, g=169, b=231, a=127},	--Titanium Tetrachloride
	['gas-tungsten-hexafluoride']			={r=148, g=075, b=038, a=127},	--Tungsten Hexafluoride Gas
	['liquid-tungstic-acid']				={r=148, g=075, b=038, a=127},	--Tungstic Acid
	['liquid-hexafluorosilicic-acid']		={r=231, g=231, b=231, a=127},	--Hexafluorosilicic Acid
	['liquid-coolant']						={r=070, g=115, b=255, a=127},	--Coolant
	['liquid-coolant-used']					={r=027, g=046, b=122, a=127},	--Used Coolant
--	['liquid-coolant-clean']				={r=   , g=   , b=   , a=127},	--Cleaned Coolant
	['blast-furnace']						={r=173, g=060, b=020, a=127},	--Blast Furnace MK1
	['blast-furnace-2']						={r=173, g=060, b=020, a=127},	--Blast Furnace MK2
	['blast-furnace-3']						={r=173, g=060, b=020, a=127},	--Blast Furnace MK3
	['blast-furnace-4']						={r=173, g=060, b=020, a=127},	--Blast Furnace MK4
	['angels-chemical-furnace']				={r=173, g=060, b=020, a=127},	--Chemical Furnace MK1
	['angels-chemical-furnace-2']			={r=173, g=060, b=020, a=127},	--Chemical Furnace MK2
	['angels-chemical-furnace-3']			={r=173, g=060, b=020, a=127},	--Chemical Furnace MK3
	['angels-chemical-furnace-4']			={r=173, g=060, b=020, a=127},	--Chemical Furnace MK4
	['powder-mixer']						={r=173, g=060, b=020, a=127},	--Powder Mixer MK1
	['powder-mixer-2']						={r=173, g=060, b=020, a=127},	--Powder Mixer MK2
	['powder-mixer-3']						={r=173, g=060, b=020, a=127},	--Powder Mixer MK3
	['powder-mixer-4']						={r=173, g=060, b=020, a=127},	--Powder Mixer MK4
	['induction-furnace']					={r=171, g=044, b=033, a=127},	--Induction Furnace MK1
	['induction-furnace-2']					={r=171, g=044, b=033, a=127},	--Induction Furnace MK2
	['induction-furnace-3']					={r=171, g=044, b=033, a=127},	--Induction Furnace MK3
	['induction-furnace-4']					={r=171, g=044, b=033, a=127},	--Induction Furnace MK4
	['casting-machine']						={r=171, g=044, b=033, a=127},	--Casting Machine MK1
	['casting-machine-2']					={r=171, g=044, b=033, a=127},	--Casting Machine MK2
	['casting-machine-3']					={r=171, g=044, b=033, a=127},	--Casting Machine MK3
	['casting-machine-4']					={r=171, g=044, b=033, a=127},	--Casting Machine MK4
	['ore-processing-machine']				={r=173, g=060, b=020, a=127},	--Ore Processing Machine MK1
	['ore-processing-machine-2']			={r=173, g=060, b=020, a=127},	--Ore Processing Machine MK2
	['ore-processing-machine-3']			={r=173, g=060, b=020, a=127},	--Ore Processing Machine MK3
	['ore-processing-machine-4']			={r=173, g=060, b=020, a=127},	--Ore Processing Machine MK4
	['pellet-press']						={r=173, g=060, b=020, a=127},	--Pellet Press MK1
	['pellet-press-2']						={r=173, g=060, b=020, a=127},	--Pellet Press MK2
	['pellet-press-3']						={r=173, g=060, b=020, a=127},	--Pellet Press MK3
	['pellet-press-4']						={r=173, g=060, b=020, a=127},	--Pellet Press MK4
	['sintering-oven']						={r=171, g=044, b=033, a=127},	--Sintering Oven MK1
	['sintering-oven-2']					={r=171, g=044, b=033, a=127},	--Sintering Oven MK2
	['sintering-oven-3']					={r=171, g=044, b=033, a=127},	--Sintering Oven MK3
	['sintering-oven-4']					={r=171, g=044, b=033, a=127},	--Sintering Oven MK4
	['strand-casting-machine']				={r=171, g=044, b=033, a=127},	--Strand Casting Machine MK1
	['strand-casting-machine-2']			={r=171, g=044, b=033, a=127},	--Strand Casting Machine MK2
	['strand-casting-machine-3']			={r=171, g=044, b=033, a=127},	--Strand Casting Machine MK3
	['strand-casting-machine-4']			={r=171, g=044, b=033, a=127},	--Strand Casting Machine MK4
	['cooling-tower']						={r=005, g=078, b=255, a=127},	--Cooling Tower
	['processed-aluminium']					={r=246, g=195, b=000, a=127},	--Processed Aluminium
	['pellet-aluminium']					={r=246, g=195, b=000, a=127},	--Aluminium Pellet
	['solid-sodium-aluminate']				={r=246, g=195, b=000, a=127},	--Sodium Aluminate
	['solid-aluminium-hydroxide']			={r=246, g=195, b=000, a=127},	--Aluminium Hydroxide
	['solid-aluminium-oxide']				={r=104, g=158, b=255, a=127},	--Alumina
	['ingot-aluminium']						={r=246, g=195, b=000, a=127},	--Aluminium Ingot
	['angels-plate-aluminium']				={r=246, g=195, b=000, a=127},	--Aluminium Plate
	['angels-roll-aluminium']				={r=246, g=195, b=000, a=127},	--Aluminium Sheet Coil
	['chrome-ore']							={r=206, g=169, b=255, a=127},	--Chrome Ore
	['processed-chrome']					={r=206, g=169, b=255, a=127},	--Processed Chrome
	['pellet-chrome']						={r=206, g=169, b=255, a=127},	--Chrome Pellet
	['solid-chromate']						={r=064, g=031, b=071, a=127},	--Chromate
	['solid-dichromate']					={r=206, g=169, b=255, a=127},	--Dichromate
	['solid-chrome-oxide']					={r=220, g=162, b=137, a=127},	--Chrome Oxide
	['ingot-chrome']						={r=206, g=169, b=255, a=127},	--Chrome Ingot
	['powder-chrome']						={r=206, g=169, b=255, a=127},	--Chrome Powder
	['angels-plate-chrome']					={r=206, g=169, b=255, a=127},	--Chrome Plate
	['angels-roll-chrome']					={r=206, g=169, b=255, a=127},	--Chrome Sheet Coil
	['processed-cobalt']					={r=000, g=042, b=151, a=127},	--Processed Cobalt
	['pellet-cobalt']						={r=000, g=042, b=151, a=127},	--Cobalt Pellet
	['solid-cobalt-hydroxide']				={r=000, g=042, b=151, a=127},	--Cobalt Hydroxide
	['solid-cobalt-oxide']					={r=000, g=042, b=151, a=127},	--Cobalt Oxide
	['ingot-cobalt']						={r=000, g=042, b=151, a=127},	--Cobalt Ingot
	['powder-cobalt']						={r=000, g=042, b=151, a=127},	--Cobalt Powder
	['angels-plate-cobalt']					={r=000, g=042, b=151, a=127},	--Cobalt Plate
	['angels-roll-cobalt']					={r=000, g=042, b=151, a=127},	--Cobalt Sheet Coil
	['processed-copper']					={r=151, g=035, b=027, a=127},	--Processed Copper
	['pellet-copper']						={r=151, g=035, b=027, a=127},	--Copper Pellet
	['anode-copper']						={r=053, g=000, b=000, a=127},	--Copper Anode
	['ingot-copper']						={r=151, g=035, b=027, a=127},	--Copper Ingot
	['powder-copper']						={r=151, g=035, b=027, a=127},	--Copper Powder
	['angels-plate-copper']					={r=151, g=035, b=027, a=127},	--Copper Plate
	['angels-wire-copper']					={r=151, g=035, b=027, a=127},	--Copper Wire
	['angels-wire-coil-copper']				={r=151, g=035, b=027, a=127},	--Copper Wire Coil
	['angels-roll-copper']					={r=151, g=035, b=027, a=127},	--Copper Sheet Coil
	['solid-glass-mixture']					={r=151, g=148, b=195, a=127},	--Glass Mixture
	['angels-plate-glass']					={r=228, g=209, b=199, a=127},	--Glass
	['angels-coil-glass-fiber']				={r=151, g=035, b=027, a=127},	--Glass Fiber
	['processed-gold']						={r=255, g=157, b=000, a=127},	--Processed Gold
	['pellet-gold']							={r=255, g=157, b=000, a=127},	--Gold Pellet
	['cathode-gold']						={r=180, g=122, b=000, a=127},	--Gold Cathode
	['solid-sodium-gold-cyanide']			={r=097, g=118, b=206, a=127},	--Sodium Gold Cyanide
	['ingot-gold']							={r=255, g=157, b=000, a=127},	--Gold Ingot
	['angels-plate-gold']					={r=255, g=157, b=000, a=127},	--Gold Plate
	['angels-roll-gold']					={r=255, g=157, b=000, a=127},	--Gold Sheet Coil
	['angels-wire-gold']					={r=255, g=157, b=000, a=127},	--Gold Wire
	['angels-wire-coil-gold']				={r=255, g=157, b=000, a=127},	--Gold Wire Coil
	['processed-iron']						={r=118, g=148, b=209, a=127},	--Processed Iron
	['pellet-iron']							={r=118, g=148, b=209, a=127},	--Iron Pellet
	['solid-iron-hydroxide']				={r=118, g=148, b=209, a=127},	--Iron Hydroxide
	['ingot-iron']							={r=118, g=148, b=209, a=127},	--Iron Ingot
	['powder-iron']							={r=118, g=148, b=209, a=127},	--Iron Powder
	['angels-plate-iron']					={r=118, g=148, b=209, a=127},	--Iron Plate
	['angels-roll-iron']					={r=118, g=148, b=209, a=127},	--Iron Sheet Coil
	['angels-rod-iron']						={r=118, g=148, b=209, a=127},	--Iron Rod
	['angels-rod-stack-iron']				={r=118, g=148, b=209, a=127},	--Iron Rod Stack
	['processed-lead']						={r=053, g=031, b=053, a=127},	--Processed Lead
	['pellet-lead']							={r=053, g=031, b=053, a=127},	--Lead Pellet
	['solid-lead-oxide']					={r=053, g=031, b=053, a=127},	--Lead Oxide
	['anode-lead']							={r=053, g=031, b=053, a=127},	--Lead Anode
	['ingot-lead']							={r=053, g=031, b=053, a=127},	--Lead Ingot
	['angels-plate-lead']					={r=053, g=031, b=053, a=127},	--Lead Plate
	['manganese-ore']						={r=255, g=000, b=000, a=127},	--Manganese Ore
	['processed-manganese']					={r=255, g=000, b=000, a=127},	--Processed Manganese
	['pellet-manganese']					={r=255, g=000, b=000, a=127},	--Manganese Pellet
	['solid-manganese-oxide']				={r=255, g=000, b=000, a=127},	--Manganese Oxide
	['cathode-manganese']					={r=255, g=000, b=000, a=127},	--Manganese Cathode
	['solid-manganese-sulfate']				={r=255, g=000, b=000, a=127},	--Manganese Sulfate
	['ingot-manganese']						={r=255, g=000, b=000, a=127},	--Manganese Ingot
	['angels-plate-manganese']				={r=255, g=000, b=000, a=127},	--Manganese Plate
	['angels-roll-manganese']				={r=255, g=000, b=000, a=127},	--Manganese Sheet Coil
	['processed-nickel']					={r=000, g=115, b=122, a=127},	--Processed Nickel
	['pellet-nickel']						={r=000, g=115, b=122, a=127},	--Nickel Pellet
	['cathode-nickel']						={r=000, g=115, b=122, a=127},	--Nickel Cathode
	['solid-nickel-carbonyl']				={r=000, g=115, b=122, a=127},	--Nickel Carbonyl
	['ingot-nickel']						={r=000, g=115, b=122, a=127},	--Nickel Ingot
	['powder-nickel']						={r=000, g=115, b=122, a=127},	--Nickel Powder
	['angels-plate-nickel']					={r=000, g=115, b=122, a=127},	--Nickel Plate
	['angels-roll-nickel']					={r=000, g=115, b=122, a=127},	--Nickel Sheet Roll
	['platinum-ore']						={r=255, g=184, b=162, a=127},	--Platinum Ore
	['processed-platinum']					={r=255, g=184, b=162, a=127},	--Processed Platinum
	['pellet-platinum']						={r=255, g=184, b=162, a=127},	--Platinum Pellet
	['solid-ammonium-chloroplatinate']		={r=231, g=137, b=060, a=127},	--Ammonium Chloroplatinate
	['ingot-platinum']						={r=255, g=184, b=162, a=127},	--Platinum Ingot
	['angels-plate-platinum']				={r=255, g=184, b=162, a=127},	--Platinum Plate
	['angels-wire-platinum']				={r=255, g=184, b=162, a=127},	--Platinum Wire
	['angels-roll-platinum']				={r=255, g=184, b=162, a=127},	--Platinum Sheet Coil
	['angels-wire-coil-platinum']			={r=255, g=184, b=162, a=127},	--Platinum Wire Coil
	['processed-silica']					={r=235, g=235, b=235, a=127},	--Processed Silicon
	['pellet-silica']						={r=235, g=235, b=235, a=127},	--Silicon Pellet
	['ingot-silicon']						={r=235, g=235, b=235, a=127},	--Silicon Ingot
	['angels-plate-silicon']				={r=235, g=235, b=235, a=127},	--Silicon Plate
	['angels-mono-silicon-seed']			={r=235, g=235, b=235, a=127},	--Mono Silicon Seed
	['angels-mono-silicon']					={r=235, g=235, b=235, a=127},	--Mono Silicon
	['angels-quartz-crucible']				={r=235, g=235, b=235, a=127},	--Quartz Crucible
	['processed-silver']					={r=169, g=209, b=255, a=127},	--Processed Silver
	['pellet-silver']						={r=169, g=209, b=255, a=127},	--Silver Pellet
	['solid-silver-nitrate']				={r=169, g=209, b=255, a=127},	--Silver Nitrate
	['solid-sodium-silver-cyanide']			={r=169, g=209, b=255, a=127},	--Sodium Silver Cyanide
	['cathode-silver']						={r=082, g=118, b=162, a=127},	--Silver Cathode
	['ingot-silver']						={r=169, g=209, b=255, a=127},	--Silver Ingot
	['angels-plate-silver']					={r=169, g=209, b=255, a=127},	--Silver Plate
	['angels-roll-silver']					={r=169, g=209, b=255, a=127},	--Silver Sheet Coil
	['angels-wire-silver']					={r=169, g=209, b=255, a=127},	--Silver Wire
	['angels-wire-coil-silver']				={r=169, g=209, b=255, a=127},	--Silver Wire Coil
	['ingot-steel']							={r=255, g=255, b=255, a=127},	--Steel Ingot
	['powder-steel']						={r=255, g=255, b=255, a=127},	--Steel Powder
	['angels-plate-steel']					={r=255, g=255, b=255, a=127},	--Steel Plate
	['angels-roll-steel']					={r=255, g=255, b=255, a=127},	--Steel Sheet Coil
	['angels-rod-steel']					={r=255, g=255, b=255, a=127},	--Steel Rod
	['angels-rod-stack-steel']				={r=255, g=255, b=255, a=127},	--Steel Rod Stack
	['solid-lime']							={r=235, g=166, b=133, a=127},	--Lime
	['solid-cement']						={r=209, g=071, b=049, a=127},	--Cement
	['clay-brick-raw']						={r=255, g=080, b=000, a=127},	--Unburnt Clay Brick
	['clay-brick']							={r=126, g=042, b=000, a=127},	--Clay Brick
	['concrete-brick']						={r=104, g=093, b=093, a=127},	--Concrete Brick
	['reinforced-concrete-brick']			={r=104, g=093, b=093, a=127},	--Reinforced Concrete Brick
	['angels-solder']						={r=064, g=107, b=122, a=127},	--Solder
	['angels-roll-solder']					={r=064, g=107, b=122, a=127},	--Solder Coil
	['processed-tin']						={r=038, g=107, b=056, a=127},	--Processed Tin
	['pellet-tin']							={r=038, g=107, b=056, a=127},	--Tin Pellet
	['ingot-tin']							={r=038, g=107, b=056, a=127},	--Tin Ingot
	['angels-plate-tin']					={r=038, g=107, b=056, a=127},	--Tin Plate
	['angels-wire-tin']						={r=038, g=107, b=056, a=127},	--Tinned Wire
	['angels-wire-coil-tin']				={r=038, g=107, b=056, a=127},	--Tinned Wire Coil
	['processed-titanium']					={r=107, g=035, b=082, a=127},	--Processed Titanium
	['pellet-titanium']						={r=107, g=035, b=082, a=127},	--Titanium Pellet
	['sponge-titanium']						={r=107, g=035, b=082, a=127},	--Titanium Sponge
	['ingot-titanium']						={r=107, g=035, b=082, a=127},	--Titanium Ingot
	['angels-plate-titanium']				={r=107, g=035, b=082, a=127},	--Titanium Plate
	['angels-roll-titanium']				={r=107, g=035, b=082, a=127},	--Titanium Sheet Coil
	['processed-tungsten']					={r=133, g=053, b=000, a=127},	--Processed Tungsten
	['pellet-tungsten']						={r=133, g=053, b=000, a=127},	--Tungsten Pellet
	['solid-ammonium-paratungstate']		={r=133, g=053, b=000, a=127},	--Ammonium Paratungstate
	['solid-tungsten-oxide']				={r=133, g=053, b=000, a=127},	--Tungsten Oxide
	['powder-tungsten']						={r=133, g=053, b=000, a=127},	--Tungsten Powder
	['casting-powder-tungsten']				={r=133, g=053, b=000, a=127},	--Tungsten Powder Mixture
	['angels-plate-tungsten']				={r=133, g=053, b=000, a=127},	--Tungsten Plate
	['processed-zinc']						={r=056, g=209, b=209, a=127},	--Processed Zinc
	['pellet-zinc']							={r=056, g=209, b=209, a=127},	--Zinc Pellet
	['solid-zinc-oxide']					={r=056, g=209, b=209, a=127},	--Zinc Oxide
	['cathode-zinc']						={r=000, g=046, b=075, a=127},	--Zinc Cathode
	['ingot-zinc']							={r=056, g=209, b=209, a=127},	--Zinc Ingot
	['angels-plate-zinc']					={r=056, g=209, b=209, a=127},	--Zinc Plate
	['angels-roll-zinc']					={r=056, g=209, b=209, a=127},	--Zinc Sheet Coil
	['mold-expendable']						={r=195, g=129, b=104, a=127},	--Expendable Mold
	['mold-non-expendable']					={r=027, g=024, b=031, a=127},	--Non Expendable Mold
	['angels-plate-bronze']					={r=255, g=131, b=000, a=127},	--Bronze Plate
	['angels-plate-brass']					={r=255, g=158, b=086, a=127},	--Brass Plate
--	['angels-plate-electrum']				={r=   , g=   , b=   , a=127},	--Electrum Plate
	['angels-plate-gunmetal']				={r=255, g=058, b=025, a=127},	--Gunmetal Plate
	['angels-plate-invar']					={r=219, g=255, b=255, a=127},	--Invar Plate
	['angels-plate-cobalt-steel']			={r=178, g=197, b=255, a=127},	--Cobalt Steel Plate
	['angels-plate-nitinol']				={r=120, g=069, b=255, a=127},	--Nitinol Plate

	--warehouses add-on
	['angels-warehouse']					={r=046, g=042, b=046, a=127},	--Warehouse
	['angels-warehouse-passive-provider']	={r=177, g=000, b=000, a=127},	--Passive Provider Warehouse
	['angels-warehouse-active-provider']	={r=078, g=000, b=129, a=127},	--Active Provider Warehouse
	['angels-warehouse-storage']			={r=169, g=122, b=000, a=127},	--Storage Warehouse
	['angels-warehouse-requester']			={r=000, g=053, b=148, a=127},	--Requester Warehouse
	['angels-warehouse-buffer']				={r=000, g=104, b=000, a=127},	--Buffer Warehouse

-- --------------------------------------------------------------------------------------------

--	 ____            _       _
--	|  _ \          | |     ( )
--	| |_) |   ___   | |__   |/   ___
--	|  _ <   / _ \  | '_ \      / __|
--	| |_) | | (_) | | |_) |     \__ \
--	|____/   \___/  |_.__/      |___/

	--assembling machines
	['assembling-machine-4']						={r=200, g=000, b=255, a=127},	--Assembling machine 4
	['assembling-machine-5']						={r=255, g=000, b=040, a=127},	--Assembling machine 5
	['assembling-machine-6']						={r=040, g=144, b=000, a=127},	--Assembling machine 6
	['electronics-machine-1']						={r=000, g=115, b=235, a=127},	--Electronics assembling machine 1
	['electronics-machine-2']						={r=255, g=000, b=040, a=127},	--Electronics assembling machine 2
	['electronics-machine-3']						={r=000, g=255, b=000, a=127},	--Electronics assembling machine 3
	['oil-refinery-2']								={r=186, g=055, b=000, a=127},	--Oil refinery 2
	['oil-refinery-3']								={r=186, g=055, b=000, a=127},	--Oil refinery 3
	['oil-refinery-4']								={r=186, g=055, b=000, a=127},	--Oil refinery 4
	['chemical-plant-2']							={r=126, g=000, b=191, a=127},	--Chemical plant 2
	['chemical-plant-3']							={r=170, g=000, b=000, a=127},	--Chemical plant 3
	['chemical-plant-4']							={r=000, g=133, b=000, a=127},	--Chemical plant 4
	['electrolyser-2']								={r=126, g=000, b=191, a=127},	--Electrolyser 2
	['electrolyser-3']								={r=170, g=000, b=000, a=127},	--Electrolyser 3
	['electrolyser-4']								={r=000, g=133, b=000, a=127},	--Electrolyser 4
	['electric-furnace-2']							={r=090, g=000, b=090, a=127},	--Electric furnace 2
	['electric-furnace-3']							={r=000, g=090, b=000, a=127},	--Electric furnace 3
	['electric-chemical-mixing-furnace']			={r=011, g=000, b=025, a=127},	--Electric multi-purpose furnace
	['electric-chemical-mixing-furnace-2']			={r=011, g=000, b=025, a=127},	--Electric multi-purpose furnace 2
	['bob-distillery-2']							={r=180, g=036, b=036, a=127},	--Distillery 2
	['bob-distillery-3']							={r=055, g=084, b=171, a=127},	--Distillery 3
	['bob-distillery-4']							={r=171, g=055, b=171, a=127},	--Distillery 4
	['bob-distillery-5']							={r=062, g=149, b=058, a=127},	--Distillery 5

	--electronics
	['tinned-copper-cable']					={r=219, g=200, b=186, a=127},	--Tinned copper wire
	['insulated-cable']						={r=025, g=000, b=025, a=127},	--Insulated wire
	['gilded-copper-cable']					={r=255, g=178, b=000, a=127},	--Gilded copper wire
	['solder']								={r=091, g=084, b=098, a=127},	--Solder
	['solder-alloy']						={r=091, g=106, b=131, a=127},	--Solder plate
	['basic-electronic-components']			={r=189, g=120, b=058, a=127},	--Basic electronic components
	['electronic-components']				={r=018, g=018, b=018, a=127},	--Transistors
	['intergrated-electronics']				={r=010, g=000, b=000, a=127},	--Integrated electronics
	['processing-electronics']				={r=255, g=142, b=000, a=127},	--CPUs
	['wooden-board']						={r=146, g=087, b=055, a=127},	--Wooden board
	['phenolic-board']						={r=255, g=240, b=240, a=127},	--Phenolic board
	['fibreglass-board']					={r=197, g=138, b=047, a=127},	--Fibreglass board
	['basic-circuit-board']					={r=255, g=211, b=000, a=127},	--Basic circuit board
	['circuit-board']						={r=255, g=000, b=000, a=127},	--Circuit board
	['superior-circuit-board']				={r=000, g=080, b=255, a=127},	--Superior circuit board
	['multi-layer-circuit-board']			={r=255, g=000, b=200, a=127},	--Multi-layer circuit board
	['advanced-processing-unit']			={r=200, g=000, b=124, a=127},	--Electronic Processing board

	--enemies
	['alien-artifact']						={r=255, g=062, b=255, a=127},	--Alien artifact
	['alien-artifact-red']					={r=255, g=055, b=047, a=127},	--Red alien artifact
	['alien-artifact-orange']				={r=255, g=117, b=055, a=127},	--Orange alien artifact
	['alien-artifact-yellow']				={r=255, g=193, b=022, a=127},	--Yellow alien artifact
	['alien-artifact-green']				={r=069, g=255, b=069, a=127},	--Green alien artifact
	['alien-artifact-blue']					={r=055, g=153, b=255, a=127},	--Blue alien artifact
	['alien-artifact-purple']				={r=106, g=025, b=204, a=127},	--Purple alien artifact
	['small-alien-artifact']				={r=255, g=062, b=255, a=127},	--Small alien artifact
	['small-alien-artifact-red']			={r=255, g=055, b=047, a=127},	--Small red alien artifact
	['small-alien-artifact-orange']			={r=255, g=117, b=055, a=127},	--Small orange alien artifact
	['small-alien-artifact-yellow']			={r=255, g=193, b=022, a=127},	--Small yellow alien artifact
	['small-alien-artifact-green']			={r=069, g=255, b=069, a=127},	--Small green alien artifact
	['small-alien-artifact-blue']			={r=055, g=153, b=255, a=127},	--Small blue alien artifact
	['small-alien-artifact-purple']			={r=106, g=025, b=204, a=127},	--Small purple alien artifact

	--greenhouse
	['bob-greenhouse']						={r=000, g=217, b=166, a=127},	--Greenhouse
	['fertiliser']							={r=135, g=200, b=255, a=127},	--Fertiliser
	['seedling']							={r=106, g=171, b=000, a=127},	--Seedling

	--logistics
	['bob-roboport-2']							={r=000, g=000, b=000, a=127},	--Roboport MK2
	['bob-roboport-3']							={r=120, g=120, b=120, a=127},	--Roboport MK3
	['bob-roboport-4']							={r=000, g=000, b=000, a=127},	--Roboport MK4
	['bob-robochest']							={r=255, g=160, b=000, a=127},	--Robochest MK1
	['bob-robochest-2']							={r=000, g=150, b=255, a=127},	--Robochest MK2
	['bob-robochest-3']							={r=120, g=000, b=255, a=127},	--Robochest MK3
	['bob-robochest-4']							={r=255, g=000, b=000, a=127},	--Robochest MK4
	['bob-logistic-zone-expander']				={r=182, g=135, b=138, a=127},	--Logistic zone expander MK1
	['bob-logistic-zone-expander-2']			={r=138, g=135, b=182, a=127},	--Logistic zone expander MK2
	['bob-logistic-zone-expander-3']			={r=182, g=182, b=237, a=127},	--Logistic zone expander MK3
	['bob-logistic-zone-expander-4']			={r=025, g=087, b=033, a=127},	--Logistic zone expander MK4
	['bob-logistic-zone-interface']				={r=069, g=069, b=069, a=127},	--Logistic zone interface
	['bob-robo-charge-port']					={r=182, g=135, b=138, a=127},	--Robot charging point MK1
	['bob-robo-charge-port-2']					={r=138, g=135, b=182, a=127},	--Robot charging point MK2
	['bob-robo-charge-port-3']					={r=182, g=182, b=237, a=127},	--Robot charging point MK3
	['bob-robo-charge-port-4']					={r=025, g=087, b=033, a=127},	--Robot charging point MK4
	['bob-robo-charge-port-large']				={r=182, g=135, b=138, a=127},	--Large robot charging point MK1
	['bob-robo-charge-port-large-2']			={r=138, g=135, b=182, a=127},	--Large robot charging point MK2
	['bob-robo-charge-port-large-3']			={r=182, g=182, b=237, a=127},	--Large robot charging point MK3
	['bob-robo-charge-port-large-4']			={r=025, g=087, b=033, a=127},	--Large robot charging point MK4
	['bob-construction-robot-2']				={r=255, g=000, b=000, a=127},	--Construction robot MK2
	['bob-construction-robot-3']				={r=000, g=036, b=255, a=127},	--Construction robot MK3
	['bob-construction-robot-4']				={r=120, g=000, b=255, a=127},	--Construction robot MK4
	['bob-construction-robot-5']				={r=000, g=255, b=000, a=127},	--Fusion powered Construction robot MK4
	['bob-logistic-robot-2']					={r=255, g=000, b=000, a=127},	--Logistic robot MK2
	['bob-logistic-robot-3']					={r=000, g=036, b=255, a=127},	--Logistic robot MK3
	['bob-logistic-robot-4']					={r=120, g=000, b=255, a=127},	--Logistic robot MK4
	['bob-logistic-robot-5']					={r=000, g=255, b=000, a=127},	--Fusion powered Logistic robot MK4
	['brass-chest']								={r=175, g=175, b=075, a=127},	--Brass chest
	['titanium-chest']							={r=255, g=255, b=255, a=127},	--Titanium chest
	['logistic-chest-active-provider-2']		={r=120, g=000, b=255, a=127},	--Active provider chest MK2
	['logistic-chest-passive-provider-2']		={r=255, g=000, b=000, a=127},	--Passive provider chest MK2
	['logistic-chest-storage-2']				={r=255, g=160, b=000, a=127},	--Storage chest MK2
	['logistic-chest-requester-2']				={r=000, g=150, b=255, a=127},	--Requester chest MK2
	['logistic-chest-buffer-2']					={r=000, g=255, b=000, a=127},	--Buffer chest MK2
	['logistic-chest-active-provider-3']		={r=120, g=000, b=255, a=127},	--Active provider chest MK3
	['logistic-chest-passive-provider-3']		={r=255, g=000, b=000, a=127},	--Passive provider chest MK3
	['logistic-chest-storage-3']				={r=255, g=160, b=000, a=127},	--Storage chest MK3
	['logistic-chest-requester-3']				={r=000, g=150, b=255, a=127},	--Requester chest MK3
	['logistic-chest-buffer-3']					={r=000, g=255, b=000, a=127},	--Buffer chest MK3
	['yellow-filter-inserter']					={r=255, g=113, b=000, a=127},	--Filter Inserter
	['red-inserter']							={r=255, g=000, b=000, a=127},	--Fast Inserter
	['red-filter-inserter']						={r=255, g=000, b=000, a=127},	--Fast Filter Inserter
	['red-stack-inserter']						={r=255, g=000, b=000, a=127},	--Fast Stack Inserter
	['red-stack-filter-inserter']				={r=255, g=000, b=000, a=127},	--Fast Stack Filter Inserter
	['blue-inserter']							={r=000, g=150, b=255, a=127},	--Express Inserter
	['blue-filter-inserter']					={r=000, g=150, b=255, a=127},	--Express Filter Inserter
	['blue-stack-inserter']						={r=000, g=150, b=255, a=127},	--Express Stack Inserter
	['blue-stack-filter-inserter']				={r=000, g=150, b=255, a=127},	--Express Stack Filter Inserter
	['turbo-inserter']							={r=120, g=000, b=255, a=127},	--Turbo Inserter
	['turbo-filter-inserter']					={r=120, g=000, b=255, a=127},	--Turbo Filter Inserter
	['turbo-stack-inserter']					={r=120, g=000, b=255, a=127},	--Turbo Stack Inserter
	['turbo-stack-filter-inserter']				={r=120, g=000, b=255, a=127},	--Turbo Stack Filter Inserter
	['express-inserter']						={r=171, g=208, b=025, a=127},	--Ultimate Inserter
	['express-filter-inserter']					={r=171, g=208, b=025, a=127},	--Ultimate Filter Inserter
	['express-stack-inserter']					={r=171, g=208, b=025, a=127},	--Ultimate Stack Inserter
	['express-stack-filter-inserter']			={r=171, g=208, b=025, a=127},	--Ultimate Stack Filter Inserter
	['basic-transport-belt']					={r=211, g=211, b=211, a=127},	--Basic Transport Belt
	['basic-underground-belt']					={r=211, g=211, b=211, a=127},	--Basic Underground Belt
	['basic-splitter']							={r=211, g=211, b=211, a=127},	--Basic Splitter
	['turbo-transport-belt']					={r=120, g=000, b=255, a=127},	--Turbo Transport Belt
	['turbo-underground-belt']					={r=120, g=000, b=255, a=127},	--Turbo Underground Belt
	['turbo-splitter']							={r=120, g=000, b=255, a=127},	--Turbo Splitter
	['ultimate-transport-belt']					={r=000, g=255, b=000, a=127},	--Ultimate Transport Belt
	['ultimate-underground-belt']				={r=000, g=255, b=000, a=127},	--Ultimate Underground Belt
	['ultimate-splitter']						={r=000, g=255, b=000, a=127},	--Ultimate Splitter
	['storage-tank-2']							={r=135, g=075, b=020, a=127},	--Storage Tank MK2
	['storage-tank-3']							={r=135, g=075, b=020, a=127},	--Storage Tank MK3
	['storage-tank-4']							={r=135, g=075, b=020, a=127},	--Storage Tank MK4
	['bob-locomotive-2']						={r=234, g=017, b=000, a=127},	--Locomotive MK2
	['bob-locomotive-3']						={r=234, g=017, b=000, a=127},	--Locomotive MK3
	['bob-armoured-locomotive']					={r=234, g=017, b=000, a=127},	--Armoured Locomotive
	['bob-armoured-locomotive-2']				={r=234, g=017, b=000, a=127},	--Armoured Locomotive MK2
	['bob-cargo-wagon-2']						={r=109, g=058, b=000, a=127},	--Cargo wagon MK2
	['bob-cargo-wagon-3']						={r=109, g=058, b=000, a=127},	--Cargo wagon MK3
	['bob-armoured-cargo-wagon']				={r=109, g=058, b=000, a=127},	--Armoured Cargo wagon
	['bob-armoured-cargo-wagon-2']				={r=109, g=058, b=000, a=127},	--Armoured Cargo wagon MK2
	['bob-fluid-wagon-2']						={r=255, g=255, b=255, a=127},	--Fluid wagon MK2
	['bob-fluid-wagon-3']						={r=255, g=255, b=255, a=127},	--Fluid wagon MK3
	['bob-armoured-fluid-wagon']				={r=255, g=255, b=255, a=127},	--Armoured Fluid wagon
	['bob-armoured-fluid-wagon-2']				={r=255, g=255, b=255, a=127},	--Armoured Fluid wagon MK2
	['copper-pipe']								={r=255, g=084, b=051, a=127},	--Copper pipe
	['stone-pipe']								={r=222, g=219, b=193, a=127},	--Stone pipe
	['bronze-pipe']								={r=222, g=120, b=051, a=127},	--Bronze pipe
	['steel-pipe']								={r=131, g=120, b=124, a=127},	--Steel pipe
	['plastic-pipe']							={r=000, g=087, b=255, a=127},	--Plastic pipe
	['brass-pipe']								={r=175, g=175, b=075, a=127},	--Brass pipe
	['titanium-pipe']							={r=255, g=255, b=255, a=127},	--Titanium pipe
	['ceramic-pipe']							={r=171, g=109, b=098, a=127},	--Ceramic pipe
	['tungsten-pipe']							={r=000, g=000, b=000, a=127},	--Tungsten pipe
	['nitinol-pipe']							={r=087, g=062, b=018, a=127},	--Nitinol pipe
	['copper-tungsten-pipe']					={r=204, g=029, b=011, a=127},	--Copper tungsten pipe
	['copper-pipe-to-ground']					={r=255, g=084, b=051, a=127},	--Copper pipe-to-ground
	['stone-pipe-to-ground']					={r=222, g=219, b=193, a=127},	--Stone pipe-to-ground
	['bronze-pipe-to-ground']					={r=222, g=120, b=051, a=127},	--Bronze pipe-to-ground
	['steel-pipe-to-ground']					={r=131, g=120, b=124, a=127},	--Steel pipe-to-ground
	['plastic-pipe-to-ground']					={r=000, g=087, b=255, a=127},	--Plastic pipe-to-ground
	['brass-pipe-to-ground']					={r=175, g=175, b=075, a=127},	--Brass pipe-to-ground
	['titanium-pipe-to-ground']					={r=255, g=255, b=255, a=127},	--Titanium pipe-to-ground
	['ceramic-pipe-to-ground']					={r=171, g=109, b=098, a=127},	--Ceramic pipe-to-ground
	['tungsten-pipe-to-ground']					={r=000, g=000, b=000, a=127},	--Tungsten pipe-to-ground
	['nitinol-pipe-to-ground']					={r=087, g=062, b=018, a=127},	--Nitinol pipe-to-ground
	['copper-tungsten-pipe-to-ground']			={r=204, g=029, b=011, a=127},	--Copper tungsten pipe-to-ground
	['bob-pump-2']								={r=135, g=075, b=020, a=127},	--Pump MK2
	['bob-pump-3']								={r=135, g=075, b=020, a=127},	--Pump MK3
	['bob-pump-4']								={r=135, g=075, b=020, a=127},	--Pump MK4
	['bob-valve']								={r=135, g=075, b=020, a=127},	--Valve
	['flying-robot-frame-2']					={r=080, g=020, b=091, a=127},	--Flying robot frame MK2
	['flying-robot-frame-3']					={r=020, g=044, b=106, a=127},	--Flying robot frame MK3
	['flying-robot-frame-4']					={r=020, g=073, b=020, a=127},	--Flying robot frame MK4
	['robot-brain-logistic']					={r=255, g=127, b=000, a=127},	--Logistic robot brain MK1
	['robot-brain-logistic-2']					={r=255, g=127, b=000, a=127},	--Logistic robot brain MK2
	['robot-brain-logistic-3']					={r=255, g=127, b=000, a=127},	--Logistic robot brain MK3
	['robot-brain-logistic-4']					={r=255, g=127, b=000, a=127},	--Logistic robot brain MK4
	['robot-brain-construction']				={r=142, g=255, b=047, a=127},	--Construction robot brain MK1
	['robot-brain-construction-2']				={r=142, g=255, b=047, a=127},	--Construction robot brain MK2
	['robot-brain-construction-3']				={r=142, g=255, b=047, a=127},	--Construction robot brain MK3
	['robot-brain-construction-4']				={r=142, g=255, b=047, a=127},	--Construction robot brain MK4
	['robot-tool-logistic']						={r=255, g=127, b=000, a=127},	--Logistic robot tool MK1
	['robot-tool-logistic-2']					={r=255, g=127, b=000, a=127},	--Logistic robot tool MK2
	['robot-tool-logistic-3']					={r=255, g=127, b=000, a=127},	--Logistic robot tool MK3
	['robot-tool-logistic-4']					={r=255, g=127, b=000, a=127},	--Logistic robot tool MK4
	['robot-tool-construction']					={r=142, g=255, b=047, a=127},	--Construction robot tool MK1
	['robot-tool-construction-2']				={r=142, g=255, b=047, a=127},	--Construction robot tool MK2
	['robot-tool-construction-3']				={r=142, g=255, b=047, a=127},	--Construction robot tool MK3
	['robot-tool-construction-4']				={r=142, g=255, b=047, a=127},	--Construction robot tool MK4
	['roboport-door-1']							={r=197, g=175, b=171, a=127},	--Roboport hatch door MK1
	['roboport-door-2']							={r=080, g=058, b=058, a=127},	--Roboport hatch door MK2
	['roboport-door-3']							={r=255, g=255, b=255, a=127},	--Roboport hatch door MK3
	['roboport-door-4']							={r=000, g=000, b=000, a=127},	--Roboport hatch door MK4
	['roboport-antenna-1']						={r=131, g=131, b=131, a=127},	--Roboport antenna array MK1
	['roboport-antenna-2']						={r=215, g=215, b=215, a=127},	--Roboport antenna array MK2
	['roboport-antenna-3']						={r=160, g=160, b=160, a=127},	--Roboport antenna array MK3
	['roboport-antenna-4']						={r=233, g=164, b=000, a=127},	--Roboport antenna array MK4
	['roboport-antenna-4']						={r=233, g=164, b=000, a=127},	--Roboport antenna array MK4
	['roboport-chargepad-1']					={r=182, g=135, b=138, a=127},	--Roboport charging pad MK1
	['roboport-chargepad-2']					={r=138, g=135, b=182, a=127},	--Roboport charging pad MK2
	['roboport-chargepad-3']					={r=182, g=182, b=237, a=127},	--Roboport charging pad MK3
	['roboport-chargepad-4']					={r=025, g=087, b=033, a=127},	--Roboport charging pad MK4

	--mining
	['bob-mining-drill-1']						={r=200, g=102, b=087, a=127},	--Electric Mining Drill MK2
	['bob-mining-drill-2']						={r=200, g=102, b=087, a=127},	--Electric Mining Drill MK3
	['bob-mining-drill-3']						={r=200, g=102, b=087, a=127},	--Electric Mining Drill MK4
	['bob-mining-drill-4']						={r=200, g=102, b=087, a=127},	--Electric Mining Drill MK5
	['bob-area-mining-drill-1']					={r=200, g=102, b=087, a=127},	--Electric Large Area Mining Drill MK2
	['bob-area-mining-drill-2']					={r=200, g=102, b=087, a=127},	--Electric Large Area Mining Drill MK3
	['bob-area-mining-drill-3']					={r=200, g=102, b=087, a=127},	--Electric Large Area Mining Drill MK4
	['bob-area-mining-drill-4']					={r=200, g=102, b=087, a=127},	--Electric Large Area Mining Drill MK5
	['bob-pumpjack-1']							={r=120, g=180, b=000, a=127},	--Pumpjack MK2
	['bob-pumpjack-2']							={r=120, g=180, b=000, a=127},	--Pumpjack MK3
	['bob-pumpjack-3']							={r=120, g=180, b=000, a=127},	--Pumpjack MK4
	['bob-pumpjack-4']							={r=120, g=180, b=000, a=127},	--Pumpjack MK5
	['water-miner-1']							={r=120, g=180, b=000, a=127},	--Water Pumpjack MK1
	['water-miner-2']							={r=120, g=180, b=000, a=127},	--Water Pumpjack MK2
	['water-miner-3']							={r=120, g=180, b=000, a=127},	--Water Pumpjack MK3
	['water-miner-4']							={r=120, g=180, b=000, a=127},	--Water Pumpjack MK4
	['water-miner-5']							={r=120, g=180, b=000, a=127},	--Water Pumpjack MK5

	--modules
	['speed-module-4']								={r=000, g=150, b=255, a=127},	--Speed Module 4
	['speed-module-5']								={r=000, g=150, b=255, a=127},	--Speed Module 5
	['speed-module-6']								={r=000, g=150, b=255, a=127},	--Speed Module 6
	['speed-module-7']								={r=000, g=150, b=255, a=127},	--Speed Module 7
	['speed-module-8']								={r=000, g=150, b=255, a=127},	--Speed Module 8
	['effectivity-module-4']						={r=020, g=255, b=000, a=127},	--Effectivity Module 4
	['effectivity-module-5']						={r=020, g=255, b=000, a=127},	--Effectivity Module 5
	['effectivity-module-6']						={r=020, g=255, b=000, a=127},	--Effectivity Module 6
	['effectivity-module-7']						={r=020, g=255, b=000, a=127},	--Effectivity Module 7
	['effectivity-module-8']						={r=020, g=255, b=000, a=127},	--Effectivity Module 8
	['productivity-module-4']						={r=250, g=070, b=000, a=127},	--Productivity Module 4
	['productivity-module-5']						={r=250, g=070, b=000, a=127},	--Productivity Module 5
	['productivity-module-6']						={r=250, g=070, b=000, a=127},	--Productivity Module 6
	['productivity-module-7']						={r=250, g=070, b=000, a=127},	--Productivity Module 7
	['productivity-module-8']						={r=250, g=070, b=000, a=127},	--Productivity Module 8
	['pollution-clean-module-1']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 1
	['pollution-clean-module-2']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 2
	['pollution-clean-module-3']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 3
	['pollution-clean-module-4']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 4
	['pollution-clean-module-5']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 5
	['pollution-clean-module-6']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 6
	['pollution-clean-module-7']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 7
	['pollution-clean-module-8']					={r=000, g=076, b=076, a=127},	--Pollution Cleaning Module 8
	['pollution-create-module-1']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 1
	['pollution-create-module-2']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 2
	['pollution-create-module-3']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 3
	['pollution-create-module-4']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 4
	['pollution-create-module-5']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 5
	['pollution-create-module-6']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 6
	['pollution-create-module-7']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 7
	['pollution-create-module-8']					={r=120, g=055, b=000, a=127},	--Pollution Producing Module 8
	['raw-speed-module-1']							={r=000, g=200, b=255, a=127},	--Raw speed module 1
	['raw-speed-module-2']							={r=000, g=200, b=255, a=127},	--Raw speed module 2
	['raw-speed-module-3']							={r=000, g=200, b=255, a=127},	--Raw speed module 3
	['raw-speed-module-4']							={r=000, g=200, b=255, a=127},	--Raw speed module 4
	['raw-speed-module-5']							={r=000, g=200, b=255, a=127},	--Raw speed module 5
	['raw-speed-module-6']							={r=000, g=200, b=255, a=127},	--Raw speed module 6
	['raw-speed-module-7']							={r=000, g=200, b=255, a=127},	--Raw speed module 7
	['raw-speed-module-8']							={r=000, g=200, b=255, a=127},	--Raw speed module 8
	['raw-productivity-module-1']					={r=255, g=000, b=000, a=127},	--Raw productivity module 1
	['raw-productivity-module-2']					={r=255, g=000, b=000, a=127},	--Raw productivity module 2
	['raw-productivity-module-3']					={r=255, g=000, b=000, a=127},	--Raw productivity module 3
	['raw-productivity-module-4']					={r=255, g=000, b=000, a=127},	--Raw productivity module 4
	['raw-productivity-module-5']					={r=255, g=000, b=000, a=127},	--Raw productivity module 5
	['raw-productivity-module-6']					={r=255, g=000, b=000, a=127},	--Raw productivity module 6
	['raw-productivity-module-7']					={r=255, g=000, b=000, a=127},	--Raw productivity module 7
	['raw-productivity-module-8']					={r=255, g=000, b=000, a=127},	--Raw productivity module 8
	['green-module-1']								={r=255, g=255, b=055, a=127},	--Green module 1
	['green-module-2']								={r=255, g=255, b=055, a=127},	--Green module 2
	['green-module-3']								={r=255, g=255, b=055, a=127},	--Green module 3
	['green-module-4']								={r=255, g=255, b=055, a=127},	--Green module 4
	['green-module-5']								={r=255, g=255, b=055, a=127},	--Green module 5
	['green-module-6']								={r=255, g=255, b=055, a=127},	--Green module 6
	['green-module-7']								={r=255, g=255, b=055, a=127},	--Green module 7
	['green-module-8']								={r=255, g=255, b=055, a=127},	--Green module 8
	['god-module-1']								={r=200, g=171, b=157, a=127},	--God module 1
	['god-module-2']								={r=200, g=171, b=157, a=127},	--God module 2
	['god-module-3']								={r=200, g=171, b=157, a=127},	--God module 3
	['god-module-4']								={r=200, g=171, b=157, a=127},	--God module 4
	['god-module-5']								={r=200, g=171, b=157, a=127},	--God module 5
	['beacon-2']									={r=200, g=102, b=087, a=127},	--Beacon MK2
	['beacon-3']									={r=200, g=102, b=087, a=127},	--Beacon MK3
	['lab-module']									={r=050, g=220, b=255, a=127},	--Modules lab
	['module-case']									={r=168, g=168, b=168, a=127},	--Module case
	['module-contact']								={r=255, g=124, b=000, a=127},	--Module contact
	['module-circuit-board']						={r=047, g=255, b=000, a=127},	--Module main board
	['module-processor-board']						={r=255, g=255, b=180, a=127},	--Basic module board
	['module-processor-board-2']					={r=255, g=153, b=025, a=127},	--Module logic board
	['module-processor-board-3']					={r=255, g=153, b=025, a=127},	--Module processor board
	['speed-processor']								={r=000, g=055, b=255, a=127},	--Speed circuit board
	['effectivity-processor']						={r=113, g=255, b=000, a=127},	--Effectivity circuit board
	['productivity-processor']						={r=219, g=000, b=255, a=127},	--Productivity circuit board
	['pollution-clean-processor']					={r=000, g=087, b=044, a=127},	--Pollution cleaning circuit board
	['pollution-create-processor']					={r=109, g=044, b=000, a=127},	--Pollution producing circuit board
	['speed-processor-2']							={r=000, g=055, b=255, a=127},	--Speed logic board
	['effectivity-processor-2']						={r=113, g=255, b=000, a=127},	--Effectivity logic board
	['productivity-processor-2']					={r=219, g=000, b=255, a=127},	--Productivity logic board
	['pollution-clean-processor-2']					={r=000, g=087, b=044, a=127},	--Pollution cleaning logic board
	['pollution-create-processor-2']				={r=109, g=044, b=000, a=127},	--Pollution producing logic board
	['speed-processor-3']							={r=000, g=055, b=255, a=127},	--Speed processor board
	['effectivity-processor-3']						={r=113, g=255, b=000, a=127},	--Effectivity processor board
	['productivity-processor-3']					={r=219, g=000, b=255, a=127},	--Productivity processor board
	['pollution-clean-processor-3']					={r=000, g=087, b=044, a=127},	--Pollution cleaning processor board
	['pollution-create-processor-3']				={r=109, g=044, b=000, a=127},	--Pollution producing processor board

	--ores
	['gem-ore']							={r=255, g=127, b=255, a=127},	--Unsorted gemstone ore
	['bauxite-ore']						={r=229, g=171, b=018, a=127},	--Bauxite (Aluminium ore)
	['cobalt-ore']						={r=000, g=102, b=255, a=127},	--Cobaltite
	['gold-ore']						={r=255, g=157, b=000, a=127},	--Gold ore
	['lead-ore']						={r=005, g=005, b=005, a=127},	--Galena (Lead ore)
	['nickel-ore']						={r=046, g=137, b=148, a=127},	--Nickel ore
	['quartz']							={r=255, g=228, b=255, a=127},	--Quartz (Silicon ore)
	['rutile-ore']						={r=046, g=000, b=031, a=127},	--Rutile (Titanium ore)
	['silver-ore']						={r=177, g=239, b=255, a=127},	--Silver ore
	['thorium-ore']						={r=195, g=182, b=000, a=127},	--Thorium ore
	['tin-ore']							={r=082, g=078, b=078, a=127},	--Tin ore
	['tungsten-ore']					={r=180, g=064, b=000, a=127},	--Tungsten ore
	['zinc-ore']						={r=027, g=209, b=217, a=127},	--Zinc ore
	['ruby-ore']						={r=151, g=009, b=038, a=127},	--Ruby Ore
	['sapphire-ore']					={r=126, g=126, b=235, a=127},	--Sapphire Ore
	['emerald-ore']						={r=155, g=199, b=199, a=127},	--Emerald Ore
	['amethyst-ore']					={r=255, g=144, b=255, a=127},	--Amethyst Ore
	['topaz-ore']						={r=255, g=137, b=107, a=127},	--Topaz Ore
	['diamond-ore']						={r=224, g=228, b=184, a=127},	--Diamond Ore
 	['lithia-water']					={r=000, g=160, b=255, a=127},	--Lithia Water

	--plates
	['tin-plate']						={r=215, g=215, b=215, a=127},	--Tin plate
	['zinc-plate']						={r=240, g=240, b=240, a=127},	--Zinc plate
	['silver-plate']					={r=255, g=255, b=229, a=127},	--Silver plate
	['gold-plate']						={r=255, g=157, b=015, a=127},	--Gold plate
	['lithium']							={r=000, g=255, b=255, a=127},	--Lithium
	['silicon']							={r=255, g=255, b=255, a=127},	--Silicon plate
	['lead-plate']						={r=106, g=182, b=255, a=127},	--Lead plate
	['nickel-plate']					={r=222, g=222, b=222, a=127},	--Nickel plate
	['aluminium-plate']					={r=255, g=255, b=255, a=127},	--Aluminium plate
	['titanium-plate']					={r=255, g=255, b=255, a=127},	--Titanium plate
	['tungsten-plate']					={r=000, g=000, b=000, a=127},	--Tungsten plate
	['cobalt-plate']					={r=058, g=106, b=189, a=127},	--Cobalt plate
	['bronze-alloy']					={r=157, g=073, b=000, a=127},	--Bronze plate
	['brass-alloy']						={r=211, g=171, b=066, a=127},	--Brass plate
	['copper-tungsten-alloy']			={r=193, g=015, b=000, a=127},	--Copper-tungsten plate
	['tungsten-carbide']				={r=200, g=202, b=198, a=127},	--Tungsten carbide plate
	['gunmetal-alloy']					={r=255, g=160, b=000, a=127},	--Gunmetal plate
	['invar-alloy']						={r=255, g=219, b=200, a=127},	--Invar plate
	['nitinol-alloy']					={r=189, g=189, b=200, a=127},	--Nitinol plate
	['cobalt-steel-alloy']				={r=062, g=142, b=255, a=127},	--Cobalt steel plate

	['alumina']							={r=106, g=109, b=160, a=127},	--Alumina
	['calcium-chloride']				={r=255, g=255, b=190, a=127},	--Calcium chloride
	['lead-oxide']						={r=255, g=135, b=069, a=127},	--Lead oxide
	['tungsten-oxide']					={r=255, g=180, b=000, a=127},	--Tungsten oxide
	['powdered-tungsten']				={r=055, g=033, b=000, a=127},	--Powdered tungsten
	['silicon-powder']					={r=127, g=146, b=171, a=127},	--Powdered silicon
	['cobalt-oxide']					={r=000, g=091, b=255, a=127},	--Cobalt Oxide
	['salt']							={r=215, g=229, b=255, a=127},	--Salt
	['sodium-hydroxide']				={r=240, g=240, b=240, a=127},	--Sodium hydroxide
	['carbon']							={r=073, g=073, b=073, a=127},	--Carbon
	['resin']							={r=255, g=087, b=000, a=127},	--Resin
	['rubber']							={r=000, g=000, b=000, a=127},	--Rubber
	['silicon-wafer']					={r=070, g=138, b=070, a=127},	--Silicon wafer
	['silicon-nitride']					={r=255, g=255, b=255, a=127},	--Silicon nitride
	['silicon-carbide']					={r=106, g=138, b=124, a=127},	--Silicon carbide
	['glass']							={r=200, g=255, b=255, a=127},	--Glass
	['lithium-chloride']				={r=189, g=255, b=197, a=127},	--Lithium chloride
	['lithium-perchlorate']				={r=237, g=255, b=197, a=127},	--Lithium perchlorate
	['lithium-cobalt-oxide']			={r=015, g=138, b=160, a=127},	--Lithium cobalt oxide
	['silver-nitrate']					={r=215, g=215, b=215, a=127},	--Silver nitrate
	['silver-oxide']					={r=015, g=015, b=015, a=127},	--Silver oxide
	['silver-zinc-battery']				={r=087, g=255, b=095, a=127},	--Silver zinc battery
	['lithium-ion-battery']				={r=087, g=255, b=255, a=127},	--Lithium-ion battery
	['grinding-wheel']					={r=066, g=153, b=255, a=127},	--Grinding wheel
	['polishing-compound']				={r=255, g=197, b=073, a=127},	--Polishing compound
	['polishing-wheel']					={r=106, g=025, b=022, a=127},	--Polishing wheel
	['steel-gear-wheel']				={r=200, g=200, b=200, a=127},	--Steel gear wheel
	['brass-gear-wheel']				={r=157, g=117, b=000, a=127},	--Brass gear wheel
	['cobalt-steel-gear-wheel']			={r=022, g=102, b=255, a=127},	--Cobalt steel gear wheel
	['titanium-gear-wheel']				={r=255, g=255, b=255, a=127},	--Titanium gear wheel
	['tungsten-gear-wheel']				={r=000, g=000, b=000, a=127},	--Tungsten gear wheel
	['nitinol-gear-wheel']				={r=160, g=160, b=160, a=127},	--Nitinol gear wheel
	['nitinol-gear-wheel']				={r=160, g=160, b=160, a=127},	--Nitinol gear wheel
	['steel-bearing-ball']				={r=200, g=200, b=200, a=127},	--Steel bearing ball
	['cobalt-steel-bearing-ball']		={r=062, g=142, b=255, a=127},	--Cobalt steel bearing ball
	['titanium-bearing-ball']			={r=255, g=255, b=255, a=127},	--Titanium bearing ball
	['nitinol-bearing-ball']			={r=160, g=160, b=160, a=127},	--Nitinol bearing ball
	['ceramic-bearing-ball']			={r=171, g=109, b=098, a=127},	--Ceramic bearing ball
	['steel-bearing']					={r=200, g=200, b=200, a=127},	--Steel bearing
	['cobalt-steel-bearing']			={r=062, g=142, b=255, a=127},	--Cobalt steel bearing
	['titanium-bearing']				={r=255, g=255, b=255, a=127},	--Titanium bearing
	['nitinol-bearing']					={r=062, g=062, b=062, a=127},	--Nitinol bearing
	['ceramic-bearing']					={r=171, g=109, b=098, a=127},	--Ceramic bearing
	['electrolyser']					={r=255, g=226, b=100, a=127},	--Electrolyser
	['bob-distillery']					={r=209, g=188, b=000, a=127},	--Distillery
	['mixing-furnace']					={r=000, g=120, b=255, a=127},	--Metal mixing furnace
	['mixing-steel-furnace']			={r=178, g=091, b=022, a=127},	--Steel Metal mixing furnace
	['electric-mixing-furnace']			={r=011, g=000, b=025, a=127},	--Electric Metal mixing furnace
	['chemical-boiler']					={r=135, g=007, b=000, a=127},	--Chemical furnace
	['chemical-steel-furnace']			={r=178, g=091, b=022, a=127},	--Steel Chemical furnace
	['chemical-furnace']				={r=011, g=000, b=025, a=127},	--Electric Chemical furnace
	['air-pump']						={r=000, g=162, b=235, a=127},	--Compressor
	['air-pump-2']						={r=000, g=162, b=235, a=127},	--Compressor MK2
	['air-pump-3']						={r=000, g=162, b=235, a=127},	--Compressor MK3
	['air-pump-4']						={r=000, g=162, b=235, a=127},	--Compressor MK4
	['water-pump']						={r=000, g=162, b=235, a=127},	--Pump
	['water-pump-2']					={r=000, g=162, b=235, a=127},	--Pump MK2
	['water-pump-3']					={r=000, g=162, b=235, a=127},	--Pump MK3
	['water-pump-4']					={r=000, g=162, b=235, a=127},	--Pump MK4
	['gas-canister']					={r=170, g=170, b=170, a=127},	--Gas Bottle
	['empty-canister']					={r=250, g=250, b=250, a=127},	--Empty canister
	['ruby-3']							={r=233, g=076, b=117, a=127},	--Raw Ruby
	['ruby-4']							={r=195, g=033, b=117, a=127},	--Cut Ruby
	['ruby-5']							={r=255, g=025, b=098, a=127},	--Polished Ruby
	['sapphire-3']						={r=047, g=117, b=200, a=127},	--Raw Sapphire
	['sapphire-4']						={r=000, g=040, b=255, a=127},	--Cut Sapphire
	['sapphire-5']						={r=000, g=076, b=255, a=127},	--Polished Sapphire
	['emerald-3']						={r=095, g=233, b=159, a=127},	--Raw Emerald
	['emerald-4']						={r=025, g=160, b=135, a=127},	--Cut Emerald
	['emerald-5']						={r=000, g=146, b=062, a=127},	--Polished Emerald
	['amethyst-3']						={r=185, g=062, b=194, a=127},	--Raw Amethyst
	['amethyst-4']						={r=193, g=062, b=215, a=127},	--Cut Amethyst
	['amethyst-5']						={r=193, g=029, b=215, a=127},	--Polished Amethyst
	['topaz-3']							={r=160, g=069, b=000, a=127},	--Raw Topaz
	['topaz-4']							={r=255, g=120, b=000, a=127},	--Cut Topaz
	['topaz-5']							={r=215, g=098, b=000, a=127},	--Polished Topaz
	['diamond-3']						={r=255, g=255, b=255, a=255},	--Raw Diamond
	['diamond-4']						={r=255, g=255, b=255, a=255},	--Cut Diamond
	['diamond-5']						={r=255, g=255, b=255, a=255},	--Polished Diamond
	['void-pump']						={r=000, g=162, b=235, a=127},	--Gas venting pump
	['alien-blue-alloy']				={r=073, g=142, b=255, a=127},	--Blue alien alloy
	['alien-orange-alloy']				={r=255, g=138, b=062, a=127},	--Orange alien alloy
	['enriched-fuel']					={r=255, g=255, b=255, a=127},	--Enriched fuel block
	['thorium-232']						={r=073, g=091, b=000, a=127},	--Thorium-232
	['plutonium-239']					={r=255, g=153, b=000, a=127},	--Plutonium-239
	['thorium-fuel-cell']				={r=255, g=228, b=000, a=127},	--Thorium fuel cell
	['thorium-plutonium-fuel-cell']		={r=255, g=129, b=000, a=127},	--Thorium-plutonium fuel cell
	['used-up-thorium-fuel-cell']		={r=027, g=027, b=000, a=127},	--Used up thorium fuel cell
	['deuterium-fuel-cell']				={r=255, g=000, b=075, a=127},	--Deuterium fuel cell
	['used-up-deuterium-fuel-cell']		={r=093, g=000, b=031, a=127},	--Used up deuterium fuel cell
	['hydrogen']						={r=255, g=255, b=255, a=127},	--Hydrogen
	['deuterium']						={r=255, g=255, b=162, a=127},	--Deuterium
	['oxygen']							={r=255, g=000, b=000, a=127},	--Oxygen
	['nitrogen']						={r=000, g=000, b=255, a=127},	--Nitrogen
	['chlorine']						={r=073, g=255, b=102, a=127},	--Chlorine
	['liquid-air']						={r=146, g=255, b=255, a=127},	--Compressed air
	['hydrogen-chloride']				={r=120, g=255, b=033, a=127},	--Hydrogen chloride
	['sulfur-dioxide']					={r=255, g=255, b=000, a=127},	--Sulfur dioxide
	['nitrogen-dioxide']				={r=255, g=025, b=255, a=127},	--Nitrogen dioxide
	['nitric-acid']						={r=255, g=149, b=000, a=127},	--Nitric acid
	['tungstic-acid']					={r=029, g=087, b=255, a=127},	--Tungstic acid
	['ferric-chloride-solution']		={r=255, g=193, b=087, a=127},	--Ferric chloride solution
	['liquid-fuel']						={r=255, g=211, b=138, a=127},	--Liquid fuel
	['pure-water']						={r=131, g=186, b=255, a=127},	--Pure Water
	['alien-acid']						={r=153, g=000, b=255, a=127},	--Alien acid fluid
	['alien-poison']					={r=062, g=255, b=025, a=127},	--Alien poison fluid
	['alien-explosive']					={r=255, g=255, b=022, a=127},	--Alien explosive fluid
	['alien-fire']						={r=255, g=033, b=029, a=127},	--Alien flame fluid

	--power
	['solar-panel-small']				={r=000, g=050, b=100, a=127},	--Small Solar Panel
	['solar-panel-large']				={r=000, g=050, b=100, a=127},	--Large Solar Panel
	['solar-panel-small-2']				={r=000, g=050, b=100, a=127},	--Small Solar Panel MK2
	['solar-panel-2']					={r=000, g=050, b=100, a=127},	--Solar Panel MK2
	['solar-panel-large-2']				={r=000, g=050, b=100, a=127},	--Large Solar Panel MK2
	['solar-panel-small-3']				={r=000, g=050, b=100, a=127},	--Small Solar Panel MK3
	['solar-panel-3']					={r=000, g=050, b=100, a=127},	--Solar Panel MK3
	['solar-panel-large-3']				={r=000, g=050, b=100, a=127},	--Large Solar Panel MK3
	['large-accumulator']				={r=050, g=220, b=255, a=127},	--High capacity accumulator
	['fast-accumulator']				={r=050, g=220, b=255, a=127},	--Fast accumulator
	['slow-accumulator']				={r=050, g=220, b=255, a=127},	--Slow accumulator
	['large-accumulator-2']				={r=050, g=220, b=255, a=127},	--High capacity accumulator MK2
	['fast-accumulator-2']				={r=050, g=220, b=255, a=127},	--Fast accumulator MK2
	['slow-accumulator-2']				={r=050, g=220, b=255, a=127},	--Slow accumulator MK2
	['large-accumulator-3']				={r=050, g=220, b=255, a=127},	--High capacity accumulator MK3
	['fast-accumulator-3']				={r=050, g=220, b=255, a=127},	--Fast accumulator MK3
	['slow-accumulator-3']				={r=050, g=220, b=255, a=127},	--Slow accumulator MK3
	['steam-engine-2']					={r=184, g=129, b=111, a=127},	--Steam Engine MK2
	['steam-engine-3']					={r=184, g=129, b=111, a=127},	--Steam Engine MK3
	['steam-engine-4']					={r=184, g=129, b=111, a=127},	--Steam Engine MK4
	['steam-engine-5']					={r=184, g=129, b=111, a=127},	--Steam Engine MK5
	['steam-turbine-2']					={r=110, g=110, b=155, a=127},	--Steam Turbine MK2
	['steam-turbine-3']					={r=110, g=110, b=155, a=127},	--Steam Turbine MK3
	['boiler-2']						={r=231, g=166, b=053, a=127},	--Boiler MK2
	['boiler-3']						={r=231, g=166, b=053, a=127},	--Boiler MK3
	['boiler-4']						={r=231, g=166, b=053, a=127},	--Boiler MK4
	['boiler-5']						={r=231, g=166, b=053, a=127},	--Boiler MK5
	['oil-boiler']						={r=231, g=166, b=053, a=127},	--Oil burning boiler
	['oil-boiler-2']					={r=231, g=166, b=053, a=127},	--Oil burning boiler MK2
	['oil-boiler-3']					={r=231, g=166, b=053, a=127},	--Oil burning boiler MK3
	['oil-boiler-4']					={r=231, g=166, b=053, a=127},	--Oil burning boiler MK4
	['heat-exchanger-2']				={r=255, g=040, b=018, a=127},	--Heat exchanger MK2
	['heat-exchanger-3']				={r=255, g=040, b=018, a=127},	--Heat exchanger MK3
	['medium-electric-pole-2']			={r=255, g=113, b=000, a=127},	--Medium electric pole MK2
	['medium-electric-pole-3']			={r=255, g=113, b=000, a=127},	--Medium electric pole MK3
	['medium-electric-pole-4']			={r=255, g=113, b=000, a=127},	--Medium electric pole MK4
	['big-electric-pole-2']				={r=160, g=160, b=160, a=127},	--Big electric pole MK2
	['big-electric-pole-3']				={r=160, g=160, b=160, a=127},	--Big electric pole MK3
	['big-electric-pole-4']				={r=160, g=160, b=160, a=127},	--Big electric pole MK4
	['substation-2']					={r=000, g=035, b=093, a=127},	--Substation MK2
	['substation-3']					={r=000, g=035, b=093, a=127},	--Substation MK3
	['substation-4']					={r=000, g=035, b=093, a=127},	--Substation MK4
	['fluid-generator']					={r=175, g=131, b=066, a=127},	--Oil burning generator
	['fluid-generator-2']				={r=175, g=131, b=066, a=127},	--Oil burning generator MK2
	['fluid-generator-3']				={r=175, g=131, b=066, a=127},	--Oil burning generator MK3
	['hydrazine-generator']				={r=175, g=131, b=066, a=127},	--Hydrazine generator

	--revamp
	['heat-shield-tile']				={r=000, g=000, b=000, a=127},	--Heat shielding tile
	['ammonia']							={r=155, g=137, b=239, a=127},	--Ammonia
	['dinitrogen-tetroxide']			={r=231, g=206, b=111, a=127},	--Dinitrogen tetroxide
	['hydrazine']						={r=195, g=188, b=255, a=127},	--Hydrazine
	['hydrogen-peroxide']				={r=000, g=130, b=255, a=127},	--Hydrogen peroxide
	['nitric-oxide']					={r=255, g=055, b=255, a=127},	--Nitric oxide
	['nitrogen-dioxide']				={r=255, g=000, b=255, a=127},	--Nitrogen dioxide

	--tech
	['lab-2']								={r=095, g=153, b=157, a=127},	--Lab MK2
	['lab-alien']							={r=142, g=080, b=157, a=127},	--Alien lab
	['science-pack-gold']					={r=255, g=087, b=000, a=127},	--Gold science pack
	['advanced-logistic-science-pack']		={r=255, g=055, b=255, a=127},	--Logistic science pack
--	['logistic-science-pack']				--keep commented out			--Transport science pack
	['alien-science-pack']					={r=186, g=015, b=182, a=127},	--Alien science pack
	['alien-science-pack-blue']				={r=069, g=113, b=255, a=127},	--Blue alien science pack
	['alien-science-pack-orange']			={r=255, g=127, b=062, a=127},	--Orange alien science pack
	['alien-science-pack-purple']			={r=153, g=084, b=255, a=127},	--Purple alien science pack
	['alien-science-pack-yellow']			={r=255, g=197, b=073, a=127},	--Yellow alien science pack
	['alien-science-pack-green']			={r=087, g=255, b=131, a=127},	--Green alien science pack
	['alien-science-pack-red']				={r=255, g=069, b=080, a=127},	--Red alien science pack

	--vehicles
--	['vehicle-shield-1']					={r=   , g=   , b=   , a=127},	--Vehicle energy shield MK1
--	['vehicle-shield-2']					={r=   , g=   , b=   , a=127},	--Vehicle energy shield MK2
--	['vehicle-shield-3']					={r=   , g=   , b=   , a=127},	--Vehicle energy shield MK3
--	['vehicle-shield-4']					={r=   , g=   , b=   , a=127},	--Vehicle energy shield MK4
--	['vehicle-shield-5']					={r=   , g=   , b=   , a=127},	--Vehicle energy shield MK5
--	['vehicle-shield-6']					={r=   , g=   , b=   , a=127},	--Vehicle energy shield MK6
--	['vehicle-battery-1']					={r=   , g=   , b=   , a=127},	--Vehicle battery MK1
--	['vehicle-battery-2']					={r=   , g=   , b=   , a=127},	--Vehicle battery MK2
--	['vehicle-battery-3']					={r=   , g=   , b=   , a=127},	--Vehicle battery MK3
--	['vehicle-battery-4']					={r=   , g=   , b=   , a=127},	--Vehicle battery MK4
--	['vehicle-battery-5']					={r=   , g=   , b=   , a=127},	--Vehicle battery MK5
--	['vehicle-battery-6']					={r=   , g=   , b=   , a=127},	--Vehicle battery MK6
--	['vehicle-solar-panel-1']				={r=   , g=   , b=   , a=127},	--Vehicle solar panel MK1
--	['vehicle-solar-panel-2']				={r=   , g=   , b=   , a=127},	--Vehicle solar panel MK2
--	['vehicle-solar-panel-3']				={r=   , g=   , b=   , a=127},	--Vehicle solar panel MK3
--	['vehicle-solar-panel-4']				={r=   , g=   , b=   , a=127},	--Vehicle solar panel MK4
--	['vehicle-solar-panel-5']				={r=   , g=   , b=   , a=127},	--Vehicle solar panel MK5
--	['vehicle-solar-panel-6']				={r=   , g=   , b=   , a=127},	--Vehicle solar panel MK6
--	['vehicle-fusion-reactor-1']			={r=   , g=   , b=   , a=127},	--Vehicle fusion reactor MK1
--	['vehicle-fusion-reactor-2']			={r=   , g=   , b=   , a=127},	--Vehicle fusion reactor MK2
--	['vehicle-fusion-reactor-3']			={r=   , g=   , b=   , a=127},	--Vehicle fusion reactor MK3
--	['vehicle-fusion-reactor-4']			={r=   , g=   , b=   , a=127},	--Vehicle fusion reactor MK4
--	['vehicle-fusion-reactor-5']			={r=   , g=   , b=   , a=127},	--Vehicle fusion reactor MK5
--	['vehicle-fusion-reactor-6']			={r=   , g=   , b=   , a=127},	--Vehicle fusion reactor MK6
--	['vehicle-fusion-cell-1']				={r=   , g=   , b=   , a=127},	--Vehicle fusion cell MK1
--	['vehicle-fusion-cell-2']				={r=   , g=   , b=   , a=127},	--Vehicle fusion cell MK2
--	['vehicle-fusion-cell-3']				={r=   , g=   , b=   , a=127},	--Vehicle fusion cell MK3
--	['vehicle-fusion-cell-4']				={r=   , g=   , b=   , a=127},	--Vehicle fusion cell MK4
--	['vehicle-fusion-cell-5']				={r=   , g=   , b=   , a=127},	--Vehicle fusion cell MK5
--	['vehicle-fusion-cell-6']				={r=   , g=   , b=   , a=127},	--Vehicle fusion cell MK6
--	['vehicle-laser-defense-1']				={r=   , g=   , b=   , a=127},	--Vehicle laser defense MK1
--	['vehicle-laser-defense-2']				={r=   , g=   , b=   , a=127},	--Vehicle laser defense MK2
--	['vehicle-laser-defense-3']				={r=   , g=   , b=   , a=127},	--Vehicle laser defense MK3
--	['vehicle-laser-defense-4']				={r=   , g=   , b=   , a=127},	--Vehicle laser defense MK4
--	['vehicle-laser-defense-5']				={r=   , g=   , b=   , a=127},	--Vehicle laser defense MK5
--	['vehicle-laser-defense-6']				={r=   , g=   , b=   , a=127},	--Vehicle laser defense MK6
--	['vehicle-big-turret-1']				={r=   , g=   , b=   , a=127},	--Vehicle plasma cannon MK1
--	['vehicle-big-turret-2']				={r=   , g=   , b=   , a=127},	--Vehicle plasma cannon MK2
--	['vehicle-big-turret-3']				={r=   , g=   , b=   , a=127},	--Vehicle plasma cannon MK3
--	['vehicle-big-turret-4']				={r=   , g=   , b=   , a=127},	--Vehicle plasma cannon MK4
--	['vehicle-big-turret-5']				={r=   , g=   , b=   , a=127},	--Vehicle plasma cannon MK5
--	['vehicle-big-turret-6']				={r=   , g=   , b=   , a=127},	--Vehicle plasma cannon MK6
--	['vehicle-motor']						={r=   , g=   , b=   , a=127},	--Vehicle overdrive motor
--	['vehicle-engine']						={r=   , g=   , b=   , a=127},	--Vehicle overdrive engine
--	['vehicle-roboport']					={r=   , g=   , b=   , a=127},	--Vehicle roboport
--	['vehicle-roboport-2']					={r=   , g=   , b=   , a=127},	--Vehicle roboport MK2

	--warfare
--	['glycerol']							={r=   , g=   , b=   , a=127},	--Glycerol
--	['nitroglycerin']						={r=   , g=   , b=   , a=127},	--Nitroglycerin
--	['sulfuric-nitric-acid']				={r=   , g=   , b=   , a=127},	--Sulfuric and Nitric acid mixture
--	['petroleum-jelly']						={r=   , g=   , b=   , a=127},	--Petroleum jelly
--	['gun-cotton']							={r=   , g=   , b=   , a=127},	--Guncotton
--	['cordite']								={r=   , g=   , b=   , a=127},	--Cordite
--	['magazine']							={r=   , g=   , b=   , a=127},	--Magazine
--	['bullet-casing']						={r=   , g=   , b=   , a=127},	--Bullet casing
--	['bullet-projectile']					={r=   , g=   , b=   , a=127},	--Bullet projectile
--	['bullet']								={r=   , g=   , b=   , a=127},	--Bullet
--	['bullet-magazine']						={r=   , g=   , b=   , a=127},	--Ammo magazine
--	['ap-bullet-projectile']				={r=   , g=   , b=   , a=127},	--AP bullet projectile
--	['ap-bullet']							={r=   , g=   , b=   , a=127},	--AP bullet
--	['ap-bullet-magazine']					={r=   , g=   , b=   , a=127},	--AP ammo magazine
--	['he-bullet-projectile']				={r=   , g=   , b=   , a=127},	--HE bullet projectile
--	['he-bullet']							={r=   , g=   , b=   , a=127},	--HE bullet
--	['he-bullet-magazine']					={r=   , g=   , b=   , a=127},	--HE ammo magazine
--	['acid-bullet-projectile']				={r=   , g=   , b=   , a=127},	--Acid bullet projectile
--	['acid-bullet']							={r=   , g=   , b=   , a=127},	--Acid bullet
--	['acid-bullet-magazine']				={r=   , g=   , b=   , a=127},	--Acid ammo magazine
--	['flame-bullet-projectile']				={r=   , g=   , b=   , a=127},	--Flame bullet projectile
--	['flame-bullet']						={r=   , g=   , b=   , a=127},	--Flame bullet
--	['flame-bullet-magazine']				={r=   , g=   , b=   , a=127},	--Flame ammo magazine
--	['poison-bullet-projectile']			={r=   , g=   , b=   , a=127},	--Poison bullet projectile
--	['poison-bullet']						={r=   , g=   , b=   , a=127},	--Poison bullet
--	['poison-bullet-magazine']				={r=   , g=   , b=   , a=127},	--Poison ammo magazine
--	['impact-bullet-projectile']			={r=   , g=   , b=   , a=127},	--Impact bullet projectile
--	['impact-bullet']						={r=   , g=   , b=   , a=127},	--Impact bullet
--	['impact-bullet-magazine']				={r=   , g=   , b=   , a=127},	--Impact ammo magazine
--	['electric-bullet-projectile']			={r=   , g=   , b=   , a=127},	--Electric bullet projectile
--	['electric-bullet']						={r=   , g=   , b=   , a=127},	--Electric bullet
--	['electric-bullet-magazine']			={r=   , g=   , b=   , a=127},	--Electric ammo magazine
--	['uranium-bullet-projectile']			={r=   , g=   , b=   , a=127},	--Uranium bullet projectile
--	['uranium-bullet']						={r=   , g=   , b=   , a=127},	--Uranium bullet
--	['shotgun-shell-casing']				={r=   , g=   , b=   , a=127},	--Shotgun shell casing
--	['shot']								={r=   , g=   , b=   , a=127},	--Shotgun pellets
--	['better-shotgun-shell']				={r=   , g=   , b=   , a=127},	--Better shotgun shells
--	['shotgun-ap-shell']					={r=   , g=   , b=   , a=127},	--Shotgun AP shells
--	['shotgun-impact-shell']				={r=   , g=   , b=   , a=127},	--Shotgun impact shells
--	['shotgun-explosive-shell']				={r=   , g=   , b=   , a=127},	--Shotgun explosive shells
--	['shotgun-flame-shell']					={r=   , g=   , b=   , a=127},	--Shotgun flame shells
--	['shotgun-acid-shell']					={r=   , g=   , b=   , a=127},	--Shotgun acid shells
--	['shotgun-poison-shell']				={r=   , g=   , b=   , a=127},	--Shotgun poison shells
--	['shotgun-electric-shell']				={r=   , g=   , b=   , a=127},	--Shotgun electric shells
--	['shotgun-uranium-shell']				={r=   , g=   , b=   , a=127},	--Shotgun uranium shells
--	['scatter-cannon-shell']				={r=   , g=   , b=   , a=127},	--Scatter cannon shells
--	['poison-artillery-shell']				={r=   , g=   , b=   , a=127},	--Poison artillery shells
--	['explosive-artillery-shell']			={r=   , g=   , b=   , a=127},	--Explosive artillery shells
--	['distractor-artillery-shell']			={r=   , g=   , b=   , a=127},	--Distractor artillery shells
--	['rifle']								={r=   , g=   , b=   , a=127},	--Rifle
--	['sniper-rifle']						={r=   , g=   , b=   , a=127},	--Sniper rifle
--	['laser-rifle']							={r=   , g=   , b=   , a=127},	--Laser rifle
--	['laser-rifle-battery-case']			={r=   , g=   , b=   , a=127},	--Laser rifle battery case
--	['laser-rifle-battery']					={r=   , g=   , b=   , a=127},	--Laser rifle battery
--	['laser-rifle-battery-ruby']			={r=   , g=   , b=   , a=127},	--Ruby laser rifle battery
--	['laser-rifle-battery-sapphire']		={r=   , g=   , b=   , a=127},	--Sapphire laser rifle battery
--	['laser-rifle-battery-emerald']			={r=   , g=   , b=   , a=127},	--Emerald laser rifle battery
--	['laser-rifle-battery-amethyst']		={r=   , g=   , b=   , a=127},	--Amethyst laser rifle battery
--	['laser-rifle-battery-topaz']			={r=   , g=   , b=   , a=127},	--Topaz laser rifle battery
--	['laser-rifle-battery-diamond']			={r=   , g=   , b=   , a=127},	--Diamond laser rifle battery
--	['gatling-gun']							={r=   , g=   , b=   , a=127},	--Gatling gun
--	['tank-cannon-2']						={r=   , g=   , b=   , a=127},	--Tank cannon 2
--	['tank-cannon-3']						={r=   , g=   , b=   , a=127},	--Tank cannon 3
--	['tank-artillery-1']					={r=   , g=   , b=   , a=127},	--Tank artillery
--	['tank-artillery-2']					={r=   , g=   , b=   , a=127},	--Tank artillery 2
--	['bob-artillery-wagon-cannon-2']		={r=   , g=   , b=   , a=127},	--Artillery wagon cannon 2
--	['bob-artillery-wagon-cannon-3']		={r=   , g=   , b=   , a=127},	--Artillery wagon cannon 3
--	['tank-laser']							={r=   , g=   , b=   , a=127},	--Tank laser
--	['poison-mine']							={r=   , g=   , b=   , a=127},	--Poison mine
--	['slowdown-mine']						={r=   , g=   , b=   , a=127},	--Slowdown mine
--	['distractor-mine']						={r=   , g=   , b=   , a=127},	--Distractor robot mine
--	['bob-robot-tank']						={r=   , g=   , b=   , a=127},	--Robotic attack drone
--	['rocket-engine']						={r=   , g=   , b=   , a=127},	--Rocket engine
--	['rocket-body']							={r=   , g=   , b=   , a=127},	--Rocket body
--	['rocket-warhead']						={r=   , g=   , b=   , a=127},	--Rocket warhead
--	['piercing-rocket-warhead']				={r=   , g=   , b=   , a=127},	--Piercing rocket warhead
--	['impact-rocket-warhead']				={r=   , g=   , b=   , a=127},	--Impact rocket warhead
--	['explosive-rocket-warhead']			={r=   , g=   , b=   , a=127},	--Explosive rocket warhead
--	['flame-rocket-warhead']				={r=   , g=   , b=   , a=127},	--Flame rocket warhead
--	['poison-rocket-warhead']				={r=   , g=   , b=   , a=127},	--Poison rocket warhead
--	['acid-rocket-warhead']					={r=   , g=   , b=   , a=127},	--Acid rocket warhead
--	['electric-rocket-warhead']				={r=   , g=   , b=   , a=127},	--Electric rocket warhead
--	['bob-rocket']							={r=   , g=   , b=   , a=127},	--Rocket
--	['bob-piercing-rocket']					={r=   , g=   , b=   , a=127},	--Piercing rocket
--	['bob-impact-rocket']					={r=   , g=   , b=   , a=127},	--Impact rocket
--	['bob-explosive-rocket']				={r=   , g=   , b=   , a=127},	--Explosive rocket
--	['bob-flame-rocket']					={r=   , g=   , b=   , a=127},	--Flame rocket
--	['bob-poison-rocket']					={r=   , g=   , b=   , a=127},	--Poison rocket
--	['bob-acid-rocket']						={r=   , g=   , b=   , a=127},	--Acid rocket
--	['bob-electric-rocket']					={r=   , g=   , b=   , a=127},	--Electric rocket
--	['bob-power-armor-mk3']					={r=   , g=   , b=   , a=127},	--Power armor MK3
--	['bob-power-armor-mk4']					={r=   , g=   , b=   , a=127},	--Power armor MK4
--	['bob-power-armor-mk5']					={r=   , g=   , b=   , a=127},	--Power armor MK5
--	['heavy-armor-2']						={r=   , g=   , b=   , a=127},	--Invar Cobalt-steel armor
--	['heavy-armor-3']						={r=   , g=   , b=   , a=127},	--Titanium-Ceramic armor
--	['reinforced-wall']						={r=   , g=   , b=   , a=127},	--Re-inforced concrete wall
--	['reinforced-gate']						={r=   , g=   , b=   , a=127},	--Re-inforced concrete gate
--	['energy-shield-mk3-equipment']			={r=   , g=   , b=   , a=127},	--Energy shield MK3
--	['energy-shield-mk4-equipment']			={r=   , g=   , b=   , a=127},	--Energy shield MK4
--	['energy-shield-mk5-equipment']			={r=   , g=   , b=   , a=127},	--Energy shield MK5
--	['energy-shield-mk6-equipment']			={r=   , g=   , b=   , a=127},	--Energy shield MK6
--	['battery-mk3-equipment']				={r=   , g=   , b=   , a=127},	--Battery MK3
--	['battery-mk4-equipment']				={r=   , g=   , b=   , a=127},	--Battery MK4
--	['battery-mk5-equipment']				={r=   , g=   , b=   , a=127},	--Battery MK5
--	['battery-mk6-equipment']				={r=   , g=   , b=   , a=127},	--Battery MK6
--	['fusion-reactor-equipment-2']			={r=   , g=   , b=   , a=127},	--Portable fusion reactor MK2
--	['fusion-reactor-equipment-3']			={r=   , g=   , b=   , a=127},	--Portable fusion reactor MK3
--	['fusion-reactor-equipment-4']			={r=   , g=   , b=   , a=127},	--Portable fusion reactor MK4
--	['night-vision-equipment-2']			={r=   , g=   , b=   , a=127},	--Night vision MK2
--	['night-vision-equipment-3']			={r=   , g=   , b=   , a=127},	--Night vision MK3
--	['solar-panel-equipment-2']				={r=   , g=   , b=   , a=127},	--Portable solar panel MK2
--	['solar-panel-equipment-3']				={r=   , g=   , b=   , a=127},	--Portable solar panel MK3
--	['solar-panel-equipment-4']				={r=   , g=   , b=   , a=127},	--Portable solar panel MK4
--	['personal-laser-defense-equipment-2']	={r=   , g=   , b=   , a=127},	--Personal laser defense MK2
--	['personal-laser-defense-equipment-3']	={r=   , g=   , b=   , a=127},	--Personal laser defense MK3
--	['personal-laser-defense-equipment-4']	={r=   , g=   , b=   , a=127},	--Personal laser defense MK4
--	['personal-laser-defense-equipment-5']	={r=   , g=   , b=   , a=127},	--Personal laser defense MK5
--	['personal-laser-defense-equipment-6']	={r=   , g=   , b=   , a=127},	--Personal laser defense MK6
--	['exoskeleton-equipment-2']				={r=   , g=   , b=   , a=127},	--Exoskeleton equipment MK2
--	['exoskeleton-equipment-3']				={r=   , g=   , b=   , a=127},	--Exoskeleton equipment MK3
--	['bob-gun-turret-2']					={r=   , g=   , b=   , a=127},	--Gun turret MK2
--	['bob-gun-turret-3']					={r=   , g=   , b=   , a=127},	--Gun turret MK3
--	['bob-gun-turret-4']					={r=   , g=   , b=   , a=127},	--Gun turret MK4
--	['bob-gun-turret-5']					={r=   , g=   , b=   , a=127},	--Gun turret MK5
--	['bob-sniper-turret-1']					={r=   , g=   , b=   , a=127},	--Sniper turret MK1
--	['bob-sniper-turret-2']					={r=   , g=   , b=   , a=127},	--Sniper turret MK2
--	['bob-sniper-turret-3']					={r=   , g=   , b=   , a=127},	--Sniper turret MK3
--	['bob-laser-turret-2']					={r=   , g=   , b=   , a=127},	--Laser turret MK2
--	['bob-laser-turret-3']					={r=   , g=   , b=   , a=127},	--Laser turret MK3
--	['bob-laser-turret-4']					={r=   , g=   , b=   , a=127},	--Laser turret MK4
--	['bob-laser-turret-5']					={r=   , g=   , b=   , a=127},	--Laser turret MK5
--	['bob-tank-2']							={r=   , g=   , b=   , a=127},	--Tank MK2
--	['bob-tank-3']							={r=   , g=   , b=   , a=127},	--Tank MK3
	['bob-artillery-wagon-2']				={r=255, g=191, b=000, a=127},	--Artillery wagon MK2
	['bob-artillery-wagon-3']				={r=255, g=191, b=000, a=127},	--Artillery wagon MK3
--	['bob-artillery-turret-2']				={r=   , g=   , b=   , a=127},	--Artillery turret MK2
--	['bob-artillery-turret-3']				={r=   , g=   , b=   , a=127},	--Artillery turret MK3
	['radar-2']								={r=220, g=180, b=120, a=127},	--Radar MK2
	['radar-3']								={r=220, g=180, b=120, a=127},	--Radar MK3
	['radar-4']								={r=220, g=180, b=120, a=127},	--Radar MK4
	['radar-5']								={r=220, g=180, b=120, a=127},	--Radar MK5
--	['robot-brain-combat']					={r=   , g=   , b=   , a=127},	--Defender robot brain
--	['robot-brain-combat-2']				={r=   , g=   , b=   , a=127},	--Distractor robot brain
--	['robot-brain-combat-3']				={r=   , g=   , b=   , a=127},	--Destroyer robot brain
--	['robot-brain-combat-4']				={r=   , g=   , b=   , a=127},	--Laser robot brain
--	['robot-tool-combat']					={r=   , g=   , b=   , a=127},	--Defender robot weapon
--	['robot-tool-combat-2']					={r=   , g=   , b=   , a=127},	--Distractor robot weapon
--	['robot-tool-combat-3']					={r=   , g=   , b=   , a=127},	--Destroyer robot weapon
--	['robot-tool-combat-4']					={r=   , g=   , b=   , a=127},	--Laser robot weapon
--	['defender-robot']						={r=   , g=   , b=   , a=127},	--Defender robot
--	['distractor-robot']					={r=   , g=   , b=   , a=127},	--Distractor robot
--	['destroyer-robot']						={r=   , g=   , b=   , a=127},	--Destroyer robot
--	['bob-laser-robot']						={r=   , g=   , b=   , a=127},	--Laser robot
--	['bob-laser-robot-capsule']				={r=   , g=   , b=   , a=127},	--Laser robot capsule

-- --------------------------------------------------------------------------------------------

--	 _  __                       _                    _
--	| |/ /                      | |                  (_)
--	| ' /   _ __    __ _   ___  | |_    ___    _ __   _    ___
--	|  <   | '__|  / _` | / __| | __|  / _ \  | '__| | |  / _ \
--	| . \  | |    | (_| | \__ \ | |_  | (_) | | |    | | | (_) |
--	|_|\_\ |_|     \__,_| |___/  \__|  \___/  |_|    |_|  \___/

	['k-medium-g']							={r=144, g=144, b=144, a=127},	--Big generic chest
	['k-big-g']								={r=144, g=144, b=144, a=127},	--Generic warehouse
	['fs-50']								={r=000, g=106, b=204, a=127},	--FS-50
	['fs-200']								={r=000, g=106, b=204, a=127},	--FS-200
	['k-medium-ap']							={r=120, g=000, b=255, a=127},	--Big active provider chest
	['k-medium-pp']							={r=255, g=000, b=000, a=127},	--Big passive provider chest
	['k-medium-s']							={r=255, g=160, b=000, a=127},	--Big storage chest
	['k-medium-b']							={r=000, g=255, b=000, a=127},	--Big buffer chest
	['k-medium-r']							={r=000, g=150, b=255, a=127},	--Big requester chest
	['k-big-ap']							={r=120, g=000, b=255, a=127},	--Active provider warehouse
	['k-big-pp']							={r=255, g=000, b=000, a=127},	--Provider passive warehouse
	['k-big-s']								={r=255, g=160, b=000, a=127},	--Storage warehouse
	['k-big-b']								={r=000, g=255, b=000, a=127},	--Buffer warehouse
	['k-big-r']								={r=000, g=150, b=255, a=127},	--Requester warehouse
	['k-transport-belt']					={r=255, g=000, b=255, a=127},	--Superior belt
	['k-underground-belt']					={r=180, g=000, b=255, a=127},	--Superior underground belt
	['k-splitter']							={r=180, g=000, b=255, a=127},	--Superior splitter
	['loader-kr']							={r=255, g=171, b=000, a=127},	--Loader
	['loader-kr-02']						={r=255, g=007, b=000, a=127},	--Fast loader
	['loader-kr-03']						={r=000, g=109, b=255, a=127},	--Express loader
	['loader-kr-04']						={r=180, g=000, b=255, a=127},	--Superior loader
	['superior-inserter']					={r=000, g=000, b=000, a=127},	--Superior inserter
	['superior-long-inserter']				={r=153, g=033, b=000, a=127},	--Long superior inserter
	['superior-filter-inserter']			={r=180, g=000, b=255, a=127},	--Filter superior inserter
	['superior-long-filter-inserter']		={r=153, g=087, b=000, a=127},	--Long filter superior inserter
	['steel-pipe']							={r=150, g=150, b=200, a=127},	--Steel pipe
	['steel-pipe-to-ground']				={r=150, g=150, b=200, a=127},	--Steel pipe to ground
	['steel-pump']							={r=150, g=150, b=200, a=127},	--Steel pump
	['drone-charging-station']				={r=255, g=155, b=000, a=127},	--Drone charging station
	['drone-hub']							={r=255, g=155, b=000, a=127},	--Drone hub
	['reinforced-plate']					={r=255, g=255, b=255, a=127},	--Reinforced plate
	['black-reinforced-plate']				={r=000, g=000, b=000, a=127},	--Dark reinforced plate

	['imersite-solar-panel']				={r=149, g=000, b=175, a=127},	--Imersite solar panel
	['imersite-accumulator']				={r=255, g=000, b=146, a=127},	--Imersite accumulator
	['k-fusion-reactor']					={r=098, g=058, b=000, a=127},	--Fusion reactor
	['big-turbine']							={r=098, g=058, b=000, a=127},	--Big turbine
	['antimatter-reactor-prototype']		={r=000, g=178, b=189, a=127},	--Antimatter reactor prototype
	['antimatter-reactor']					={r=098, g=058, b=000, a=127},	--Antimatter reactor
	['electric-mining-drill-mk2']			={r=000, g=066, b=197, a=127},	--Electric mining drill MK2
	['electric-mining-drill-mk3']			={r=208, g=025, b=208, a=127},	--Electric mining drill MK3
	['k-big-drill']							={r=117, g=076, b=000, a=127},	--Big mining drill
	['k-advanced-big-drill']				={r=055, g=000, b=095, a=127},	--Advanced big mining drill
	['k-deep-mining-drill']					={r=000, g=087, b=000, a=127},	--Deep mining drill
	['k-multifunctional-furnace']			={r=149, g=018, b=000, a=127},	--Multifunctional furnace
	['k-advanced-furnace']					={r=025, g=000, b=000, a=127},	--Advanced furnace
	['k-air-purifier']						={r=182, g=131, b=000, a=127},	--Air purifier
	['k-filtration-plant']					={r=022, g=047, b=113, a=127},	--Filtration plant
	['k-electrolysis-plant']				={r=022, g=047, b=113, a=127},	--Electrolysis plant
	['kr-air-filter']						={r=153, g=091, b=000, a=127},	--Air filter
	['k-flare-stack']						={r=178, g=098, b=000, a=127},	--Flare stack
	['k-liquid-evaporator']					={r=000, g=098, b=186, a=127},	--Liquid evaporator
	['k-research-server-mk1']				={r=178, g=098, b=000, a=127},	--Research server
	['k-research-server-mk2']				={r=000, g=098, b=186, a=127},	--Research server MK2
	['k-quantum-computer']					={r=000, g=080, b=055, a=127},	--Quantum computer
	['singularity-beacon']					={r=066, g=025, b=000, a=127},	--Singularity beacon
	['advanced-assembler']					={r=066, g=000, b=055, a=127},	--Advanced assembling machine
	['k-advanced-chemical-plant']			={r=066, g=000, b=055, a=127},	--Advanced chemical plant
	['k-lab']								={r=255, g=000, b=255, a=127},	--Research lab
	['stabilizer-charging-station']			={r=160, g=100, b=000, a=127},	--Stabilizer charging station
	['matter-factory']						={r=127, g=087, b=000, a=127},	--Matter factory
	['matter-converter']					={r=055, g=000, b=069, a=127},	--Matter converter
	['matter-assembler']					={r=000, g=029, b=069, a=127},	--Matter fabrication plant
	['k-module-case']						={r=146, g=193, b=226, a=127},	--Module case

	['gold-ore']							={r=255, g=175, b=000, a=127},	--Gold ore
	['k-tantalum']							={r=211, g=255, b=255, a=127},	--Tantalum
	['k-titanium']							={r=255, g=211, b=208, a=127},	--Titanium
	['raw-imersite']						={r=255, g=000, b=255, a=127},	--Raw imersite
	['raw-menarite']						={r=000, g=100, b=255, a=127},	--Raw menarite
	['sand']								={r=255, g=226, b=168, a=127},	--Sand
	['menarite-powder']						={r=120, g=131, b=255, a=127},	--Menarite powder
	['imersite-powder']						={r=237, g=124, b=255, a=127},	--Imersite powder
	['k-raw-chunk']							={r=073, g=069, b=062, a=127},	--Raw chunk
	['raw-ores']							={r=182, g=131, b=044, a=127},	--Raw ores
	['raw-minerals']						={r=182, g=142, b=255, a=127},	--Raw minerals
	['k-coke']								={r=000, g=000, b=000, a=127},	--Coke
	['k-silicon']							={r=149, g=142, b=146, a=127},	--Silicon
	['k-tritium']							={r=040, g=255, b=022, a=127},	--Tritium
	['steel-billet']						={r=229, g=127, b=000, a=127},	--Steel components
	['k-steel']								={r=229, g=255, b=255, a=127},	--Steel plate
	['gold-plate']							={r=255, g=182, b=044, a=127},	--Gold plate
	['k-titanium-plate']					={r=149, g=197, b=255, a=127},	--Titanium plate
	['k-tantalum-plate']					={r=142, g=255, b=255, a=127},	--Tantalum plate
	['glass']								={r=135, g=175, b=255, a=127},	--Glass
	['imersite-glass']						={r=175, g=000, b=211, a=127},	--Imersite glass
	['k-quartz']							={r=200, g=200, b=200, a=127},	--Quartz
	['k-silicon-wafer']						={r=255, g=204, b=117, a=127},	--Silicon wafer
	['menarite-wafer']						={r=189, g=168, b=255, a=127},	--Menarite wafer
	['k-gold-foil']							={r=255, g=197, b=080, a=127},	--Gold foil
	['vanilla-steel-plate-renamed']			={r=220, g=220, b=220, a=127},	--Iron beam
	['enriched-copper']						={r=255, g=117, b=069, a=127},	--Enriched copper
	['enriched-iron']						={r=091, g=127, b=186, a=127},	--Enriched iron
	['imersite-battery']					={r=189, g=062, b=168, a=127},	--Imersite battery
	['k-s-drill-head']						={r=084, g=080, b=080, a=127},	--Steel drill head
	['k-t-drill-head']						={r=193, g=219, b=215, a=127},	--Titanium drill head
	['k-m-drill-head']						={r=127, g=058, b=233, a=127},	--Menarite drill head
	['k-i-drill-head']						={r=233, g=058, b=233, a=127},	--Imersite drill head
	['k-filter']							={r=117, g=080, b=000, a=127},	--Filter
	['k-used-filter']						={r=117, g=000, b=044, a=127},	--Used filter
	['k-dewar']								={r=240, g=240, b=240, a=127},	--Dewar
	['k-liquid-nitrogen']					={r=240, g=240, b=240, a=127},	--Liquid nitrogen
	['k-deuterium-oxide']					={r=240, g=240, b=240, a=127},	--Deuterium oxide
	['steel-gear-wheel']					={r=240, g=240, b=240, a=127},	--Steel gear wheel
	['k-transistor']						={r=044, g=044, b=051, a=127},	--Integrated circuit
	['k-ram']								={r=000, g=066, b=029, a=127},	--RAM
	['k-processor']							={r=044, g=025, b=015, a=127},	--Processor
	['k-advanced-processor']				={r=091, g=138, b=222, a=127},	--Menarite processor
	['k-circuit-board']						={r=000, g=208, b=084, a=127},	--PCB
	['electronic-circuit']					={r=100, g=255, b=000, a=127},	--Primitive circuit
	['advanced-circuit']					={r=255, g=000, b=000, a=127},	--Electronic circuit
	['processing-unit']						={r=000, g=000, b=255, a=127},	--Advanced circuit
	['menarite']							={r=025, g=106, b=255, a=127},	--Menarite
	['imersite']							={r=255, g=040, b=255, a=127},	--Imersite
	['k-lithium']							={r=087, g=087, b=087, a=127},	--Lithium
	['k-lithium-chloride']					={r=233, g=233, b=255, a=127},	--Lithium chloride
	['k-dt-fuel']							={r=255, g=229, b=000, a=127},	--D-T fuel
	['k-antimatter-capsule']				={r=153, g=000, b=000, a=127},	--Antimatter capsule
	['k-antimatter-power-cell']				={r=153, g=000, b=000, a=127},	--Antimatter power cell
	['k-big-antimatter-power-cell']			={r=015, g=102, b=182, a=127},	--Big antimatter power cell
	['empty-matter-stabilizer']				={r=255, g=073, b=000, a=127},	--Empty matter stabilizer
	['matter-stabilizer']					={r=255, g=255, b=000, a=127},	--Matter stabilizer
	['matter-cube']							={r=015, g=102, b=182, a=127},	--Matter cube
	['k-experimental-data']					={r=204, g=215, b=255, a=127},	--Experimental data
	['k-empty-memory-card']					={r=175, g=066, b=255, a=127},	--Empty memory card
	['automation-research-data']			={r=255, g=000, b=000, a=127},	--Automation research data
	['logistic-research-data']				={r=040, g=200, b=040, a=127},	--Logistic research data
	['chemical-research-data']				={r=040, g=160, b=255, a=127},	--Chemical research data
	['military-research-data']				={r=100, g=100, b=120, a=127},	--Military research data
	['scientific-research-data']			={r=255, g=188, b=000, a=127},	--Scientific research data
	['matter-research-data']				={r=000, g=215, b=255, a=127},	--Matter research data
	['optimization-research-data']			={r=255, g=255, b=255, a=127},	--Optimization research data

	['k-matter']							={r=076, g=255, b=255, a=127},	--Matter
	['k-pure-water']						={r=025, g=175, b=255, a=127},	--Pure water
	['k-dirty-water']						={r=215, g=153, b=036, a=127},	--Dirty water
	['k-salt-water']						={r=168, g=255, b=255, a=127},	--Salt water
	['k-ammonia']							={r=055, g=040, b=124, a=127},	--Ammonia
	['k-chlorine']							={r=073, g=102, b=000, a=127},	--Chlorine
	['k-hydrogen']							={r=150, g=150, b=150, a=127},	--Hydrogen
	['k-nitric-acid']						={r=150, g=087, b=051, a=127},	--Nitric acid
	['k-nitrogen']							={r=000, g=018, b=098, a=127},	--Nitrogen
	['k-oxygen']							={r=189, g=135, b=124, a=127},	--Oxygen
	['kr-void']								={r=000, g=000, b=036, a=127},	--Void
	['k-hydrogen-chloride']					={r=138, g=164, b=076, a=127},	--Hydrogen chloride

--	['impulse-rifle']						={r=   , g=   , b=   , a=127},	--Impulse rifle
--	['heavy-rocket-launcher']				={r=   , g=   , b=   , a=127},	--Heavy rocket launcher
--	['imersite-rounds-magazine']			={r=   , g=   , b=   , a=127},	--Imersite rounds magazine
--	['impulse-rifle-ammo']					={r=   , g=   , b=   , a=127},	--Impulse rifle ammo
--	['antimatter-artillery-shell']			={r=   , g=   , b=   , a=127},	--Antimatter artillery shell
--	['heavy-rocket']						={r=   , g=   , b=   , a=127},	--Heavy rocket
--	['antimatter-rocket']					={r=   , g=   , b=   , a=127},	--Antimatter rocket
--	['power-armor-mk3']						={r=   , g=   , b=   , a=127},	--Power armor MK3
--	['power-armor-mk4']						={r=   , g=   , b=   , a=127},	--Power armor MK4
--	['small-portable-generator']			={r=   , g=   , b=   , a=127},	--Small portable generator
--	['portable-generator']					={r=   , g=   , b=   , a=127},	--Portable generator
--	['portable-nuclear-core']				={r=   , g=   , b=   , a=127},	--Portable nuclear core
--	['fusion-reactor-equipment']			={r=   , g=   , b=   , a=127},	--Portable fusion core
--	['portable-antimaterial-core']			={r=   , g=   , b=   , a=127},	--Portable antimatter core
--	['big-solar-panel-equipment']			={r=   , g=   , b=   , a=127},	--Big portable solar panel
--	['big-imersite-solar-panel-equipment']		={r=   , g=   , b=   , a=127},	--Big portable imersite solar panel
--	['battery-mk3-equipment']				={r=   , g=   , b=   , a=127},	--Battery MK3
--	['big-battery-equipment']				={r=   , g=   , b=   , a=127},	--Big personal battery
--	['big-battery-mk2-equipment']			={r=   , g=   , b=   , a=127},	--Big personal battery MK2
--	['big-battery-mk3-equipment']			={r=   , g=   , b=   , a=127},	--Big personal battery MK3
--	['energy-shield-mk3-equipment']			={r=   , g=   , b=   , a=127},	--Energy shield MK3
--	['energy-shield-mk4-equipment']			={r=   , g=   , b=   , a=127},	--Energy shield MK4
--	['personal-submachine-laser-defense-mk1-equipment']		={r=   , g=   , b=   , a=127},	--Personal submachine laser defense
--	['personal-submachine-laser-defense-mk2-equipment']		={r=   , g=   , b=   , a=127},	--Personal submachine laser defense MK2
--	['personal-submachine-laser-defense-mk3-equipment']		={r=   , g=   , b=   , a=127},	--Personal submachine laser defense MK3
--	['personal-submachine-laser-defense-mk4-equipment']		={r=   , g=   , b=   , a=127},	--Personal submachine laser defense MK4
--	['personal-sniper-laser-defense-mk1-equipment']			={r=   , g=   , b=   , a=127},	--Personal sniper laser defense
--	['personal-sniper-laser-defense-mk2-equipment']			={r=   , g=   , b=   , a=127},	--Personal sniper laser defense MK2
--	['titanium-exoskeleton-equipment']		={r=   , g=   , b=   , a=127},	--Titanium exoskeleton
--	['advanced-exoskeleton-equipment']		={r=   , g=   , b=   , a=127},	--Advanced exoskeleton
--	['imersite-night-vision-equipment']		={r=   , g=   , b=   , a=127},	--Imersite night vision equipment
--	['vehicle-roboport']					={r=   , g=   , b=   , a=127},	--Vehicle roboport
--	['additional-engine']					={r=   , g=   , b=   , a=127},	--Additional electric engine
--	['advanced-additional-engine']			={r=   , g=   , b=   , a=127},	--Advanced additional electric engine
--	['k-tank']								={r=   , g=   , b=   , a=127},	--Battle tank
--	['railgun-turret']						={r=   , g=   , b=   , a=127},	--Cannon turret
--	['basic-railgun-shell']					={r=   , g=   , b=   , a=127},	--Basic large-caliber cannon shell
--	['explosion-railgun-shell']				={r=   , g=   , b=   , a=127},	--Explosion large-caliber cannon shell
--	['antimatter-railgun-shell']			={r=   , g=   , b=   , a=127},	--Antimatter large-caliber cannon shell
--	['rocket-turret']						={r=   , g=   , b=   , a=127},	--Rocket turret
--	['explosion-rocket-for-turret']			={r=   , g=   , b=   , a=127},	--Explosion rocket for turret
--	['nuclear-rocket-for-turret']			={r=   , g=   , b=   , a=127},	--Nuclear rocket for turret
--	['antimatter-rocket-for-turret']		={r=   , g=   , b=   , a=127},	--Antimatter rocket for turret
--	['k-wall']								={r=   , g=   , b=   , a=127},	--Reinforced wall
--	['k-gate']								={r=   , g=   , b=   , a=127},	--Reinforced gate

	--missing from menu
--	['k-tank-machine-gun']					={r=   , g=   , b=   , a=127},	--Tank machine gun
--	['k-laser-cannon']						={r=   , g=   , b=   , a=127},	--Tank impulse gun
--	['k-tank-cannon-a']						={r=   , g=   , b=   , a=127},	--Tank cannon I
--	['k-tank-cannon-b']						={r=   , g=   , b=   , a=127},	--Tank cannon II
--	['k-tank-cannon-c']						={r=   , g=   , b=   , a=127},	--Tank cannon (sniper mode)
--	['tank-cannon']							={r=   , g=   , b=   , a=127},	--Cannon
--	['tank']								={r=   , g=   , b=   , a=127},	--Heavy armored vehicle
--	['steel-furnace']						={r=   , g=   , b=   , a=127},	--Iron furnace
--	['k-tungsten-plate']					={r=   , g=   , b=   , a=127},	--Tungsten plate
--	['k-v-nuclear-core']					={r=   , g=   , b=   , a=127},	--Vehicle nuclear reactor
--	['personal-laser-defense-mk2-equipment']	={r=   , g=   , b=   , a=127},	--Personal laser defense MK2
--	['k-transport-belt-beltbox']			={r=   , g=   , b=   , a=127},	--Superior stacking Beltbox
--	['superior-loader']						={r=   , g=   , b=   , a=127},	--Superior loader
--	['deadlock-crating-machine-4']			={r=   , g=   , b=   , a=127},	--Superior crating machine
--	['k-transport-belt-loader']				={r=   , g=   , b=   , a=127},	--Superior loader
--	['loader-kr-se']						={r=   , g=   , b=   , a=127},	--Space loader
--	['rocketfish']							={r=   , g=   , b=   , a=127},	--Rocketfish
--	['dolphin-gun']							={r=   , g=   , b=   , a=127},	--Dolphin gun
--	['tantalum-ingot']						={r=   , g=   , b=   , a=127},	--Tantalum ingot
--	['tantalum-plate']						={r=   , g=   , b=   , a=127},	--Tantalum plate
--	['imersite-cartridge']					={r=   , g=   , b=   , a=127},	--Imersite cartridge
--	['advanced-water-filtration-plant']		={r=   , g=   , b=   , a=127},	--Advanced water filtration plant

-- --------------------------------------------------------------------------------------------

--	 _____                                        _
--	|  __ \                                      | |
--	| |__) |  _   _    __ _   _ __     ___     __| |   ___    _ __    ___
--	|  ___/  | | | |  / _` | | '_ \   / _ \   / _` |  / _ \  | '_ \  / __|
--	| |      | |_| | | (_| | | | | | | (_) | | (_| | | (_) | | | | | \__ \
--	|_|       \__, |  \__,_| |_| |_|  \___/   \__,_|  \___/  |_| |_| |___/
--			   __/ |
--			  |___/

	--pyanodon's industry
	['py-asphalt']							={r=042, g=042, b=042, a=127},	--Asphalt
	['py-iron-oxide']						={r=118, g=060, b=027, a=127},	--Iron oxide Tile
	['py-limestone']						={r=255, g=255, b=255, a=127},	--Limestone Tile
	['py-coal-tile']						={r=000, g=000, b=000, a=127},	--Coal Tile
	['py-iron']								={r=042, g=042, b=093, a=127},	--Iron Tile
	['py-steel']							={r=013, g=013, b=013, a=127},	--Steel Tile
	['py-aluminium']						={r=071, g=078, b=107, a=127},	--Aluminium Tile
	['py-nexelit']							={r=000, g=016, b=053, a=127},	--Nexelit Tile
	['py-tank-1000']						={r=255, g=171, b=000, a=127},	--Tank 1000L
	['py-tank-1500']						={r=122, g=115, b=027, a=127},	--Tank 1500L
	['py-tank-3000']						={r=144, g=144, b=180, a=127},	--Tank 3000L
	['py-tank-4000']						={r=082, g=060, b=000, a=127},	--Tank 4000L
	['py-tank-5000']						={r=071, g=053, b=000, a=127},	--Tank 5000L
	['py-tank-6500']						={r=255, g=233, b=208, a=127},	--Tank 6500L
	['py-tank-7000']						={r=076, g=076, b=047, a=127},	--Tank 7000L
	['py-tank-8000']						={r=076, g=076, b=047, a=127},	--Tank 8000L
	['py-tank-9000']						={r=255, g=197, b=091, a=127},	--PyTank 9000
	['py-tank-10000']						={r=255, g=222, b=164, a=127},	--PyTank 10000
	['py-check-valve']						={r=213, g=188, b=000, a=127},	--Check Valve
	['py-overflow-valve']					={r=228, g=027, b=027, a=127},	--Overflow Valve
	['py-underflow-valve']					={r=000, g=000, b=027, a=127},	--Underflow Valve
	['niobium-pipe']						={r=226, g=229, b=255, a=127},	--Niobum pipe
	['niobium-pipe-to-ground']				={r=226, g=229, b=255, a=127},  --Niobum underground pipe
	['wood-fence']							={r=200, g=066, b=000, a=127},	--Wooden fence
	['concrete-wall']						={r=087, g=084, b=091, a=127},	--Concrete wall
	['accumulator-mk01']					={r=016, g=053, b=118, a=127},	--Nexelit-powered Accumulator MK01
	['accumulator-mk02']					={r=016, g=106, b=118, a=127},	--Nexelit-powered Accumulator MK02
	['py-local-radar']						={r=149, g=117, b=120, a=127},	--Local Radar
	['megadar']								={r=178, g=226, b=226, a=127},	--Megadar
	['py-burner']							={r=127, g=033, b=000, a=127},	--Burner
	['py-sinkhole']							={r=226, g=226, b=226, a=127},	--Py-Sinkhole
	['py-gas-vent']							={r=106, g=109, b=106, a=127},	--Py-GasVent
	['py-warehouse-basic']					={r=220, g=195, b=155, a=127},	--Warehouse
	['py-warehouse-passive-provider']		={r=255, g=000, b=033, a=127},	--Passive Provider Warehouse
	['py-warehouse-storage']				={r=255, g=255, b=000, a=127},	--Storage Warehouse
	['py-warehouse-active-provider']		={r=106, g=000, b=229, a=127},	--Active Provider Warehouse
	['py-warehouse-requester']				={r=000, g=076, b=237, a=127},	--Requester Warehouse
	['py-warehouse-buffer']					={r=040, g=220, b=040, a=127},	--Buffer Warehouse
	['py-storehouse-basic']					={r=220, g=220, b=220, a=127},	--Storehouse
	['py-storehouse-passive-provider']		={r=255, g=000, b=033, a=127},	--Passive Provider Storehouse
	['py-storehouse-storage']				={r=255, g=255, b=000, a=127},	--Storage Storehouse
	['py-storehouse-active-provider']		={r=106, g=000, b=229, a=127},	--Active Provider Storehouse
	['py-storehouse-requester']				={r=000, g=076, b=237, a=127},	--Requester Storehouse
	['py-storehouse-buffer']				={r=040, g=220, b=040, a=127},	--Buffer Storehouse
	['py-shed-basic']						={r=053, g=053, b=097, a=127},	--Shed
	['py-shed-passive-provider']			={r=255, g=000, b=033, a=127},	--Passive Provider Shed
	['py-shed-storage']						={r=255, g=255, b=000, a=127},	--Storage Shed
	['py-shed-active-provider']				={r=106, g=000, b=229, a=127},	--Active Provider Shed
	['py-shed-requester']					={r=000, g=076, b=237, a=127},	--Requester Shed
	['py-shed-buffer']						={r=040, g=220, b=040, a=127},	--Buffer Shed
	['py-construction-robot-01']			={r=255, g=113, b=000, a=127},	-- Construction Pynobot MK01
	['py-logistic-robot-01']				={r=135, g=000, b=000, a=127},	--Cargo Pynobot MK01
	['py-roboport-mk01']					={r=000, g=029, b=255, a=127},	-- Py Roboport MK01
	['poorman-wood-fence']					={r=087, g=040, b=000, a=127},	--Poor wood fence

	--pyanodon's coal processing
	['coke']								={r=025, g=025, b=025, a=127},	--Coke
	['iron-oxide']							={r=215, g=044, b=000, a=127},	--Iron Oxide
	['ash']									={r=240, g=240, b=240, a=127},	--Ash
	['active-carbon']						={r=000, g=000, b=000, a=127},	--Activated Carbon
	['zinc-chloride']						={r=255, g=240, b=197, a=127},	--Zinc Chloride
	['treated-wood']						={r=142, g=076, b=000, a=127},	--Treated wood
	['tailings-dust']						={r=000, g=000, b=000, a=127},	--Tailings dust
	['nichrome']							={r=100, g=100, b=100, a=127},	--Nichrome
	['chromium']							={r=178, g=178, b=178, a=127},	--Chromium
	['soil']								={r=160, g=055, b=000, a=127},	--Soil
	['drill-head']							={r=049, g=049, b=049, a=127},	--Drill head
	['nexelit-ore']							={r=113, g=197, b=255, a=127},	--Raw Nexelit
	['sand']								={r=255, g=171, b=087, a=127},	--Sand
	['limestone']							={r=233, g=248, b=244, a=127},	--Limestone
	['organics']							={r=197, g=124, b=036, a=127},	--Organic matter
	['coarse']								={r=109, g=040, b=000, a=127},	--Coarse fraction
	['rich-dust']							={r=010, g=010, b=020, a=127},	--Rich dust
	['coal-dust']							={r=131, g=131, b=131, a=127},	--Coal dust
	['pure-sand']							={r=255, g=197, b=124, a=127},	--Pure sand
	['gravel']								={r=215, g=215, b=215, a=127},	--Gravel
	['chromite-sand']						={r=058, g=058, b=058, a=127},	--Chromite Sand
	['sand-casting']						={r=215, g=138, b=066, a=127},	--Sand Casting
	['nexelit-plate']						={r=087, g=211, b=255, a=127},	--Nexelit Plate
	['lithium-peroxide']					={r=220, g=220, b=220, a=127},	--Lithium Peroxide
	['nexelit-cartridge']					={r=000, g=197, b=255, a=127},	--Infused Nexelit Cartridge
	['saturated-nexelit-cartridge']			={r=040, g=157, b=255, a=127},	--Saturated Nexelit Cartridge
	['lime']								={r=255, g=255, b=255, a=127},	--Lime
	['fuelrod-mk01']						={r=000, g=200, b=255, a=127},	--FuelRod MK01
	['fawogae']								={r=233, g=117, b=029, a=127},	--Fawogae
	['fawogae-substrate']					={r=255, g=000, b=025, a=127},	--Fawogae Substrate
	['flask']								={r=255, g=255, b=255, a=127},	--Glassware
	['bonemeal']							={r=138, g=095, b=073, a=127},	--Bone meal
	['raw-borax']							={r=211, g=240, b=255, a=127},	--Raw Borax
	['borax']								={r=255, g=255, b=255, a=127},	--Borax
	['ralesia']								={r=255, g=127, b=000, a=127},	--Ralesia
	['rich-clay']							={r=255, g=160, b=211, a=127},	--Rich clay
	['ground-sample01']						={r=051, g=076, b=018, a=127},	--Ground Sample 01
	['bio-sample01']						={r=220, g=255, b=255, a=127},	--Biological Sample 01
	['alien-sample01']						={r=255, g=255, b=255, a=127},	--Alien Sample 01
	['equipment-chassi']					={r=204, g=175, b=109, a=127},	--Equipment Chassi
	['lab-instrument']						={r=113, g=076, b=000, a=127},	--Laboratory Instrument
	['lens']								={r=142, g=055, b=255, a=127},	--Optical Set
	['boron-trioxide']						={r=255, g=255, b=255, a=127},	--Boron trioxide
	['ralesia-seeds']						={r=000, g=175, b=142, a=127},	--Ralesia Seeds
	['niobium-ore']							={r=131, g=197, b=255, a=127},	--Niobium ore
	['niobium-powder']						={r=178, g=222, b=226, a=127},	--Niobium powder
	['niobium-dust']						={r=178, g=222, b=226, a=127},	--Niobium dust
	['niobium-concentrate']					={r=058, g=091, b=160, a=127},	--Niobium Concentrate
	['mukmoux-fat']							={r=208, g=022, b=025, a=127},	--Lard
	['niobium-oxide']						={r=033, g=098, b=146, a=127},	--Niobium Oxide
	['niobium-plate']						={r=230, g=230, b=230, a=127},	--Niobium Plate
--	['rare-earth-ore']						={r=   , g=   , b=   , a=127},	--Rare Earth Element ore
--	['rare-earth-powder']					={r=   , g=   , b=   , a=127},	--Rare Earth Element Powder
	['rare-earth-dust']						={r=047, g=047, b=047, a=127},	--Rare Earth Element Dust
	['glass-core']							={r=255, g=255, b=215, a=127},	--Glass core
	['cladding']							={r=150, g=150, b=150, a=127},	--Cladding
	['cladded-core']						={r=237, g=237, b=237, a=127},	--Cladded core
	['kevlar']								={r=255, g=219, b=044, a=127},	--Kevlar
	['ppd']									={r=255, g=178, b=000, a=127},	--PPD - Para-phenylenediamine
	['kevlar-coating']						={r=255, g=182, b=044, a=127},	--Kevlar Coating
	['nbfe-alloy']							={r=138, g=178, b=189, a=127},	--Nb-Fe Alloy
	['nbfe-coating']						={r=040, g=069, b=073, a=127},	--NbFe Coating
	['copper-coating']						={r=255, g=091, b=000, a=127},	--Copper coating
	['optical-fiber']						={r=255, g=055, b=000, a=127},	--Optical fiber
	['biofilm']								={r=255, g=237, b=237, a=127},	--Biofilm
	['filtration-media']					={r=091, g=091, b=073, a=127},	--Filtration Media
	['coal-briquette']						={r=015, g=025, b=142, a=127},	--Coal Briquette
	['calcium-carbide']						={r=211, g=211, b=211, a=127},	--Calcium Carbide
	['crushed-iron']						={r=000, g=066, b=127, a=127},	--Crushed Iron
	['crushed-copper']						={r=255, g=033, b=000, a=127},	--Crushed Copper
--	['crushed-bauxite']						={r=   , g=   , b=   , a=127},	--Crushed Bauxite
--	['crushed-gold']						={r=   , g=   , b=   , a=127},	--Crushed Gold
--	['crushed-quartz']						={r=   , g=   , b=   , a=127},	--Crushed Quartz
--	['crushed-lead']						={r=   , g=   , b=   , a=127},	--Crushed Lead
--	['crushed-nickel']						={r=   , g=   , b=   , a=127},	--Crushed Nickel
--	['crushed-rutile']						={r=   , g=   , b=   , a=127},	--Crushed Rutile
--	['crushed-silver']						={r=   , g=   , b=   , a=127},	--Crushed Silver
--	['crushed-tin']							={r=   , g=   , b=   , a=127},	--Crushed Tin
--	['crushed-tungsten']					={r=   , g=   , b=   , a=127},	--Crushed Tungsten
--	['crushed-zinc']						={r=   , g=   , b=   , a=127},	--Crushed Zinc
	['log']									={r=175, g=055, b=000, a=127},	--Log

	['empty-gas-canister']					={r=000, g=124, b=240, a=127},	--Empty gas canister
	['filled-methanol-gas-canister']		={r=000, g=124, b=240, a=127},	--Filled methanol canister

	['coal-gas']							={r=255, g=211, b=157, a=127},	--Coal gas
	['tar']									={r=000, g=033, b=022, a=127},	--Tar
	['syngas']								={r=193, g=127, b=000, a=127},	--SynGas
	['creosote']							={r=131, g=080, b=000, a=127},	--Creosote
	['refsyngas']							={r=193, g=051, b=000, a=127},	--Refined SynGas
	['acidgas']								={r=255, g=255, b=120, a=127},	--Acid Gas
	['carbon-dioxide']						={r=200, g=233, b=237, a=127},	--Carbon Dioxide
	['methanol']							={r=106, g=255, b=117, a=127},	--Methanol
	['dirty-water']							={r=087, g=029, b=000, a=127},	--Tailings
	['flue-gas']							={r=230, g=230, b=230, a=127},	--Flue Gas
	['combustion-mixture1']					={r=178, g=073, b=000, a=127},	--Combustion Mixture
	['water-saline']						={r=255, g=229, b=229, a=127},	--Saline water
	['olefin']								={r=189, g=091, b=189, a=127},	--Olefins
	['diesel']								={r=175, g=055, b=000, a=127},	--Diesel
	['gasoline']							={r=255, g=215, b=033, a=127},	--Gasoline
	['aromatics']							={r=255, g=109, b=102, a=127},	--Aromatics
	['anthraquinone']						={r=255, g=168, b=255, a=127},	--Anthraquinone
	['hydrogen-peroxide']					={r=200, g=255, b=240, a=127},	--Hydrogen Peroxide
	['slacked-lime']						={r=240, g=240, b=240, a=127},	--Slacked Lime
	['coal-slurry']							={r=033, g=033, b=033, a=127},	--Coal-Water Slurry Fuel
	['diborane']							={r=234, g=234, b=234, a=127},	--Diborane
	['boric-acid']							={r=200, g=219, b=219, a=127},	--Boric acid
	['oleochemicals']						={r=255, g=200, b=000, a=127},	--Oleochemicals
	['glycerol']							={r=255, g=226, b=138, a=127},	--Glycerol
	['organic-solvent']						={r=109, g=255, b=189, a=127},	--Organic Solvent
	['niobium-complex']						={r=193, g=226, b=255, a=127},	--Niobium Complex
	['rare-earth-mud']						={r=040, g=011, b=011, a=127},	--Rare Earth Mud
	['tpa']									={r=255, g=208, b=000, a=127},	--TPA - Terephthaloyl cloride
	['acetylene']							={r=255, g=109, b=200, a=127},	--Acetylene
--	['distilator']							={r=   , g=   , b=   , a=127},	--Destructive Distillation Column
--	['distilator-mk02']						={r=   , g=   , b=   , a=127},	--Destructive Distillation Column MK02
--	['distilator-mk03']						={r=   , g=   , b=   , a=127},	--Destructive Distillation Column MK03
--	['distilator-mk04']						={r=   , g=   , b=   , a=127},	--Destructive Distillation Column MK04
--	['gasifier']							={r=   , g=   , b=   , a=127},	--Gasifier
--	['gasifier-mk02']						={r=   , g=   , b=   , a=127},	--Gasifier MK02
--	['gasifier-mk03']						={r=   , g=   , b=   , a=127},	--Gasifier MK03
--	['gasifier-mk04']						={r=   , g=   , b=   , a=127},	--Gasifier MK04
--	['tar-processing-unit']					={r=   , g=   , b=   , a=127},	--Tar Processing Unit
--	['tar-processing-unit-mk02']			={r=   , g=   , b=   , a=127},	--Tar Processing Unit MK02
--	['tar-processing-unit-mk03']			={r=   , g=   , b=   , a=127},	--Tar Processing Unit MK03
--	['tar-processing-unit-mk04']			={r=   , g=   , b=   , a=127},	--Tar Processing Unit MK04
--	['gasturbinemk01']						={r=   , g=   , b=   , a=127},	--Combustion Turbine MK01
--	['gasturbinemk02']						={r=   , g=   , b=   , a=127},	--Combustion Turbine MK02
--	['gasturbinemk03']						={r=   , g=   , b=   , a=127},	--Combustion Turbine MK03
--	['carbon-filter']						={r=   , g=   , b=   , a=127},	--Filter
--	['carbon-filter-mk02']					={r=   , g=   , b=   , a=127},	--Filter MK02
--	['carbon-filter-mk03']					={r=   , g=   , b=   , a=127},	--Filter MK03
--	['carbon-filter-mk04']					={r=   , g=   , b=   , a=127},	--Filter MK04
--	['rectisol']							={r=   , g=   , b=   , a=127},	--Rectisol
--	['rectisol-mk02']						={r=   , g=   , b=   , a=127},	--Rectisol MK02
--	['rectisol-mk03']						={r=   , g=   , b=   , a=127},	--Rectisol MK03
--	['rectisol-mk04']						={r=   , g=   , b=   , a=127},	--Rectisol MK04
--	['methanol-reactor']					={r=   , g=   , b=   , a=127},	--Methanol Reactor
--	['methanol-reactor-mk02']				={r=   , g=   , b=   , a=127},	--Methanol Reactor MK02
--	['methanol-reactor-mk03']				={r=   , g=   , b=   , a=127},	--Methanol Reactor MK03
--	['methanol-reactor-mk04']				={r=   , g=   , b=   , a=127},	--Methanol Reactor MK04
--	['tailings-pond']						={r=   , g=   , b=   , a=127},	--Tailings Pond
--	['tailings-pond-spinner']				={r=   , g=   , b=   , a=127},	--Tailings Pond Spinner
--	['tailings-pond-sprite']				={r=   , g=   , b=   , a=127},	--Tailings pond sprite sheet
--	['quenching-tower']						={r=   , g=   , b=   , a=127},	--Quenching Tower
--	['quenching-tower-mk02']				={r=   , g=   , b=   , a=127},	--Quenching Tower MK02
--	['quenching-tower-mk03']				={r=   , g=   , b=   , a=127},	--Quenching Tower MK03
--	['quenching-tower-mk04']				={r=   , g=   , b=   , a=127},	--Quenching Tower MK04
--	['hpf']									={r=   , g=   , b=   , a=127},	--High-pressure Furnace
--	['hpf-mk02']							={r=   , g=   , b=   , a=127},	--High-pressure Furnace MK02
--	['hpf-mk03']							={r=   , g=   , b=   , a=127},	--High-pressure Furnace MK03
--	['hpf-mk04']							={r=   , g=   , b=   , a=127},	--High-pressure Furnace MK04
--	['power-house']							={r=   , g=   , b=   , a=127},	--Power House
--	['power-house-mk02']					={r=   , g=   , b=   , a=127},	--Power House MK02
--	['power-house-mk03']					={r=   , g=   , b=   , a=127},	--Power House MK03
--	['power-house-mk04']					={r=   , g=   , b=   , a=127},	--Power House MK04
--	['cooling-tower-mk01']					={r=   , g=   , b=   , a=127},	--Cooling Tower MK01
--	['cooling-tower-mk02']					={r=   , g=   , b=   , a=127},	--Cooling Tower MK02
--	['evaporator']							={r=   , g=   , b=   , a=127},	--Evaporator
--	['evaporator-mk02']						={r=   , g=   , b=   , a=127},	--Evaporator MK02
--	['evaporator-mk03']						={r=   , g=   , b=   , a=127},	--Evaporator MK03
--	['evaporator-mk04']						={r=   , g=   , b=   , a=127},	--Evaporator MK04
--	['desulfurizator-unit']					={r=   , g=   , b=   , a=127},	--Desulfurizator Unit
--	['desulfurizator-unit-mk02']			={r=   , g=   , b=   , a=127},	--Desulfurizator Unit MK02
--	['desulfurizator-unit-mk03']			={r=   , g=   , b=   , a=127},	--Desulfurizator Unit MK03
--	['desulfurizator-unit-mk04']			={r=   , g=   , b=   , a=127},	--Desulfurizator Unit MK04
--	['olefin-plant']						={r=   , g=   , b=   , a=127},	--Olefin Plant
--	['olefin-plant-mk02']					={r=   , g=   , b=   , a=127},	--Olefin Plant MK02
--	['olefin-plant-mk03']					={r=   , g=   , b=   , a=127},	--Olefin Plant MK03
--	['olefin-plant-mk04']					={r=   , g=   , b=   , a=127},	--Olefin Plant MK04
--	['soil-extractormk01']					={r=   , g=   , b=   , a=127},	--Soil Extractor
--	['soil-extractormk02']					={r=   , g=   , b=   , a=127},	--Soil Extractor MK02
--	['soil-extractormk03']					={r=   , g=   , b=   , a=127},	--Soil Extractor MK03
--	['soil-extractormk04']					={r=   , g=   , b=   , a=127},	--Soil Extractor MK04
--	['ground-borer']						={r=   , g=   , b=   , a=127},	--Ground Borer
--	['fts-reactor']							={r=   , g=   , b=   , a=127},	--FTS reactor
--	['fts-reactor-mk02']					={r=   , g=   , b=   , a=127},	--FTS reactor MK02
--	['fts-reactor-mk03']					={r=   , g=   , b=   , a=127},	--FTS reactor MK03
--	['fts-reactor-mk04']					={r=   , g=   , b=   , a=127},	--FTS reactor MK04
--	['solid-separator']						={r=   , g=   , b=   , a=127},	--Solid Separator
--	['solid-separator-mk02']				={r=   , g=   , b=   , a=127},	--Solid Separator MK02
--	['solid-separator-mk03']				={r=   , g=   , b=   , a=127},	--Solid Separator MK03
--	['solid-separator-mk04']				={r=   , g=   , b=   , a=127},	--Solid Separator MK04
--	['washer']								={r=   , g=   , b=   , a=127},	--Washer
--	['washer-mk02']							={r=   , g=   , b=   , a=127},	--Washer MK02
--	['washer-mk03']							={r=   , g=   , b=   , a=127},	--Washer MK03
--	['washer-mk04']							={r=   , g=   , b=   , a=127},	--Washer MK04
--	['classifier']							={r=   , g=   , b=   , a=127},	--Classifier
--	['classifier-mk02']						={r=   , g=   , b=   , a=127},	--Classifier MK02
--	['classifier-mk03']						={r=   , g=   , b=   , a=127},	--Classifier MK03
--	['classifier-mk04']						={r=   , g=   , b=   , a=127},	--Classifier MK04
--	['advanced-foundry-mk01']				={r=   , g=   , b=   , a=127},	--Advanced Foundry
--	['advanced-foundry-mk02']				={r=   , g=   , b=   , a=127},	--Advanced Foundry MK02
--	['advanced-foundry-mk03']				={r=   , g=   , b=   , a=127},	--Advanced Foundry MK03
--	['advanced-foundry-mk04']				={r=   , g=   , b=   , a=127},	--Advanced Foundry MK04
--	['co2-absorber']						={r=   , g=   , b=   , a=127},	--CO2 Absorber
--	['fluid-separator']						={r=   , g=   , b=   , a=127},	--Fluid Separator
--	['fluid-separator-mk02']				={r=   , g=   , b=   , a=127},	--Fluid Separator MK02
--	['fluid-separator-mk03']				={r=   , g=   , b=   , a=127},	--Fluid Separator MK03
--	['fluid-separator-mk04']				={r=   , g=   , b=   , a=127},	--Fluid Separator MK04
--	['fawogae-plantation']					={r=   , g=   , b=   , a=127},	--Fawogae Plantation
--	['fawogae-plantation-mk02']				={r=   , g=   , b=   , a=127},	--Fawogae Plantation MK02
--	['fawogae-plantation-mk03']				={r=   , g=   , b=   , a=127},	--Fawogae Plantation MK03
--	['fawogae-plantation-mk04']				={r=   , g=   , b=   , a=127},	--Fawogae Plantation MK04
--	['ulric-corral']						={r=   , g=   , b=   , a=127},	--Ulric Corral
--	['borax-mine']							={r=   , g=   , b=   , a=127},	--Crystal Mine
--	['borax-mine-mk02']						={r=   , g=   , b=   , a=127},	--Crystal Mine MK02
--	['borax-mine-mk03']						={r=   , g=   , b=   , a=127},	--Crystal Mine MK03
--	['borax-mine-mk04']						={r=   , g=   , b=   , a=127},	--Crystal Mine MK04
--	['ralesia-plantation']					={r=   , g=   , b=   , a=127},	--Ralesia Plantation MK01
--	['ralesia-plantation-mk02']				={r=   , g=   , b=   , a=127},	--Ralesia Plantation MK02
--	['ralesia-plantation-mk03']				={r=   , g=   , b=   , a=127},	--Ralesia Plantation MK03
--	['ralesia-plantation-mk04']				={r=   , g=   , b=   , a=127},	--Ralesia Plantation MK04
--	['niobium-mine']						={r=   , g=   , b=   , a=127},	--Niobium Mine
--	['jaw-crusher']							={r=   , g=   , b=   , a=127},	--Jaw Crusher
--	['jaw-crusher-mk02']					={r=   , g=   , b=   , a=127},	--Jaw Crusher MK02
--	['jaw-crusher-mk03']					={r=   , g=   , b=   , a=127},	--Jaw Crusher MK03
--	['jaw-crusher-mk04']					={r=   , g=   , b=   , a=127},	--Jaw Crusher MK04
--	['ball-mill-mk01']						={r=   , g=   , b=   , a=127},	--Ball Mill
--	['ball-mill-mk02']						={r=   , g=   , b=   , a=127},	--Ball Mill MK02
--	['ball-mill-mk03']						={r=   , g=   , b=   , a=127},	--Ball Mill MK03
--	['ball-mill-mk04']						={r=   , g=   , b=   , a=127},	--Ball Mill MK04
--	['mukmoux-pasture']						={r=   , g=   , b=   , a=127},	--Mukmoux Pasture
--	['rare-earth-extractor']				={r=   , g=   , b=   , a=127},	--Rare Earth Extractor
--	['automated-factory-mk01']				={r=   , g=   , b=   , a=127},	--Automated Factory
--	['automated-factory-mk02']				={r=   , g=   , b=   , a=127},	--Automated Factory MK02
--	['automated-factory-mk03']				={r=   , g=   , b=   , a=127},	--Automated Factory MK03
--	['automated-factory-mk04']				={r=   , g=   , b=   , a=127},	--Automated Factory MK04
--	['sand-extractor']						={r=   , g=   , b=   , a=127},	--Sand Extractor
--	['sand-extractor-mk02']					={r=   , g=   , b=   , a=127},	--Sand Extractor MK02
--	['sand-extractor-mk03']					={r=   , g=   , b=   , a=127},	--Sand Extractor MK03
--	['sand-extractor-mk04']					={r=   , g=   , b=   , a=127},	--Sand Extractor MK04
--	['botanical-nursery']					={r=   , g=   , b=   , a=127},	--Botanical Nursery
--	['botanical-nursery-mk02']				={r=   , g=   , b=   , a=127},	--Botanical Nursery MK02
--	['botanical-nursery-mk03']				={r=   , g=   , b=   , a=127},	--Botanical Nursery MK03
--	['botanical-nursery-mk04']				={r=   , g=   , b=   , a=127},	--Botanical Nursery MK04
--	['wpu']									={r=   , g=   , b=   , a=127},	--Wood Processing Unit
--	['wpu-mk02']							={r=   , g=   , b=   , a=127},	--Wood Processing Unit MK02
--	['wpu-mk03']							={r=   , g=   , b=   , a=127},	--Wood Processing Unit MK03
--	['wpu-mk04']							={r=   , g=   , b=   , a=127},	--Wood Processing Unit MK04

	--pyanodon's raw ore
	['duralumin']							={r=066, g=146, b=226, a=127},	--Duralumin
	['ore-quartz']							={r=189, g=255, b=237, a=127},	--Quartz Ore
	['ore-lead']							={r=051, g=051, b=051, a=127},	--Lead Ore
	['quartz-mine']							={r=073, g=240, b=073, a=127},	--Quartz Mine
	['crushed-quartz']						={r=255, g=255, b=255, a=127},	--Crushed Quartz
	['powdered-quartz']						={r=255, g=255, b=255, a=127},	--Powdered Quartz
	['sodium-carbonate']					={r=073, g=255, b=102, a=127},	--Sodium Carbonate
	['glass']								={r=233, g=233, b=233, a=127},	--Glass
	['starch']								={r=255, g=200, b=044, a=127},	--Starch
	['powdered-ralesia-seeds']				={r=098, g=135, b=051, a=127},	--Powdered Ralesia Seeds
	['purified-quartz']						={r=255, g=255, b=255, a=127},	--Purified Quartz
	['high-grade-quartz']					={r=255, g=255, b=255, a=127},	--High Grade Quartz
	['aluminium-plate']						={r=244, g=244, b=244, a=127},	--Aluminium Plate
	['ore-aluminium']						={r=217, g=144, b=000, a=127},	--Aluminium Ore
	['powdered-aluminium']					={r=255, g=186, b=069, a=127},	--Powdered Aluminium
	['sodium-aluminate']					={r=255, g=120, b=000, a=127},	--Sodium Aluminate
	['crystalized-sodium-aluminate']		={r=255, g=153, b=040, a=127},	--Crystalized Sodium Aluminate
	['high-grade-alumina']					={r=255, g=171, b=047, a=127},	--High Grade Alumina
	['sintered-aluminium']					={r=047, g=036, b=000, a=127},	--Sintered Aluminium
	['reduced-aluminium']					={r=146, g=098, b=062, a=127},	--Reduced 99.9% Aluminium
	['ore-chromium']						={r=233, g=051, b=000, a=127},	--Chromium Ore
	['grade-1-chromite']					={r=255, g=127, b=000, a=127},	--Grade 1 Chromite
	['grade-2-chromite']					={r=219, g=106, b=000, a=127},	--Grade 2 Chromite
	['grade-3-chromite']					={r=255, g=131, b=000, a=127},	--Grade 3 Chromite
	['grade-4-chromite']					={r=255, g=186, b=044, a=127},	--Grade 4 Chromite
	['chromite-rejects']					={r=255, g=175, b=000, a=127},	--Chromite Rejects
	['high-chromite']						={r=106, g=040, b=000, a=127},	--High Chromite
	['processed-chromite']					={r=219, g=055, b=000, a=127},	--Processed Chromite
	['sintered-chromium']					={r=000, g=000, b=087, a=127},	--Sintered Chromium
	['reduced-chromium']					={r=182, g=182, b=208, a=127},	--Reduced 99.9% Chromium
	['ore-titanium']						={r=055, g=000, b=098, a=127},	--Titanium Ore
	['salt']								={r=255, g=255, b=255, a=127},	--Salt
	['sodium-hydroxide']					={r=240, g=240, b=240, a=127},	--Sodium Hydroxide
	['sodium-bisulfate']					={r=066, g=000, b=255, a=127},	--Sodium Bisulfate
	['sodium-sulfate']						={r=240, g=222, b=091, a=127},	--Sodium Sulfate
	['p2s5']								={r=091, g=087, b=087, a=127},	--Phosphorous Pentasulfide
	['pyrite']								={r=229, g=142, b=000, a=127},	--Pyrite
	['gold-concentrate']					={r=255, g=189, b=000, a=127},	--Gold Concentrate
	['gold-precipitate']					={r=255, g=171, b=000, a=127},	--Gold Precipitate
	['gold-precipitate-2']					={r=255, g=171, b=000, a=127},	--2nd Gold Precipitate
	['purified-gold']						={r=255, g=186, b=040, a=127},	--Purified Gold
	['gold-plate']							={r=255, g=160, b=000, a=127},	--Gold Plate
	['grade-1-copper']						={r=208, g=040, b=000, a=127},	--Grade 1 Copper
	['grade-2-copper']						={r=251, g=044, b=036, a=127},	--Grade 2 Copper
	['grade-3-copper']						={r=255, g=033, b=000, a=127},	--Grade 3 Copper
	['grade-4-copper']						={r=255, g=029, b=000, a=127},	--Grade 4 Copper
	['low-grade-rejects']					={r=106, g=033, b=000, a=127},	--Low Grade Rejects
	['low-grade-copper']					={r=255, g=051, b=000, a=127},	--Low Grade Copper
	['high-grade-copper']					={r=255, g=062, b=000, a=127},	--High Grade Copper
	['copper-low-dust']						={r=215, g=080, b=000, a=127},	--Copper Low Dust
	['copper-rejects']						={r=215, g=106, b=000, a=127},	--Copper Rejects
	['sintered-copper']						={r=226, g=000, b=000, a=127},	--Sintered Copper
	['reduced-copper']						={r=255, g=084, b=000, a=127},	--Reduced 99.9% Copper
	['redhot-coke']							={r=204, g=000, b=000, a=127},	--Red Hot Coke
	['processed-iron-ore']					={r=000, g=055, b=138, a=127},	--Processed Iron Ore
	['grade-1-iron']						={r=000, g=091, b=138, a=127},	--Grade 1 Iron
	['grade-2-iron']						={r=040, g=138, b=200, a=127},	--Grade 2 Iron
	['grade-3-iron']						={r=000, g=084, b=135, a=127},	--Grade 3 Iron
	['grade-4-iron']						={r=000, g=040, b=095, a=127},	--Grade 4 iron
	['unslimed-iron']						={r=000, g=011, b=047, a=127},	--Unslimed Iron
	['high-grade-iron']						={r=025, g=098, b=153, a=127},	--High Grade Iron
	['iron-dust-concentrate']				={r=131, g=160, b=255, a=127},	--Iron Dust Concentrate
	['iron-concentrate']					={r=000, g=127, b=189, a=127},	--Iron Concentrate
	['iron-ore-dust']						={r=000, g=033, b=106, a=127},	--Iron Ore Dust
	['sintered-iron']						={r=000, g=102, b=189, a=127},	--Sintered Iron
	['reduced-iron']						={r=036, g=135, b=208, a=127},	--Reduced Iron
	['raw-coal']							={r=000, g=000, b=000, a=127},	--Raw Coal
	['crushed-coal']						={r=000, g=000, b=000, a=127},	--Crushed Coal
	['coarse-coal']							={r=033, g=000, b=000, a=127},	--Coarse Coal
	['grade-1-lead']						={r=036, g=036, b=036, a=127},	--Grade 1 Lead
	['grade-2-lead']						={r=073, g=076, b=109, a=127},	--Grade 2 Lead
	['grade-3-lead']						={r=020, g=020, b=020, a=127},	--Grade 3 Lead
	['grade-4-lead']						={r=067, g=067, b=067, a=127},	--Grade 4 Lead
	['lead-dust']							={r=033, g=033, b=033, a=127},	--Lead Dust
	['lead-refined-dust']					={r=033, g=033, b=033, a=127},	--Lead Refined Dust
	['lead-refined-dust-02']				={r=109, g=109, b=109, a=127},	--Lead Refined Dust 2
	['lead-refined-dust-03']				={r=204, g=204, b=204, a=127},	--Lead Refined Dust 3
	['sl-concentrate']						={r=040, g=040, b=040, a=127},	--Silver-lead Concentrate
	['high-grade-lead']						={r=051, g=051, b=051, a=127},	--High Grade Lead
	['high-grade-silver']					={r=220, g=220, b=220, a=127},	--High Grade Silver
	['lead-plate']							={r=109, g=109, b=109, a=127},	--Lead Plate
	['silver-plate']						={r=189, g=189, b=189, a=127},	--Silver Plate
	['sintered-lead']						={r=000, g=000, b=000, a=127},	--Sintered Lead
	['reduced-lead']						={r=011, g=011, b=011, a=127},	--Reduced Lead
	['sintered-silver']						={r=131, g=131, b=131, a=127},	--Sintered Silver
	['reduced-silver']						={r=215, g=215, b=215, a=127},	--Reduced Silver
	['clean-nexelit']						={r=000, g=142, b=255, a=127},	--Clean Nexelit
	['grade-1-nexelit']						={r=000, g=164, b=255, a=127},	--Grade 1 Nexelit
	['grade-2-nexelit']						={r=020, g=184, b=231, a=127},	--Grade 2 Nexelit
	['grade-3-nexelit']						={r=016, g=177, b=255, a=127},	--Grade 3 Nexelit
	['fine-nexelit-powder']					={r=025, g=168, b=255, a=127},	--Fine Nexelit Powder
	['nexelit-rejects']						={r=000, g=124, b=255, a=127},	--Nexelit Rejects
	['high-grade-nexelit']					={r=056, g=180, b=255, a=127},	--High Grade Nexelit
	['reduced-nexelit']						={r=000, g=149, b=255, a=127},	--Reduced Nexelit
	['sintered-nexelit']					={r=000, g=138, b=255, a=127},	--Sintered Nexelit
	['ore-nickel']							={r=033, g=106, b=069, a=127},	--Nickel Ore
	['grade-1-nickel']						={r=000, g=098, b=087, a=127},	--Grade 1 Nickel
	['grade-2-nickel']						={r=000, g=086, b=060, a=127},	--Grade 2 Nickel
	['grade-3-nickel']						={r=000, g=086, b=060, a=127},	--Grade 3 Nickel
	['grade-4-nickel']						={r=015, g=087, b=000, a=127},	--Grade 4 Nickel
	['nickel-rejects']						={r=000, g=113, b=000, a=127},	--Nickel Rejects
	['high-grade-nickel']					={r=053, g=151, b=115, a=127},	--High Grade Nickel
	['sintered-nickel']						={r=000, g=113, b=066, a=127},	--Sintered Nickel
	['reduced-nickel']						={r=000, g=098, b=036, a=127},	--Reduced Nickel
	['nickel-plate']						={r=000, g=124, b=135, a=127},	--Nickel Plate
	['ammonimum-chloride']					={r=255, g=189, b=146, a=127},	--Ammonium Chloride
	['sponge-iron']							={r=087, g=117, b=193, a=127},	--Sponge Iron
	['stainless-steel']						={r=098, g=175, b=255, a=127},	--Stainless Steel
	['super-steel']							={r=255, g=157, b=193, a=127},	--Super Steel
	['ore-tin']								={r=076, g=018, b=255, a=127},	--Tin Ore
	['grade-1-tin']							={r=029, g=000, b=255, a=127},	--Grade 1 Tin
	['grade-2-tin']							={r=067, g=035, b=184, a=127},	--Grade 2 Tin
	['grade-3-tin']							={r=067, g=035, b=184, a=127},	--Grade 3 Tin
	['grade-4-tin']							={r=015, g=000, b=222, a=127},	--Grade 4 Tin
	['tin-ore-rejects']						={r=040, g=018, b=146, a=127},	--Tin Ore Rejects
	['tin-dust']							={r=091, g=087, b=200, a=127},	--Tin Dust
	['tin-rejects']							={r=095, g=000, b=255, a=127},	--Tin Rejects
	['powdered-tin']						={r=106, g=113, b=229, a=127},	--Powdered Tin
	['tin-concentrate']						={r=025, g=033, b=200, a=127},	--Tin Concentrate
	['high-tin-concentrate']				={r=080, g=069, b=255, a=127},	--High Tin Concentrate
	['high-tin-mix']						={r=029, g=000, b=255, a=127},	--High Tin Mix
	['high-grade-tin']						={r=076, g=040, b=211, a=127},	--High Grade Tin
	['sintered-tin']						={r=011, g=000, b=189, a=127},	--Sintered Tin
	['reduced-tin']							={r=040, g=040, b=197, a=127},	--Reduced Tin
	['tin-plate']							={r=120, g=084, b=229, a=127},	--Tin plate
	['grade-1-ti']							={r=193, g=120, b=168, a=127},	--Grade 1 Titanium
	['grade-2-ti']							={r=199, g=137, b=184, a=127},	--Grade 2 Titanium
	['grade-3-ti']							={r=199, g=137, b=184, a=127},	--Grade 3 Titanium
	['grade-4-ti']							={r=146, g=000, b=120, a=127},	--Grade 4 Titanium
	['ti-rejects']							={r=233, g=033, b=219, a=127},	--Titanium Rejects
	['powdered-ti']							={r=117, g=113, b=229, a=127},	--Powdered Titanium
	['ti-enriched-dust']					={r=233, g=102, b=211, a=127},	--Titanium Enriched Dust
	['ti-residue']							={r=182, g=069, b=160, a=127},	--Titanium Residue
	['high-grade-ti-powder']				={r=189, g=062, b=135, a=127},	--High Grade Titanium Powder
	['concentrated-ti']						={r=157, g=055, b=135, a=127},	--Concentrated Titanium
	['high-grade-ti']						={r=220, g=160, b=220, a=127},	--High Grade Titanium
	['reduced-ti']							={r=215, g=182, b=197, a=127},	--Reduced Titanium
	['sintered-ti']							={r=109, g=044, b=098, a=127},	--Sintered Titanium
	['titanium-plate']						={r=189, g=149, b=186, a=127},	--Titanium plate
	['grade-1-u']							={r=000, g=255, b=000, a=127},	--Grade 1 Uranium
	['grade-2-u']							={r=078, g=255, b=097, a=127},	--Grade 2 Uranium
	['powdered-u']							={r=000, g=255, b=000, a=127},	--Powdered Uranium
	['20-u-powder']							={r=160, g=197, b=007, a=127},	--20% Uranium Powder
	['40-u-powder']							={r=160, g=197, b=007, a=127},	--40% Uranium Powder
	['70-u-powder']							={r=160, g=197, b=007, a=127},	--70% Uranium Powder
	['yellow-cake']							={r=255, g=215, b=000, a=127},	--Yellow Cake
	['fuelrod-mk02']						={r=051, g=211, b=000, a=127},	--FuelRod MK02
	['fuelrod-mk03']						={r=211, g=211, b=000, a=127},	--FuelRod MK03
	['fuelrod-mk04']						={r=255, g=117, b=000, a=127},	--FuelRod MK04
	['fuelrod-mk05']						={r=255, g=011, b=000, a=127},	--FuelRod MK05
	['uranium-fuel-cell-mk02']				={r=000, g=171, b=255, a=127},	--Uranium Fuel Cell MK02
	['uranium-fuel-cell-mk03']				={r=255, g=171, b=000, a=127},	--Uranium Fuel Cell MK03
	['uranium-fuel-cell-mk04']				={r=255, g=109, b=000, a=127},	--Uranium Fuel Cell MK04
	['uranium-fuel-cell-mk05']				={r=255, g=000, b=000, a=127},	--Uranium Fuel Cell MK05
	['ammonium-chloride']					={r=255, g=171, b=149, a=127},	--Ammonium Chloride
	['ore-zinc']							={r=073, g=197, b=080, a=127},	--Zinc Ore
	['grade-1-zinc']						={r=135, g=255, b=222, a=127},	--Grade 1 Zinc
	['grade-2-zinc']						={r=162, g=255, b=255, a=127},	--Grade 2 Zinc
	['grade-3-zinc']						={r=162, g=255, b=255, a=127},	--Grade 3 Zinc
	['grade-4-zinc']						={r=000, g=149, b=135, a=127},	--Grade 4 Zinc
	['powdered-zinc']						={r=149, g=255, b=219, a=127},	--Powdered Zinc
	['purified-zinc']						={r=149, g=255, b=219, a=127},	--Purified Zinc
	['concentrated-zinc']					={r=175, g=255, b=131, a=127},	--Zinc Concentrate
	['high-grade-zinc']						={r=182, g=255, b=255, a=127},	--High Grade Zinc
	['sintered-zinc']						={r=040, g=135, b=117, a=127},	--Sintered Zinc
	['reduced-zinc']						={r=106, g=233, b=197, a=127},	--Reduced Zinc
	['zinc-plate']							={r=080, g=255, b=255, a=127},	--Zinc plate
	['mega-drill-head']						={r=000, g=160, b=120, a=127},	--Mega Drill Head
	['tinned-cable']						={r=098, g=098, b=098, a=127},	--Tinned Cable
	['aramid']								={r=255, g=215, b=120, a=127},	--Aramid
	['solder']								={r=142, g=142, b=175, a=127},	--Solder

	['alamac']								={r=111, g=206, b=158, a=127},	--Alamac
	['aerofloat-15']						={r=000, g=020, b=056, a=127},	--Aerofloat-15
	['acid-solvent']						={r=107, g=255, b=255, a=127},	--Acid Solvent
	['cresylic-acid']						={r=211, g=000, b=000, a=127},	--Cresylic Acid
	['hydrogen']							={r=255, g=255, b=255, a=127},	--Hydrogen
	['chlorine']							={r=120, g=160, b=033, a=127},	--Chlorine
	['oxygen']								={r=133, g=000, b=000, a=127},	--Oxygen
	['nitrogen']							={r=067, g=100, b=217, a=127},	--Nitrogen
	['hydrogen-chloride']					={r=244, g=255, b=171, a=127},	--Hydrogen Chloride
	['quartz-pulp-01']						={r=242, g=231, b=255, a=127},	--Quartz Pulp 01
	['quartz-pulp-02']						={r=242, g=231, b=255, a=127},	--Quartz Pulp 02
	['prepared-quartz']						={r=242, g=231, b=255, a=127},	--Prepared Quartz
	['high-grade-quartz-pulp']				={r=242, g=231, b=255, a=127},	--High Grade Quartz Pulp
	['al-pulp-01']							={r=255, g=166, b=000, a=127},	--Aluminium Pulp 01
	['al-pulp-02']							={r=255, g=166, b=000, a=127},	--Aluminium Pulp 02
	['al-pulp-03']							={r=255, g=166, b=000, a=127},	--Aluminium Pulp 03
	['al-pulp-04']							={r=255, g=166, b=000, a=127},	--Aluminium Pulp 04
	['al-tailings']							={r=217, g=148, b=000, a=127},	--Aluminium tailings
	['chromite-pulp-01']					={r=255, g=062, b=000, a=127},	--Chromite Pulp 01
	['chromite-pulp-02']					={r=255, g=062, b=000, a=127},	--Chromite Pulp-02
	['chromite-pulp-03']					={r=255, g=062, b=000, a=127},	--Chromite Pulp-03
	['chromite-pulp-04']					={r=255, g=062, b=000, a=127},	--Chromite Pulp-04
	['chromite-pulp-05']					={r=255, g=062, b=000, a=127},	--Chromite Pulp-05
	['chromite-pulp-06']					={r=255, g=062, b=000, a=127},	--Chromite Pulp-06
	['chromite-pulp-07']					={r=255, g=062, b=000, a=127},	--Chromite Pulp-07
	['chromite-solution']					={r=055, g=189, b=219, a=127},	--Chromite Solution
	['chromite-mix']						={r=025, g=131, b=255, a=127},	--Chromite Mix
	['chromite-fines']						={r=073, g=182, b=219, a=127},	--Chromite Fines
	['chromite-concentrate']				={r=117, g=215, b=255, a=127},	--Chromite Concentrate
	['prepared-chromium']					={r=117, g=215, b=255, a=127},	--Prepared Chromium
	['chromium-rejects']					={r=113, g=127, b=062, a=127},	--Chromium Rejects
	['gold-solution']						={r=255, g=202, b=000, a=127},	--Gold Solution
	['purest-nitrogen-gas']					={r=067, g=100, b=217, a=127},	--Purest Nitrogen Gas
	['molten-chromium']						={r=208, g=208, b=208, a=127},	--Molten Chromium
	['molten-aluminium']					={r=208, g=208, b=208, a=127},	--Molten Aluminium
	['copper-pulp-01']						={r=255, g=148, b=000, a=127},	--Copper Pulp 01
	['copper-pulp-02']						={r=255, g=148, b=000, a=127},	--Copper Pulp-02
	['copper-pulp-03']						={r=255, g=148, b=000, a=127},	--Copper Pulp-03
	['copper-pulp-04']						={r=255, g=148, b=000, a=127},	--Copper Pulp-04
	['copper-solution']						={r=255, g=148, b=000, a=127},	--Copper Solution
	['copper-pregnant-solution']			={r=255, g=148, b=000, a=127},	--Copper Pregnant Solution
	['molten-copper']						={r=255, g=148, b=000, a=127},	--Molten Copper
	['coke-oven-gas']						={r=206, g=162, b=064, a=127},	--Coke Oven Gas
	['outlet-gas-01']						={r=255, g=177, b=060, a=127},	--Outlet Gas 01
	['outlet-gas-02']						={r=255, g=177, b=060, a=127},	--Outlet Gas 02
	['outlet-gas-03']						={r=255, g=177, b=060, a=127},	--Outlet Gas 03
	['outlet-gas-04']						={r=255, g=177, b=060, a=127},	--Outlet Gas 04
	['iron-pulp-01']						={r=007, g=040, b=084, a=127},	--Iron Pulp 01
	['iron-pulp-02']						={r=007, g=040, b=084, a=127},	--Iron Pulp-02
	['iron-pulp-03']						={r=007, g=040, b=084, a=127},	--Iron Pulp-03
	['iron-pulp-04']						={r=007, g=040, b=084, a=127},	--Iron Pulp-04
	['iron-pulp-05']						={r=007, g=040, b=084, a=127},	--Iron Pulp-05
	['iron-pulp-06']						={r=007, g=040, b=084, a=127},	--Iron Pulp-06
	['iron-pulp-07']						={r=007, g=040, b=084, a=127},	--Iron Pulp-07
	['iron-slime']							={r=007, g=040, b=084, a=127},	--Iron Slime
	['molten-iron']							={r=208, g=208, b=208, a=127},	--Molten Iron
	['xylenol']								={r=000, g=095, b=000, a=127},	--Xylenol
	['kerosene']							={r=255, g=226, b=000, a=127},	--Kerosene
	['petroleum-sulfonates']				={r=142, g=015, b=000, a=127},	--Petroleum Sulfonates
	['high-ash-fines']						={r=000, g=000, b=000, a=127},	--High Ash Fines
	['fines-pulp']							={r=000, g=000, b=000, a=127},	--Fines Pulp
	['thickened-coal-fines']				={r=000, g=000, b=000, a=127},	--Thickened Coal Fines
	['coal-fines']							={r=000, g=000, b=000, a=127},	--Coal Fines
	['conditioned-fines']					={r=000, g=000, b=000, a=127},	--Conditioned Fines
	['coal-pulp-01']						={r=000, g=000, b=000, a=127},	--Coal Pulp 01
	['coal-pulp-02']						={r=000, g=000, b=000, a=127},	--Coal Pulp 02
	['coal-pulp-03']						={r=000, g=000, b=000, a=127},	--Coal Pulp 03
	['coal-pulp-04']						={r=000, g=000, b=000, a=127},	--Coal Pulp 04
	['coal-pulp-05']						={r=000, g=000, b=000, a=127},	--Coal Pulp 05
	['coal-slime-overflow']					={r=000, g=000, b=000, a=127},	--Coal Slime Overflow
	['coal-under-pulp']						={r=000, g=000, b=000, a=127},	--Coal Under Pulp
	['slz-pulp-01']							={r=150, g=150, b=150, a=127},	--Silver-Lead-Zinc Pulp 01
	['slz-pulp-02']							={r=150, g=150, b=150, a=127},	--Silver-Lead-Zinc Pulp 02
	['z3-reagent']							={r=255, g=073, b=178, a=127},	--Z-3 Reagent
	['sl-01']								={r=150, g=150, b=150, a=127},	--Silver-Lead Solution 01
	['sl-02']								={r=150, g=150, b=150, a=127},	--Silver-Lead Solution 02
	['sl-03']								={r=150, g=150, b=150, a=127},	--Silver-Lead Solution 03
	['molten-lead']							={r=050, g=050, b=050, a=127},	--Molten Lead
	['molten-silver']						={r=208, g=208, b=208, a=127},	--Molten Silver
	['nexelit-pulp-01']						={r=029, g=182, b=255, a=127},	--Nexelit Pulp 01
	['nexelit-pulp-02']						={r=029, g=182, b=255, a=127},	--Nexelit Pulp 02
	['nexelit-pulp-03']						={r=029, g=182, b=255, a=127},	--Nexelit Pulp 03
	['nexelit-pulp-04']						={r=029, g=182, b=255, a=127},	--Nexelit Pulp 04
	['nexelit-refined-pulp']				={r=029, g=182, b=255, a=127},	--Nexelit Refined Pulp
	['nexelit-slurry']						={r=029, g=182, b=255, a=127},	--Nexelit Slurry
	['molten-nexelit']						={r=029, g=182, b=255, a=127},	--Molten Nexelit
	['armac-12']							={r=173, g=111, b=056, a=127},	--Armac 12
	['prepared-nickel-pulp']				={r=029, g=084, b=000, a=127},	--Prepared Nickel Pulp
	['nickel-pulp-01']						={r=029, g=084, b=000, a=127},	--Nickel Pulp 01
	['nickel-pulp-02']						={r=029, g=084, b=000, a=127},	--Nickel Pulp 02
	['nickel-pulp-03']						={r=029, g=084, b=000, a=127},	--Nickel Pulp 03
	['nickel-pulp-04']						={r=029, g=084, b=000, a=127},	--Nickel Pulp 04
	['nickel-overflow']						={r=029, g=084, b=000, a=127},	--Nickel Overflow
	['nickel-slime']						={r=029, g=084, b=000, a=127},	--Nickel Slime
	['nickel-tailings']						={r=029, g=084, b=000, a=127},	--Nickel Tailings
	['nickel-prepared-solution']			={r=029, g=084, b=000, a=127},	--Nickel Prepared Solution
	['molten-nickel']						={r=029, g=084, b=000, a=127},	--Molten Nickel
	['molten-steel']						={r=208, g=208, b=208, a=127},	--Molten Steel
	['molten-stainless-steel']				={r=208, g=208, b=208, a=127},	--Molten Stainless Steel
	['molten-super-steel']					={r=164, g=120, b=098, a=127},	--Molten Super Steel
	['mibc']								={r=098, g=208, b=255, a=127},	--(MIBC) Methyl Isobutyl Carbinol
	['tin-pulp-01']							={r=091, g=051, b=255, a=127},	--Tin Pulp 01
	['tin-pulp-02']							={r=091, g=051, b=255, a=127},	--Tin Pulp 02
	['tin-pulp-03']							={r=091, g=051, b=255, a=127},	--Tin Pulp 03
	['molten-tin']							={r=091, g=051, b=255, a=127},	--Molten Tin
	['tin-bottom-pulp']						={r=091, g=051, b=255, a=127},	--Tin Bottom Pulp
	['tin-middle-pulp']						={r=091, g=051, b=255, a=127},	--Tin Middle Pulp
	['tin-slime']							={r=091, g=051, b=255, a=127},	--Tin Slime
	['tin-slime-overflow']					={r=091, g=051, b=255, a=127},	--Tin Slime Overflow
	['tin-solution']						={r=091, g=051, b=255, a=127},	--Tin Solution
	['ti-pulp-01']							={r=255, g=206, b=255, a=127},	--Titanium Pulp 01
	['ti-pulp-02']							={r=255, g=206, b=255, a=127},	--Titanium Pulp 02
	['ti-pulp-03']							={r=255, g=206, b=255, a=127},	--Titanium Pulp 03
	['ti-pulp-04']							={r=255, g=206, b=255, a=127},	--Titanium Pulp 04
	['ti-pulp-05']							={r=255, g=206, b=255, a=127},	--Titanium Pulp 05
	['ti-pulp-06']							={r=255, g=206, b=255, a=127},	--Titanium Pulp 06
	['purified-ti-pulp']					={r=255, g=206, b=255, a=127},	--Purified Titanium Pulp
	['ti-overflow-waste']					={r=255, g=206, b=255, a=127},	--Titanium Overflow Waste
	['ti-solution']							={r=255, g=206, b=255, a=127},	--Titanium Solution
	['ti-solution-02']						={r=255, g=206, b=255, a=127},	--Titanium Solution 02
	['molten-titanium']						={r=255, g=206, b=255, a=127},	--Molten Titanium
	['u-pulp-01']							={r=098, g=255, b=062, a=127},	--Uranium Pulp 01
	['u-pulp-02']							={r=098, g=255, b=062, a=127},	--Uranium Pulp 02
	['u-pulp-03']							={r=098, g=255, b=062, a=127},	--Uranium Pulp 03
	['u-rich-pulp']							={r=098, g=255, b=062, a=127},	--Uranium Enriched Pulp
	['u-83']								={r=098, g=255, b=062, a=127},	--83% Uranium
	['u-81']								={r=098, g=255, b=062, a=127},	--81% Uranium
	['u-79']								={r=098, g=255, b=062, a=127},	--79% Uranium
	['u-75']								={r=098, g=255, b=062, a=127},	--75% Uranium
	['u-73']								={r=098, g=255, b=062, a=127},	--73% Uranium
	['u-70']								={r=098, g=255, b=062, a=127},	--70% Uranium
	['u-65']								={r=098, g=255, b=062, a=127},	--65% Uranium
	['u-50']								={r=098, g=255, b=062, a=127},	--50% Uranium
	['u-45']								={r=098, g=255, b=062, a=127},	--45% Uranium
	['u-43']								={r=098, g=255, b=062, a=127},	--43% Uranium
	['u-40']								={r=098, g=255, b=062, a=127},	--40% Uranium
	['u-35']								={r=098, g=255, b=062, a=127},	--35% Uranium
	['u-33']								={r=098, g=255, b=062, a=127},	--33% Uranium
	['u-30']								={r=098, g=255, b=062, a=127},	--30% Uranium
	['u-25']								={r=098, g=255, b=062, a=127},	--25% Uranium
	['u-23']								={r=098, g=255, b=062, a=127},	--23% Uranium
	['u-20']								={r=098, g=255, b=062, a=127},	--20% Uranium
	['u-15']								={r=098, g=255, b=062, a=127},	--15% Uranium
	['u-waste']								={r=098, g=255, b=062, a=127},	--Uranium Waste
	['vanadium-mixture']					={r=098, g=255, b=062, a=127},	--Vanadium Mixture
	['zinc-pulp-01']						={r=191, g=255, b=242, a=127},	--Zinc Pulp 01
	['zinc-pulp-02']						={r=191, g=255, b=242, a=127},	--Zinc Pulp 02
	['zinc-pulp-03']						={r=191, g=255, b=242, a=127},	--Zinc Pulp 03
	['zinc-pulp-04']						={r=191, g=255, b=242, a=127},	--Zinc Pulp 04
	['zinc-overflow']						={r=191, g=255, b=242, a=127},	--Zinc Overflow
	['zinc-waste']							={r=191, g=255, b=242, a=127},	--Zinc Waste
	['molten-zinc']							={r=191, g=255, b=242, a=127},	--Molten Zinc

--	['quartz-rock']							={r=   , g=   , b=   , a=127},	--Quartz big ore vein
--	['aluminium-rock']						={r=   , g=   , b=   , a=127},	--Aluminium reserve
--	['copper-rock']							={r=   , g=   , b=   , a=127},	--Big Copper Monolith
--	['lead-rock']							={r=   , g=   , b=   , a=127},	--Lead Rich Rock
	['lead-mine']							={r=073, g=240, b=073, a=127},	--Lead Mine
	['quartz-mine']							={r=073, g=240, b=073, a=127},	--Quartz Mine
	['chromium-mine']						={r=073, g=240, b=073, a=127},	--Chromium Mine
	['copper-mine']							={r=073, g=240, b=073, a=127},	--Copper Mine
	['iron-mine']							={r=073, g=240, b=073, a=127},	--Iron open pit mine
	['salt-mine']							={r=073, g=240, b=073, a=127},	--Salt Mine
--	['salt-rock']							={r=   , g=   , b=   , a=127},	--Salty Rock
--	['chromium-rock']						={r=   , g=   , b=   , a=127},	--Chromium Reserve
	['aluminium-mine']						={r=073, g=240, b=073, a=127},	--Aluminium Mine
--	['flotation-cell-mk01']					={r=   , g=   , b=   , a=127},	--Flotation Cell Mk01
--	['flotation-cell-mk02']					={r=   , g=   , b=   , a=127},	--Flotation Cell Mk02
--	['flotation-cell-mk03']					={r=   , g=   , b=   , a=127},	--Flotation Cell Mk03
--	['flotation-cell-mk04']					={r=   , g=   , b=   , a=127},	--Flotation Cell Mk04
--	['scrubber-mk01']						={r=   , g=   , b=   , a=127},	--Scrubber Mk01
--	['scrubber-mk02']						={r=   , g=   , b=   , a=127},	--Scrubber Mk02
--	['scrubber-mk03']						={r=   , g=   , b=   , a=127},	--Scrubber Mk03
--	['scrubber-mk04']						={r=   , g=   , b=   , a=127},	--Scrubber Mk04
--	['wet-scrubber-mk01']					={r=   , g=   , b=   , a=127},	--Wet Scrubber Mk01
--	['wet-scrubber-mk02']					={r=   , g=   , b=   , a=127},	--Wet Scrubber Mk02
--	['wet-scrubber-mk03']					={r=   , g=   , b=   , a=127},	--Wet Scrubber Mk03
--	['wet-scrubber-mk04']					={r=   , g=   , b=   , a=127},	--Wet Scrubber Mk04
--	['hydroclassifier-mk01']				={r=   , g=   , b=   , a=127},	--Hydroclassifier Mk01
--	['hydroclassifier-mk02']				={r=   , g=   , b=   , a=127},	--Hydroclassifier Mk02
--	['hydroclassifier-mk03']				={r=   , g=   , b=   , a=127},	--Hydroclassifier Mk03
--	['hydroclassifier-mk04']				={r=   , g=   , b=   , a=127},	--Hydroclassifier Mk04
--	['impact-crusher-mk01']					={r=   , g=   , b=   , a=127},	--Impact Crusher Mk01
--	['impact-crusher-mk02']					={r=   , g=   , b=   , a=127},	--Impact Crusher Mk02
--	['impact-crusher-mk03']					={r=   , g=   , b=   , a=127},	--Impact Crusher Mk03
--	['impact-crusher-mk04']					={r=   , g=   , b=   , a=127},	--Impact Crusher Mk04
--	['electrolyzer-mk01']					={r=   , g=   , b=   , a=127},	--Electrolyzer Mk01
--	['electrolyzer-mk02']					={r=   , g=   , b=   , a=127},	--Electrolyzer Mk02
--	['electrolyzer-mk03']					={r=   , g=   , b=   , a=127},	--Electrolyzer Mk03
--	['electrolyzer-mk04']					={r=   , g=   , b=   , a=127},	--Electrolyzer Mk04
--	['casting-unit-mk01']					={r=   , g=   , b=   , a=127},	--Casting Unit Mk01
--	['casting-unit-mk02']					={r=   , g=   , b=   , a=127},	--Casting Unit Mk02
--	['casting-unit-mk03']					={r=   , g=   , b=   , a=127},	--Casting Unit Mk03
--	['casting-unit-mk04']					={r=   , g=   , b=   , a=127},	--Casting Unit Mk04
--	['leaching-station-mk01']				={r=   , g=   , b=   , a=127},	--Leaching Station Mk01
--	['leaching-station-mk02']				={r=   , g=   , b=   , a=127},	--Leaching Station Mk02
--	['leaching-station-mk03']				={r=   , g=   , b=   , a=127},	--Leaching Station Mk03
--	['leaching-station-mk04']				={r=   , g=   , b=   , a=127},	--Leaching Station Mk04
--	['bof-mk01']							={r=   , g=   , b=   , a=127},	--Basic Oxygen Furnace (BOF) Mk01
--	['bof-mk02']							={r=   , g=   , b=   , a=127},	--Basic Oxygen Furnace (BOF) Mk02
--	['bof-mk03']							={r=   , g=   , b=   , a=127},	--Basic Oxygen Furnace (BOF) Mk03
--	['bof-mk04']							={r=   , g=   , b=   , a=127},	--Basic Oxygen Furnace (BOF) Mk04
--	['eaf-mk01']							={r=   , g=   , b=   , a=127},	--Electric Arc Furnace (EAF) Mk01
--	['eaf-mk02']							={r=   , g=   , b=   , a=127},	--Electric Arc Furnace (EAF) Mk02
--	['eaf-mk03']							={r=   , g=   , b=   , a=127},	--Electric Arc Furnace (EAF) Mk03
--	['eaf-mk04']							={r=   , g=   , b=   , a=127},	--Electric Arc Furnace (EAF) Mk04
--	['drp']									={r=   , g=   , b=   , a=127},	--Direct Reduction Plant
--	['sinter-unit']							={r=   , g=   , b=   , a=127},	--Sinter Unit
--	['iron-rock']							={r=   , g=   , b=   , a=127},	--Iron reserve
--	['coal-rock']							={r=   , g=   , b=   , a=127},	--Coal reserve
	['coal-mine']							={r=073, g=240, b=073, a=127},	--Coal Mine
	['nexelit-mine']						={r=073, g=240, b=073, a=127},	--Nexelit Mine
--	['nexelit-rock']						={r=   , g=   , b=   , a=127},	--Nexelit Reserve
--	['nickel-rock']							={r=   , g=   , b=   , a=127},	--Nickel reserve
	['nickel-mine']							={r=073, g=240, b=073, a=127},	--Nickel Mine
--	['tin-rock']							={r=   , g=   , b=   , a=127},	--Tin Rich Rock
	['tin-mine']							={r=073, g=240, b=073, a=127},	--Tin Mine
	['phosphate-mine-02']					={r=073, g=240, b=073, a=127},	--Big Phosphate Mine
--	['titanium-rock']						={r=   , g=   , b=   , a=127},	--Titanium Rock
--	['uranium-rock']						={r=   , g=   , b=   , a=127},	--Uranium Rock
	['titanium-mine']						={r=073, g=240, b=073, a=127},	--Titanium Mine
	['uranium-mine']						={r=073, g=240, b=073, a=127},	--Uranium Mine
	['zinc-mine']							={r=073, g=240, b=073, a=127},	--Zinc Mine
--	['zinc-rock']							={r=   , g=   , b=   , a=127},	--Zinc Reserve
--	['phosphate-rock-02']					={r=   , g=   , b=   , a=127},	--Big Ancient Remains

--	['py-construction-robot-02']			={r=   , g=   , b=   , a=127},	--Construction Pynobot MK02
--	['py-logistic-robot-02']				={r=   , g=   , b=   , a=127},	--Cargo Pynobot MK02

--	--pyanodon's petroleum handling
	['small-parts-01']						={r=164, g=127, b=069, a=127},	--Small parts
	['small-parts-02']						={r=164, g=127, b=069, a=127},	--Advanced Small parts
	['small-parts-03']						={r=222, g=222, b=222, a=127},	--Special Small parts
	['oil-sand']							={r=080, g=029, b=000, a=127},	--Oil Sand
--	['oil-mk01']							={r=   , g=   , b=   , a=127},	--Small oil patch
--	['oil-mk02']							={r=   , g=   , b=   , a=127},	--Medium oil patch
--	['oil-mk03']							={r=   , g=   , b=   , a=127},	--Big oil patch
--	['tar-patch']							={r=   , g=   , b=   , a=127},	--Tar pit
--	['sulfur-patch']						={r=   , g=   , b=   , a=127},	--Sulfur vein
	['crushed-oil-sand']					={r=158, g=060, b=000, a=127},	--Crushed Oil Sand
	['sncr-alloy']							={r=178, g=154, b=154, a=127},	--Tin-Chromium Alloy
	['ticl4']								={r=200, g=055, b=200, a=127},	--Titanium Tetrachloride
	['carbon-black']						={r=000, g=000, b=000, a=127},	--Carbon Black
	['bolts']								={r=186, g=186, b=186, a=127},	--Bolts
	['rubber']								={r=000, g=000, b=000, a=127},	--Rubber
	['belt']								={r=000, g=000, b=000, a=127},	--Belt
	['guar']								={r=131, g=200, b=000, a=127},	--Guar
	['guar-seeds']							={r=255, g=124, b=018, a=127},	--Guar Seeds
	['guar-gum']							={r=255, g=255, b=255, a=127},	--Guar Gum
	['soot']								={r=044, g=000, b=011, a=127},	--Soot
	['kerogen']								={r=047, g=029, b=029, a=127},	--Kerogen
	['hot-stone-brick']						={r=255, g=047, b=047, a=127},	--Hot stone-brick

	['oil-sand-slurry']						={r=069, g=025, b=000, a=127},	--Oil Sand Slurry
	['bitumen-froth']						={r=069, g=025, b=000, a=127},	--Bitumen Froth
	['bitumen']								={r=000, g=000, b=000, a=127},	--Bitumen
	['scrude']								={r=000, g=000, b=000, a=127},	--Shale Oil
	['fuel-oil']							={r=255, g=160, b=000, a=127},	--Fuel Oil
	['natural-gas']							={r=175, g=226, b=029, a=127},	--Natural Gas
	['naphtha']								={r=117, g=033, b=029, a=127},	--Naphtha
	['polybutadiene']						={r=000, g=000, b=000, a=127},	--Polybutadiene
	['hot-air']								={r=255, g=058, b=058, a=127},	--Hot Air
	['styrene']								={r=000, g=000, b=000, a=127},	--Styrene
	['btx']									={r=000, g=018, b=058, a=127},	--BTX
	['tholins']								={r=142, g=033, b=015, a=127},	--Tholins
	['processed-light-oil']					={r=029, g=000, b=008, a=127},	--Processed Light Oil
	['hot-reaction-gas']					={r=040, g=015, b=000, a=127},	--Hot Reaction Gas
	['pressured-hydrogen']					={r=087, g=066, b=066, a=127},	--Pressured Hydrogen
	['coalbed-gas']							={r=095, g=036, b=000, a=127},	--Coalbed Gas
	['ethylene-glycol']						={r=106, g=193, b=255, a=127},	--Ethylene Glycol
	['chloroethanol']						={r=255, g=255, b=255, a=127},	--Chloroethanol
	['ethylene-chlorohydrin']				={r=255, g=255, b=255, a=127},	--Ethylene Chlorohydrin
	['condensates']							={r=171, g=160, b=000, a=127},	--Condensates
	['raw-gas']								={r=189, g=109, b=011, a=127},	--Raw Gas
	['refined-natural-gas']					={r=149, g=226, b=029, a=127},	--Refined Natural Gas
	['purified-natural-gas']				={r=189, g=204, b=015, a=127},	--Purified Natural Gas
	['pure-natural-gas']					={r=219, g=135, b=015, a=127},	--Pure Natural Gas
	['residual-gas']						={r=135, g=102, b=175, a=127},	--Residual Gas
	['drilling-fluid-1']					={r=000, g=255, b=193, a=127},	--Drilling fluid 1
	['drilling-fluid-2']					={r=255, g=164, b=000, a=127},	--Drilling fluid 2
	['drilling-fluid-3']					={r=255, g=047, b=066, a=127},	--Drilling fluid 3
	['dirty-syngas']						={r=171, g=102, b=029, a=127},	--Dirty Syngas
	['purified-syngas']						={r=171, g=102, b=029, a=127},	--Purified Syngas
	['hot-syngas']							={r=171, g=102, b=029, a=127},	--Hot Syngas
	['residual-oil']						={r=127, g=029, b=000, a=127},	--Residual Oil
	['low-distillate']						={r=095, g=000, b=087, a=127},	--Low Distillates
	['medium-distillate']					={r=095, g=000, b=087, a=127},	--Medium Distillates
	['high-distillate']						={r=095, g=000, b=087, a=127},	--High Distillates
	['stripped-distillate']					={r=095, g=000, b=087, a=127},	--Stripped Distillates
	['condensed-distillate']				={r=095, g=000, b=087, a=127},	--Condensed Distillates
	['residual-mixture']					={r=127, g=029, b=000, a=127},	--Residual Mixture
	['hot-residual-mixture']				={r=098, g=015, b=000, a=127},	--Hot Residual Mixture

--	['oil-sand-extractor-mk01']				={r=   , g=   , b=   , a=127},	--Oil Sand Extractor MK01
--	['oil-sand-extractor-mk02']				={r=   , g=   , b=   , a=127},	--Oil Sand Extractor MK02
--	['oil-sand-extractor-mk03']				={r=   , g=   , b=   , a=127},	--Oil Sand Extractor MK03
--	['oil-sand-extractor-mk04']				={r=   , g=   , b=   , a=127},	--Oil Sand Extractor MK04
--	['heavy-oil-refinery-mk01']				={r=   , g=   , b=   , a=127},	--Heavy Oil Refinery MK01
--	['heavy-oil-refinery-mk02']				={r=   , g=   , b=   , a=127},	--Heavy Oil Refinery MK02
--	['heavy-oil-refinery-mk03']				={r=   , g=   , b=   , a=127},	--Heavy Oil Refinery MK03
--	['heavy-oil-refinery-mk04']				={r=   , g=   , b=   , a=127},	--Heavy Oil Refinery MK04
--	['upgrader-mk01']						={r=   , g=   , b=   , a=127},	--Ionic Upgrader MK01
--	['upgrader-mk02']						={r=   , g=   , b=   , a=127},	--Ionic Upgrader MK02
--	['upgrader-mk03']						={r=   , g=   , b=   , a=127},	--Ionic Upgrader MK03
--	['upgrader-mk04']						={r=   , g=   , b=   , a=127},	--Ionic Upgrader MK04
--	['cracker-mk01']						={r=   , g=   , b=   , a=127},	--Multi-Purpose Cracker MK01
--	['cracker-mk02']						={r=   , g=   , b=   , a=127},	--Multi-Purpose Cracker MK02
--	['cracker-mk03']						={r=   , g=   , b=   , a=127},	--Multi-Purpose Cracker MK03
--	['cracker-mk04']						={r=   , g=   , b=   , a=127},	--Multi-Purpose Cracker MK04
--	['reformer-mk01']						={r=   , g=   , b=   , a=127},	--Reformer MK01
--	['reformer-mk02']						={r=   , g=   , b=   , a=127},	--Reformer MK02
--	['reformer-mk03']						={r=   , g=   , b=   , a=127},	--Reformer MK03
--	['reformer-mk04']						={r=   , g=   , b=   , a=127},	--Reformer MK04
--	['tholin-atm-mk01']						={r=   , g=   , b=   , a=127},	--Tholin Atmospheric Extractor MK01
--	['tholin-atm-mk02']						={r=   , g=   , b=   , a=127},	--Tholin Atmospheric Extractor MK02
--	['tholin-atm-mk03']						={r=   , g=   , b=   , a=127},	--Tholin Atmospheric Extractor MK03
--	['tholin-atm-mk04']						={r=   , g=   , b=   , a=127},	--Tholin Atmospheric Extractor MK04
--	['rhe']									={r=   , g=   , b=   , a=127},	--Regenerative Heat Exchanger
--	['oil-derrick-mk01']					={r=   , g=   , b=   , a=127},	--Small Oil Derrick
--	['oil-derrick-mk02']					={r=   , g=   , b=   , a=127},	--Medium Oil Derrick
--	['oil-derrick-mk03']					={r=   , g=   , b=   , a=127},	--Big Oil Derrick
--	['oil-derrick-mk04']					={r=   , g=   , b=   , a=127},	--Mega Oil Derrick
--	['pumpjack-mk01']						={r=   , g=   , b=   , a=127},	--Pumpjack MK01
--	['pumpjack-mk02']						={r=   , g=   , b=   , a=127},	--Pumpjack MK02
--	['pumpjack-mk03']						={r=   , g=   , b=   , a=127},	--Pumpjack MK03
--	['pumpjack-mk04']						={r=   , g=   , b=   , a=127},	--Pumpjack MK04
--	['pumpjack-hightech']					={r=   , g=   , b=   , a=127},	--HighTech Pumpjack
--	['tholin-plant-mk01']					={r=   , g=   , b=   , a=127},	--Tholin Plant MK01
--	['tholin-plant-mk02']					={r=   , g=   , b=   , a=127},	--Tholin Plant MK02
--	['tholin-plant-mk03']					={r=   , g=   , b=   , a=127},	--Tholin Plant MK03
--	['tholin-plant-mk04']					={r=   , g=   , b=   , a=127},	--Tholin Plant MK04
--	['lor-mk01']							={r=   , g=   , b=   , a=127},	--Light Oil Refinery MK01
--	['lor-mk02']							={r=   , g=   , b=   , a=127},	--Light Oil Refinery MK02
--	['lor-mk03']							={r=   , g=   , b=   , a=127},	--Light Oil Refinery MK03
--	['lor-mk04']							={r=   , g=   , b=   , a=127},	--Light Oil Refinery MK04
--	['coalbed-mk01']						={r=   , g=   , b=   , a=127},	--Coalbed Extractor MK01
--	['coalbed-mk02']						={r=   , g=   , b=   , a=127},	--Coalbed Extractor MK02
--	['coalbed-mk03']						={r=   , g=   , b=   , a=127},	--Coalbed Extractor MK03
--	['coalbed-mk04']						={r=   , g=   , b=   , a=127},	--Coalbed Extractor MK04
--	['tar-extractor-mk01']					={r=   , g=   , b=   , a=127},	--Tar Extractor MK01
--	['tar-extractor-mk02']					={r=   , g=   , b=   , a=127},	--Tar Extractor MK02
--	['tar-extractor-mk03']					={r=   , g=   , b=   , a=127},	--Tar Extractor MK03
--	['tar-extractor-mk04']					={r=   , g=   , b=   , a=127},	--Tar Extractor MK04
--	['gas-refinery-mk01']					={r=   , g=   , b=   , a=127},	--Gas Refinery MK01
--	['gas-refinery-mk02']					={r=   , g=   , b=   , a=127},	--Gas Refinery MK02
--	['gas-refinery-mk03']					={r=   , g=   , b=   , a=127},	--Gas Refinery MK03
--	['gas-refinery-mk04']					={r=   , g=   , b=   , a=127},	--Gas Refinery MK04
--	['sulfur-mine']							={r=   , g=   , b=   , a=127},	--Sulfur mine
--	['guar-gum-plantation']					={r=   , g=   , b=   , a=127},	--Guar Gum Plantation
--	['fracking-rig']						={r=   , g=   , b=   , a=127},	--Fracking Rig
--	['retorter']							={r=   , g=   , b=   , a=127},	--Retorter
--	['oil-boiler-mk01']						={r=   , g=   , b=   , a=127},	--Oil Burner MK01

	--pyanodon's hightech
--	['clay']								={r=   , g=   , b=   , a=127},	--Clay
--	['melamine']							={r=   , g=   , b=   , a=127},	--Melamine
--	['melamine-resin']						={r=   , g=   , b=   , a=127},	--Melamine Resin
--	['urea']								={r=   , g=   , b=   , a=127},	--Urea
--	['ceramic']								={r=   , g=   , b=   , a=127},	--Ceramic
--	['inductor1']							={r=   , g=   , b=   , a=127},	--Inductor 1
--	['inductor2']							={r=   , g=   , b=   , a=127},	--Inductor 2
--	['inductor3']							={r=   , g=   , b=   , a=127},	--Inductor 3
--	['capacitor1']							={r=   , g=   , b=   , a=127},	--Capacitor 1
--	['capacitor2']							={r=   , g=   , b=   , a=127},	--Capacitor 2
--	['capacitor3']							={r=   , g=   , b=   , a=127},	--Capacitor 3
--	['resistor1']							={r=   , g=   , b=   , a=127},	--Resistor 1
--	['resistor2']							={r=   , g=   , b=   , a=127},	--Resistor 2
--	['resistor3']							={r=   , g=   , b=   , a=127},	--Resistor 3
--	['graphite']							={r=   , g=   , b=   , a=127},	--Graphite
--	['valve']								={r=   , g=   , b=   , a=127},	--Vacuum tube
--	['diode']								={r=   , g=   , b=   , a=127},	--Diode
--	['diode3']								={r=   , g=   , b=   , a=127},	--SMD Diode
--	['transistor']							={r=   , g=   , b=   , a=127},	--Transistor
--	['microchip']							={r=   , g=   , b=   , a=127},	--Microchip
--	['fiberboard']							={r=   , g=   , b=   , a=127},	--Fiberboard
--	['formica']								={r=   , g=   , b=   , a=127},	--Formica
--	['pcb1']								={r=   , g=   , b=   , a=127},	--Printed Circuit Substrate 1
--	['pcb2']								={r=   , g=   , b=   , a=127},	--Printed Circuit Substrate 2
--	['pcb3']								={r=   , g=   , b=   , a=127},	--Printed Circuit Substrate 3
--	['pcb3-2']								={r=   , g=   , b=   , a=127},	--Mounted Circuit Substrate
--	['pcb4']								={r=   , g=   , b=   , a=127},	--Printed Circuit Substrate 4
--	['electronic-circuit']					={r=   , g=   , b=   , a=127},	--Circuit board 1
--	['advanced-circuit']					={r=   , g=   , b=   , a=127},	--Circuit board 2
--	['processing-unit']						={r=   , g=   , b=   , a=127},	--Circuit board 3
--	['light-n']								={r=   , g=   , b=   , a=127},	--Light N doped Silicon
--	['heavy-n']								={r=   , g=   , b=   , a=127},	--Heavy N doped Silicon
--	['p-dope']								={r=   , g=   , b=   , a=127},	--P doped Silicon
--	['heavy-p-type']						={r=   , g=   , b=   , a=127},	--Heavy P doped Silicon
--	['rare-earth-powder']					={r=   , g=   , b=   , a=127},	--Rare Earth Powder
--	['ree-concentrate']						={r=   , g=   , b=   , a=127},	--Rare Earth Concentrate
--	['reo']									={r=   , g=   , b=   , a=127},	--Rare Earth Oxides
--	['phenol']								={r=   , g=   , b=   , a=127},	--Phenol
--	['phenolicboard']						={r=   , g=   , b=   , a=127},	--Phenolic Board
--	['bakelite']							={r=   , g=   , b=   , a=127},	--Bakelite
--	['silicon-wafer']						={r=   , g=   , b=   , a=127},	--Silicon Wafer
--	['cermet']								={r=   , g=   , b=   , a=127},	--Cermet
--	['crude-cermet']						={r=   , g=   , b=   , a=127},	--Crude Cermet
--	['fecr-alloy']							={r=   , g=   , b=   , a=127},	--FerroChromium Alloy
--	['silicon']								={r=   , g=   , b=   , a=127},	--Silicon
--	['glass-fiber']							={r=   , g=   , b=   , a=127},	--Glass Fibers
--	['bisphenol-a']							={r=   , g=   , b=   , a=127},	--Bisphenol A
--	['epoxy']								={r=   , g=   , b=   , a=127},	--Epoxy
--	['fiberglass']							={r=   , g=   , b=   , a=127},	--Fiberglass
--	['pdms']								={r=   , g=   , b=   , a=127},	--PDMS (Polydimethylsiloxane)
--	['nic-core']							={r=   , g=   , b=   , a=127},	--Nic Core
--	['pdms-graphene']						={r=   , g=   , b=   , a=127},	--PDMS-Graphene base
--	['graphene-sheet']						={r=   , g=   , b=   , a=127},	--Graphene Sheet
--	['graphene-roll']						={r=   , g=   , b=   , a=127},	--Graphene Roll
--	['processor-core']						={r=   , g=   , b=   , a=127},	--Processor Core
--	['processor']							={r=   , g=   , b=   , a=127},	--Processor
--	['phosphate-glass']						={r=   , g=   , b=   , a=127},	--Phosphate Glass
--	['high-flux-core']						={r=   , g=   , b=   , a=127},	--High Flux Core
--	['stone-wool']							={r=   , g=   , b=   , a=127},	--Stone Wool
--	['re-tin']								={r=   , g=   , b=   , a=127},	--RE-Tin Alloy
--	['diode-core']							={r=   , g=   , b=   , a=127},	--Diode Core
--	['capacitor-core']						={r=   , g=   , b=   , a=127},	--Capacitor Core
--	['capacitor-termination']				={r=   , g=   , b=   , a=127},	--Capacitor Termination
--	['carbon-dust']							={r=   , g=   , b=   , a=127},	--Fine carbon dust
--	['biopolymer']							={r=   , g=   , b=   , a=127},	--Biopolymer
--	['carbon-nanotube']						={r=   , g=   , b=   , a=127},	--Carbon nanotubes
--	['sodium-silicate']						={r=   , g=   , b=   , a=127},	--Sodium Silicate
--	['silica-powder']						={r=   , g=   , b=   , a=127},	--Silica Powder
--	['colloidal-silica']					={r=   , g=   , b=   , a=127},	--Colloidal Silica
--	['nanochip']							={r=   , g=   , b=   , a=127},	--Nano-chip
--	['raw-fiber']							={r=   , g=   , b=   , a=127},	--Raw Fiber
--	['fiber']								={r=   , g=   , b=   , a=127},	--Fiber
--	['micro-fiber']							={r=   , g=   , b=   , a=127},	--Microfiber
--	['sub-denier-microfiber']				={r=   , g=   , b=   , a=127},	--Sub-denier Microfiber
--	['resorcinol']							={r=   , g=   , b=   , a=127},	--Resorcinol
--	['rf-gel']								={r=   , g=   , b=   , a=127},	--RF-gel
--	['clean-rf-gel']						={r=   , g=   , b=   , a=127},	--Clear RF gel
--	['aerogel']								={r=   , g=   , b=   , a=127},	--Aerogel
--	['carbon-aerogel']						={r=   , g=   , b=   , a=127},	--Carbon Aerogel
--	['kondo-substrate']						={r=   , g=   , b=   , a=127},	--Kondo Substrate
--	['kondo-core']							={r=   , g=   , b=   , a=127},	--Kondo Core
--	['kondo-processor']						={r=   , g=   , b=   , a=127},	--Kondo Processor
--	['heavy-fermion']						={r=   , g=   , b=   , a=127},	--Heavy Fermion Material
--	['crco-alloy']							={r=   , g=   , b=   , a=127},	--Chromium-Cobalt Alloy
--	['nxag-matrix']							={r=   , g=   , b=   , a=127},	--Nexelit-Silver Matrix
--	['paradiamatic-resistor']				={r=   , g=   , b=   , a=127},	--Paradiamatic Resistor
--	['zinc-acetate']						={r=   , g=   , b=   , a=127},	--Zinc Acetate
--	['dry-ralesia']							={r=   , g=   , b=   , a=127},	--Dry Ralesia
--	['ralesia-powder']						={r=   , g=   , b=   , a=127},	--Ralesia Powder
--	['zinc-nanocompound']					={r=   , g=   , b=   , a=127},	--Zinc Nanocompound
--	['zinc-nanocomplex']					={r=   , g=   , b=   , a=127},	--Zinc Nanocomplex
--	['zno-nanoparticles']					={r=   , g=   , b=   , a=127},	--Zinc-Oxide Nanoparticles
--	['csle-diode']							={r=   , g=   , b=   , a=127},	--Cross-section Light-emitting Diode
--	['ndfeb-alloy']							={r=   , g=   , b=   , a=127},	--NdFeB Alloy
--	['ndfeb-powder']						={r=   , g=   , b=   , a=127},	--NdFeB powder
--	['re-magnet']							={r=   , g=   , b=   , a=127},	--Rare Earth magnet
--	['sc-substrate']						={r=   , g=   , b=   , a=127},	--Superconductor Substrate
--	['superconductor']						={r=   , g=   , b=   , a=127},	--Superconductor
--	['fault-current-inductor']				={r=   , g=   , b=   , a=127},	--Fault-Current Inductor
--	['nanocrystaline-core']					={r=   , g=   , b=   , a=127},	--Nanocrystaline Core
--	['supercapacitor']						={r=   , g=   , b=   , a=127},	--Supercapacitor
--	['supercapacitor-core']					={r=   , g=   , b=   , a=127},	--Supercapacitor Core
--	['supercapacitor-shell']				={r=   , g=   , b=   , a=127},	--Supercapacitor Shell
--	['intelligent-unit']					={r=   , g=   , b=   , a=127},	--Intelligent Unit
--	['zipir-carcass']						={r=   , g=   , b=   , a=127},	--Zipir Carcass
--	['bones']								={r=   , g=   , b=   , a=127},	--Bones
--	['skin']								={r=   , g=   , b=   , a=127},	--Skin
--	['meat']								={r=   , g=   , b=   , a=127},	--Meat
--	['py-fertilizer']						={r=   , g=   , b=   , a=127},	--Fertilizer
--	['rayon']								={r=   , g=   , b=   , a=127},	--Rayon
--	['blood-meal']							={r=   , g=   , b=   , a=127},	--Blood meal
--	['nylon']								={r=   , g=   , b=   , a=127},	--Nylon
--	['nylon-parts']							={r=   , g=   , b=   , a=127},	--Nylon parts
--	['collagen']							={r=   , g=   , b=   , a=127},	--Collagen
--	['resilin']								={r=   , g=   , b=   , a=127},	--Resilin
--	['hyperelastic-material']				={r=   , g=   , b=   , a=127},	--Hyperelastic material
--	['nano-wires']							={r=   , g=   , b=   , a=127},	--Nano-wires
--	['nems']								={r=   , g=   , b=   , a=127},	--Nanoelectromechanical Systems
--	['lithium-chloride']					={r=   , g=   , b=   , a=127},	--Lithium Chloride
--	['volumetric-capacitor']				={r=   , g=   , b=   , a=127},	--Volumetric Energy Capacitor
--	['yag-laser-module']					={r=   , g=   , b=   , a=127},	--YAG Laser Module
--	['laser-module']						={r=   , g=   , b=   , a=127},	--Laser Module
--	['lithium-niobate']						={r=   , g=   , b=   , a=127},	--Lithium Niobate
--	['parametric-oscilator']				={r=   , g=   , b=   , a=127},	--Optical Parametric Oscilator
--	['myoglobin']							={r=   , g=   , b=   , a=127},	--Myoglobin
--	['paramagnetic-material']				={r=   , g=   , b=   , a=127},	--Paramagnetic material
--	['diamagnetic-material']				={r=   , g=   , b=   , a=127},	--Diamagnetic material
--	['superconductor-servomechanims']		={r=   , g=   , b=   , a=127},	--Superconductor Servomechanims
--	['harmonic-absorber']					={r=   , g=   , b=   , a=127},	--Harmonic Absorber
--	['pyrolytic-carbon']					={r=   , g=   , b=   , a=127},	--Pyrolytic carbon
--	['nv-center']							={r=   , g=   , b=   , a=127},	--Nitrogen-vacancy center
--	['quantum-dots']						={r=   , g=   , b=   , a=127},	--Quantum dots
--	['pi-josephson-junction']				={r=   , g=   , b=   , a=127},	--Pi Josephson Junction
--	['var-josephson-junction']				={r=   , g=   , b=   , a=127},	--Varphi Josephson Junction
--	['quantum-vortex-storage-system']		={r=   , g=   , b=   , a=127},	--Quantum Vortex Storage-System
--	['bose-einstein-superfluid']			={r=   , g=   , b=   , a=127},	--Bose-Einstein Superfluid
--	['antimatter']							={r=   , g=   , b=   , a=127},	--Antimatter
--	['crystallographic-substrate']			={r=   , g=   , b=   , a=127},	--Crystallographic Substrate
--	['proton-donor']						={r=   , g=   , b=   , a=127},	--Proton Donor
--	['proton-receiver']						={r=   , g=   , b=   , a=127},	--Proton Receiver
--	['dried-meat']							={r=   , g=   , b=   , a=127},	--Dried Meat
--	['blackhole-fuel']						={r=   , g=   , b=   , a=127},	--Matter
--	['magic-furnace']						={r=   , g=   , b=   , a=127},	--Singularity Energy Extractor

--	['methane']								={r=   , g=   , b=   , a=127},	--Methane
--	['methanal']							={r=   , g=   , b=   , a=127},	--Formaldehyde
--	['ammonia']								={r=   , g=   , b=   , a=127},	--Ammonia
--	['cyanic-acid']							={r=   , g=   , b=   , a=127},	--Cyanic Acid
--	['black-liquor']						={r=   , g=   , b=   , a=127},	--Black Liquor
--	['tall-oil']							={r=   , g=   , b=   , a=127},	--Tall Oil
--	['benzene']								={r=   , g=   , b=   , a=127},	--Benzene
--	['phosphorous-acid']					={r=   , g=   , b=   , a=127},	--Phosphorous Acid
--	['phosphoric-acid']						={r=   , g=   , b=   , a=127},	--Phosphoric Acid
--	['phosphine-gas']						={r=   , g=   , b=   , a=127},	--Phosphine Gas
--	['propene']								={r=   , g=   , b=   , a=127},	--Propene
--	['ethylene']							={r=   , g=   , b=   , a=127},	--Ethylene
--	['ree-slurry']							={r=   , g=   , b=   , a=127},	--Rare Earth Slurry
--	['ree-solution']						={r=   , g=   , b=   , a=127},	--Rare Earth Solution
--	['cumene']								={r=   , g=   , b=   , a=127},	--Cumene
--	['acetone']								={r=   , g=   , b=   , a=127},	--Acetone
--	['ech']									={r=   , g=   , b=   , a=127},	--Epichlorohydrin(ECH)
--	['chloromethane']						={r=   , g=   , b=   , a=127},	--Chloromethane
--	['dimethyldichlorosilane']				={r=   , g=   , b=   , a=127},	--Dimethyldichlorosilane
--	['dms']									={r=   , g=   , b=   , a=127},	--Dimethyl sulfide(DMS)
--	['msa']									={r=   , g=   , b=   , a=127},	--Methanesulfonic acid(MSA)
--	['bacteria-2']							={r=   , g=   , b=   , a=127},	--Knallgas Bacteria
--	['soaked-gel']							={r=   , g=   , b=   , a=127},	--Soaked gel
--	['acrolein']							={r=   , g=   , b=   , a=127},	--Acrolein
--	['acetic-acid']							={r=   , g=   , b=   , a=127},	--Acetic Acid
--	['raw-ralesia-extract']					={r=   , g=   , b=   , a=127},	--Raw Ralesia Extract
--	['ralesia-extract']						={r=   , g=   , b=   , a=127},	--Ralesia Extract
--	['blood']								={r=   , g=   , b=   , a=127},	--Blood
--	['carbon-sulfide']						={r=   , g=   , b=   , a=127},	--Carbonyl sulfide
--	['etching']								={r=   , g=   , b=   , a=127},	--Etching Solution
--	['nitrobenzene']						={r=   , g=   , b=   , a=127},	--Nitrobenzene

--	['rare-earth-bolide']					={r=   , g=   , b=   , a=127},	--Rare Earth Bolide
--	['phosphate-mine']						={r=   , g=   , b=   , a=127},	--Phosphate Mine
--	['rare-earth-mine']						={r=   , g=   , b=   , a=127},	--Rare Earth Extractor
--	['clay-pit']							={r=   , g=   , b=   , a=127},	--Clay-pit
--	['moondrop-greenhouse']					={r=   , g=   , b=   , a=127},	--Moondrop Greenhouse
--	['fbreactor']							={r=   , g=   , b=   , a=127},	--F.B.Reactor
--	['auog-paddock']						={r=   , g=   , b=   , a=127},	--Auog paddock
--	['electronics-factory']					={r=   , g=   , b=   , a=127},	--Electronics Factory
--	['pulp-mill']							={r=   , g=   , b=   , a=127},	--Pulp Mill
--	['pcb-factory']							={r=   , g=   , b=   , a=127},	--PCB Factory
--	['chipshooter']							={r=   , g=   , b=   , a=127},	--Chipshooter machine
--	['nano-assembler']						={r=   , g=   , b=   , a=127},	--Nano assembler
--	['cadaveric-arum']						={r=   , g=   , b=   , a=127},	--Cadaveric Arum Greenhouse
--	['kicalk-plantation']					={r=   , g=   , b=   , a=127},	--Kicalk Plantation
--	['zipir']								={r=   , g=   , b=   , a=127},	--Zipir Artificial Reef
--	['construction-robot-ht']				={r=   , g=   , b=   , a=127},	--HighTech Construction Pynobot
--	['logistic-robot-ht']					={r=   , g=   , b=   , a=127},	--HighTech Logistic Pynobot
--	['quantum-computer']					={r=   , g=   , b=   , a=127},	--Quantum Computer
--	['particle-accelerator']				={r=   , g=   , b=   , a=127},	--Particle Accelerator
--	['blackhole']							={r=   , g=   , b=   , a=127},	--Singularity Energy Extractor
--	['magic-furnace']						={r=   , g=   , b=   , a=127},	--Singularity Energy Extractor

	--pyanodon's fusion energy
--	['molybdenum-ore']						={r=   , g=   , b=   , a=127},	--Molybdenum ore
--	['kimberlite-rock']						={r=   , g=   , b=   , a=127},	--Kimberlite Rock
--	['regolite-rock']						={r=   , g=   , b=   , a=127},	--Regolite Rock
--	['crushed-kimberlite']					={r=   , g=   , b=   , a=127},	-- Crushed Kimberlite
--	['crushed-regolite']					={r=   , g=   , b=   , a=127},	-- Crushed Regolite
--	['kimberlite-rejects']					={r=   , g=   , b=   , a=127},	--Kimberlite Rejects
--	['kimberlite-grade2']					={r=   , g=   , b=   , a=127},	--Grade-2 Kimberlite
--	['kimberlite-grade3']					={r=   , g=   , b=   , a=127},	--Grade-3 Kimberlite
--	['pure-kimberlite-grade2']				={r=   , g=   , b=   , a=127},	--Pure Kimberlite Grade-2
--	['kimberlite-residue']					={r=   , g=   , b=   , a=127},	--Kimberlite Residues
--	['diamond-reject']						={r=   , g=   , b=   , a=127},	--Diamond Rejects
--	['crushed-molybdenite']					={r=   , g=   , b=   , a=127},	--Molybdenite Powder
--	['molybdenite-dust']					={r=   , g=   , b=   , a=127},	--Molybdenite dust
--	['molybdenum-concentrate']				={r=   , g=   , b=   , a=127},	--Molybdenum Concentrate
--	['molybdenum-sulfide']					={r=   , g=   , b=   , a=127},	--MoS2
--	['molybdenum-oxide']					={r=   , g=   , b=   , a=127},	--MoO3
--	['molybdenum-plate']					={r=   , g=   , b=   , a=127},	--Molybdenum plate
--	['sodium-chlorate']						={r=   , g=   , b=   , a=127},	--Sodium Chlorate
--	['vanadium-oxide']						={r=   , g=   , b=   , a=127},	--Vanadium Oxide
--	['super-alloy']							={r=   , g=   , b=   , a=127},	--Super-alloy
--	['processed-rejects']					={r=   , g=   , b=   , a=127},	--Processed Rejects
--	['diamond']								={r=   , g=   , b=   , a=127},	-- Industrial Diamond
--	['crude-diamond']						={r=   , g=   , b=   , a=127},	--Crude Diamonds
--	['washed-diamond']						={r=   , g=   , b=   , a=127},	--Washed Diamonds
--	['calcinates']							={r=   , g=   , b=   , a=127},	--Calcinates
--	['serine']								={r=   , g=   , b=   , a=127},	--Serine
--	['methyl-acrylate']						={r=   , g=   , b=   , a=127},	--Methyl Acrylate
--	['kmauts-ration']						={r=   , g=   , b=   , a=127},	--Kmauts Ration
--	['powdered-regolite']					={r=   , g=   , b=   , a=127},	--Powdered Regolite
--	['regolite-dust']						={r=   , g=   , b=   , a=127},	--Regolite Dust
--	['nexelit-matrix']						={r=   , g=   , b=   , a=127},	--Nexelit Matrix
--	['nbti-alloy']							={r=   , g=   , b=   , a=127},	--Niobium-Titanium Alloy
--	['nenbit-matrix']						={r=   , g=   , b=   , a=127},	--NENBIT Matrix
--	['sc-wire']								={r=   , g=   , b=   , a=127},	--Super Conducting Wire
--	['ferrite']								={r=   , g=   , b=   , a=127},	--Ferrite
--	['coil-core']							={r=   , g=   , b=   , a=127},	--Coil Core
--	['sc-coil']								={r=   , g=   , b=   , a=127},	--Super Conducting Coil
--	['magnetic-core']						={r=   , g=   , b=   , a=127},	--Magnetic Core
--	['deposited-core']						={r=   , g=   , b=   , a=127},	--Deposited Vanadium Core
--	['sc-unit']								={r=   , g=   , b=   , a=127},	--Super Conducting Magnetic Unit
--	['b2o3-dust']							={r=   , g=   , b=   , a=127},	--Boron Trioxide Dust
--	['boron-mixture']						={r=   , g=   , b=   , a=127},	--Boron Mixture
--	['boron']								={r=   , g=   , b=   , a=127},	--Boron
--	['boron-carbide']						={r=   , g=   , b=   , a=127},	--Boron Carbide
--	['blanket-chassi']						={r=   , g=   , b=   , a=127},	--Blanket Chassi
--	['blanket']								={r=   , g=   , b=   , a=127},	--Blanket
--	['divertor']							={r=   , g=   , b=   , a=127},	--Divertor
--	['wall-shield']							={r=   , g=   , b=   , a=127},	--Wall Shield
--	['reinforced-wall-shield']				={r=   , g=   , b=   , a=127},	--Reinforced Wall Shield
--	['lead-container']						={r=   , g=   , b=   , a=127},	--Lead container
--	['science-coating']						={r=   , g=   , b=   , a=127},	--Advanced coating
--	['coated-container']					={r=   , g=   , b=   , a=127},	--Coated container
--	['nuclear-sample']						={r=   , g=   , b=   , a=127},	--Nuclear Sample
--	['control-unit']						={r=   , g=   , b=   , a=127},	--Control unit
--	['agzn-alloy']							={r=   , g=   , b=   , a=127},	--Silver-Zinc Alloy
--	['silver-foam']							={r=   , g=   , b=   , a=127},	--Silver Foam

--	['phytoplankton']						={r=   , g=   , b=   , a=127},	--Phytoplankton
--	['molybdenite-pulp']					={r=   , g=   , b=   , a=127},	--Molybdenite Pulp
--	['molybdenum-pulp']						={r=   , g=   , b=   , a=127},	--Molybdenum Pulp
--	['vacuum']								={r=   , g=   , b=   , a=127},	--Vacuum
--	['xyhiphoe-blood']						={r=   , g=   , b=   , a=127},	--Xyhiphoe Blood
--	['pressured-water']						={r=   , g=   , b=   , a=127},	--Pressured Water
--	['waste-water']							={r=   , g=   , b=   , a=127},	--Waste Water
--	['vanabins']							={r=   , g=   , b=   , a=127},	--Vanabins
--	['blue-liquor']							={r=   , g=   , b=   , a=127},	--Blue Liquor
--	['vpulp1']								={r=   , g=   , b=   , a=127},	--Vanadium Pulp 01
--	['vpulp2']								={r=   , g=   , b=   , a=127},	--Vanadium Pulp 02
--	['vpulp3']								={r=   , g=   , b=   , a=127},	--Vanadium Pulp 03
--	['vpulp4']								={r=   , g=   , b=   , a=127},	--Vanadium Pulp 04
--	['vpulp5']								={r=   , g=   , b=   , a=127},	--Vanadium Pulp 05
--	['vpulp-precip']						={r=   , g=   , b=   , a=127},	--Vanadium Precipitate
--	['pressured-vpulp']						={r=   , g=   , b=   , a=127},	--Pressured Vpulp
--	['vanadates']							={r=   , g=   , b=   , a=127},	--Vanadates
--	['organic-vanadate']					={r=   , g=   , b=   , a=127},	--Organic Vanadate
--	['vanadium-concentrate']				={r=   , g=   , b=   , a=127},	--Vanadium Concentrate
--	['vanadium-solution']					={r=   , g=   , b=   , a=127},	--Vanadium Solution
--	['industrial-solvent']					={r=   , g=   , b=   , a=127},	--Industrial Solvent
--	['used-solvent']						={r=   , g=   , b=   , a=127},	--Used Solvent
--	['soda-ash']							={r=   , g=   , b=   , a=127},	--Soda-ash Regeneration Solution
--	['acid-strip-solution']					={r=   , g=   , b=   , a=127},	--Acid-strip Solution
--	['pregnant-solution']					={r=   , g=   , b=   , a=127},	--Pregnant V2O5 Acid Solution
--	['diamond-tailings']					={r=   , g=   , b=   , a=127},	--Diamond Tailings
--	['diamond-concentrate']					={r=   , g=   , b=   , a=127},	--Diamond Concentrate
--	['kimberlite-pulp']						={r=   , g=   , b=   , a=127},	--Kimberlite Pulp
--	['jig-concentrate']						={r=   , g=   , b=   , a=127},	--Jig Concentrate
--	['grease']								={r=   , g=   , b=   , a=127},	--Grease
--	['jig-grade1']							={r=   , g=   , b=   , a=127},	--Jig Grade 1
--	['jig-grade2']							={r=   , g=   , b=   , a=127},	--Jig Grade 2
--	['jig-grade3']							={r=   , g=   , b=   , a=127},	--Jig Grade 3
--	['liquid-nitrogen']						={r=   , g=   , b=   , a=127},	--Liquid Nitrogen
--	['pressured-air']						={r=   , g=   , b=   , a=127},	--Pressured Air
--	['cold-air']							={r=   , g=   , b=   , a=127},	--Cold Air
--	['purified-air']						={r=   , g=   , b=   , a=127},	--Purified Air
--	['cold-clean-air']						={r=   , g=   , b=   , a=127},	--Cold Clean Air
--	['liquid-pure-air']						={r=   , g=   , b=   , a=127},	--Liquid Clean Air
--	['helium-rich-gas']						={r=   , g=   , b=   , a=127},	--Helium Rich Gas
--	['dry-gas-stream']						={r=   , g=   , b=   , a=127},	--Dry Gas Stream
--	['bacteria-1']							={r=   , g=   , b=   , a=127},	--Alien Bacteria mk01
--	['ethanolamine']						={r=   , g=   , b=   , a=127},	--Ethanolamine
--	['high-purified-gas']					={r=   , g=   , b=   , a=127},	--High Purified Gas
--	['gas-stream']							={r=   , g=   , b=   , a=127},	--Gas Stream
--	['liquid-petgas']						={r=   , g=   , b=   , a=127},	--Liquified Petroleum Gas
--	['purier-helium']						={r=   , g=   , b=   , a=127},	--Purier Helium Gas
--	['helium']								={r=   , g=   , b=   , a=127},	--Helium
--	['helium3']								={r=   , g=   , b=   , a=127},	--Helium-3
--	['proton']								={r=   , g=   , b=   , a=127},	--Hydrogen Proton
--	['liquid-rich-gas']						={r=   , g=   , b=   , a=127},	--Liquid Rich Gas
--	['rich-gas']							={r=   , g=   , b=   , a=127},	--Rich gas
--	['liquid-helium']						={r=   , g=   , b=   , a=127},	--Liquid Helium
--	['heavy-water']							={r=   , g=   , b=   , a=127},	--Heavy Water
--	['deuterium']							={r=   , g=   , b=   , a=127},	--Deuterium
--	['tritium']								={r=   , g=   , b=   , a=127},	--Tritium
--	['pressured-steam']						={r=   , g=   , b=   , a=127},	--High Pressure Steam
--	['critical-steam']						={r=   , g=   , b=   , a=127},	--Critical Steam

--	['xyhiphoe-pool']						={r=   , g=   , b=   , a=127},	--Xyhiphoe-pool
--	['plankton-farm']						={r=   , g=   , b=   , a=127},	--Phytoplankton Farm
--	['vacuum-pump']							={r=   , g=   , b=   , a=127},	--Pressure Pump
--	['volcanic-pipe']						={r=   , g=   , b=   , a=127},	--Volcanic Pipe
--	['regolites']							={r=   , g=   , b=   , a=127},	--Regolite site
--	['agitator']							={r=   , g=   , b=   , a=127},	--Agitator
--	['thickener']							={r=   , g=   , b=   , a=127},	--Thickener
--	['hydrocyclone']						={r=   , g=   , b=   , a=127},	--Hydrocyclone
--	['mixer']								={r=   , g=   , b=   , a=127},	--Mixer
--	['diamond-mine']						={r=   , g=   , b=   , a=127},	--Diamond Mine
--	['mo-mine']								={r=   , g=   , b=   , a=127},	--Molybdenum Mine
--	['automated-screener']					={r=   , g=   , b=   , a=127},	--Automated Screener
--	['secondary-crusher']					={r=   , g=   , b=   , a=127},	--Secondary Crusher
--	['centrifugal-pan']						={r=   , g=   , b=   , a=127},	--Centrifugal Pan
--	['jig']									={r=   , g=   , b=   , a=127},	--Jig
--	['grease-table']						={r=   , g=   , b=   , a=127},	--Grease Table
--	['regolite-mine']						={r=   , g=   , b=   , a=127},	--Regolite Mine
--	['compressor']							={r=   , g=   , b=   , a=127},	--Compressor
--	['genlab']								={r=   , g=   , b=   , a=127},	--GenLab
--	['kmauts-enclosure']					={r=   , g=   , b=   , a=127},	--Kmauts Enclosure
--	['bio-reactor']							={r=   , g=   , b=   , a=127},	--Bio Reactor
--	['gas-separator']						={r=   , g=   , b=   , a=127},	--Gas Processing Unit
--	['nmf']									={r=   , g=   , b=   , a=127},	--Nano-Material Factory
--	['fusion-reactor-mk01']					={r=   , g=   , b=   , a=127},	--Fusion Reactor
--	['fusion-reactor-mk02']					={r=   , g=   , b=   , a=127},	--Aneutronic Fusion Reactor
--	['py-heat-exchanger']					={r=   , g=   , b=   , a=127},	--Heat Exchanger
--	['py-turbine']							={r=   , g=   , b=   , a=127},	--Pressured-Steam Turbine.

-- --------------------------------------------------------------------------------------------

--	 _____                   _        __  __           _     _                     _____                   _   _                  _
--	|  __ \                 | |      |  \/  |         | |   | |                   |  __ \                 | | (_)                | |
--	| |  | |   __ _   _ __  | | __   | \  / |   __ _  | |_  | |_    ___   _ __    | |__) |   ___   _ __   | |  _    ___    __ _  | |_    ___    _ __   ___
--	| |  | |  / _` | | '__| | |/ /   | |\/| |  / _` | | __| | __|  / _ \ | '__|   |  _  /   / _ \ | '_ \  | | | |  / __|  / _` | | __|  / _ \  | '__| / __|
--	| |__| | | (_| | | |    |   <    | |  | | | (_| | | |_  | |_  |  __/ | |      | | \ \  |  __/ | |_) | | | | | | (__  | (_| | | |_  | (_) | | |    \__ \
--	|_____/   \__,_| |_|    |_|\_\   |_|  |_|  \__,_|  \__|  \__|  \___| |_|      |_|  \_\  \___| | .__/  |_| |_|  \___|  \__,_|  \__|  \___/  |_|    |___/
--																								  | |
--																								  |_|

	['tenemut']								={r=137, g=089, b=131, a=127},

-- --------------------------------------------------------------------------------------------

--	 _____                       _   _                  _      _            _____   _                    _      _
--	|  __ \                     | | | |                | |    ( )          / ____| | |                  | |    (_)
--	| |  | |   ___    __ _    __| | | |   ___     ___  | | __ |/   ___    | (___   | |_    __ _    ___  | | __  _   _ __     __ _
--	| |  | |  / _ \  / _` |  / _` | | |  / _ \   / __| | |/ /     / __|    \___ \  | __|  / _` |  / __| | |/ / | | | '_ \   / _` |
--	| |__| | |  __/ | (_| | | (_| | | | | (_) | | (__  |   <      \__ \    ____) | | |_  | (_| | | (__  |   <  | | | | | | | (_| |
--	|_____/   \___|  \__,_|  \__,_| |_|  \___/   \___| |_|\_\     |___/   |_____/   \__|  \__,_|  \___| |_|\_\ |_| |_| |_|  \__, |
--																															 __/ |
--																															|___/

	['basic-transport-belt-loader']			={r=211, g=211, b=211, a=127},	--Basic compact loader
	['basic-transport-belt-beltbox']		={r=211, g=211, b=211, a=127},	--Basic stacking beltbox
	['transport-belt-loader']				={r=233, g=164, b=044, a=127},	--Compact loader
	['transport-belt-beltbox']				={r=233, g=164, b=044, a=127},	--Stacking beltbox
	['fast-transport-belt-loader']			={r=215, g=040, b=040, a=127},	--Fast compact loader
	['fast-transport-belt-beltbox']			={r=215, g=040, b=040, a=127},	--Fast stacking beltbox
	['express-transport-belt-loader']		={r=025, g=142, b=222, a=127},	--Express compact loader
	['express-transport-belt-beltbox']		={r=025, g=142, b=222, a=127},	--Express stacking beltbox
	['turbo-transport-belt-loader']			={r=120, g=000, b=255, a=127},	--Turbo compact loader
	['turbo-transport-belt-beltbox']		={r=120, g=000, b=255, a=127},	--Turbo stacking beltbox
	['ultimate-transport-belt-loader']		={r=000, g=255, b=000, a=127},	--Ultimate compact loader
	['ultimate-transport-belt-beltbox']		={r=000, g=255, b=000, a=127},	--Ultimate stacking beltbox

-- --------------------------------------------------------------------------------------------

--   _____               _                 _            _           _     _____                           _           _     _
--	|_   _|             | |               | |          (_)         | |   |  __ \                         | |         | |   (_)
--	  | |    _ __     __| |  _   _   ___  | |_   _ __   _    __ _  | |   | |__) |   ___  __   __   ___   | |  _   _  | |_   _    ___    _ __
--	  | |   | '_ \   / _` | | | | | / __| | __| | '__| | |  / _` | | |   |  _  /   / _ \ \ \ / /  / _ \  | | | | | | | __| | |  / _ \  | '_ \
--	 _| |_  | | | | | (_| | | |_| | \__ \ | |_  | |    | | | (_| | | |   | | \ \  |  __/  \ V /  | (_) | | | | |_| | | |_  | | | (_) | | | | |
--	|_____| |_| |_|  \__,_|  \__,_| |___/  \__| |_|    |_|  \__,_| |_|   |_|  \_\  \___|   \_/    \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

	['advanced-battery']					={r=193, g=138, b=000, a=127},	--High capacity battery
	['advanced-engine-unit']				={r=000, g=060, b=164, a=127},	--Advanced engine
	['advanced-pollution-filter']			={r=189, g=193, b=189, a=127},	--Advanced air filter
	['battery-discharge-equipment']			={r=146, g=219, b=189, a=127},	--Battery discharge equipment
	['battery-equipment']					={r=000, g=255, b=000, a=127},	--Portable accumulator
	['battery-mk2-equipment']				={r=000, g=255, b=000, a=127},	--Portable accumulator MK2
--	['battery']								={r=138, g=022, b=000, a=127},	--Battery
--	['bronze-ball']							={r=   , g=   , b=   , a=127},	--Bronze bearings
	['bronze-beam']							={r=171, g=051, b=000, a=127},	--Bronze-capped beam
--	['bronze-cable']						={r=   , g=   , b=   , a=127},	--Bronze cable
	['bronze-chassis-large']				={r=171, g=051, b=000, a=127},	--Large bronze chassis
	['bronze-chassis-small']				={r=171, g=051, b=000, a=127},	--Small bronze chassis
	['bronze-gear-wheel']					={r=171, g=051, b=000, a=127},	--Bronze gear wheel
	['bronze-ingot']						={r=171, g=051, b=000, a=127},	--Bronze ingot
	['bronze-piston']						={r=171, g=051, b=000, a=127},	--Bronze piston
	['bronze-plate-heavy']					={r=171, g=051, b=000, a=127},	--Reinforced bronze plate
	['bronze-plate']						={r=171, g=051, b=000, a=127},	--Bronze plate
	['bronze-repair-tool']					={r=171, g=051, b=000, a=127},	--Bronze repair kit
	['bronze-rivet']						={r=171, g=051, b=000, a=127},	--Bronze rivets
	['bronze-rod']							={r=171, g=051, b=000, a=127},	--Bronze rod
	['bronze-tube']							={r=171, g=051, b=000, a=127},	--Bronze tube
--	['bronze']								={r=   , g=   , b=   , a=127},	--Bronze
--	['carbon-cable']						={r=   , g=   , b=   , a=127},	--Superconducting cable
--	['carbon-floor']						={r=   , g=   , b=   , a=127},	--__ITEM__carbon-gravel__ flooring
	['carbon-gravel']						={r=000, g=000, b=000, a=127},	--Crushed coal
--	['carbon-ore']							={r=   , g=   , b=   , a=127},	--Coal
	['carbon-plate']						={r=020, g=020, b=020, a=127},	--Carbon fibre sheet
	['carbon-powder']						={r=000, g=000, b=000, a=127},	--Carbon
--	['carbon']								={r=   , g=   , b=   , a=127},	--Carbon
--	['charcoal']							={r=   , g=   , b=   , a=127},	--Charcoal
	['charged-advanced-battery']			={r=000, g=220, b=255, a=127},	--Charged high capacity battery
	['charged-battery']						={r=000, g=220, b=255, a=127},	--Charged battery
	['chromium-ball']						={r=204, g=142, b=171, a=127},	--Chromed steel bearings
--	['chromium-cable']						={r=   , g=   , b=   , a=127},	--Chromed steel cable
	['chromium-gear-wheel']					={r=204, g=142, b=171, a=127},	--Chromed steel gear wheel
--	['chromium-ingot']						={r=   , g=   , b=   , a=127},	--Chromium ingot
	['chromium-piston']						={r=204, g=142, b=171, a=127},	--Chromed steel piston
	['chromium-plate-heavy']				={r=204, g=142, b=171, a=127},	--Reinforced chromed steel plate
	['chromium-plate']						={r=204, g=142, b=171, a=127},	--Chromed steel plate
--	['chromium-powder']						={r=   , g=   , b=   , a=127},	--Chromium powder
	['chromium-pure']						={r=204, g=142, b=171, a=127},	--Refined chromium
	['chromium-rivet']						={r=204, g=142, b=171, a=127},	--Chromed steel rivets
--	['chromium-rod']						={r=   , g=   , b=   , a=127},	--Chromed steel rod
	['chromium-tube']						={r=204, g=142, b=171, a=127},	--Chromed steel tube
	['computer-mk1']						={r=000, g=180, b=000, a=127},	--Basic computer
	['computer-mk2']						={r=255, g=000, b=000, a=127},	--Advanced computer
	['computer-mk3']						={r=000, g=044, b=255, a=127},	--Optical computer
	['controller-mk1']						={r=000, g=180, b=000, a=127},	--Logic controller
	['controller-mk2']						={r=255, g=000, b=000, a=127},	--Advanced controller
	['controller-mk3']						={r=000, g=044, b=255, a=127},	--Optical controller
	['copper-ball']							={r=255, g=040, b=000, a=127},	--Copper bearings
	['copper-beam']							={r=255, g=040, b=000, a=127},	--Copper-capped beam
	['copper-cable-heavy']					={r=255, g=040, b=000, a=127},	--Heavy copper cable
--	['copper-cable']						={r=255, g=040, b=000, a=127},	--Copper cable
	['copper-cartridge']					={r=255, g=040, b=000, a=127},	--Copper cartridge
	['copper-chassis-large']				={r=255, g=040, b=000, a=127},	--Large copper chassis
	['copper-chassis-small']				={r=255, g=040, b=000, a=127},	--Small copper chassis
--	['copper-floor']						={r=   , g=   , b=   , a=127},	--__ITEM__copper-gravel__ flooring
	['copper-foil']							={r=255, g=040, b=000, a=127},	--Copper foil
	['copper-gear-wheel']					={r=255, g=040, b=000, a=127},	--Copper gear wheel
	['copper-gravel']						={r=255, g=040, b=000, a=127},	--Crushed copper ore
	['copper-ingot']						={r=255, g=040, b=000, a=127},	--Copper ingot
--	['copper-junction-box']					={r=   , g=   , b=   , a=127},	--Copper cable junction box
	['copper-magazine']						={r=255, g=040, b=000, a=127},	--Copper magazine
	['copper-motor']						={r=255, g=040, b=000, a=127},	--Burner motor
--	['copper-ore']							={r=   , g=   , b=   , a=127},	--Copper ore
	['copper-piston']						={r=255, g=040, b=000, a=127},	--Copper piston
--	['copper-plate-heavy']					={r=   , g=   , b=   , a=127},	--Reinforced copper plate
--	['copper-plate']						={r=255, g=040, b=000, a=127},	--Copper plate
	['copper-powder']						={r=255, g=040, b=000, a=127},	--Copper powder
	['copper-pure']							={r=255, g=040, b=000, a=127},	--Refined copper
	['copper-repair-tool']					={r=255, g=040, b=000, a=127},	--Copper repair kit
	['copper-rivet']						={r=255, g=040, b=000, a=127},	--Copper rivets
	['copper-rod']							={r=255, g=040, b=000, a=127},	--Copper rod
	['copper-tube']							={r=255, g=040, b=000, a=127},	--Copper tube
--	['copper']								={r=   , g=   , b=   , a=127},	--Copper
--	['data-storage']						={r=   , g=   , b=   , a=127},	--Data disk array
--	['deadlock-power-armor-mk3']			={r=   , g=   , b=   , a=127},	--Power armour MK3
	['diamond-gem']							={r=222, g=237, b=255, a=127},	--Diamond
--	['duranium-ball']						={r=   , g=   , b=   , a=127},	--Duranium bearings
	['duranium-beam']						={r=222, g=157, b=076, a=127},	--Duranium beam
	['duranium-bulkhead']					={r=222, g=157, b=076, a=127},	--Duranium bulkhead
--	['duranium-cable']						={r=   , g=   , b=   , a=127},	--Duranium cable
--	['duranium-chassis-large']				={r=   , g=   , b=   , a=127},	--Large duranium chassis
--	['duranium-chassis-small']				={r=   , g=   , b=   , a=127},	--Small duranium chassis
	['duranium-ingot']						={r=222, g=157, b=076, a=127},	--Duranium ingot
	['duranium-plate-heavy']				={r=222, g=157, b=076, a=127},	--Reinforced duranium plate
	['duranium-plate']						={r=222, g=157, b=076, a=127},	--Duranium plate
	['duranium-ring']						={r=222, g=157, b=076, a=127},	--Duranium ring
	['duranium-rivet']						={r=222, g=157, b=076, a=127},	--Duranium rivets
	['duranium-rod']						={r=222, g=157, b=076, a=127},	--Duranium rod
	['duranium-tube']						={r=222, g=157, b=076, a=127},	--Duranium tube
--	['duranium']							={r=   , g=   , b=   , a=127},	--Duranium
--	['electric-engine-unit']				={r=164, g=000, b=000, a=127},	--Electric engine
--	['emerald-gem']							={r=   , g=   , b=   , a=127},	--Emerald
--	['engine-unit']							={r=164, g=164, b=000, a=127},	--Combustion engine
	['field-effector']						={r=000, g=025, b=255, a=127},	--Field effector
	['fusion-reactor-equipment']			={r=255, g=255, b=255, a=127},	--Miniature fission reactor
	['glass-cable-heavy']					={r=160, g=219, b=157, a=127},	--Bundled fibre-optic cable
	['glass-cable']							={r=160, g=219, b=157, a=127},	--Fibre-optic cable
	['glass-ingot']							={r=160, g=219, b=157, a=127},	--Glass ingot
--	['glass-lens']							={r=   , g=   , b=   , a=127},	--Lens
	['glass-plate']							={r=160, g=219, b=157, a=127},	--Glass sheet
--	['glass-rod']							={r=   , g=   , b=   , a=127},	--Glass rod
--	['glass']								={r=   , g=   , b=   , a=127},	--Glass
--	['gold-ball']							={r=   , g=   , b=   , a=127},	--Gold bearings
	['gold-cable-heavy']					={r=255, g=171, b=000, a=127},	--Heavy gold cable
	['gold-cable']							={r=255, g=171, b=000, a=127},	--Gold cable
--	['gold-floor']							={r=   , g=   , b=   , a=127},	--__ITEM__gold-gravel__ flooring
	['gold-foil']							={r=255, g=171, b=000, a=127},	--Gold foil
--	['gold-gear-wheel']						={r=   , g=   , b=   , a=127},	--Gold gear wheel
	['gold-gravel']							={r=255, g=171, b=000, a=127},	--Crushed gold ore
	['gold-ingot']							={r=255, g=171, b=000, a=127},	--Gold ingot
--	['gold-junction-box']					={r=   , g=   , b=   , a=127},	--Gold cable junction box
	['gold-ore']							={r=255, g=171, b=000, a=127},	--Gold ore
--	['gold-plate-heavy']					={r=   , g=   , b=   , a=127},	--Reinforced gold plate
	['gold-plate']							={r=255, g=171, b=000, a=127},	--Gold plate
	['gold-powder']							={r=255, g=171, b=000, a=127},	--Gold powder
	['gold-pure']							={r=255, g=171, b=000, a=127},	--Refined gold
--	['gold-rivet']							={r=   , g=   , b=   , a=127},	--Gold rivets
	['gold-rod']							={r=255, g=171, b=000, a=127},	--Gold rod
--	['gold-tube']							={r=   , g=   , b=   , a=127},	--Gold tube
--	['gold']								={r=   , g=   , b=   , a=127},	--Gold
	['graphite-electrode']					={r=040, g=040, b=040, a=127},	--Graphite electrode
	['gyroscope']							={r=150, g=150, b=150, a=127},	--Gyroscope
	['impulse-probe']						={r=219, g=171, b=076, a=127},	--Impulse probe
	['ion-probe']							={r=062, g=080, b=124, a=127},	--Ion probe
	['iron-ball']							={r=091, g=138, b=186, a=127},	--Iron bearings
	['iron-beam']							={r=091, g=138, b=186, a=127},	--Iron beam
--	['iron-cable']							={r=   , g=   , b=   , a=127},	--Iron cable
	['iron-cartridge']						={r=091, g=138, b=186, a=127},	--Iron cartridge
	['iron-chassis-large']					={r=091, g=138, b=186, a=127},	--Large iron chassis
	['iron-chassis-small']					={r=091, g=138, b=186, a=127},	--Small iron chassis
--	['iron-floor']							={r=   , g=   , b=   , a=127},	--__ITEM__iron-gravel__ flooring
--	['iron-foil']							={r=   , g=   , b=   , a=127},	--Iron foil
	['iron-gear-wheel']						={r=091, g=138, b=186, a=127},	--Iron gear wheel
	['iron-gravel']							={r=091, g=138, b=186, a=127},	--Crushed iron ore
	['iron-ingot']							={r=091, g=138, b=186, a=127},	--Iron ingot
	['iron-magazine']						={r=091, g=138, b=186, a=127},	--Iron magazine
	['iron-motor']							={r=091, g=138, b=186, a=127},	--Electric motor
--	['iron-ore']							={r=   , g=   , b=   , a=127},	--Iron ore
	['iron-piston']							={r=091, g=138, b=186, a=127},	--Iron piston
	['iron-plate-heavy']					={r=091, g=138, b=186, a=127},	--Reinforced iron plate
--	['iron-plate']							={r=091, g=138, b=186, a=127},	--Iron plate
	['iron-powder']							={r=091, g=138, b=186, a=127},	--Iron powder
	['iron-pure']							={r=091, g=138, b=186, a=127},	--Refined iron
	['iron-repair-tool']					={r=091, g=138, b=186, a=127},	--Iron repair kit
	['iron-rivet']							={r=091, g=138, b=186, a=127},	--Iron rivets
	['iron-stick']							={r=091, g=138, b=186, a=127},	--Iron rod
	['iron-tube']							={r=091, g=138, b=186, a=127},	--Iron tube
--	['iron']								={r=   , g=   , b=   , a=127},	--Iron
	['laser']								={r=255, g=000, b=000, a=127},	--Laser
--	['lead-ball']							={r=   , g=   , b=   , a=127},	--Lead bearings
--	['lead-cable']							={r=   , g=   , b=   , a=127},	--Lead cable
--	['lead-chassis-large']					={r=   , g=   , b=   , a=127},	--Large lead chassis
--	['lead-chassis-small']					={r=   , g=   , b=   , a=127},	--Small lead chassis
--	['lead-floor']							={r=   , g=   , b=   , a=127},	--Fancy plating
--	['lead-gear-wheel']						={r=   , g=   , b=   , a=127},	--Lead gear wheel
--	['lead-gravel']							={r=   , g=   , b=   , a=127},	--Crushed lead ore
	['lead-ingot']							={r=025, g=025, b=025, a=127},	--Lead ingot
--	['lead-ore']							={r=   , g=   , b=   , a=127},	--Lead ore
--	['lead-plate-heavy']					={r=   , g=   , b=   , a=127},	--Reinforced lead plate
	['lead-plate']							={r=025, g=025, b=025, a=127},	--Lead plate
	['lead-powder']							={r=025, g=025, b=025, a=127},	--Lead powder
	['lead-pure']							={r=025, g=025, b=025, a=127},	--Refined lead
--	['lead-rivet']							={r=   , g=   , b=   , a=127},	--Lead rivets
--	['lead-rod']							={r=   , g=   , b=   , a=127},	--Lead rod
	['lead-tube']							={r=025, g=025, b=025, a=127},	--Lead tube
--	['lead']								={r=   , g=   , b=   , a=127},	--Lead
	['magnetron']							={r=160, g=029, b=000, a=127},	--Magnetron
--	['module-housing']						={r=   , g=   , b=   , a=127},	--Module housing
--	['nothingness']							={r=   , g=   , b=   , a=127},	--Nothingness
--	['nuclear-reactor']						={r=   , g=   , b=   , a=127},	--Nuclear reactor
--	['physical-projectiles']				={r=   , g=   , b=   , a=127},	--Military
--	['plastic-bar']							={r=   , g=   , b=   , a=127},	--Plastic bar
--	['plastic-plate']						={r=   , g=   , b=   , a=127},	--Plastic sheet
--	['plastic-rod']							={r=   , g=   , b=   , a=127},	--Plastic rod
--	['plastic']								={r=   , g=   , b=   , a=127},	--Plastic
--	['platinum-foil']						={r=   , g=   , b=   , a=127},	--Platinum foil
--	['platinum-ingot']						={r=   , g=   , b=   , a=127},	--Platinum ingot
--	['platinum-powder']						={r=   , g=   , b=   , a=127},	--Platinum powder
	['platinum-pure']						={r=220, g=220, b=220, a=127},	--Refined platinum
	['processing-unit']						={r=000, g=044, b=255, a=127},	--Optical processor
	['quantum-ring']						={r=058, g=029, b=000, a=127},	--Quantum field ring
--	['rocket-silo']							={r=   , g=   , b=   , a=127},	--Rocket silo
	['rubber-natural']						={r=000, g=000, b=000, a=127},	--Natural rubber
	['rubber-sapling']						={r=171, g=142, b=000, a=127},	--Rubber sapling
	['rubber-vulcanised']					={r=180, g=000, b=000, a=127},	--Vulcanised rubber
	['rubber-wood']							={r=000, g=000, b=000, a=127},	--Rubber wood
	['ruby-gem']							={r=222, g=033, b=029, a=127},	--Ruby
	['sand']								={r=215, g=164, b=000, a=127},	--Sand
	['sapphire-gem']						={r=055, g=051, b=255, a=127},	--Sapphire
	['satellite']							={r=066, g=051, b=102, a=127},	--Orbital satellite
	['sensor']								={r=140, g=000, b=000, a=127},	--Sensor
	['simple-pollution-filter']				={r=171, g=051, b=000, a=127},	--Simple air filter
	['solid-fuel-red']						={r=100, g=000, b=000, a=127},	--Petroleum coke (low grade)
	['solid-fuel-yellow']					={r=055, g=047, b=000, a=127},	--Petroleum coke (high grade)
	['solid-fuel']							={r=000, g=000, b=000, a=127},	--Petroleum coke (anode grade)
--	['special-hat']							={r=   , g=   , b=   , a=127},	--Special hat
	['standard-pollution-filter']			={r=087, g=135, b=157, a=127},	--Standard air filter
	['steambot']							={r=164, g=025, b=000, a=127},	--Clockwork punkbot
	['steel-ball']							={r=215, g=215, b=215, a=127},	--Steel bearings
	['steel-beam']							={r=215, g=215, b=215, a=127},	--Steel beam
	['steel-bulkhead']						={r=215, g=215, b=215, a=127},	--Steel bulkhead
	['steel-cable']							={r=215, g=215, b=215, a=127},	--Steel cable
	['steel-cartridge']						={r=215, g=215, b=215, a=127},	--Steel cartridge
	['steel-chassis-large']					={r=215, g=215, b=215, a=127},	--Large steel chassis
	['steel-chassis-small']					={r=215, g=215, b=215, a=127},	--Small steel chassis
--	['steel-floor']							={r=   , g=   , b=   , a=127},	--__ITEM__steel-plate__ flooring
	['steel-gear-wheel']					={r=215, g=215, b=215, a=127},	--Steel gear wheel
	['steel-ingot']							={r=215, g=215, b=215, a=127},	--Steel ingot
	['steel-magazine']						={r=215, g=215, b=215, a=127},	--Steel magazine
	['steel-motor']							={r=215, g=215, b=215, a=127},	--Advanced motor
	['steel-piston']						={r=215, g=215, b=215, a=127},	--Steel piston
	['steel-plate-heavy']					={r=215, g=215, b=215, a=127},	--Reinforced steel plate
	['steel-plate']							={r=215, g=215, b=215, a=127},	--Steel plate
	['steel-repair-tool']					={r=215, g=215, b=215, a=127},	--Steel repair kit
	['steel-ring']							={r=215, g=215, b=215, a=127},	--Heavy coil
	['steel-rivet']							={r=215, g=215, b=215, a=127},	--Steel rivets
	['steel-rod']							={r=215, g=215, b=215, a=127},	--Steel rod
	['steel-tube']							={r=215, g=215, b=215, a=127},	--Steel tube
--	['steel']								={r=   , g=   , b=   , a=127},	--Steel
--	['stone-floor']							={r=   , g=   , b=   , a=127},	--__ITEM__stone-gravel__ flooring
--	['stone-gravel']						={r=   , g=   , b=   , a=127},	--Gravel
	['stone-ingot']							={r=069, g=069, b=069, a=127},	--Stone brick
--	['stone-ore']							={r=   , g=   , b=   , a=127},	--Stone
--	['stone']								={r=   , g=   , b=   , a=127},	--Stone
--	['sulfur']								={r=   , g=   , b=   , a=127},	--Sulphur
--	['tin-ball']							={r=   , g=   , b=   , a=127},	--Tin bearings
--	['tin-cable']							={r=   , g=   , b=   , a=127},	--Tin cable
--	['tin-floor']							={r=   , g=   , b=   , a=127},	--__ITEM__tin-gravel__ flooring
--	['tin-foil']							={r=   , g=   , b=   , a=127},	--Tin foil
	['tin-gear-wheel']						={r=069, g=069, b=080, a=127},	--Tin gear wheel
	['tin-gravel']							={r=069, g=069, b=080, a=127},	--Crushed tin ore
	['tin-ingot']							={r=069, g=069, b=080, a=127},	--Tin ingot
	['tin-ore']								={r=069, g=069, b=080, a=127},	--Tin ore
--	['tin-plate-heavy']						={r=   , g=   , b=   , a=127},	--Reinforced tin plate
	['tin-plate']							={r=069, g=069, b=080, a=127},	--Tin plate
	['tin-powder']							={r=069, g=069, b=080, a=127},	--Tin powder
	['tin-pure']							={r=069, g=069, b=080, a=127},	--Refined tin
--	['tin-rivet']							={r=   , g=   , b=   , a=127},	--Tin rivets
	['tin-rod']								={r=069, g=069, b=080, a=127},	--Tin rod
--	['tin-tube']							={r=   , g=   , b=   , a=127},	--Tin tube
--	['tin']									={r=   , g=   , b=   , a=127},	--Tin
	['titanium-ball']						={r=118, g=040, b=138, a=127},	--Titanium bearings
	['titanium-beam']						={r=118, g=040, b=138, a=127},	--Titanium beam
	['titanium-bulkhead']					={r=118, g=040, b=138, a=127},	--Shielded titanium bulkhead
--	['titanium-cable']						={r=   , g=   , b=   , a=127},	--Titanium cable
	['titanium-cartridge']					={r=118, g=040, b=138, a=127},	--Titanium cartridge
	['titanium-chassis-large']				={r=118, g=040, b=138, a=127},	--Large titanium chassis
	['titanium-chassis-small']				={r=118, g=040, b=138, a=127},	--Small titanium chassis
	['titanium-gear-wheel']					={r=118, g=040, b=138, a=127},	--Titanium gear wheel
--	['titanium-gravel']						={r=   , g=   , b=   , a=127},	--Crushed titanium ore
	['titanium-ingot']						={r=118, g=040, b=138, a=127},	--Titanium ingot
	['titanium-magazine']					={r=118, g=040, b=138, a=127},	--Titanium magazine
--	['titanium-ore']						={r=   , g=   , b=   , a=127},	--Titanium ore
--	['titanium-piston']						={r=   , g=   , b=   , a=127},	--Titanium piston
	['titanium-plate-heavy']				={r=118, g=040, b=138, a=127},	--Reinforced titanium plate
	['titanium-plate']						={r=118, g=040, b=138, a=127},	--Titanium plate
	['titanium-powder']						={r=118, g=040, b=138, a=127},	--Titanium powder
	['titanium-pure']						={r=118, g=040, b=138, a=127},	--Refined titanium
	['titanium-repair-tool']				={r=118, g=040, b=138, a=127},	--Titanium repair kit
	['titanium-rivet']						={r=118, g=040, b=138, a=127},	--Titanium rivets
	['titanium-rod']						={r=118, g=040, b=138, a=127},	--Titanium rod
--	['titanium-tube']						={r=   , g=   , b=   , a=127},	--Titanium tube
--	['titanium']							={r=   , g=   , b=   , a=127},	--Titanium
	['uranium-cartridge']					={r=000, g=215, b=000, a=127},	--Depleted uranium cartridge
	['uranium-magazine']					={r=000, g=215, b=000, a=127},	--Depleted uranium magazine
	['wood-beam']							={r=255, g=138, b=066, a=127},	--Wooden beam
--	['wood-plank']							={r=   , g=   , b=   , a=127},	--Wooden plank
	['wood-sapling']						={r=062, g=135, b=000, a=127},	--Sapling
--	['wood-stick']							={r=   , g=   , b=   , a=127},	--Stick

	['dirty-water']							={r=122, g=053, b=000, a=127},	--Dirty water
--	['leaded-fuel']							={r=   , g=   , b=   , a=127},	--Leaded high octane fuel
	['plastic-fluid']						={r=255, g=255, b=255, a=127},	--Liquid plastic
	['chromic-acid']						={r=255, g=255, b=255, a=127},	--Chromic acid
--	['sulfuric-acid']						={r=   , g=   , b=   , a=127},	--Sulphuric acid
	
	['burner-generator-equipment']			={r=171, g=051, b=000, a=127},	--Bronze generator equipment
	['bronze-roboport-equipment']			={r=171, g=051, b=000, a=127},	--Bronze roboport equipment
	['iron-burner-generator-equipment']		={r=091, g=138, b=186, a=127},	--Iron generator equipment
	['assembling-machine-1']				={r=162, g=016, b=000, a=127},	--Copper assembler
	['assembling-machine-2']				={r=091, g=138, b=186, a=127},	--Electric assembler
	['assembling-machine-3']				={r=162, g=016, b=000, a=127},	--Laser assembler
	['big-wooden-pole']						={r=100, g=027, b=000, a=127},	--Big wooden pole
	['bronze-chest']						={r=171, g=051, b=000, a=127},	--Bronze chest
	['bronze-display']						={r=171, g=051, b=000, a=127},	--Bronze display plate
	['bronze-forestry']						={r=171, g=051, b=000, a=127},	--Bronze autoforester
	['bronze-furnace']						={r=171, g=051, b=000, a=127},	--Bronze furnace
	['bronze-grinder']						={r=171, g=051, b=000, a=127},	--Bronze ore crusher
	['bronze-storage-depot']				={r=171, g=051, b=000, a=127},	--Bronze storage depot
	['burner-mining-drill']					={r=255, g=040, b=000, a=127},	--Copper mining drill
	['chrome-drill']						={r=204, g=142, b=171, a=127},	--Advanced mining drill
	['chromium-photon-turret']				={r=086, g=071, b=056, a=127},	--Photonic cannon
	['copper-incinerator']					={r=255, g=040, b=000, a=127},	--Copper incinerator
	['copper-lab']							={r=255, g=040, b=000, a=127},	--Copper laboratory
	['copper-turret']						={r=255, g=040, b=000, a=127},	--Scattergun turret
--	['deadlock-rubber-tree']				={r=   , g=   , b=   , a=127},	--Rubber tree
	['electric-locomotive']					={r=000, g=084, b=222, a=127},	--Electric locomotive
	['flare-stack']							={r=215, g=084, b=000, a=127},	--Flare stack
	['gold-display']						={r=255, g=171, b=000, a=127},	--Gold display plate
--	['gold-ore']							={r=   , g=   , b=   , a=127},	--Gold ore
	['gun-turret']							={r=040, g=073, b=000, a=127},	--Minigun turret
	['iron-battery-charger']				={r=091, g=138, b=186, a=127},	--Battery charger
	['iron-battery-discharger']				={r=091, g=138, b=186, a=127},	--Battery discharger
	['iron-disassembler']					={r=091, g=138, b=186, a=127},	--Disassembler
	['iron-display']						={r=091, g=138, b=186, a=127},	--Iron display plate
	['iron-drill']							={r=091, g=138, b=186, a=127},	--Electric mining drill
	['iron-forestry']						={r=091, g=138, b=186, a=127},	--Electric auto-forester
	['iron-furnace']						={r=091, g=138, b=186, a=127},	--Electric furnace
	['iron-grinder']						={r=091, g=138, b=186, a=127},	--Electric ore crusher
	['iron-incinerator']					={r=091, g=138, b=186, a=127},	--Electric incinerator
	['lab']									={r=086, g=071, b=056, a=127},	--Electric laboratory
	['logistics-depot-active']				={r=109, g=018, b=193, a=127},	--Logistics depot (active)
	['logistics-depot-buffer']				={r=000, g=146, b=000, a=127},	--Logistics depot (buffer)
	['logistics-depot-passive']				={r=168, g=000, b=000, a=127},	--Logistics depot (passive)
	['logistics-depot-requester']			={r=022, g=080, b=186, a=127},	--Logistics depot (requester)
	['logistics-depot-storage']				={r=197, g=168, b=000, a=127},	--Logistics depot (storage)
	['long-handed-burner-inserter']			={r=166, g=060, b=000, a=127},	--Long burner inserter
	['monowheel']							={r=109, g=022, b=000, a=127},	--Monowheel
--	['projector-default']					={r=   , g=   , b=   , a=127},	--Hologram projector
	['quantum-lab']							={r=073, g=124, b=186, a=127},	--Quantum laboratory
--	['small-electric-pole']					={r=   , g=   , b=   , a=127},	--Small wooden pole
	['small-tank']							={r=100, g=075, b=071, a=127},	--Small buffer tank
--	['solar-array']							={r=   , g=   , b=   , a=127},	--Solar array
	['steel-age-furnace']					={r=215, g=215, b=215, a=127},	--Advanced furnace
	['steel-cleaner']						={r=215, g=215, b=215, a=127},	--Water filtration plant
	['steel-electroplater']					={r=215, g=215, b=215, a=127},	--Electroplater
	['steel-emp-turret']					={r=215, g=215, b=215, a=127},	--Electric arc turret
	['steel-grinder']						={r=215, g=215, b=215, a=127},	--Advanced ore crusher
	['steel-storage-depot']					={r=215, g=215, b=215, a=127},	--Steel storage depot
	['steel-tank']							={r=215, g=215, b=215, a=127},	--High pressure tank
	['steel-washer']						={r=215, g=215, b=215, a=127},	--Purification plant
	['stone-age-furnace']					={r=087, g=066, b=036, a=127},	--Stone furnace
	['tin-chest']							={r=069, g=069, b=080, a=127},	--Tin chest
--	['tin-ore']								={r=   , g=   , b=   , a=127},	--Tin ore


}