require ('util')

local apm_recycler_compat_bob = settings.startup["apm_recycler_compat_bob"].value
local apm_recycler_compat_angel = settings.startup["apm_recycler_compat_angel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/technologies.lua')
log('apm_recycler_compat_bob: ' .. tostring(apm_recycler_compat_bob))
log('apm_recycler_compat_angel: ' .. tostring(apm_recycler_compat_angel))
log('-------------------------------------------------------')

if mods.angelsrefining and apm_recycler_compat_angel then
	apm.lib.utils.technology.add.recipe_for_unlock('apm_recycling-0', 'apm_recycling_iron')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_recycling-0', 'apm_recycling_copper')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_recycling-0', 'apm_recycling_smelting_iron_easy')
	apm.lib.utils.technology.add.recipe_for_unlock('apm_recycling-0', 'apm_recycling_smelting_copper_easy')
end