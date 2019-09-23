if apm.nuclear.color == nil then apm.nuclear.color = {} end
if apm.nuclear.icons == nil then apm.nuclear.icons = {} end
if apm.nuclear.icons.path == nil then apm.nuclear.icons.path = {} end

local apm_nuclear_experimental_icons = settings.startup["apm_nuclear_experimental_icons"].value
-- Colors ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.nuclear.color.radioactive_water = {r=0.62, g=0.81, b=0.0}

-- Icon path ------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.nuclear.icons.path.solid_fluorite = '__apm_resource_pack__/graphics/icons/apm_fluorite_ore.png'
apm.nuclear.icons.path.fuel_cell = '__apm_resource_pack__/graphics/icons/apm_fuelcell_casing.png'
apm.nuclear.icons.path.fuel_cell_used = '__apm_resource_pack__/graphics/icons/apm_fuelcell_casing_dirty.png'
apm.nuclear.icons.path.fuel_cell_uranium = '__apm_resource_pack__/graphics/icons/dynamics/apm_fuelcell_uranium.png'
apm.nuclear.icons.path.fuel_cell_uranium_used = '__apm_resource_pack__/graphics/icons/dynamics/apm_fuelcell_uranium_used.png'
apm.nuclear.icons.path.fuel_cell_mox = '__apm_resource_pack__/graphics/icons/apm_fuelcell_mox.png'
apm.nuclear.icons.path.fuel_cell_mox_used = '__apm_resource_pack__/graphics/icons/apm_fuelcell_mox_used.png'
apm.nuclear.icons.path.breeder_uranium_inventory = '__apm_resource_pack__/graphics/icons/apm_inventory_breeder.png'
apm.nuclear.icons.path.breeder_uranium_inventory_enriched = '__apm_resource_pack__/graphics/icons/apm_inventory_breeder_enriched.png'
apm.nuclear.icons.path.breeder_thorium_inventory = '__apm_resource_pack__/graphics/icons/apm_inventory_breeder_thorium.png'
apm.nuclear.icons.path.breeder_thorium_inventory_enriched = '__apm_resource_pack__/graphics/icons/apm_inventory_breeder_enriched_thorium.png'
apm.nuclear.icons.path.waste_container = '__apm_resource_pack__/graphics/icons/apm_waste_container.png'
apm.nuclear.icons.path.waste_radioactive = '__apm_resource_pack__/graphics/icons/apm_waste_radioactive.png'
apm.nuclear.icons.path.rtg = '__apm_resource_pack__/graphics/icons/apm_rtg.png'
apm.nuclear.icons.path.uranium_oxide_pellet = '__apm_resource_pack__/graphics/icons/dynamics/apm_uranium_oxide_pellet.png'
apm.nuclear.icons.path.plutonium_oxide_pellet = '__apm_resource_pack__/graphics/icons/apm_plutonium_oxide_pellet.png'
apm.nuclear.icons.path.plutonium_oxide_pellet_2 = '__apm_resource_pack__/graphics/icons/apm_plutonium_oxide_pellet_2.png'
apm.nuclear.icons.path.bromine = '__apm_resource_pack__/graphics/icons/dynamics/apm_bromine.png'
apm.nuclear.icons.path.bromine_trifluoride = '__apm_resource_pack__/graphics/icons/dynamics/apm_bromine_trifluoride.png'
apm.nuclear.icons.path.breeder_reactor = '__apm_resource_pack__/graphics/icons/apm_nuclear_breeder.png'
apm.nuclear.icons.path.staballoy = '__apm_resource_pack__/graphics/icons/apm_staballoy.png'
apm.nuclear.icons.path.yellowcake = '__apm_resource_pack__/graphics/icons/apm_yellowcake.png'
apm.nuclear.icons.path.potassium_bromide = '__apm_resource_pack__/graphics/icons/apm_potassium_bromide.png'

apm.nuclear.icons.path.thorium_oxide_pellet = '__apm_resource_pack__/graphics/icons/apm_thorium_oxide_pellet.png'
apm.nuclear.icons.path.fuel_cell_thorium = '__apm_resource_pack__/graphics/icons/apm_fuel_cell_thorium.png'
apm.nuclear.icons.path.fuel_cell_thorium_used = '__apm_resource_pack__/graphics/icons/apm_fuel_cell_thorium_used.png'

apm.nuclear.icons.path.fuel_cell_deuterium = '__apm_resource_pack__/graphics/icons/apm_fuel_cell_deuterium.png'
apm.nuclear.icons.path.fuel_cell_deuterium_used = '__apm_resource_pack__/graphics/icons/apm_fuel_cell_used_deuterium.png'


