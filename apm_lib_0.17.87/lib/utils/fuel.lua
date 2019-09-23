require 'util'

if apm.lib.utils.fuel.category == nil then apm.lib.utils.fuel.category = {} end
if apm.lib.utils.fuel.add == nil then apm.lib.utils.fuel.add = {} end
if apm.lib.utils.fuel.set == nil then apm.lib.utils.fuel.set = {} end
if apm.lib.utils.fuel.exlude_list == nil then apm.lib.utils.fuel.exlude_list = {} end
if apm.lib.utils.fuel.entity == nil then apm.lib.utils.fuel.entity = {} end
if apm.lib.utils.fuel.entity.add == nil then apm.lib.utils.fuel.entity.add = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.add.to_exlude_list(entity_name)
    apm.lib.utils.fuel.exlude_list[entity_name] = true
    log('Info: apm.lib.utils.fuel.add.to_exlude_list(): add entity: "' .. tostring(entity_name) .. '" to fuel overhoule exlude_list')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.get_base_fuel_value()
    local fuel_value = 2.5

    if settings.startup['apm_power_coal_value_01761'] then
        fuel_value = settings.startup['apm_power_coal_value_01761'].value -- value is MJ
        log('Info: get_base_fuel_value(): from settings: ' .. tostring(fuel_value))
    end

    if apm.power.overwrites.data_stage.coal_fuel_value then
        fuel_value = apm.power.overwrites.data_stage.coal_fuel_value
        log('Info: get_base_fuel_value(): interface overwrite: ' .. tostring(fuel_value))
    end

    return tostring(fuel_value * 1000000) .. 'J'
end

