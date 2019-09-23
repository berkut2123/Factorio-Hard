require('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/fluids.lua')
log('-------------------------------------------------------')

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function CreateHexafluoride(i)
    local enrichment = 2+((i-1)*5)
    
    fluid = {}
    fluid.type = 'fluid'
    fluid.name = 'apm_nuclear_hexafluoride_' .. string.format("%03d",enrichment)
    fluid.localised_name = {"fluid-name.apm_nuclear_hexafluoride", tostring(enrichment/10)}
    fluid.icons = apm.nuclear.icons.get_apm_hexafluoride_enrichment(enrichment)
    fluid.icon_size = 32
    fluid.base_color = {r=0.0, g=0.65, b=0.65}
    fluid.flow_color = {r=0.0, g=0.75, b=0.75}
    fluid.default_temperature = 25
    fluid.max_temperature = 25
    fluid.heat_capacity = "0.1KJ"
    fluid.pressure_to_speed_ratio = 0.4
    fluid.flow_to_energy_ratio = 0.59
    fluid.group = "apm_nuclear"
    fluid.subgroup = "apm_nuclear_hexafluoride"
    fluid.order = 'aa_['.. string.format("%03d",enrichment) ..']'
    fluid.auto_barrel = false
    data:extend({fluid})
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function CreateNitricAcidFuelSolution(suffix, tint_1, tint_2, subgroup, order)
    --local enrichment = i*5 + 27
    local fluid = {}
    fluid.type = 'fluid'
    fluid.name = 'apm_nitric_acid_fuel_solution_' .. tostring(suffix)
    fluid.icons = {
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_fluid_drop_inner.png', tint=tint_2, icon_size=64},
        {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_fluid_drop_body.png', tint=tint_1, icon_size=64},
        apm.lib.utils.icon.dynamics.radioactive
    }
    fluid.group = "apm_nuclear"
    fluid.subgroup = subgroup
    fluid.order = order
    fluid.icon_size = 32
    fluid.base_color = tint_1
    fluid.flow_color = tint_2
    fluid.default_temperature = 25
    fluid.max_temperature = 25
    fluid.heat_capacity = "0.1KJ"
    fluid.pressure_to_speed_ratio = 0.4
    fluid.flow_to_energy_ratio = 0.59
    data:extend({fluid})
    apm.lib.utils.barrel.generate(fluid.name)
end

-- Action ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
for i = 1,10 do
    CreateHexafluoride(i)
end

CreateNitricAcidFuelSolution('032', {r=0.004, g=0.144, b=0.004}, {r=0.018, g=0.186, b=0.018}, 'apm_nuclear_recycling_stage_a', 'aa_a')
CreateNitricAcidFuelSolution('037', {r=0.004, g=0.244, b=0.004}, {r=0.018, g=0.286, b=0.018}, 'apm_nuclear_recycling_stage_a', 'aa_b')
CreateNitricAcidFuelSolution('042', {r=0.004, g=0.344, b=0.004}, {r=0.018, g=0.386, b=0.018}, 'apm_nuclear_recycling_stage_a', 'aa_c')
CreateNitricAcidFuelSolution('047', {r=0.004, g=0.444, b=0.004}, {r=0.018, g=0.486, b=0.018}, 'apm_nuclear_recycling_stage_a', 'aa_d')
CreateNitricAcidFuelSolution('mox', {r=0.451, g=0.102, b=0.0}, {r=0.569, g=0.135, b=0.0}, 'apm_nuclear_recycling_stage_a', 'ab_a')
CreateNitricAcidFuelSolution('breeder', {r=0.155, g=0.693, b=0.762}, {r=0.4, g=0.863, b=0.973}, 'apm_nuclear_recycling_stage_a', 'ac_a')

-- Uniques --------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------

data:extend(
{
    {
        type = "fluid",
        name = "apm_radioactive_wastewater",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0.5, g=1.0, b=0.0},
        flow_color = {r=0.7, g=1.0, b=0.0},
        icons = apm.lib.utils.icon.generate.fluid({r=0.62, g=0.81, b=0.0}, {r=0.65, g=0.89, b=0.0}, apm.lib.utils.icon.dynamics.radioactive),
        icon_size = 32,
        group = "apm_nuclear",
        subgroup = "apm_nuclear_waste_products",
        order = 'aa_a'
    },
	{
		type = "fluid",
		name = "apm_nuclear_bromine",
		default_temperature = 25,
        max_temperature = 25,
		heat_capacity = "0.2KJ",
        base_color = {r=0.616, g=0.114, b=0.047},
        flow_color = {r=0.916, g=0.414, b=0.347},
        icons = apm.lib.utils.icon.generate.chemical({r=0.616, g=0.114, b=0.047}, {r=0.616, g=0.114, b=0.047}, {r=0.616, g=0.114, b=0.047}, apm.nuclear.icons.bromine),

        icon_size = 32,
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'ac_b',
	},
	{
		type = "fluid",
		name = "apm_nuclear_bromine_trifluoride",
		default_temperature = 25,
        max_temperature = 25,
		heat_capacity = "0.2KJ",
        base_color = {r=0.615, g=0.765, b=0.027},
        flow_color = {r=0.616, g=0.114, b=0.047},
		icons = apm.lib.utils.icon.generate.chemical({r=0.615, g=0.765, b=0.027}, {r=0.616, g=0.114, b=0.047}, {r=0.615, g=0.765, b=0.027}, apm.nuclear.icons.bromine_trifluoride),
        icon_size = 32,
        group = "apm_nuclear",
        subgroup = "apm_nuclear_chemistry",
        order = 'ac_c',
	},
})

apm.lib.utils.barrel.generate('apm_radioactive_wastewater')
apm.lib.utils.barrel.generate('apm_nuclear_bromine')
apm.lib.utils.barrel.generate('apm_nuclear_bromine_trifluoride')