-- Icons ----------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.nuclear.icons.solid_fluorite = {icon=apm.nuclear.icons.path.solid_fluorite, icon_size=64}
apm.nuclear.icons.fuel_cell = {icon=apm.nuclear.icons.path.fuel_cell, icon_size=64}
apm.nuclear.icons.fuel_cell_used = {icon=apm.nuclear.icons.path.fuel_cell_used, icon_size=64}
apm.nuclear.icons.fuel_cell_uranium = {icon=apm.nuclear.icons.path.fuel_cell_uranium, icon_size=64}
apm.nuclear.icons.fuel_cell_uranium_used = {icon=apm.nuclear.icons.path.fuel_cell_uranium_used, icon_size=64}
apm.nuclear.icons.fuel_cell_mox = {icon=apm.nuclear.icons.path.fuel_cell_mox, icon_size=64}
apm.nuclear.icons.fuel_cell_mox_used = {icon=apm.nuclear.icons.path.fuel_cell_mox_used, icon_size=64}
apm.nuclear.icons.breeder_uranium_inventory = {icon=apm.nuclear.icons.path.breeder_uranium_inventory, icon_size=64}
apm.nuclear.icons.breeder_uranium_inventory_enriched = {icon=apm.nuclear.icons.path.breeder_uranium_inventory_enriched, icon_size=64}
apm.nuclear.icons.breeder_thorium_inventory = {icon=apm.nuclear.icons.path.breeder_thorium_inventory, icon_size=64}
apm.nuclear.icons.breeder_thorium_inventory_enriched = {icon=apm.nuclear.icons.path.breeder_thorium_inventory_enriched, icon_size=64}
apm.nuclear.icons.waste_container = {icon=apm.nuclear.icons.path.waste_container, icon_size=64}
apm.nuclear.icons.waste_radioactive = {icon=apm.nuclear.icons.path.waste_radioactive, icon_size=64}
apm.nuclear.icons.rtg = {icon=apm.nuclear.icons.path.rtg, icon_size=64}
apm.nuclear.icons.uranium_oxide_pellet = {icon=apm.nuclear.icons.path.uranium_oxide_pellet, icon_size=64}
apm.nuclear.icons.plutonium_oxide_pellet = {icon=apm.nuclear.icons.path.plutonium_oxide_pellet, icon_size=64}
apm.nuclear.icons.plutonium_oxide_pellet_2 = {icon=apm.nuclear.icons.path.plutonium_oxide_pellet_2, icon_size=64}
apm.nuclear.icons.bromine = {icon=apm.nuclear.icons.path.bromine, icon_size=64}
apm.nuclear.icons.bromine_trifluoride = {icon=apm.nuclear.icons.path.bromine_trifluoride, icon_size=64}
apm.nuclear.icons.breeder_reactor = {icon=apm.nuclear.icons.path.breeder_reactor, icon_size=32}
apm.nuclear.icons.staballoy = {icon=apm.nuclear.icons.path.staballoy, icon_size=64}
apm.nuclear.icons.yellowcake = {icon=apm.nuclear.icons.path.yellowcake, icon_size=64}
apm.nuclear.icons.potassium_bromide = {icon=apm.nuclear.icons.path.potassium_bromide, icon_size=64}
apm.nuclear.icons.thorium_oxide_pellet = {icon=apm.nuclear.icons.path.thorium_oxide_pellet, icon_size=64}
apm.nuclear.icons.fuel_cell_thorium = {icon=apm.nuclear.icons.path.fuel_cell_thorium, icon_size=64}
apm.nuclear.icons.fuel_cell_thorium_used  = {icon=apm.nuclear.icons.path.fuel_cell_thorium_used, icon_size=64}
apm.nuclear.icons.fuel_cell_deuterium = {icon=apm.nuclear.icons.path.fuel_cell_deuterium, icon_size=64}
apm.nuclear.icons.fuel_cell_deuterium_used  = {icon=apm.nuclear.icons.path.fuel_cell_deuterium_used, icon_size=64}

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.nuclear.icons.get_apm_hexafluoride_enrichment(enrichment)
    local icons = {}
    table.insert(icons, {icon = apm.lib.utils.icon.path.chemical_flame_1, icon_size=64, tint={r=0.0, g=0.741, b=0.0}})
    table.insert(icons, {icon = apm.lib.utils.icon.path.chemical_flame_2, icon_size=64, tint={r=0.286, g=0.0, b=0.878}})
    table.insert(icons, {icon = apm.lib.utils.icon.path.chemical_flame_3, icon_size=64, tint={r=0.0, g=0.741, b=0.0}})
    if apm_nuclear_experimental_icons then
        table.insert(icons, {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_uranium_hexafluoride.png', icon_size=64, shift={-4, 0}})
        table.insert(icons, {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_enrichment_' .. string.format("%03d",enrichment) .. '.png', icon_size=64})
    else
        table.insert(icons, {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_uranium_hexafluoride.png', icon_size=64})
        table.insert(icons, {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_top_right_' .. string.format("%03d",enrichment) .. '.png', icon_size=64})
    end
    return icons
end
