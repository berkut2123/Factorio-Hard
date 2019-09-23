require 'util'

if apm.lib.utils.inserter.get == nil then apm.lib.utils.inserter.get = {} end
if apm.lib.utils.inserter.burner == nil then apm.lib.utils.inserter.burner = {} end
if apm.lib.utils.inserter.burner.mod == nil then apm.lib.utils.inserter.burner.mod = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.inserter.exist(inserter_name)
	if data.raw.inserter[inserter_name] then 
		return true
	end
	log('Warning: apm.lib.utils.inserter.exist(): inserter with name: "' .. tostring(inserter_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.inserter.get.fuel_categories(inserter_name)
    if not apm.lib.utils.inserter.exist(inserter_name) then return {} end

    local inserter = data.raw['inserter'][inserter_name]
    if not inserter.energy_source then return {} end

    if inserter.energy_source.fuel_category then
        return {{name=inserter.energy_source.fuel_category, type='fuel-category'}}
    elseif inserter.energy_source.fuel_categories then
        local rc = {}
        for _, fc in pairs(inserter.energy_source.fuel_categories) do
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
function apm.lib.utils.inserter.update_description(inserter_name)
    if not apm.lib.utils.inserter.exist(inserter_name) then return end
    local inserter = data.raw['inserter'][inserter_name]

    if not inserter.energy_source then return end
    if inserter.energy_source.type == 'burner' then
        apm.lib.utils.description.entities.setup(inserter)
        local fuel_categories = apm.lib.utils.inserter.get.fuel_categories(inserter_name)
        apm.lib.utils.description.entities.add_fuel_types(inserter, fuel_categories)
    elseif inserter.energy_source.type == 'fluid' then
        apm.lib.utils.description.entities.setup(inserter)
        local fuel_categories = {{name=inserter.energy_source.fluid_box.filter, type='fluid'}}
        apm.lib.utils.description.entities.add_fuel_types(inserter, fuel_categories)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.inserter.burner.overhaul(inserter_name)
	if not apm.lib.utils.inserter.exist(inserter_name) then return end

	local inserter = data.raw.inserter[inserter_name]

	if inserter.energy_source.type == 'burner' then
		inserter.energy_source.burnt_inventory_size = 1
		inserter.energy_source.fuel_category = nil
		inserter.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
		log('Info: apm.lib.utils.inserter.burner.overhaul(): inserter with name: "' .. tostring(inserter_name) .. '"changed')
		return
	end
	log('Warning: apm.lib.utils.inserter.burner.overhaul(): inserter with name: "' .. tostring(inserter_name) .. '" dosent has energy_source.type == "burner"')
end