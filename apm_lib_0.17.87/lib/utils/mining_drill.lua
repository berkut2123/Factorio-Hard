require 'util'

if apm.lib.utils.mining_drill.get == nil then apm.lib.utils.mining_drill.get = {} end
if apm.lib.utils.mining_drill.burner == nil then apm.lib.utils.mining_drill.burner = {} end
if apm.lib.utils.mining_drill.burner.mod == nil then apm.lib.utils.mining_drill.burner.mod = {} end


-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.mining_drill.exist(mining_drill_name)
	if data.raw['mining-drill'][mining_drill_name] then 
		return true
	end
	log('Warning: apm.lib.utils.mining_drill.exist(): mining-drill with name: "' .. tostring(mining_drill_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.mining_drill.get.fuel_categories(mining_drill_name)
    if not apm.lib.utils.mining_drill.exist(mining_drill_name) then return {} end

    local mining_drill = data.raw['mining-drill'][mining_drill_name]
    if not mining_drill.energy_source then return {} end

    if mining_drill.energy_source.fuel_category then
        return {{name=mining_drill.energy_source.fuel_category, type='fuel-category'}}
    elseif mining_drill.energy_source.fuel_categories then
        local rc = {}
        for _, fc in pairs(mining_drill.energy_source.fuel_categories) do
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
function apm.lib.utils.mining_drill.update_description(mining_drill_name)
	if not apm.lib.utils.mining_drill.exist(mining_drill_name) then return end
	local mining_drill = data.raw['mining-drill'][mining_drill_name]

    if not mining_drill.energy_source then return end
	if mining_drill.energy_source.type == 'burner' then
        apm.lib.utils.description.entities.setup(mining_drill)
	    local fuel_categories = apm.lib.utils.mining_drill.get.fuel_categories(mining_drill_name)
	    apm.lib.utils.description.entities.add_fuel_types(mining_drill, fuel_categories)
	elseif mining_drill.energy_source.type == 'fluid' then
        apm.lib.utils.description.entities.setup(mining_drill)
		local fuel_categories = {{name=mining_drill.energy_source.fluid_box.filter, type='fluid'}}
		apm.lib.utils.description.entities.add_fuel_types(mining_drill, fuel_categories)
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.mining_drill.burner.overhaul(mining_drill_name, level)
	if not apm.lib.utils.mining_drill.exist(mining_drill_name) then return end

	local mining_drill = data.raw['mining-drill'][mining_drill_name]
	if not mining_drill.energy_source.type == 'burner' then
		log('Warning: apm.lib.utils.mining_drill.burner.overhaul(): mining-drill with name: "' .. tostring(mining_drill_name) .. '" has not energy_source.type == "burner".')
		return
	end

	local base_mining_speed = 0.25
	local base_energy_usage = 115000
	local base_emissions_per_minute = 6

	local new_base_emissions_per_minute = base_emissions_per_minute * (1+((level-1)*0.25))
	local new_mining_speed = 0.25 + ((level-1)*0.10)
	local new_energy_usage = base_energy_usage + ((level-1)*75000)

	mining_drill.mining_speed = new_mining_speed
	mining_drill.energy_usage = new_energy_usage .. 'W'
	mining_drill.energy_source.burnt_inventory_size = 1
	mining_drill.energy_source.fuel_category = nil
	mining_drill.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
	mining_drill.energy_source.emissions_per_minute = new_base_emissions_per_minute
	mining_drill.resource_searching_radius = 0.99 + level -1
	mining_drill.radius_visualisation_picture = {filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png", width = 10, height = 10}

	log('Info: apm.lib.utils.mining_drill.burner.overhaul(): mining-drill with name: "' .. tostring(mining_drill_name) .. '" changed.')
end