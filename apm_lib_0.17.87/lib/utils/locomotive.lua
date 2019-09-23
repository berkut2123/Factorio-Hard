require 'util'

if apm.lib.utils.locomotive.add == nil then apm.lib.utils.locomotive.add = {} end
if apm.lib.utils.locomotive.get == nil then apm.lib.utils.locomotive.get = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.locomotive.exist(locomotive_name)
	if data.raw.locomotive[locomotive_name] then 
		return true
	end
	log('Warning: apm.lib.utils.locomotive.exist(): locomotive with name: "' .. tostring(locomotive_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.locomotive.get.fuel_categories(locomotive_name)
    if not apm.lib.utils.locomotive.exist(locomotive_name) then return {} end

    local locomotive = data.raw['locomotive'][locomotive_name]
    if not locomotive.burner then return {} end

    if locomotive.burner.fuel_category then
        return {{name=locomotive.burner.fuel_category, type='fuel-category'}}
    elseif locomotive.burner.fuel_categories then
        local rc = {}
        for _, fc in pairs(locomotive.burner.fuel_categories) do
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
function apm.lib.utils.locomotive.update_description(locomotive_name)
	if not apm.lib.utils.locomotive.exist(locomotive_name) then return end
	local locomotive = data.raw['locomotive'][locomotive_name]

    if not locomotive.burner then return end
	if locomotive.burner then
        apm.lib.utils.description.entities.setup(locomotive)
	    locomotive.localised_description = {"", {"entity-description." .. tostring(locomotive_name)}, "\n", {"apm_info_fuel_types"}}
	    local fuel_categories = apm.lib.utils.locomotive.get.fuel_categories(locomotive_name)
        apm.lib.utils.description.entities.add_fuel_types(locomotive, fuel_categories)
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_if_fuel_category_is_present(locomotive, category)
	if locomotive.burner.fuel_categories then
		for f in pairs(locomotive.burner.fuel_categories) do
			if c == category then
				return true
			end
		end
	end
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.locomotive.add.fuel_category(locomotive_name, fuel_category)
	if not apm.lib.utils.locomotive.exist(locomotive_name) then return end
	
	local locomotive = data.raw.locomotive[locomotive_name]
	if locomotive.burner then
		if not check_if_fuel_category_is_present(locomotive, fuel_category) then
			table.insert(locomotive.burner.fuel_categories, fuel_category)
			log('Warning: apm.lib.utils.locomotive.add.fuel_category(): locomotive with name: "' .. tostring(locomotive_name) .. '" added: "' .. tostring(fuel_category) .. '" as fuel_category')
		else
			log('Warning: apm.lib.utils.locomotive.add.fuel_category(): locomotive with name: "' .. tostring(locomotive_name) .. '" allready has "' .. tostring(fuel_category) .. '" as fuel_category')
		end
	else
		log('Warning: apm.lib.utils.locomotive.add.fuel_category(): locomotive with name: "' .. tostring(locomotive_name) .. '" has no property: burner..')
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.locomotive.overhaul(locomotive_name, only_refined, only_petrol, only_electrical)
	if not apm.lib.utils.locomotive.exist(locomotive_name) then return end

	local locomotive = data.raw.locomotive[locomotive_name]
	local base_emissions_per_minute = 4

	if not locomotive.burner then 
		log('Warning: apm.lib.utils.locomotive.overhaul(): locomotive with name: "' .. tostring(locomotive_name) .. '" has no property: burner.')
		return 
	end

	locomotive.burner.burnt_inventory_size = 3
	locomotive.burner.fuel_category = nil
	locomotive.burner.emissions_per_minute = base_emissions_per_minute
	locomotive.burner.fuel_categories = {'chemical', 'apm_refined_chemical', 'apm_petrol', 'apm_vehicle_only'}
	locomotive.effectivity = 0.35

	if only_refined then
		locomotive.burner.fuel_categories = {'apm_refined_chemical', 'apm_vehicle_only'}
		locomotive.effectivity = 0.40
		return
	elseif only_petrol then
		locomotive.burner.fuel_categories = {'only_petrol', 'apm_vehicle_only'}
		locomotive.effectivity = 0.50
		return
	elseif only_electrical then
		locomotive.burner.fuel_categories = {'apm_electrical'}
		locomotive.burner.emissions_per_minute = nil
		locomotive.effectivity = 0.89
		return
	end
	log('Info: apm.lib.utils.locomotive.overhaul(): locomotive with name: "' .. tostring(locomotive_name) .. '" changed.')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.locomotive.overhaul_all(only_refined, only_petrol, only_electrical)
    for locomotive, _ in pairs(data.raw.locomotive) do
        apm.lib.utils.locomotive.overhaul(locomotive, only_refined, only_petrol, only_electrical)
    end
end