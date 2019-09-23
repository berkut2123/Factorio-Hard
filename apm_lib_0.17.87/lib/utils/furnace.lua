require 'util'

if apm.lib.utils.furnace.mod == nil then apm.lib.utils.furnace.mod = {} end
if apm.lib.utils.furnace.get == nil then apm.lib.utils.furnace.get = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.furnace.exist(furnace_name)
	if data.raw.furnace[furnace_name] then 
		return true
	end
	log('Warning: apm.lib.utils.furnace.exist(): furnace with name: "' .. tostring(furnace_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.furnace.get.fuel_categories(furnace_name)
    if not apm.lib.utils.furnace.exist(furnace_name) then return {} end

    local furnace = data.raw['furnace'][furnace_name]
    if not furnace.energy_source then return {} end

    if furnace.energy_source.fuel_category then
        return {{name=furnace.energy_source.fuel_category, type='fuel-category'}}
    elseif furnace.energy_source.fuel_categories then
        local rc = {}
        for _, fc in pairs(furnace.energy_source.fuel_categories) do
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
function apm.lib.utils.furnace.update_description(furnace_name)
    if not apm.lib.utils.furnace.exist(furnace_name) then return end
    local furnace = data.raw['furnace'][furnace_name]

    if not furnace.energy_source then return end
    if furnace.energy_source.type == 'burner' then
        apm.lib.utils.description.entities.setup(furnace)
        local fuel_categories = apm.lib.utils.furnace.get.fuel_categories(furnace_name)
        apm.lib.utils.description.entities.add_fuel_types(furnace, fuel_categories)
    elseif furnace.energy_source.type == 'fluid' then
        apm.lib.utils.description.entities.setup(furnace)
        local fuel_categories = {{name=furnace.energy_source.fluid_box.filter, type='fluid'}}
        apm.lib.utils.description.entities.add_fuel_types(furnace, fuel_categories)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.furnace.overhaul(furnace_name, level, only_refined)
	if not apm.lib.utils.furnace.exist(furnace_name) then return end

	local furnace = data.raw.furnace[furnace_name]
	if furnace.energy_source.type == 'burner' then
		furnace.energy_source.burnt_inventory_size = 1
		furnace.energy_source.fuel_category = nil
		if only_refined then
			furnace.energy_source.fuel_categories = {'apm_refined_chemical'}
		else
			furnace.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
		end
		log('Info: apm.lib.utils.furnace.overhaul(): furnace with name: "' .. tostring(furnace_name) .. '" changed')
		return
	end
	log('Warning: apm.lib.utils.furnace.overhaul(): furnace with name: "' .. tostring(furnace_name) .. '" dosent have energy_source.type == "burner"')
end