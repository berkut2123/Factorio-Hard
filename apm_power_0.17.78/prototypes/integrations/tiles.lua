require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/tiles.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))
log('-------------------------------------------------------')

-- tile resorting -------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------

apm.lib.utils.tile.set.relation('apm_asphalt', 'stone-path', 0)
apm.lib.utils.tile.set.relation('stone-path', 'apm_asphalt', 1)

if mods.angelssmelting and apm_power_compat_angel then
	apm.lib.utils.tile.set.relation('clay-bricks', 'stone-path', 1)
	apm.lib.utils.tile.set.relation('concrete', 'clay-bricks', 1)
else
    apm.lib.utils.tile.set.relation('concrete', 'stone-path', 1)
end

if mods.PyCoalTBaA and apm_power_compat_kingarthur then
    apm.lib.utils.tile.set.relation('py-asphalt', 'concrete', 1)
    apm.lib.utils.tile.set.relation('py-limestone', 'py-asphalt', 1)
    apm.lib.utils.tile.set.relation('py-coal-tile', 'py-limestone', 1)
    apm.lib.utils.tile.set.relation('py-iron', 'py-coal-tile', 1)
    apm.lib.utils.tile.set.relation('py-steel', 'py-iron', 1)
    apm.lib.utils.tile.set.relation('py-aluminium', 'py-aluminium', 1)
    apm.lib.utils.tile.set.relation('py-iron-oxide', 'py-iron-oxide', 1)
    apm.lib.utils.tile.set.relation('py-nexelit', 'py-iron-oxide', 1)
    apm.lib.utils.tile.set.relation('hazard-concrete-left', 'py-nexelit', 1)
    apm.lib.utils.tile.set.relation('hazard-concrete-right', 'py-nexelit', 1)
else
    apm.lib.utils.tile.set.relation('hazard-concrete-left', 'concrete', 1)
    apm.lib.utils.tile.set.relation('hazard-concrete-right', 'concrete', 1)
end

apm.lib.utils.tile.set.relation('refined-concrete', 'hazard-concrete-right', 1)
apm.lib.utils.tile.set.relation('refined-hazard-concrete-left', 'refined-concrete', 1)
apm.lib.utils.tile.set.relation('refined-hazard-concrete-right', 'refined-concrete', 1)
apm.lib.utils.tile.set.relation('lab-dark-1', 'refined-hazard-concrete-right', 1)
apm.lib.utils.tile.set.relation('lab-dark-2', 'refined-hazard-concrete-right', 1)
apm.lib.utils.tile.set.relation('lab-white', 'refined-hazard-concrete-right', 1)
apm.lib.utils.tile.set.relation('tutorial-grid', 'lab-white', 1)

if mods['space-exploration'] and apm_power_compat_earendel then
	apm.lib.utils.tile.set.relation('se-regolith', 'tutorial-grid', 1)
	apm.lib.utils.tile.set.relation('se-space-platform-scaffold', 'se-regolith', 1)
	apm.lib.utils.tile.set.relation('se-space-platform-plating', 'se-space-platform-scaffold', 1)
	apm.lib.utils.tile.set.relation('se-spaceship-floor', 'se-space-platform-plating', 1)
end

-- kingarthur -----------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.PyCoalTBaA and apm_power_compat_kingarthur then
    apm.lib.utils.tile.unification('py-asphalt', 'apm_asphalt')
end