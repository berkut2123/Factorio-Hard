require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/technologies.lua')
log('-------------------------------------------------------')

-- Technologie ----------------------------------------------------------------
-- 
--
-------------------------------------------------------------------------------
local automation_science_pack = {}
automation_science_pack.type = 'technology'
automation_science_pack.name = 'apm_power_automation_science_pack'
automation_science_pack.icon = '__base__/graphics/technology/automation-science-pack.png'
automation_science_pack.icon_size = 128
automation_science_pack.effects = {
	{type = 'unlock-recipe', recipe = 'automation-science-pack'},
    {type = 'unlock-recipe', recipe = 'apm_electromagnet'},
}
automation_science_pack.prerequisites = {'apm_lab_1'}
automation_science_pack.unit = {}
automation_science_pack.unit.count = 100
automation_science_pack.unit.ingredients = {{"apm_industrial_science_pack", 1}}
automation_science_pack.unit.time = 20
automation_science_pack.order = 'aa_a'
data:extend({automation_science_pack})

local apm_inserter_bonus = {}
apm_inserter_bonus.type = 'technology'
apm_inserter_bonus.name = 'apm_inserter_capacity_bonus'
apm_inserter_bonus.icon = '__base__/graphics/technology/inserter-capacity.png'
apm_inserter_bonus.icon_size = 128
apm_inserter_bonus.effects = {
    {type = 'inserter-stack-size-bonus', modifier = 1},
}
apm_inserter_bonus.prerequisites = {'apm_burner_long_inserter', 'apm_power_steam'}
apm_inserter_bonus.unit = {}
apm_inserter_bonus.unit.count = 75
apm_inserter_bonus.unit.ingredients = {{"apm_industrial_science_pack", 1}}
apm_inserter_bonus.unit.time = 30
apm_inserter_bonus.order = 'aa_a'
data:extend({apm_inserter_bonus})

local automation_science_pack = {}
automation_science_pack.type = 'technology'
automation_science_pack.name = 'apm_steam_mining_drill'
automation_science_pack.icon = '__base__/graphics/technology/mining-productivity.png'
automation_science_pack.icon_size = 128
automation_science_pack.effects = {
    {type = 'unlock-recipe', recipe = 'apm_steam_mining_drill'},
}
automation_science_pack.prerequisites = {'engine'}
automation_science_pack.unit = {}
automation_science_pack.unit.count = 75
automation_science_pack.unit.ingredients = {{"apm_industrial_science_pack", 1}}
automation_science_pack.unit.time = 20
automation_science_pack.order = 'aa_a'
data:extend({automation_science_pack})

local automation_science_pack = {}
automation_science_pack.type = 'technology'
automation_science_pack.name = 'apm_electric_mining_drills'
automation_science_pack.icon = '__base__/graphics/technology/mining-productivity.png'
automation_science_pack.icon_size = 128
automation_science_pack.effects = {
    {type = 'unlock-recipe', recipe = 'electric-mining-drill'},
}
automation_science_pack.prerequisites = {'apm_steam_mining_drill', 'apm_power_electricity', 'electronics'}
automation_science_pack.unit = {}
automation_science_pack.unit.count = 100
automation_science_pack.unit.ingredients = {{"automation-science-pack", 1}}
automation_science_pack.unit.time = 30
automation_science_pack.order = 'aa_a'
data:extend({automation_science_pack})
-- Technologie ----------------------------------------------------------------
-- electronic-circuit ??
--
-------------------------------------------------------------------------------
-- Crusher
apm.lib.utils.technology.new('apm_power',
    'apm_crusher_machine_0',
    {}, 
    {'apm_crusher_machine_0', 'apm_coal_crushed_1', 'apm_wood_pellets_1', 'apm_resin', 'apm_rubber_1'},
    {{"apm_industrial_science_pack", 1}},
    10, 10)

-- Press
apm.lib.utils.technology.new('apm_power',
    'apm_press_machine_0',
    {'apm_crusher_machine_0'}, 
    {'apm_press_machine_0', 'apm_coal_briquette_pressed_1', 'apm_wood_briquette_1', 'apm_wood_board_2'},
    {{"apm_industrial_science_pack", 1}},
    10, 10)

