require ('util')

local apm_nuclear_compat_bob = settings.startup["apm_nuclear_compat_bob"].value
local apm_nuclear_compat_angel = settings.startup["apm_nuclear_compat_angel"].value
local apm_nuclear_compat_earendel = settings.startup["apm_nuclear_compat_earendel"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/fuel_categories.lua')
log('apm_nuclear_compat_bob: ' .. tostring(apm_nuclear_compat_bob))
log('apm_nuclear_compat_angel: ' .. tostring(apm_nuclear_compat_angel))
log('apm_nuclear_compat_earendel: ' .. tostring(apm_nuclear_compat_earendel))
log('-------------------------------------------------------')

-- bob ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.bobpower and mods.bobplates and apm_nuclear_compat_bob then
    if apm.lib.utils.setting.get.starup('bobmods-power-nuclear') then
        if apm.lib.utils.item.exist('thorium-ore') then
            apm.lib.utils.reactor.set.fuel_categories('nuclear-reactor-2', {'apm_nuclear_thorium'})
            apm.lib.utils.reactor.set.fuel_categories('nuclear-reactor-3', {'apm_nuclear_thorium'})
        else
            apm.lib.utils.reactor.set.fuel_categories('nuclear-reactor-2', {'apm_nuclear_uranium', 'apm_nuclear_mox'})
        end
        if apm.lib.utils.item.exist('deuterium') then
            apm.lib.utils.reactor.set.fuel_categories('nuclear-reactor-3', {'apm_nuclear_deuterium'})
        else
            apm.lib.utils.reactor.set.fuel_categories('nuclear-reactor-3', {'apm_nuclear_uranium', 'apm_nuclear_mox'})
        end
    else
        if apm.lib.utils.item.exist('thorium-ore') then
            apm.lib.utils.reactor.add.fuel_category('nuclear-reactor', 'apm_nuclear_thorium')
        end
        if apm.lib.utils.item.exist('deuterium') then
            apm.lib.utils.reactor.add.fuel_category('nuclear-reactor', 'apm_nuclear_deuterium')
        end 
    end
end

if not mods.bobpower and mods.bobplates and apm_nuclear_compat_bob then
    if apm.lib.utils.item.exist('thorium-ore') then
        apm.lib.utils.reactor.add.fuel_category('nuclear-reactor', 'apm_nuclear_thorium')
    end
    if apm.lib.utils.item.exist('deuterium') then
        apm.lib.utils.reactor.add.fuel_category('nuclear-reactor', 'apm_nuclear_deuterium')
    end
end