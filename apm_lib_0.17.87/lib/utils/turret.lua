require 'util'

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.turret.exist(turret_name)
	if data.raw['ammo-turret'][turret_name] ~= nil then 
		return true
	end
	log('APM: Error: turret with name: "' .. tostring(turret_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.turret.overhaul(turret_name, only_refined)
	if apm.lib.utils.turret.exist(turret_name) == false then
		return
	end

	local turret = data.raw['ammo-turret'][turret_name]
	local base_emissions_per_minute = 0.5

	turret.energy_usage = "50kW"
	turret.energy_source = {}
	turret.energy_source.type = "burner"
	if only_refined then
		turret.energy_source.fuel_categories = {'apm_refined_chemical'}
	else
		turret.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
	end
	turret.energy_source.effectivity = 1
	turret.energy_source.fuel_inventory_size = 1
	turret.energy_source.burnt_inventory_size = 1
	turret.energy_source.emissions_per_minute = base_emissions_per_minute

end