-- Coking plant
apm.lib.utils.technology.new('apm_power',
    'apm_coking_plant_0',
    {'apm_press_machine_0'}, 
    {'apm_coking_plant_0', 'apm_pyrolysis_charcoal_1', 'apm_charcoal_brick', 'apm_stone_brick'},
    {{"apm_industrial_science_pack", 1}},
    20, 10)

-- Fuel I
apm.lib.utils.technology.new('apm_power',
    'apm_fuel-1',
    {'apm_coking_plant_0'}, 
    {'apm_pyrolysis_coke_1', 'apm_coke_crushed', 'apm_coke_brick'},
    {{"apm_industrial_science_pack", 1}},
    30, 10)

-- puddling furnace (aka early steel)
apm.lib.utils.technology.new('apm_power',
    'apm_puddling_furnace_0',
    {'apm_fuel-1'}, 
    {'apm_puddling_furnace_0', 'apm_raw_crucibel_0', 'apm_raw_crucibel_1', 'apm_stone_crucibel', 'apm_steel_0', 'apm_burner_miner_drill_2'},
    {{"apm_industrial_science_pack", 1}},
    50, 20)

-- burner long insterter
apm.lib.utils.technology.new('apm_power',
    'apm_burner_long_inserter',
    {'apm_puddling_furnace_0'}, 
    {'apm_burner_long_inserter'},
    {{"apm_industrial_science_pack", 1}},
    75, 25)

