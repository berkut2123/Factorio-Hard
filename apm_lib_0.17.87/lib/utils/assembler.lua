require 'util'

if apm.lib.utils.assembler.mod == nil then apm.lib.utils.assembler.mod = {} end
if apm.lib.utils.assembler.mod.category == nil then apm.lib.utils.assembler.mod.category = {} end
if apm.lib.utils.assembler.burner == nil then apm.lib.utils.assembler.burner = {} end
if apm.lib.utils.assembler.centrifuge == nil then apm.lib.utils.assembler.centrifuge = {} end
if apm.lib.utils.assembler.get == nil then apm.lib.utils.assembler.get = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.assembler.exist(assembler_name)
	if data.raw['assembling-machine'][assembler_name] then 
		return true
	end
	log('Warining: apm.lib.utils.assembler.exist(): assembler with name: "' .. tostring(assembler_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_if_category_is_present(assembler, category)
	if assembler.crafting_categories then
		for c in pairs(assembler.crafting_categories) do
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
function apm.lib.utils.assembler.get.fuel_categories(assembler_name)
    if not apm.lib.utils.assembler.exist(assembler_name) then return {} end

    local assembler = data.raw['assembling-machine'][assembler_name]
    if not assembler.energy_source then return {} end

    if assembler.energy_source.fuel_category then
        return {{name=assembler.energy_source.fuel_category, type='fuel-category'}}
    elseif assembler.energy_source.fuel_categories then
        local rc = {}
        for _, fc in pairs(assembler.energy_source.fuel_categories) do
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
function apm.lib.utils.assembler.update_description(assembler_name)
    if not apm.lib.utils.assembler.exist(assembler_name) then return end
    local assembler = data.raw['assembling-machine'][assembler_name]

    if not assembler.energy_source then return end
    if assembler.energy_source.type == 'burner' then
        apm.lib.utils.description.entities.setup(assembler)
        local fuel_categories = apm.lib.utils.assembler.get.fuel_categories(assembler_name)
        apm.lib.utils.description.entities.add_fuel_types(assembler, fuel_categories)
    elseif assembler.energy_source.type == 'fluid' then
        apm.lib.utils.description.entities.setup(assembler)
        local fuel_categories = {{name=assembler.energy_source.fluid_box.filter, type='fluid'}}
        apm.lib.utils.description.entities.add_fuel_types(assembler, fuel_categories)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.assembler.mod.category.add(assembler_name, category)
	if not apm.lib.utils.assembler.exist(assembler_name) then return end

	local assembler = data.raw['assembling-machine'][assembler_name]
	if not check_if_category_is_present(assembler, category) then
		table.insert(assembler.crafting_categories, category)
		log('Info: apm.lib.utils.assembler.mod.category.add(): added: "' .. tostring(category) .. '" to "' .. tostring(assembler_name) .. '"')
		return
	end
	log('Warning: apm.lib.utils.assembler.mod.category.add(): assembler: "' .. tostring(assembler_name) .. '" allready has crafting_categories: "' .. tostring(category) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.assembler.burner.overhaul(assembler_name, only_refined)
	if not apm.lib.utils.assembler.exist(assembler_name) then return end

	local assembler = data.raw['assembling-machine'][assembler_name]
	if assembler.energy_source.type == 'burner' then
		assembler.energy_source.burnt_inventory_size = 1
		assembler.energy_source.fuel_category = nil
		if only_refined then
			assembler.energy_source.fuel_categories = {'apm_refined_chemical'}
		else
			assembler.energy_source.fuel_categories = {'chemical','apm_refined_chemical'}
		end
		log('Info: apm.lib.utils.assembler.burner.overhaul(): assembler with name: "' .. tostring(assembler_name) .. '" changed')
		return
	end
	log('Warining: apm.lib.utils.assembler.burner.overhaul(): assembler with name: "' .. tostring(assembler_name) .. '" has not energy_source.type = "burner"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.assembler.centrifuge.overhaul(centrifuge_name, level)
	if not apm.lib.utils.assembler.exist(centrifuge_name) then return end

	local centrifuge = data.raw['assembling-machine'][centrifuge_name]
    centrifuge.flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"}
	centrifuge.fluid_boxes = {}
	centrifuge.fluid_boxes[1] = {}
	centrifuge.fluid_boxes[1].production_type = "input"
	--centrifuge.fluid_boxes[1].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
	--centrifuge.fluid_boxes[1].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
	centrifuge.fluid_boxes[1].base_area = 0.1
	centrifuge.fluid_boxes[1].base_level = -1
	centrifuge.fluid_boxes[1].pipe_connections = {{ type="input", position = {0, -2} }}
	centrifuge.fluid_boxes[1].secondary_draw_orders = { north = -1 }
	centrifuge.fluid_boxes[2] = {}
	centrifuge.fluid_boxes[2].production_type = "output"
	centrifuge.fluid_boxes[2].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
	centrifuge.fluid_boxes[2].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
	centrifuge.fluid_boxes[2].base_area = 0.1
	centrifuge.fluid_boxes[2].base_level = 1
	centrifuge.fluid_boxes[2].pipe_connections = {{ type="output", position = {-1, 2} }}
	centrifuge.fluid_boxes[2].secondary_draw_orders = { north = -1 }
	centrifuge.fluid_boxes[3] = {}
	centrifuge.fluid_boxes[3].production_type = "output"
	centrifuge.fluid_boxes[3].pipe_picture = apm.lib.utils.pipecovers.assembler2pipepictures()
	centrifuge.fluid_boxes[3].pipe_covers = apm.lib.utils.pipecovers.pipecoverspictures()
	centrifuge.fluid_boxes[3].base_area = 0.1
	centrifuge.fluid_boxes[3].base_level = 1
	centrifuge.fluid_boxes[3].pipe_connections = {{ type="output", position = {1, 2} }}
	centrifuge.fluid_boxes[3].secondary_draw_orders = { north = -1 }
	centrifuge.fast_replaceable_group = "centrifuge"
	centrifuge.allowed_effects = {"consumption", "speed", "pollution"}
	-- centrifuge.always_draw_idle_animation = false
	-- move all layer to animation, otherwise the pipe_picture will overlap
	if centrifuge.idle_animation then
		--local new = {}
		--for _, layer in pairs(centrifuge.idle_animation.layers) do
		--	table.insert(new, layer)
		--end
		--for _, layer in pairs(centrifuge.animation.layers) do
		--	table.insert(new, layer)
		--end
		--centrifuge.animation.layers = table.deepcopy(new)
		--centrifuge.idle_animation = nil
	end
	log('Info: apm.lib.utils.assembler.centrifuge.overhaul(): centrifuge with name: "' .. tostring(centrifuge_name) .. '" changed')
end