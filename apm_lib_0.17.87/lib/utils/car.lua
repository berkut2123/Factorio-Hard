require 'util'

if not apm.lib.utils.car.get then apm.lib.utils.car.get = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.car.exist(car_name)
	if data.raw.car[car_name] then 
		return true
	end
	log('Warning: apm.lib.utils.car.exist(): car with name: "' .. tostring(car_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.car.get.fuel_categories(car_name)
    if not apm.lib.utils.car.exist(car_name) then return {} end

    local car = data.raw['car'][car_name]
    if not car.burner then return {} end

    if car.burner.fuel_category then
        return {{name=car.burner.fuel_category, type='fuel-category'}}
    elseif car.burner.fuel_categories then
        local rc = {}
        for _, fc in pairs(car.burner.fuel_categories) do
            table.insert(rc, {name=fc, type='fuel-category'})
        end
        return rc
    end
    return {name='chemical', type='fuel-category'} -- default
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.car.update_description(car_name)
	if not apm.lib.utils.car.exist(car_name) then return end
	local car = data.raw['car'][car_name]

    if not car.burner then return end
	if car.burner then
        apm.lib.utils.description.entities.setup(car)
	    car.localised_description = {"", {"entity-description." .. tostring(car_name)}, "\n", {"apm_info_fuel_types"}}
	    local fuel_categories = apm.lib.utils.car.get.fuel_categories(car_name)
        apm.lib.utils.description.entities.add_fuel_types(car, fuel_categories)
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.car.overhaul(car_name, only_refined, only_petrol, only_electrical)
	if not apm.lib.utils.car.exist(car_name) then return end

	local car = data.raw.car[car_name]
	local base_emissions_per_minute = 2

	if not car.burner then 
		log('Warning: apm.lib.utils.car.overhaul(): car with name: "' .. tostring(car_name) .. '" has no property: burner')
		return 
	end

	car.burner.burnt_inventory_size = car.burner.fuel_inventory_size
	car.burner.fuel_category = nil
	car.burner.fuel_categories = {'chemical', 'apm_refined_chemical', 'apm_vehicle_only'}
	car.burner.emissions_per_minute = base_emissions_per_minute
	car.effectivity = 0.35

	if only_refined then
		car.burner.fuel_categories = {'apm_refined_chemical', 'apm_vehicle_only'}
		car.burner.emissions_per_minute = base_emissions_per_minute - 0.5
		car.effectivity = 0.40
		log('Info: apm.lib.utils.car.overhaul(): car with name: "' .. tostring(car_name) .. '" changed to only_refined')
		return
	elseif only_petrol then
		car.burner.fuel_categories = {'apm_petrol', 'apm_vehicle_only'}
		car.burner.emissions_per_minute = base_emissions_per_minute - 0.5
		car.effectivity = 0.50
		log('Info: apm.lib.utils.car.overhaul(): car with name: "' .. tostring(car_name) .. '" changed to only_petrol')
		return
	elseif only_electrical then
		car.burner.fuel_categories = {'apm_electrical'}
		car.burner.emissions_per_minute = nil
		car.effectivity = 0.89
		log('Info: apm.lib.utils.car.overhaul(): car with name: "' .. tostring(car_name) .. '" changed to only_electrical')
		return
	end
	log('Info: apm.lib.utils.car.overhaul(): car with name: "' .. tostring(car_name) .. '" changed to default')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.car.overhaul_all(only_refined, only_petrol, only_electrical)
    for car, _ in pairs(data.raw.car) do
        apm.lib.utils.car.overhaul(car, only_refined, only_petrol, only_electrical)
    end
end