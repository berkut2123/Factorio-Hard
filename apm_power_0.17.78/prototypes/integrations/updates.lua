require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/updates.lua')
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
    apm.lib.utils.recycling.scrap.add('apm_steam_relay', 'iron')
    apm.lib.utils.recycling.scrap.add('apm_steam_relay', 'copper')
    apm.lib.utils.recycling.scrap.add('apm_gearing', 'iron')
    apm.lib.utils.recycling.scrap.add('apm_electromagnet', 'iron')
    apm.lib.utils.recycling.scrap.add('apm_electromagnet', 'copper')
    apm.lib.utils.recycling.scrap.add('apm_filter_charcoal', 'steel')
    apm.lib.utils.recycling.scrap.add('apm_sieve_iron', 'iron')
    apm.lib.utils.recycling.scrap.add('apm_sieve_copper', 'copper')
    apm.lib.utils.recycling.scrap.add('apm_press_plates', 'steel')
    apm.lib.utils.recycling.scrap.add('apm_crusher_drumms', 'iron')
end