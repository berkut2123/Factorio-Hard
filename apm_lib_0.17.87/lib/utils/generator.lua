require 'util'

if apm.lib.utils.generator.mod == nil then apm.lib.utils.generator.mod = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.generator.exist(generator_name)
	if data.raw.generator[generator_name] then 
		return true
	end
	log('Warning: apm.lib.utils.generator.exist(): generator with name: "' .. tostring(generator_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.generator.overhaul(generator_name, level)
	if not apm.lib.utils.generator.exist(generator_name) then return end

	local generator = data.raw.generator[generator_name]
	local base_maximum_temperature = 120
	local base_fluid_usage_per_tick = 0.5
	local base_effectivity = 0.9

	local new_maximum_temperature = base_maximum_temperature+((level-1)*150)
	local new_fluid_usage_per_tick = base_fluid_usage_per_tick-((level-1)*0.025)
	local new_effectivity = base_effectivity+((level-1)*0.01)

	generator.maximum_temperature = new_maximum_temperature
	generator.fluid_usage_per_tick = new_fluid_usage_per_tick
	generator.effectivity = new_effectivity
	log('Info: apm.lib.utils.generator.overhaul(): generator with name: "' .. tostring(generator_name) .. '" changed')
end