require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/entities.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))

-- apm ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.apm_recycling then
	apm.lib.utils.assembler.burner.overhaul('apm_recycling_machine_0')
end

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods['space-exploration'] and apm_power_compat_earendel then
	apm.lib.utils.lab.add.science_pack('se-space-science-lab', 'apm_industrial_science_pack')
end

if mods['aai-vehicles-miner'] and apm_power_compat_earendel then
	apm.lib.utils.car.overhaul('vehicle-miner')
end

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobpower and apm_power_compat_bob then
	-- Boilers
	apm.lib.utils.boiler.overhaul('boiler-2', 2)
	apm.lib.utils.boiler.overhaul('boiler-3', 3)
	apm.lib.utils.boiler.overhaul('boiler-4', 4)
	apm.lib.utils.boiler.overhaul('boiler-5', 5)
	-- Generators
	apm.lib.utils.generator.overhaul('steam-engine-2', 2)
	apm.lib.utils.generator.overhaul('steam-engine-3', 3)
	apm.lib.utils.generator.overhaul('steam-engine-4', 4)
	apm.lib.utils.generator.overhaul('steam-engine-5', 5)
end

if mods.bobplates and apm_power_compat_bob then
	apm.lib.utils.assembler.burner.overhaul('chemical-boiler')
	apm.lib.utils.assembler.burner.overhaul('chemical-steel-furnace', true)
	apm.lib.utils.assembler.burner.overhaul('mixing-furnace')
	apm.lib.utils.assembler.burner.overhaul('mixing-steel-furnace', true)
end

if mods.bobtech and apm_power_compat_bob then
	apm.lib.utils.lab.add.science_pack('lab-2', 'apm_industrial_science_pack')
end

-- angel ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelsrefining and apm_power_compat_angel then
	apm.lib.utils.assembler.burner.overhaul('burner-ore-crusher')
end

if mods.angelssmelting and apm_power_compat_angel then
	apm.lib.utils.assembler.burner.overhaul('blast-furnace', true)
	apm.lib.utils.assembler.burner.overhaul('blast-furnace-2', true)
	apm.lib.utils.assembler.burner.overhaul('blast-furnace-3', true)
	apm.lib.utils.assembler.burner.overhaul('blast-furnace-4', true)
end

-- sctm ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.ScienceCostTweakerM and apm_power_compat_sctm then
	apm.lib.utils.lab.inputs('apm_lab_1', {"apm_industrial_science_pack", "automation-science-pack"})
	apm.lib.utils.lab.overhaul('sct-lab-t1')
	apm.lib.utils.lab.overhaul('sct-lab-t2')
	apm.lib.utils.lab.overhaul('sct-lab-t3')
	apm.lib.utils.lab.overhaul('sct-lab-t4')
end

-- kingarthur -----------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.PyCoalTBaA and apm_power_compat_kingarthur then
	if mods['aai-industry'] then
		apm.lib.utils.lab.add.science_pack('apm_lab_0', 'science-pack-0')
		apm.lib.utils.lab.add.science_pack('apm_lab_1', 'science-pack-0')
	end
end