-- Better Steel
apm.lib.utils.technology.new('apm_power',
    'apm_steelworks_0',
    {'apm_puddling_furnace_0', 'advanced-material-processing'}, 
    {'apm_steelworks_0', 'apm_steel_1'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    75, 30)

-- Fuel II
apm.lib.utils.technology.new('apm_power',
    'apm_fuel-2',
    {'apm_fuel-1', 'apm_coking_plant_0'}, 
    {'apm_pyrolysis_coke_2', 'apm_rubber_2'},
    {{"apm_industrial_science_pack", 1}},
    50, 15)

-- Fuel III
apm.lib.utils.technology.new('apm_power',
    'apm_fuel-3',
    {'apm_fuel-2', 'apm_coking_plant_1'}, 
    {'apm_pyrolysis_charcoal_2', 'apm_pyrolysis_coke_3', 'apm_treated_wood_planks_1', 'apm_asphalt_1', 'apm_asphalt_2'},
    {{"apm_industrial_science_pack", 1}},
    75, 15)

-- Fuel IV
apm.lib.utils.technology.new('apm_power',
    'apm_fuel-4',
    {'apm_fuel-3', 'apm_coking_plant_2'}, 
    {'apm_pyrolysis_charcoal_3', 'apm_pyrolysis_coke_4', 'apm_refining_coke_oven_gas_1'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    100, 20)

-- Steam
apm.lib.utils.technology.new('apm_power',
    'apm_power_steam',
    {'apm_fuel-1', 'apm_puddling_furnace_0'}, 
    {'apm_centrifuge_0', 'apm_offshore_pump_0', 'apm_seawater_centrifuging', 'apm_sealing_rings'},
    {{"apm_industrial_science_pack", 1}},
    50, 15)

-- steam sieve
apm.lib.utils.technology.new('apm_power',
    'apm_sieve_0',
    {'apm_coking_plant_1'},
    {'apm_sieve_0', 'apm_dry_mud', 'apm_sieve_iron', 'apm_dry_mud_sifting_iron', 'apm_sieve_copper', 'apm_dry_mud_sifting_copper'},
    {{"apm_industrial_science_pack", 1}},
    75, 30)

-- Greenhouse
apm.lib.utils.technology.new('apm_power',
    'apm_greenhouse',
    {'apm_power_steam'}, 
    {'apm_greenhouse_0', 'apm_tree_seeds', 'apm_wood_1', 'apm_fertiliser_1'},
    {{"apm_industrial_science_pack", 1}},
    30, 15)

-- Fertiliser 2
apm.lib.utils.technology.new('apm_power',
    'apm_fertiliser_2',
    {'apm_greenhouse', 'sulfur-processing'}, 
    {'apm_air_cleaning_2', 'apm_fertiliser_2', 'apm_wood_2'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    30, 100)

-- Steam assembler
apm.lib.utils.technology.new('apm_power',
    'apm_assembler_machine_1',
    {'apm_puddling_furnace_0', 'apm_power_steam'}, 
    {'apm_assembling_machine_1'},
    {{"apm_industrial_science_pack", 1}},
    30, 20)

-- Steam centrifuge
apm.lib.utils.technology.new('apm_power',
    'apm_centrifuge_0',
    {'apm_puddling_furnace_0', 'apm_power_steam'},
    {'apm_centrifuge_1', 'apm_coal_saturated_wastewater_seperation'},
    {{"apm_industrial_science_pack", 1}},
    50, 20)

-- Steam air cleaner
apm.lib.utils.technology.new('apm_power',
    'apm_air_cleaner_machine',
    {'apm_centrifuge_0','apm_assembler_machine_1'}, 
    {'apm_air_cleaner_machine_0', 'apm_filter_charcoal', 'apm_filter_charcoal_used_recycling', 'apm_air_cleaning_1', 'apm_dirty_water_purification'},
    {{"apm_industrial_science_pack", 1}},
    50, 30)

-- Steam crusher
apm.lib.utils.technology.new('apm_power',
    'apm_crusher_machine_1',
    {'apm_centrifuge_0','apm_crusher_machine_0', 'apm_puddling_furnace_0', 'apm_power_steam'}, 
    {'apm_crusher_machine_1', 'apm_coal_crushed_2'},
    {{"apm_industrial_science_pack", 1}},
    50, 20)

-- Steam press
apm.lib.utils.technology.new('apm_power',
    'apm_press_machine_1',
    {'apm_centrifuge_0', 'apm_press_machine_0', 'apm_puddling_furnace_0', 'apm_power_steam'}, 
    {'apm_press_machine_1', 'apm_coal_briquette_pressed_2'},
    {{"apm_industrial_science_pack", 1}},
    50, 20)

-- Steam lab
apm.lib.utils.technology.new('apm_power',
    'apm_lab_1',
    {'apm_centrifuge_0'}, 
    {'apm_lab_1'},
    {{"apm_industrial_science_pack", 1}},
    100, 30)

-- Coking plant II
apm.lib.utils.technology.new('apm_power',
    'apm_coking_plant_1',
    {'apm_coking_plant_0', 'apm_fuel-2', 'apm_assembler_machine_1'}, 
    {'apm_coking_plant_1'},
    {{"apm_industrial_science_pack", 1}},
    50, 30)

-- Coking plant III
apm.lib.utils.technology.new('apm_power',
    'apm_coking_plant_2',
    {'apm_coking_plant_1', 'oil-processing'}, 
    {'apm_coking_plant_2', 'apm_refining_creosote_1'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    120, 30)

-- Ash...
apm.lib.utils.technology.new('apm_power',
    'apm_ash_production',
    {'apm_coking_plant_0'}, 
    {'apm_coal_ash_production', 'apm_wood_ash_production'},
    {{"apm_industrial_science_pack", 1}},
    30, 15)

-- Electricity
apm.lib.utils.technology.new('apm_power',
    'apm_power_electricity',
    {'apm_power_automation_science_pack', 'apm_fuel-3'}, 
    {},
    {{"apm_industrial_science_pack", 1}, {"automation-science-pack", 1}},
    100, 30)

-- Electric crusher
apm.lib.utils.technology.new('apm_power',
    'apm_crusher_machine_2',
    {'apm_crusher_machine_1', 'electric-engine'}, 
    {'apm_crusher_machine_2', 'apm_crusher_drumms', 'apm_crusher_drumms_used_repair', 'apm_wood_pellets_2', 'apm_coal_crushed_3'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    75, 30)

-- Electric press
apm.lib.utils.technology.new('apm_power',
    'apm_press_machine_2',
    {'apm_press_machine_1', 'electric-engine'}, 
    {'apm_press_machine_2', 'apm_press_plates', 'apm_press_plates_used_grind', 'apm_wood_briquette_2', 'apm_coal_briquette_pressed_3'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    75, 30)

-- Electric centrifuge
apm.lib.utils.technology.new('apm_power',
    'apm_centrifuge_2',
    {'apm_centrifuge_0', 'electric-engine'}, 
    {'apm_centrifuge_2'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    75, 30)