-- Function -------------------------------------------------------------------
-- the coal fuel value is the base for all other callculations
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.overwrite_coal_fuel_value()
	if not apm.lib.utils.item.exist('coal') then
		log('Warning: apm.lib.utils.fuel.overwrite_coal_fuel_value(): there is no ITEM: coal')
		return 
	end

	local item = data.raw.item['coal']
	local fuel_value = apm.lib.utils.fuel.get_base_fuel_value()
    log('Info: apm.lib.utils.fuel.overwrite_coal_fuel_value(): set coal fuel value to: ' .. tostring(fuel_value))
	item.fuel_value = fuel_value
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.get_coal_fuel_value()
    if not apm.lib.utils.item.exist('coal') then
        return apm.lib.utils.fuel.get_base_fuel_value()
    end

    -- get fuel value of coal
    local item = data.raw.item['coal']
    local fuel_value = apm.lib.utils.string.convert_to_number(item.fuel_value)
    return fuel_value
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.overhaul(level, item_name, multiplicator, burnt_result, fuel_category)
    if not apm.lib.utils.item.exist(item_name) then return end
    
    if burnt_result then
        if not apm.lib.utils.item.exist(burnt_result) then return end
    end

    local item = data.raw.item[item_name]
    local base_value = apm.lib.utils.fuel.get_coal_fuel_value()
    local base_emissions_value = 1.4
    local base_acceleration_multiplier = 0.8
    local base_top_speed_multiplier = 0.8

    local new_value = tostring(apm.lib.utils.math.round(base_value*multiplicator, 2)) .. 'J'
    local new_emissions_multiplier = apm.lib.utils.math.round(base_emissions_value-(level*0.10),2)
    if new_emissions_multiplier < 0.8 then
        new_emissions_multiplier = 0.8
    end
    local new_acceleration_multiplier = apm.lib.utils.math.round(base_acceleration_multiplier+(0.06*level),2)
    local new_top_speed_multiplier = apm.lib.utils.math.round(base_top_speed_multiplier+(0.06*level),2)
    
    if not fuel_category then
        fuel_category = 'chemical'
    end
    
    item.fuel_value = new_value
    item.fuel_category = fuel_category
    item.fuel_emissions_multiplier = new_emissions_multiplier
    item.fuel_acceleration_multiplier  = new_acceleration_multiplier
    item.fuel_top_speed_multiplier = new_top_speed_multiplier
    item.burnt_result = burnt_result
    if burnt_result then
        item.localised_description = {"", {"apm_info_burnt_result_0"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name." .. tostring(item.fuel_category)}}}
    else
        item.localised_description = {"", {"apm_info_burnt_result_1"}, "\n", {"apm_info_fuel_tier", {"fuel-category-name." .. tostring(item.fuel_category)}}}
    end
    log('Info: apm.lib.utils.fuel.overhaul(): item/fluid with name: "' .. tostring(item_name) .. '" changed. New fuel value: "' .. tostring(new_value) .. '" with burnt_result: "' .. tostring(burnt_result) .. '" with category: "' .. tostring(fuel_category) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.category.create(category_name)
    local recipe_category = {}
    recipe_category.type = "fuel-category"
    recipe_category.name = category_name
    data:extend({recipe_category})
    log('Info: apm.lib.utils.fuel.category.create(): created category with name: "' .. tostring(category_name) .. '"')
end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.category.search(energy_source, category)
	if not energy_source then return end

	if energy_source.fuel_category and energy_source.fuel_categories then
		energy_source.fuel_category = nil
	end

	if energy_source.fuel_category == category then 
		return true 
	end

	if energy_source.fuel_categories then
		for _, c in pairs(energy_source.fuel_categories) do
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
function apm.lib.utils.fuel.entity.add.category(entity, category)
    local entity_name = entity.name
    local energy_source = nil
    local burner = false

    if entity.energy_source and entity.energy_source.type == 'burner' then
        energy_source = entity.energy_source
        burner = false
    elseif entity.burner then
        energy_source = entity.burner
        burner = true
    else
        log('Warning: apm.lib.utils.fuel.entity.add.category(): entity: "' .. tostring(entity_name) .. '" has not the property: burner or not energy_source.type == "burner".')
        return
    end

    if not energy_source.fuel_category and not energy_source.fuel_categories then
        energy_source.fuel_categories = {'chemical'}
        log('Info: apm.lib.utils.fuel.entity.add.category(): entity: "' .. tostring(entity_name) .. '" No category is specified, the default category "chemical" is set.')
    end

    if energy_source.type == 'burner' or burner then
        if energy_source.fuel_category then
            energy_source.fuel_categories = {energy_source.fuel_category}
            energy_source.fuel_category = nil
        end
        table.insert(energy_source.fuel_categories, category)
        log('Info: apm.lib.utils.fuel.entity.add.category(): entity: "' .. tostring(entity_name) .. '" added category: "' .. tostring(category) .. '"')
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.category.remap(entity, conditional_category, t_categories)
    local entity_name = entity.name
    local energy_source = nil
    local burner = false

    if entity.energy_source and entity.energy_source.type == 'burner' then
        energy_source = entity.energy_source
        burner = false
    elseif entity.burner then
        energy_source = entity.burner
        burner = true
    else
        log('Warning: apm.lib.utils.fuel.category.remap(): entity: "' .. tostring(entity_name) .. '" has not the property: burner or not energy_source.type == "burner".')
        return
    end

	if energy_source.type == 'burner' or burner then
		if apm.lib.utils.fuel.category.search(energy_source, conditional_category) then
			if energy_source.fuel_category then
				energy_source.fuel_category = nil
				energy_source.fuel_categories = {}
				table.insert(energy_source.fuel_categories, conditional_category)
				for _, c in pairs(t_categories) do
					if not apm.lib.utils.fuel.category.search(energy_source, c) then
                        apm.lib.utils.fuel.entity.add.category(entity, c)
					end
				end
			elseif energy_source.fuel_categories then
				for _, c in pairs(t_categories) do
					if not apm.lib.utils.fuel.category.search(energy_source, c) then
                        apm.lib.utils.fuel.entity.add.category(entity, c)
					end
				end
			end
			energy_source.burnt_inventory_size = energy_source.fuel_inventory_size
		end
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fuel.set.categories_to_all(entity_type, conditional_category, t_categories)
	if not data.raw[entity_type] then 
		log('Warning: apm.lib.utils.fuel.set.categories_to_all(): entity type: "' .. tostring(entity_type) .. '" does not exist.')
		return
	end

	for _, entity in pairs(data.raw[entity_type]) do
		if entity.energy_source or entity.burner then
            log('Info: apm.lib.utils.fuel.set.categories_to_all(): check fo entity: "' .. tostring(entity.name) .. '"')
            apm.lib.utils.fuel.category.remap(entity, conditional_category, t_categories)
            --log(serpent.block(data.raw[entity_type][entity.name], {comment = false, numformat = '%1.8g' } ))
        end
	end
end
