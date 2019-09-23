require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/icons.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))

-- Angel ----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelsrefining and apm_power_compat_angel then
    apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_dry_mud_sifting_iron'], 2, '__angelsrefining__/graphics/icons/angels-ore1.png')
    apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_dry_mud_sifting_copper'], 2, '__angelsrefining__/graphics/icons/angels-ore3.png')
end

if mods.angelssmelting and apm_power_compat_angel then
	apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_steel_0'], 1, '__angelssmelting__/graphics/icons/plate-steel.png')
end

if mods.angelspetrochem and apm_power_compat_angel then
	apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_pyrolysis_coke_1'], 1, '__angelspetrochem__/graphics/icons/solid-coke.png')
	apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_pyrolysis_coke_2'], 1, '__angelspetrochem__/graphics/icons/solid-coke.png')
	apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_pyrolysis_coke_3'], 1, '__angelspetrochem__/graphics/icons/solid-coke.png')
	apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_pyrolysis_coke_4'], 1, '__angelspetrochem__/graphics/icons/solid-coke.png')
	apm.lib.utils.icon.layer.replace(data.raw.recipe['apm_pyrolysis_coke_5'], 1, '__angelspetrochem__/graphics/icons/solid-coke.png')
end
