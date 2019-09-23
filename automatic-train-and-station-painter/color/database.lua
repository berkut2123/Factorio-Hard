-- @doktorstick
-- See the bottom of the file on how to include standalone
-- files (instead of modifying this master list).

--default colors
default_cargo_color 		= {['r']=109, ['g']=058, ['b']=000, ['a']=127,}
default_fluid_color 		= {['r']=000, ['g']=000, ['b']=000, ['a']=000,} -- hides modded fluid wagon masks
default_loco_color 			= {['r']=228, ['g']=209, ['b']=199, ['a']=127,}

--entity colors
colors = {
	-- base game
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
	['crude-oil-barrel']					={r=000, g=000, b=000, a=127},
	['heavy-oil-barrel']					={r=255, g=050, b=000, a=127},
	['light-oil-barrel']					={r=255, g=150, b=000, a=127},
	['lubricant-barrel']					={r=020, g=200, b=000, a=127},
	['petroleum-gas-barrel']				={r=090, g=000, b=090, a=127},
	['sulfuric-acid-barrel']				={r=255, g=200, b=000, a=127},
	['water-barrel']						={r=000, g=120, b=255, a=127},
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
-- --------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------

	-- mod colors --

-- --------------------------------------------------------------------------------------------

	--5dim

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

	--angel's

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
	['thermal-water-barrel']				={r=255, g=090, b=000, a=127},	--Thermal Water Barrel
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
	['slag-slurry-barrel']					={r=137, g=111, b=000, a=127},	--Slag Slurry Barrel
	['mineral-sludge']						={r=255, g=209, b=118, a=127},	--Mineral Sludge
	['mineral-sludge-barrel']				={r=255, g=209, b=118, a=127},	--Mineral Sludge Barrel
	['crystal-slurry']						={r=255, g=209, b=118, a=127},	--Crystal Slurry
	['crystal-slurry-barrel']				={r=255, g=209, b=118, a=127},	--Crystal Slurry Barrel
	['crystal-seedling']					={r=255, g=209, b=118, a=127},	--Crystal Seedling
	['crystal-seedling-barrel']				={r=255, g=209, b=118, a=127},	--Crystal Seedling Barrel
	['crystal-matrix']						={r=255, g=209, b=118, a=127},	--Crystal Matrix
	['crystal-matrix-barrel']				={r=255, g=209, b=118, a=127},	--Crystal Matrix Barrel
	['angels-ore8-sludge']					={r=155, g=180, b=000, a=127},	--Ferrous Sludge
	['angels-ore8-sludge-barrel']			={r=155, g=180, b=000, a=127},	--Ferrous Sludge Barrel
	['angels-ore8-solution']				={r=255, g=120, b=000, a=127},	--Ferrous Solution
	['angels-ore8-solution-barrel']			={r=255, g=120, b=000, a=127},	--Ferrous Solution Barrel
	['angels-ore8-anode-sludge']			={r=255, g=120, b=000, a=127},	--Ferrous Anode Sludge
	['angels-ore8-anode-sludge-barrel']		={r=255, g=120, b=000, a=127},	--Ferrous Anode Sludge Barrel
	['angels-ore8-slime']					={r=255, g=120, b=000, a=127},	--Ferrous Essence
	['angels-ore8-slime-barrel']			={r=255, g=120, b=000, a=127},	--Ferrous Essence Barrel
	['angels-ore9-sludge']					={r=255, g=120, b=000, a=127},	--Cupric Sludge
	['angels-ore9-sludge-barrel']			={r=255, g=120, b=000, a=127},	--Cupric Sludge Barrel
	['angels-ore9-solution']				={r=255, g=120, b=000, a=127},	--Cupric Solution
	['angels-ore9-solution-barrel']			={r=255, g=120, b=000, a=127},	--Cupric Solution Barrel
	['angels-ore9-anode-sludge']			={r=255, g=120, b=000, a=127},	--Cupric Anode Sludge
	['angels-ore9-anode-sludge-barrel']		={r=255, g=120, b=000, a=127},	--Cupric Anode Sludge Barrel
	['angels-ore9-slime']					={r=255, g=120, b=000, a=127},	--Cupric Essence
	['angels-ore9-slime-barrel']			={r=255, g=120, b=000, a=127},	--Cupric Essence Barrel
	['thermal-extractor']					={r=050, g=050, b=050, a=127},	--Thermal Water Extractor
	['water-purified']						={r=217, g=206, b=255, a=127},	--Purified Water
	['water-purified-barrel']				={r=217, g=206, b=255, a=127},	--Purified Water Barrel
	['water-mineralized']					={r=255, g=224, b=206, a=127},	--Mineralized Water
	['water-mineralized-barrel']			={r=255, g=224, b=206, a=127},	--Mineralized Water Barrel
	['water-yellow-waste']					={r=255, g=224, b=093, a=127},	--Sulfuric Waste Water
	['water-yellow-waste-barrel']			={r=255, g=224, b=093, a=127},	--Sulfuric Waste Water Barrel
	['water-red-waste']						={r=255, g=075, b=078, a=127},	--Nitric Waste Water
	['water-red-waste-barrel']				={r=255, g=075, b=078, a=127},	--Nitric Waste Water Barrel
	['water-green-waste']					={r=133, g=255, b=133, a=127},	--Chloric Waste Water
	['water-green-waste-barrel']			={r=133, g=255, b=133, a=127},	--Chloric Waste Water Barrel
	['water-greenyellow-waste']				={r=255, g=233, b=133, a=127},	--Fluoric Waste Water
	['water-greenyellow-waste-barrel']		={r=255, g=233, b=133, a=127},	--Fluoric Waste Water Barrel
	['water-saline']						={r=219, g=219, b=255, a=127},	--Saline Water
	['water-saline-barrel']					={r=219, g=219, b=255, a=127},	--Saline Water Barrel
	['water-viscous-mud']					={r=219, g=219, b=178, a=127},	--Viscous Mud Water
	['water-viscous-mud-barrel']			={r=219, g=219, b=178, a=127},	--Viscous Mud Water Barrel
	['water-heavy-mud']						={r=219, g=219, b=178, a=127},	--Heavy Mud Water
	['water-heavy-mud-barrel']				={r=219, g=219, b=178, a=127},	--Heavy Mud Water Barrel
	['water-concentrated-mud']				={r=219, g=219, b=178, a=127},	--Concentrated Mud Water
	['water-concentrated-mud-barrel']		={r=219, g=219, b=178, a=127},	--Concentrated Mud Water Barrel
	['water-light-mud']						={r=219, g=219, b=178, a=127},	--Light Mud Water
	['water-light-mud-barrel']				={r=219, g=219, b=178, a=127},	--Light Mud Water Barrel
	['water-thin-mud']						={r=219, g=219, b=178, a=127},	--Thin Mud Water
	['water-thin-mud-barrel']				={r=219, g=219, b=178, a=127},	--Thin Mud Water Barrel
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
	['gas-hydrogen-barrel']					={r=255, g=255, b=255, a=127},	--Hydrogen Gas Barrel
	['gas-oxygen']							={r=255, g=000, b=000, a=127},	--Oxygen Gas
	['gas-oxygen-barrel']					={r=255, g=000, b=000, a=127},	--Oxygen Gas Barrel
	['gas-hydrogen-peroxide']				={r=255, g=000, b=000, a=127},	--Hydrogen Peroxide Gas
	['gas-hydrogen-peroxide-barrel']		={r=255, g=000, b=000, a=127},	--Hydrogen Peroxide Gas Barrel
	['gas-chlorine']						={r=000, g=255, b=000, a=127},	--Chlorine Gas
	['gas-chlorine-barrel']					={r=000, g=255, b=000, a=127},	--Chlorine Gas Barrel
	['gas-hydrogen-chloride']				={r=000, g=255, b=000, a=127},	--Hydrogen Chloride Gas
	['gas-hydrogen-chloride-barrel']		={r=000, g=255, b=000, a=127},	--Hydrogen Chloride Gas Barrel
	['liquid-hydrochloric-acid']			={r=127, g=255, b=127, a=127},	--Hydrochloric Acid
	['liquid-hydrochloric-acid-barrel']		={r=127, g=255, b=127, a=127},	--Hydrochloric Acid Barrel
	['gas-carbon-monoxide']					={r=255, g=100, b=100, a=127},	--Carbon Monoxide
	['gas-carbon-monoxide-barrel']			={r=255, g=100, b=100, a=127},	--Carbon Monoxide Barrel
	['gas-carbon-dioxide']					={r=255, g=100, b=100, a=127},	--Carbon Dioxide
	['gas-carbon-dioxide-barrel']			={r=255, g=100, b=100, a=127},	--Carbon Dioxide Barrel
	['liquid-hydrofluoric-acid']			={r=046, g=255, b=162, a=127},	--Hydrofluoric Acid
	['liquid-hydrofluoric-acid-barrel']		={r=046, g=255, b=162, a=127},	--Hydrofluoric Acid Barrel
	['gas-allylchlorid']					={r=082, g=255, b=064, a=127},	--Allylchlorid Gas
	['gas-allylchlorid-barrel']				={r=082, g=255, b=064, a=127},	--Allylchlorid Gas Barrel
	['gas-epichlorhydrin']					={r=082, g=255, b=064, a=127},	--Epichlorhydrin Gas
	['gas-epichlorhydrin-barrel']			={r=082, g=255, b=064, a=127},	--Epichlorhydrin Gas Barrel
	['gas-glycerol']						={r=255, g=100, b=100, a=127},	--Glycerol Gas
	['gas-glycerol-barrel']					={r=255, g=100, b=100, a=127},	--Glycerol Gas Barrel
	['liquid-perchloric-acid']				={r=127, g=255, b=127, a=127},	--Perchloric Acid
	['liquid-perchloric-acid-barrel']		={r=127, g=255, b=127, a=127},	--Perchloric Acid Barrel
	['gas-phosgene']						={r=127, g=255, b=127, a=127},	--Phosgene Gas
	['gas-phosgene-barrel']					={r=127, g=255, b=127, a=127},	--Phosgene Gas Barrel
	['liquid-ferric-chloride-solution']		={r=127, g=255, b=127, a=127},	--Ferric Chloride Solution
	['liquid-ferric-chloride-solution-barrel']	={r=127, g=255, b=127, a=127},	--Ferric Chloride Solution Barrel
	['liquid-cupric-chloride-solution']		={r=127, g=255, b=127, a=127},	--Cupric Chloride Solution
	['liquid-cupric-chloride-solution-barrel']	={r=127, g=255, b=127, a=127},	--Cupric Chloride Solution Barrel
	['gas-methane']							={r=100, g=100, b=100, a=127},	--Methane Gas
	['gas-methane-barrel']					={r=100, g=100, b=100, a=127},	--Methane Gas Barrel
	['gas-ethane']							={r=100, g=100, b=100, a=127},	--Ethane Gas
	['gas-ethane-barrel']					={r=100, g=100, b=100, a=127},	--Ethane Gas Barrel
	['gas-butane']							={r=150, g=150, b=150, a=127},	--Butane Gas
	['gas-butane-barrel']					={r=150, g=150, b=150, a=127},	--Butane Gas Barrel
	['gas-propene']							={r=024, g=024, b=024, a=127},	--Propene Gas
	['gas-propene-barrel']					={r=024, g=024, b=024, a=127},	--Propene Gas Barrel
	['liquid-naphtha']						={r=195, g=064, b=064, a=127},	--Naphtha
	['liquid-naphtha-barrel']				={r=195, g=064, b=064, a=127},	--Naphtha Barrel
	['liquid-mineral-oil']					={r=064, g=195, b=064, a=127},	--Base Mineral Oil
	['liquid-mineral-oil-barrel']			={r=064, g=195, b=064, a=127},	--Base Mineral Oil Barrel
	['liquid-fuel-oil']						={r=255, g=231, b=000, a=127},	--Fuel Oil
	['liquid-fuel-oil-barrel']				={r=255, g=231, b=000, a=127},	--Fuel Oil Barrel
	['gas-methanol']						={r=115, g=027, b=031, a=127},	--Methanol Gas
	['gas-methanol-barrel']					={r=115, g=027, b=031, a=127},	--Methanol Gas Barrel
	['gas-ethylene']						={r=180, g=180, b=180, a=127},	--Ethylene Gas
	['gas-ethylene-barrel']					={r=180, g=180, b=180, a=127},	--Ethylene Gas Barrel
	['gas-benzene']							={r=180, g=180, b=180, a=127},	--Benzene Gas
	['gas-benzene-barrel']					={r=180, g=180, b=180, a=127},	--Benzene Gas Barrel
	['gas-synthesis']						={r=255, g=118, b=220, a=127},	--Synthesis Gas
	['gas-synthesis-barrel']				={r=255, g=118, b=220, a=127},	--Synthesis Gas Barrel
	['gas-butadiene']						={r=040, g=040, b=040, a=127},	--Butadiene Gas
	['gas-butadiene-barrel']				={r=040, g=040, b=040, a=127},	--Butadiene Gas Barrel
	['gas-phenol']							={r=155, g=046, b=046, a=127},	--Phenol Gas
	['gas-phenol-barrel']					={r=155, g=046, b=046, a=127},	--Phenol Gas Barrel
	['gas-ethylbenzene']					={r=180, g=180, b=180, a=127},	--Ethylbenzene Gas
	['gas-ethylbenzene-barrel']				={r=180, g=180, b=180, a=127},	--Ethylbenzene Gas Barrel
	['gas-styrene']							={r=210, g=210, b=210, a=127},	--Styrene Gas
	['gas-styrene-barrel']					={r=210, g=210, b=210, a=127},	--Styrene Gas Barrel
	['gas-formaldehyde']					={r=155, g=046, b=046, a=127},	--Formaldehyde Gas
	['gas-formaldehyde-barrel']				={r=155, g=046, b=046, a=127},	--Formaldehyde Gas Barrel
	['gas-polyethylene']					={r=240, g=240, b=240, a=127},	--Polyethylene Gas
	['gas-polyethylene-barrel']				={r=240, g=240, b=240, a=127},	--Polyethylene Gas Barrel
	['gas-chlor-methane']					={r=035, g=235, b=000, a=127},	--Chlor Methane Gas
	['gas-chlor-methane-barrel']			={r=035, g=235, b=000, a=127},	--Chlor Methane Gas Barrel
	['liquid-toluene']						={r=065, g=065, b=065, a=127},	--Toluene
	['liquid-toluene-barrel']				={r=065, g=065, b=065, a=127},	--Toluene Barrel
	['gas-bisphenol-a']						={r=255, g=177, b=177, a=127},	--Bisphenol-A Gas
	['gas-bisphenol-a-barrel']				={r=255, g=177, b=177, a=127},	--Bisphenol-A Gas Barrel
	['gas-acetone']							={r=255, g=053, b=049, a=127},	--Acetone Gas
	['gas-acetone-barrel']					={r=255, g=053, b=049, a=127},	--Acetone Gas Barrel
	['gas-compressed-air']					={r=255, g=255, b=255, a=127},	--Compressed Air
	['gas-compressed-air-barrel']			={r=255, g=255, b=255, a=127},	--Compressed Air Barrel
	['gas-nitrogen']						={r=000, g=027, b=255, a=127},	--Nitrogen Gas
	['gas-nitrogen-barrel']					={r=000, g=027, b=255, a=127},	--Nitrogen Gas Barrel
	['gas-ammonia']							={r=000, g=027, b=255, a=127},	--Ammonia Gas
	['gas-ammonia-barrel']					={r=000, g=027, b=255, a=127},	--Ammonia Gas Barrel
	['gas-nitrogen-monoxide']				={r=000, g=027, b=255, a=127},	--Nitrogen Monoxide Gas
	['gas-nitrogen-monoxide-barrel']		={r=000, g=027, b=255, a=127},	--Nitrogen Monoxide Gas Barrel
	['gas-nitrogen-dioxide']				={r=000, g=000, b=255, a=127},	--Nitrogen Dioxide Gas
	['gas-nitrogen-dioxide-barrel']			={r=000, g=000, b=255, a=127},	--Nitrogen Dioxide Gas Barrel
	['gas-dinitrogen-tetroxide']			={r=000, g=000, b=255, a=127},	--Dinitrogen Tetroxide Gas
	['gas-dinitrogen-tetroxide-barrel']		={r=000, g=000, b=255, a=127},	--Dinitrogen Tetroxide Gas Barrel
	['gas-ammonium-chloride']				={r=050, g=050, b=255, a=127},	--Ammonium Chloride Gas
	['gas-ammonium-chloride-barrel']		={r=050, g=050, b=255, a=127},	--Ammonium Chloride Gas Barrel
	['gas-urea']							={r=080, g=080, b=255, a=127},	--Urea Gas
	['gas-urea-barrel']						={r=080, g=080, b=255, a=127},	--Urea Gas Barrel
	['gas-melamine']						={r=080, g=080, b=255, a=127},	--Melamine Gas
	['gas-melamine-barrel']					={r=080, g=080, b=255, a=127},	--Melamine Gas Barrel
	['liquid-nitric-acid']					={r=080, g=100, b=000, a=127},	--Nitric Acid
	['liquid-nitric-acid-barrel']			={r=080, g=100, b=000, a=127},	--Nitric Acid Barrel
	['gas-monochloramine']					={r=100, g=100, b=255, a=127},	--Monochloramine Gas
	['gas-monochloramine-barrel']			={r=100, g=100, b=255, a=127},	--Monochloramine Gas Barrel
	['gas-hydrazine']						={r=100, g=100, b=255, a=127},	--Hydrazine Gas
	['gas-hydrazine-barrel']				={r=100, g=100, b=255, a=127},	--Hydrazine Gas Barrel
	['gas-methylamine']						={r=160, g=150, b=000, a=127},	--Methylamine Gas
	['gas-methylamine-barrel']				={r=160, g=150, b=000, a=127},	--Methylamine Gas Barrel
	['gas-dimethylamine']					={r=160, g=160, b=255, a=127},	--Dimethylamine Gas
	['gas-dimethylamine-barrel']			={r=160, g=160, b=255, a=127},	--Dimethylamine Gas Barrel
	['gas-dimethylhydrazine']				={r=180, g=160, b=255, a=127},	--Dimethylhydrazine Gas
	['gas-dimethylhydrazine-barrel']		={r=180, g=160, b=255, a=127},	--Dimethylhydrazine Gas Barrel
	['gas-natural-1']						={r=050, g=100, b=050, a=127},	--Natural Gas
	['gas-natural-1-barrel']				={r=050, g=100, b=050, a=127},	--Natural Gas Barrel
	['liquid-multi-phase-oil']				={r=100, g=140, b=100, a=127},	--Multi Phase Oil
	['liquid-multi-phase-oil-barrel']		={r=100, g=140, b=100, a=127},	--Multi Phase Oil Barrel
	['gas-raw-1']							={r=050, g=140, b=050, a=127},	--Raw Gas
	['gas-raw-1-barrel']					={r=050, g=140, b=050, a=127},	--Raw Gas Barrel
	['liquid-condensates']					={r=210, g=210, b=210, a=127},	--Gas Condensates
	['liquid-condensates-barrel']			={r=210, g=210, b=210, a=127},	--Gas Condensates Barrel
	['gas-acid']							={r=255, g=255, b=000, a=127},	--Acid Gas
	['gas-acid-barrel']						={r=255, g=255, b=000, a=127},	--Acid Gas Barrel
	['liquid-ngl']							={r=080, g=140, b=080, a=127},	--Natural Gas Liquids
	['liquid-ngl-barrel']					={r=080, g=140, b=080, a=127},	--Natural Gas Liquids Barrel
	['gas-residual']						={r=173, g=000, b=151, a=127},	--Residual Gas
	['gas-residual-barrel']					={r=173, g=000, b=151, a=127},	--Residual Gas Barrel
	['gas-hydrogen-sulfide']				={r=255, g=255, b=030, a=127},	--Hydrogen Sulfide Gas
	['gas-hydrogen-sulfide-barrel']			={r=255, g=255, b=030, a=127},	--Hydrogen Sulfide Gas Barrel
	['gas-sulfur-dioxide']					={r=255, g=255, b=030, a=127},	--Sulfur Dioxide Gas
	['gas-sulfur-dioxide-barrel']			={r=255, g=255, b=030, a=127},	--Sulfur Dioxide Gas Barrel
	['liquid-sulfuric-acid']				={r=255, g=255, b=030, a=127},	--Sulfuric Acid
	['liquid-sulfuric-acid-barrel']			={r=255, g=255, b=030, a=127},	--Sulfuric Acid Barrel
	['liquid-plastic']						={r=228, g=199, b=255, a=127},	--Liquid Plastic
	['liquid-plastic-barrel']				={r=228, g=199, b=255, a=127},	--Liquid Plastic Barrel
	['liquid-resin']						={r=255, g=188, b=100, a=127},	--Liquid Resin
	['liquid-resin-barrel']					={r=255, g=188, b=100, a=127},	--Liquid Resin Barrel
	['liquid-rubber']						={r=104, g=255, b=148, a=127},	--Liquid Rubber
	['liquid-rubber-barrel']				={r=104, g=255, b=148, a=127},	--Liquid Rubber Barrel
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
	['liquid-chlorauric-acid-barrel']		={r=255, g=180, b=000, a=127},	--Chlorauric Acid Barrel
	['liquid-hexachloroplatinic-acid']		={r=255, g=191, b=180, a=127},	--Hexachloroplatinic Acid
	['liquid-hexachloroplatinic-acid-barrel']	={r=255, g=191, b=180, a=127},	--Hexachloroplatinic Acid Barrel
	['gas-silane']							={r=231, g=231, b=231, a=127},	--Silane Gas
	['gas-silane-barrel']					={r=231, g=231, b=231, a=127},	--Silane Gas Barrel
	['liquid-trichlorosilane']				={r=231, g=231, b=231, a=127},	--Trichlorosilane
	['liquid-trichlorosilane-barrel']		={r=231, g=231, b=231, a=127},	--Trichlorosilane Barrel
	['liquid-titanium-tetrachloride']		={r=231, g=169, b=231, a=127},	--Titanium Tetrachloride
	['liquid-titanium-tetrachloride-barrel']	={r=231, g=169, b=231, a=127},	--Titanium Tetrachloride Barrel
	['gas-tungsten-hexafluoride']			={r=148, g=075, b=038, a=127},	--Tungsten Hexafluoride Gas
	['gas-tungsten-hexafluoride-barrel']	={r=148, g=075, b=038, a=127},	--Tungsten Hexafluoride Gas Barrel
	['liquid-tungstic-acid']				={r=148, g=075, b=038, a=127},	--Tungstic Acid
	['liquid-tungstic-acid-barrel']			={r=148, g=075, b=038, a=127},	--Tungstic Acid Barrel
	['liquid-hexafluorosilicic-acid']		={r=231, g=231, b=231, a=127},	--Hexafluorosilicic Acid
	['liquid-hexafluorosilicic-acid-barrel']	={r=231, g=231, b=231, a=127},	--Hexafluorosilicic Acid Barrel
	['liquid-coolant']						={r=070, g=115, b=255, a=127},	--Coolant
	['liquid-coolant-barrel']				={r=070, g=115, b=255, a=127},	--Coolant Barrel
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

	--bob's

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
	['lithia-water-barrel']				={r=000, g=160, b=255, a=127},	--Lithia Water barrel

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
	['alien-acid-barrel']				={r=153, g=000, b=255, a=127},	--Alien acid barrel
	['alien-poison-barrel']				={r=062, g=255, b=025, a=127},	--Alien poison barrel
	['alien-explosive-barrel']			={r=255, g=255, b=022, a=127},	--Alien explosive barrel
	['alien-fire-barrel']				={r=255, g=033, b=029, a=127},	--Alien fire barrel
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
	['hydrogen-barrel']					={r=255, g=255, b=255, a=127},	--Bottled hydrogen
	['deuterium-barrel']				={r=255, g=255, b=162, a=127},	--Bottled deuterium
	['oxygen-barrel']					={r=255, g=000, b=000, a=127},	--Bottled oxygen
	['nitrogen-barrel']					={r=000, g=000, b=255, a=127},	--Bottled nitrogen
	['chlorine-barrel']					={r=073, g=255, b=102, a=127},	--Bottled chlorine
	['hydrogen-chloride-barrel']		={r=120, g=255, b=033, a=127},	--Bottled hydrogen chloride
	['sulfur-dioxide-barrel']			={r=255, g=255, b=000, a=127},	--Bottled sulfur dioxide
	['nitrogen-dioxide-barrel']			={r=255, g=025, b=255, a=127},	--Bottled nitrogen dioxide
	['nitric-acid-barrel']				={r=255, g=149, b=000, a=127},	--Nitric acid barrel
	['tungstic-acid-barrel']			={r=029, g=087, b=255, a=127},	--Tungstic acid barrel
	['ferric-chloride-solution-barrel']	={r=255, g=193, b=087, a=127},	--Ferric chloride solution canister
	['liquid-fuel-barrel']				={r=255, g=211, b=138, a=127},	--Liquid fuel canister
	['pure-water-barrel']				={r=131, g=186, b=255, a=127},	--Pure Water barrel

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
	['ammonia-barrel']					={r=155, g=137, b=239, a=127},	--Bottled ammonia
	['dinitrogen-tetroxide-barrel']		={r=231, g=206, b=111, a=127},	--Dinitrogen tetroxide barrel
	['hydrazine-barrel']				={r=195, g=188, b=255, a=127},	--Hydrazine barrel
	['hydrogen-peroxide-barrel']		={r=000, g=130, b=255, a=127},	--Hydrogen peroxide barrel
	['nitric-oxide-barrel']				={r=255, g=055, b=255, a=127},	--Bottled nitric oxide
	['nitrogen-dioxide-barrel']			={r=255, g=000, b=255, a=127},	--Bottled nitrogen dioxide
	
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
--	['glycerol-barrel']						={r=   , g=   , b=   , a=127},	--Glycerol barrel
--	['nitroglycerin']						={r=   , g=   , b=   , a=127},	--Nitroglycerin
--	['nitroglycerin-barrel']				={r=   , g=   , b=   , a=127},	--Nitroglycerin barrel
--	['sulfuric-nitric-acid']				={r=   , g=   , b=   , a=127},	--Sulfuric and Nitric acid mixture
--	['sulfuric-nitric-acid-barrel']			={r=   , g=   , b=   , a=127},	--Sulfuric and Nitric acid mixture barrel
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

	--dark matter replicators
	['tenemut']								={r=137, g=089, b=131, a=127},

-- --------------------------------------------------------------------------------------------

	--deadlock's stacking
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

	--eventually this should be removed and replaced with a deadlock-stack- parsing algorithm for automatic stack integration

	--vanilla stacks
	['deadlock-stack-wood']					={r=226, g=069, b=000, a=127},
	['deadlock-stack-iron-ore']				={r=056, g=133, b=255, a=127},
	['deadlock-stack-copper-ore']			={r=255, g=050, b=000, a=127},
	['deadlock-stack-stone']				={r=100, g=060, b=020, a=127},
	['deadlock-stack-coal']					={r=000, g=000, b=000, a=127},
	['deadlock-stack-iron-plate']			={r=160, g=160, b=160, a=127},
	['deadlock-stack-copper-plate']			={r=255, g=080, b=020, a=127},
	['deadlock-stack-solid-fuel']			={r=000, g=000, b=000, a=127},
	['deadlock-stack-steel-plate']			={r=220, g=220, b=220, a=127},
	['deadlock-stack-iron-stick']			={r=188, g=191, b=200, a=127},
	['deadlock-stack-iron-gear-wheel']		={r=100, g=100, b=100, a=127},
	['deadlock-stack-plastic-bar']			={r=255, g=255, b=255, a=127},
	['deadlock-stack-sulfur']				={r=255, g=200, b=000, a=127},
	['deadlock-stack-battery']				={r=060, g=170, b=255, a=127},
	['deadlock-stack-uranium-ore']			={r=100, g=255, b=000, a=127},
	['deadlock-stack-uranium-235']			={r=055, g=255, b=000, a=127},
	['deadlock-stack-uranium-238']			={r=000, g=100, b=000, a=127},
	['deadlock-stack-electronic-circuit']	={r=100, g=255, b=000, a=127},
	['deadlock-stack-advanced-circuit']		={r=255, g=000, b=000, a=127},
	['deadlock-stack-processing-unit']		={r=000, g=000, b=255, a=127},

	--bob's stacks
	['deadlock-stack-lithium']							={r=000, g=255, b=255, a=127},	--Lithium
	['deadlock-stack-resin']							={r=255, g=087, b=000, a=127},	--Resin
	['deadlock-stack-silicon-wafer']					={r=070, g=138, b=070, a=127},	--Silicon wafer
	['deadlock-stack-thorium-ore']						={r=195, g=182, b=000, a=127},	--Thorium ore
	['deadlock-stack-plutonium-239']					={r=255, g=153, b=000, a=127},	--Plutonium-239
	['deadlock-stack-copper-tungsten-alloy']			={r=193, g=015, b=000, a=127},	--Copper-tungsten plate
	['deadlock-stack-tungsten-carbide']					={r=200, g=202, b=198, a=127},	--Tungsten carbide plate
	['deadlock-stack-alien-blue-alloy']					={r=073, g=142, b=255, a=127},	--Blue alien alloy
	['deadlock-stack-alien-orange-alloy']				={r=255, g=138, b=062, a=127},	--Orange alien alloy
	['deadlock-stack-solder-alloy']						={r=091, g=106, b=131, a=127},	--Solder plate
	['deadlock-stack-enriched-fuel']					={r=255, g=255, b=255, a=127},	--Enriched fuel block
	['deadlock-stack-solder']							={r=091, g=084, b=098, a=127},	--Solder
	['deadlock-stack-silver-zinc-battery']				={r=087, g=255, b=095, a=127},	--Silver zinc battery
	['deadlock-stack-lithium-ion-battery']				={r=087, g=255, b=255, a=127},	--Lithium-ion battery
	['deadlock-stack-tinned-copper-cable']				={r=219, g=200, b=186, a=127},	--Tinned copper wire
	['deadlock-stack-insulated-cable']					={r=025, g=000, b=025, a=127},	--Insulated wire
	['deadlock-stack-gilded-copper-cable']				={r=255, g=178, b=000, a=127},	--Gilded copper wire
	['deadlock-stack-basic-electronic-components']		={r=189, g=120, b=058, a=127},	--Basic electronic components
	['deadlock-stack-electronic-components']			={r=018, g=018, b=018, a=127},	--Transistors
	['deadlock-stack-intergrated-electronics']			={r=010, g=000, b=000, a=127},	--Integrated electronics
	['deadlock-stack-processing-electronics']			={r=255, g=142, b=000, a=127},	--CPUs
	['deadlock-stack-wooden-board']						={r=146, g=087, b=055, a=127},	--Wooden board
	['deadlock-stack-phenolic-board']					={r=255, g=240, b=240, a=127},	--Phenolic board
	['deadlock-stack-fibreglass-board']					={r=197, g=138, b=047, a=127},	--Fibreglass board
	['deadlock-stack-basic-circuit-board']				={r=255, g=211, b=000, a=127},	--Basic circuit board
	['deadlock-stack-circuit-board']					={r=255, g=000, b=000, a=127},	--Circuit board
	['deadlock-stack-superior-circuit-board']			={r=000, g=080, b=255, a=127},	--Superior circuit board
	['deadlock-stack-multi-layer-circuit-board']		={r=255, g=000, b=200, a=127},	--Multi-layer circuit board
	['deadlock-stack-advanced-processing-unit']			={r=200, g=000, b=124, a=127},	--Electronic Processing board
	['deadlock-stack-steel-gear-wheel']					={r=200, g=200, b=200, a=127},	--Steel gear wheel
	['deadlock-stack-steel-bearing']					={r=200, g=200, b=200, a=127},	--Steel bearing
	['deadlock-stack-steel-bearing-ball']				={r=200, g=200, b=200, a=127},	--Steel bearing ball
	['deadlock-stack-brass-gear-wheel']					={r=157, g=117, b=000, a=127},	--Brass gear wheel
	['deadlock-stack-titanium-gear-wheel']				={r=255, g=255, b=255, a=127},	--Titanium gear wheel
	['deadlock-stack-titanium-bearing']					={r=255, g=255, b=255, a=127},	--Titanium bearing
	['deadlock-stack-titanium-bearing-ball']			={r=255, g=255, b=255, a=127},	--Titanium bearing ball
	['deadlock-stack-nitinol-gear-wheel']				={r=160, g=160, b=160, a=127},	--Nitinol gear wheel
	['deadlock-stack-nitinol-bearing']					={r=062, g=062, b=062, a=127},	--Nitinol bearing
	['deadlock-stack-nitinol-bearing-ball']				={r=160, g=160, b=160, a=127},	--Nitinol bearing ball
	['deadlock-stack-tungsten-gear-wheel']				={r=000, g=000, b=000, a=127},	--Tungsten gear wheel
	['deadlock-stack-ceramic-bearing']					={r=171, g=109, b=098, a=127},	--Ceramic bearing
	['deadlock-stack-ceramic-bearing-ball']				={r=171, g=109, b=098, a=127},	--Ceramic bearing ball

	--angel's stacks
	['deadlock-stack-crystal-dust']						={r=000, g=255, b=166, a=127},	--Crystal Dust
	['deadlock-stack-angels-ore1']						={r=000, g=038, b=100, a=127}, 	--Sapphirite
	['deadlock-stack-angels-ore2']						={r=255, g=220, b=000, a=127}, 	--Jivolite
	['deadlock-stack-angels-ore3']						={r=071, g=162, b=255, a=127}, 	--Stiratite
	['deadlock-stack-angels-ore4']						={r=239, g=239, b=239, a=127}, 	--Crotinnium
	['deadlock-stack-angels-ore5']						={r=151, g=000, b=000, a=127}, 	--Rubyte
	['deadlock-stack-angels-ore6']						={r=144, g=046, b=000, a=127}, 	--Bobmonium
	['deadlock-stack-angels-ore1-crushed']				={r=000, g=038, b=100, a=127},	--Crushed Saphirite
	['deadlock-stack-angels-ore2-crushed']				={r=255, g=220, b=000, a=127},	--Crushed Jivolite
	['deadlock-stack-angels-ore3-crushed']				={r=071, g=162, b=255, a=127},	--Crushed Stiratite
	['deadlock-stack-angels-ore4-crushed']				={r=239, g=239, b=239, a=127},	--Crushed Crotinnium
	['deadlock-stack-angels-ore5-crushed']				={r=151, g=000, b=000, a=127},	--Crushed Rubyte
	['deadlock-stack-angels-ore6-crushed']				={r=144, g=046, b=000, a=127},	--Crushed Bobmonium
	['deadlock-stack-angels-ore1-chunk']				={r=000, g=038, b=100, a=127},	--Saphirite Chunks
	['deadlock-stack-angels-ore2-chunk']				={r=255, g=220, b=000, a=127},	--Jivolite Chunks
	['deadlock-stack-angels-ore3-chunk']				={r=071, g=162, b=255, a=127},	--Stiratite Chunks
	['deadlock-stack-angels-ore4-chunk']				={r=239, g=239, b=239, a=127},	--Crotinnium Chunks
	['deadlock-stack-angels-ore5-chunk']				={r=151, g=000, b=000, a=127},	--Rubyte Chunks
	['deadlock-stack-angels-ore6-chunk']				={r=144, g=046, b=000, a=127},	--Bobmonium Chunks
	['deadlock-stack-angels-ore1-crystal']				={r=000, g=038, b=100, a=127},	--Saphirite Crystals
	['deadlock-stack-angels-ore2-crystal']				={r=255, g=220, b=000, a=127},	--Jivolite Crystals
	['deadlock-stack-angels-ore3-crystal']				={r=071, g=162, b=255, a=127},	--Stiratite Crystals
	['deadlock-stack-angels-ore4-crystal']				={r=239, g=239, b=239, a=127},	--Crotinnium Crystals
	['deadlock-stack-angels-ore5-crystal']				={r=151, g=000, b=000, a=127},	--Rubyte Crystals
	['deadlock-stack-angels-ore6-crystal']				={r=144, g=046, b=000, a=127},	--Bobmonium Crystals
	['deadlock-stack-angels-ore1-pure']					={r=000, g=038, b=100, a=127},	--Purified Saphirite
	['deadlock-stack-angels-ore2-pure']					={r=255, g=220, b=000, a=127},	--Purified Jivolite
	['deadlock-stack-angels-ore3-pure']					={r=071, g=162, b=255, a=127},	--Purified Stiratite
	['deadlock-stack-angels-ore4-pure']					={r=239, g=239, b=239, a=127},	--Purified Crotinnium
	['deadlock-stack-angels-ore5-pure']					={r=151, g=000, b=000, a=127},	--Purified Rubyte
	['deadlock-stack-angels-ore6-pure']					={r=144, g=046, b=000, a=127},	--Purified Bobmonium
	['deadlock-stack-angels-ore8-crushed']				={r=155, g=255, b=031, a=127},	--Crushed Ferrous Ore
	['deadlock-stack-angels-ore8-powder']				={r=155, g=255, b=031, a=127},	--Ferrous Ore Powder
	['deadlock-stack-angels-ore8-dust']					={r=155, g=255, b=031, a=127},	--Ferrous Ore Dust
	['deadlock-stack-angels-ore8-crystal']				={r=155, g=255, b=031, a=127},	--Ferrous Crystal
	['deadlock-stack-angels-ore9-crushed']				={r=255, g=078, b=000, a=127},	--Crushed Cupric Ore
	['deadlock-stack-angels-ore9-powder']				={r=255, g=078, b=000, a=127},	--Cupric Ore Powder
	['deadlock-stack-angels-ore9-dust']					={r=255, g=078, b=000, a=127},	--Cupric Ore Dust
	['deadlock-stack-angels-ore9-crystal']				={r=255, g=078, b=000, a=127},	--Cupric Crystal
	['deadlock-stack-stone-crushed']					={r=222, g=222, b=222, a=127},	--Crushed Stone
	['deadlock-stack-solid-limestone']					={r=255, g=184, b=162, a=127},	--Limestone
	['deadlock-stack-solid-sand']						={r=255, g=224, b=213, a=127},	--Sand
	['deadlock-stack-solid-clay']						={r=148, g=042, b=000, a=127},	--Clay
	['deadlock-stack-solid-salt']						={r=220, g=220, b=220, a=127},	--Salt (Sodium Chloride)
	['deadlock-stack-solid-carbon']						={r=000, g=000, b=000, a=127},	--Carbon
	['deadlock-stack-fluorite-ore']						={r=217, g=255, b=000, a=127},	--Fluorite Ore
	['deadlock-stack-bauxite-ore']						={r=229, g=171, b=018, a=127},	--Bauxite (Aluminium ore)
	['deadlock-stack-cobalt-ore']						={r=000, g=102, b=255, a=127},	--Cobaltite
	['deadlock-stack-gold-ore']							={r=255, g=157, b=000, a=127},	--Gold ore
	['deadlock-stack-lead-ore']							={r=005, g=005, b=005, a=127},	--Galena (Lead ore)
	['deadlock-stack-nickel-ore']						={r=046, g=137, b=148, a=127},	--Nickel ore
	['deadlock-stack-quartz']							={r=255, g=228, b=255, a=127},	--Quartz (Silicon ore)
	['deadlock-stack-rutile-ore']						={r=046, g=000, b=031, a=127},	--Rutile (Titanium ore)
	['deadlock-stack-silver-ore']						={r=177, g=239, b=255, a=127},	--Silver ore
	['deadlock-stack-tin-ore']							={r=082, g=078, b=078, a=127},	--Tin ore
	['deadlock-stack-tungsten-ore']						={r=180, g=064, b=000, a=127},	--Tungsten ore
	['deadlock-stack-zinc-ore']							={r=027, g=209, b=217, a=127},	--Zinc ore
	['deadlock-stack-manganese-ore']					={r=255, g=000, b=000, a=127},	--Manganese Ore
	['deadlock-stack-chrome-ore']						={r=206, g=169, b=255, a=127},	--Chrome Ore
	['deadlock-stack-platinum-ore']						={r=255, g=184, b=162, a=127},	--Platinum Ore
	['deadlock-stack-alumina']							={r=106, g=109, b=160, a=127},	--Alumina
	['deadlock-stack-solid-cement']						={r=209, g=071, b=049, a=127},	--Cement
	['deadlock-stack-solid-glass-mixture']				={r=151, g=148, b=195, a=127},	--Glass Mixture
	['deadlock-stack-angels-plate-glass']				={r=228, g=209, b=199, a=127},	--Glass
	['deadlock-stack-ingot-aluminium']					={r=246, g=195, b=000, a=127},	--Aluminium Ingot
	['deadlock-stack-angels-plate-aluminium']			={r=246, g=195, b=000, a=127},	--Aluminium Plate
	['deadlock-stack-ingot-chrome']						={r=206, g=169, b=255, a=127},	--Chrome Ingot
	['deadlock-stack-ingot-cobalt']						={r=000, g=042, b=151, a=127},	--Cobalt Ingot
	['deadlock-stack-angels-plate-cobalt']				={r=000, g=042, b=151, a=127},	--Cobalt Plate
	['deadlock-stack-ingot-copper']						={r=151, g=035, b=027, a=127},	--Copper Ingot
	['deadlock-stack-ingot-gold']						={r=255, g=157, b=000, a=127},	--Gold Ingot
	['deadlock-stack-angels-plate-gold']				={r=255, g=157, b=000, a=127},	--Gold Plate
	['deadlock-stack-ingot-iron']						={r=118, g=148, b=209, a=127},	--Iron Ingot
	['deadlock-stack-ingot-lead']						={r=053, g=031, b=053, a=127},	--Lead Ingot
	['deadlock-stack-angels-plate-lead']				={r=053, g=031, b=053, a=127},	--Lead Plate
	['deadlock-stack-ingot-manganese']					={r=255, g=000, b=000, a=127},	--Manganese Ingot
	['deadlock-stack-ingot-nickel']						={r=000, g=115, b=122, a=127},	--Nickel Ingot
	['deadlock-stack-angels-plate-nickel']				={r=000, g=115, b=122, a=127},	--Nickel Plate
	['deadlock-stack-ingot-platinum']					={r=255, g=184, b=162, a=127},	--Platinum Ingot
	['deadlock-stack-ingot-silicon']					={r=235, g=235, b=235, a=127},	--Silicon Ingot
	['deadlock-stack-angels-plate-silicon']				={r=235, g=235, b=235, a=127},	--Silicon Plate
	['deadlock-stack-ingot-silver']						={r=169, g=209, b=255, a=127},	--Silver Ingot
	['deadlock-stack-angels-plate-silver']				={r=169, g=209, b=255, a=127},	--Silver Plate
	['deadlock-stack-ingot-steel']						={r=255, g=255, b=255, a=127},	--Steel Ingot
	['deadlock-stack-ingot-tin']						={r=038, g=107, b=056, a=127},	--Tin Ingot
	['deadlock-stack-angels-plate-tin']					={r=038, g=107, b=056, a=127},	--Tin Plate
	['deadlock-stack-ingot-titanium']					={r=107, g=035, b=082, a=127},	--Titanium Ingot
	['deadlock-stack-angels-plate-titanium']			={r=107, g=035, b=082, a=127},	--Titanium Plate
	['deadlock-stack-angels-plate-tungsten']			={r=133, g=053, b=000, a=127},	--Tungsten Plate
	['deadlock-stack-ingot-zinc']						={r=056, g=209, b=209, a=127},	--Zinc Ingot
	['deadlock-stack-angels-plate-zinc']				={r=056, g=209, b=209, a=127},	--Zinc Plate
	['deadlock-stack-angels-plate-bronze']				={r=255, g=131, b=000, a=127},	--Bronze Plate
	['deadlock-stack-angels-plate-brass']				={r=255, g=158, b=086, a=127},	--Brass Plate
	['deadlock-stack-angels-plate-gunmetal']			={r=255, g=058, b=025, a=127},	--Gunmetal Plate
	['deadlock-stack-angels-plate-invar']				={r=219, g=255, b=255, a=127},	--Invar Plate
	['deadlock-stack-angels-plate-cobalt-steel']		={r=178, g=197, b=255, a=127},	--Cobalt Steel Plate
	['deadlock-stack-angels-plate-nitinol']				={r=120, g=069, b=255, a=127},	--Nitinol Plate

-- --------------------------------------------------------------------------------------------
}


--[[--
@doktorstick
Import the file via the `require` directive:
>>> local krastorio = require ('krastorio')

The file must return the color list like:

    return {
        ["kr-void"]                          ={r=012, g=012, b=012, a=127},
        ["k-pure-water"]                     ={r=025, g=204, b=242, a=127},
    }

And call `add_colors` on the returned list:
>>> add_colors (krastorio)

--]]--

local function add_colors(new_colors, replace)
  for k, v in pairs (new_colors) do
    if colors[k] == nil or replace then
      colors[k] = v
    end
  end
end


local krastorio = require('krastorio')
add_colors (krastorio)

