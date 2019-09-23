require 'util'

if not apm.lib.utils.bot.logistic then apm.lib.utils.bot.logistic = {} end
if not apm.lib.utils.bot.construction then apm.lib.utils.bot.construction = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.bot.logistic.exist(bot_name)
	if data.raw['logistic-robot'][bot_name] then 
		return true
	end
	log('Warning: apm.lib.utils.bot.logistic.exist(): logistic-robot with name: "' .. tostring(bot_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.bot.construction.exist(bot_name)
	if data.raw['construction-robot'][bot_name] then 
		return true
	end
	log('Warning: apm.lib.utils.bot.construction.exist(): construction-robot with name: "' .. tostring(bot_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.bot.logistic.overhaul(bot_name, level)
	if not apm.lib.utils.bot.logistic.exist(bot_name) then return end

	local base_max_energy = 3000000
    local base_energy_per_tick = 100
    local base_energy_per_move = 7500
    local base_speed = 0.04
    local speed_mod = 0.0125
    local multiplicator = 1.5^level/1.25

    local bot = data.raw['logistic-robot'][bot_name]   
    bot.max_energy = apm.lib.utils.math.round((base_max_energy*multiplicator), 2) .. 'J'
    bot.energy_per_tick = apm.lib.utils.math.round((base_energy_per_tick*multiplicator), 2) .. 'J'
    bot.energy_per_move = apm.lib.utils.math.round((base_energy_per_move*multiplicator), 2) .. 'J'
    bot.speed = base_speed+(speed_mod*level)
    bot.max_payload_size = level
    bot.speed_multiplier_when_out_of_energy = 0.25

    log('Info: apm.lib.utils.bot.logistic.overhaul(): logistic-robot with name: "' .. tostring(bot_name) .. '" changed')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.bot.construction.overhaul(bot_name, level)
	if not apm.lib.utils.bot.construction.exist(bot_name) then return end

    local base_max_energy = 3250000
    local base_energy_per_tick = 80
    local base_energy_per_move = 6500
    local base_speed = 0.07
    local speed_mod = 0.0205
    local multiplicator = 1.5^level/1.25

    local bot = data.raw['construction-robot'][bot_name]   
    bot.max_energy = apm.lib.utils.math.round((base_max_energy*multiplicator), 2) .. 'J'
    bot.energy_per_tick = apm.lib.utils.math.round((base_energy_per_tick*multiplicator), 2) .. 'J'
    bot.energy_per_move = apm.lib.utils.math.round((base_energy_per_move*multiplicator), 2) .. 'J'
    bot.speed = base_speed+(speed_mod*level)
    bot.max_payload_size = 2+level
    bot.speed_multiplier_when_out_of_energy = 0.35

    log('Info: apm.lib.utils.bot.logistic.overhaul(): construction-robot with name: "' .. tostring(bot_name) .. '" changed')
end