require 'util'

if not apm.lib.utils.description.entities then apm.lib.utils.description.entities = {} end
if not apm.lib.utils.description.entities.include_list then apm.lib.utils.description.entities.include_list = {} end
if not apm.lib.utils.description.entities.exclude_list then apm.lib.utils.description.entities.exclude_list = {} end
if not apm.lib.utils.description.entities.exclude_list.table then apm.lib.utils.description.entities.exclude_list.table = {} end
if not apm.lib.utils.description.entities.include_list.table then apm.lib.utils.description.entities.include_list.table = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.description.entities.include_list.add(entity_name)
    apm.lib.utils.description.entities.include_list.table[entity_name] = true
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.description.entities.exclude_list.add(entity_name)
    apm.lib.utils.description.entities.exclude_list.table[entity_name] = true
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.description.entities.include_list.remove(entity_name)
    apm.lib.utils.description.entities.include_list.table[entity_name] = nil
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.description.entities.exclude_list.remove(entity_name)
    apm.lib.utils.description.entities.exclude_list.table[entity_name] = nil
end

-- Local ----------------------------------------------------------------------
-- 
--
-------------------------------------------------------------------------------
local nuclear_fuel_types = {
    ['apm_nuclear_uranium'] = true,
    ['apm_nuclear_mox'] = true,
    ['apm_nuclear_thorium'] = true,
    ['apm_nuclear_deuterium'] = true
}

-- Function -------------------------------------------------------------------
-- entry_list = {{entry.name=x, entry.type=x},{entry.name=x, entry.type=x}}
--
-------------------------------------------------------------------------------
function apm.lib.utils.description.entities.add_fuel_types(entity, entry_list)
    for _, entry in pairs(entry_list) do
        if entry.type == 'fuel-category' then
            table.insert(entity.localised_description, {"apm_info_fuel_type", "\n", {tostring(entry.type) .. "-name." .. tostring(entry.name)}})
            if entry.name == 'apm_electrical' then
                table.insert(entity.localised_description, {"apm_info_fuel_charge", " "})
            elseif entry.name == 'apm_vehicle_only' then
                table.insert(entity.localised_description, {"apm_info_fuel_vehicle", " "})
            elseif entry.name == 'apm_rocket' then
                table.insert(entity.localised_description, {"apm_info_fuel_rocket", " "})
            elseif nuclear_fuel_types[entry.name] then
                table.insert(entity.localised_description, {"apm_info_fuel_nuclear", " "})
            else
                table.insert(entity.localised_description, {"apm_info_fuel_fuel", " "})
            end
        elseif entry.type == 'fluid' then
            table.insert(entity.localised_description, {"apm_info_fuel_type", "\n", {tostring(entry.type) .. "-name." .. tostring(entry.name)}})
        end
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.description.entities.setup(entity)
    if apm.lib.utils.description.entities.include_list.table[entity.name] then
        entity.localised_description = {"", {"entity-description." .. tostring(entity.name)}, "\n", {"apm_info_fuel_types"}}
    else
        entity.localised_description = {"", {"apm_info_fuel_types"}}
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.description.entities.update()
    local prototypes = {'assembling-machine', 'furnace', 'inserter', 'lab', 'mining-drill', 'reactor', 'boiler', 'generator', 'car', 'locomotive'}
    for _, prototype in pairs(prototypes) do
        for entity_name, _ in pairs(data.raw[prototype]) do
            if not apm.lib.utils.description.entities.exclude_list.table[entity_name] then
                if prototype == 'assembling-machine' then
                    apm.lib.utils.assembler.update_description(entity_name)
                elseif prototype == 'furnace' then
                    apm.lib.utils.furnace.update_description(entity_name)
                elseif prototype == 'inserter' then
                    apm.lib.utils.inserter.update_description(entity_name)
                elseif prototype == 'lab' then
                    apm.lib.utils.lab.update_description(entity_name)
                elseif prototype == 'mining-drill' then
                    apm.lib.utils.mining_drill.update_description(entity_name)
                elseif prototype == 'reactor' then
                    apm.lib.utils.reactor.update_description(entity_name)
                elseif prototype == 'boiler' then
                    apm.lib.utils.boiler.update_description(entity_name)
                elseif prototype == 'generator' then
                elseif prototype == 'car' then
                    apm.lib.utils.car.update_description(entity_name)
                elseif prototype == 'locomotive' then
                    apm.lib.utils.locomotive.update_description(entity_name)
                end
            end
        end
    end
end
