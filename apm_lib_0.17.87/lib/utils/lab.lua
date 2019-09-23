require 'util'

if apm.lib.utils.lab.add == nil then apm.lib.utils.lab.add = {} end
if apm.lib.utils.lab.set == nil then apm.lib.utils.lab.set = {} end
if apm.lib.utils.lab.get == nil then apm.lib.utils.lab.get = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.lab.exist(lab_name)
	if data.raw.lab[lab_name] then 
		return true
	end
	log('Warning: apm.lib.utils.lab.exist(): lab with name: "' .. tostring(lab_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.lab.get.fuel_categories(lab_name)
    if not apm.lib.utils.lab.exist(lab_name) then return {} end

    local lab = data.raw['lab'][lab_name]
    if not lab.energy_source then return {} end

    if not lab.energy_source then return end
    if lab.energy_source.fuel_category then
        return {{name=lab.energy_source.fuel_category, type='fuel-category'}}
    elseif lab.energy_source.fuel_categories then
        local rc = {}
        for _, fc in pairs(lab.energy_source.fuel_categories) do
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
function apm.lib.utils.lab.update_description(lab_name)
    if not apm.lib.utils.lab.exist(lab_name) then return end
    local lab = data.raw['lab'][lab_name]

    if lab.energy_source.type == 'burner' then
        apm.lib.utils.description.entities.setup(lab)
        local fuel_categories = apm.lib.utils.lab.get.fuel_categories(lab_name)
        apm.lib.utils.description.entities.add_fuel_types(lab, fuel_categories)
    elseif lab.energy_source.type == 'fluid' then
        apm.lib.utils.description.entities.setup(lab)
        local fuel_categories = {{name=lab.energy_source.fluid_box.filter, type='fluid'}}
        apm.lib.utils.description.entities.add_fuel_types(lab, fuel_categories)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.lab.overhaul(lab_name)
	if not apm.lib.utils.lab.exist(lab_name) then return end

	local lab = data.raw.lab[lab_name]
	lab.fast_replaceable_group = "lab"
	apm.lib.utils.lab.add.science_pack(lab_name, "apm_industrial_science_pack")
	log('Info: apm.lib.utils.lab.overhaul(): lab with name: "' .. tostring(lab_name) .. '" changed.')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_for_science_packs(lab, science_pack)
	for s in pairs(lab.inputs) do
		if s == science_pack then
			return true
		end
	end
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.lab.add.science_pack(lab_name, science_pack)
	if not apm.lib.utils.lab.exist(lab_name) then return end
	
	local lab = data.raw.lab[lab_name]
	if not check_for_science_packs(lab, science_pack) then
		table.insert(lab.inputs, science_pack)
		log('Info: apm.lib.utils.lab.add.science_pack(): added: "' .. tostring(science_pack) .. '"  to "' .. tostring(lab_name) .. '"')
		return
	end
	log('Warning: apm.lib.utils.lab.add.science_pack(): cant add: "' .. tostring(science_pack) .. '"  to "' .. tostring(lab_name) .. '" is allready there.')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.lab.set.inputs(lab_name, t_science_packs)
	if not apm.lib.utils.lab.exist(lab_name) then return end

	local lab = data.raw.lab[lab_name]
	lab.inputs = t_science_packs
	log('Info: apm.lib.utils.lab.inputs(): lab with name: "' .. tostring(lab_name) .. '" input overwrite/set.')
	log('Note: please be carfuel with this function, it can break compatibillity with other mods!')
	log('---------------------------------')
end

-- Function -------------------------------------------------------------------
-- deprecated
--
-------------------------------------------------------------------------------
function apm.lib.utils.lab.inputs(lab_name, t_science_packs)
	log('Warining: apm.lib.utils.lab.inputs() is marked deprecated')
	apm.lib.utils.lab.set.inputs(lab_name, t_science_packs)
end