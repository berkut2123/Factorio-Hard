require 'util'

if apm.lib.utils.reactor.add == nil then apm.lib.utils.reactor.add = {} end
if apm.lib.utils.reactor.set == nil then apm.lib.utils.reactor.set = {} end
if apm.lib.utils.reactor.get == nil then apm.lib.utils.reactor.get = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.reactor.exist(reactor_name)
	if data.raw.reactor[reactor_name] then 
		return true
	end
	log('Warning: apm.lib.utils.reactor.exist(): reactor with name: "' .. tostring(reactor_name) .. '" dosent exist.')
	return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.reactor.get.fuel_categories(reactor_name)
    if not apm.lib.utils.reactor.exist(reactor_name) then return {} end

    local reactor = data.raw['reactor'][reactor_name]
    if not reactor.energy_source then return {} end

    if reactor.energy_source.fuel_category then
        return {{name=reactor.energy_source.fuel_category, type='fuel-category'}}
    elseif reactor.energy_source.fuel_categories then
        local rc = {}
        for _, fc in pairs(reactor.energy_source.fuel_categories) do
            table.insert(rc, {name=fc, type='fuel-category'})
        end
        return rc
    end
    return {name='nuclear', type='fuel-category'} -- default
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.reactor.update_description(reactor_name)
	if not apm.lib.utils.reactor.exist(reactor_name) then return end
	local reactor = data.raw['reactor'][reactor_name]

    if not reactor.energy_source then return end
	if reactor.energy_source.type == 'burner' then
        apm.lib.utils.description.entities.setup(reactor)
	    local fuel_categories = apm.lib.utils.reactor.get.fuel_categories(reactor_name)
        apm.lib.utils.description.entities.add_fuel_types(reactor, fuel_categories)
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function convert_to_fuel_categories_if_needed(reactor)
	if reactor.energy_source.fuel_categorie then
		reactor.energy_source.fuel_categories = {}
		table.insert(reactor.energy_source.fuel_categories, reactor.energy_source.fuel_categorie)
		reactor.energy_source.fuel_categorie = nil
	end
end
-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function check_if_fuel_category_is_present(reactor, category)
	if reactor.energy_source.fuel_categories then
		for f in pairs(reactor.energy_source.fuel_categories) do
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
function apm.lib.utils.reactor.add.fuel_category(reactor_name, fuel_categorie)
	if not apm.lib.utils.reactor.exist(reactor_name) then return end

	local reactor = data.raw.reactor[reactor_name]
	convert_to_fuel_categories_if_needed(reactor)
	if not check_if_fuel_category_is_present(reactor, fuel_categorie) then
		table.insert(reactor.energy_source.fuel_categories, fuel_categorie)
		log('Info: apm.lib.utils.reactor.add.fuel_category(): added: "' .. tostring(fuel_categorie) .. '" to: "' .. tostring(reactor_name) .. '"')
	else
		log('Warning: apm.lib.utils.reactor.add.fuel_category(): reactor: "' .. tostring(fuel_categorie) .. '" allready has: "' .. tostring(reactor_name) .. '" as fuel_categorie.')
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.reactor.set.fuel_categories(reactor_name, fuel_categories)
	if not apm.lib.utils.reactor.exist(reactor_name) then return end

	local reactor = data.raw.reactor[reactor_name]
	reactor.energy_source.fuel_category = nil
	reactor.energy_source.fuel_categories = fuel_categories
	log('Info: apm.lib.utils.reactor.set.fuel_categories(): set fuel_categories for : "' .. tostring(reactor_name) .. '"')
	log('Note: please be carfuel with this function, it can break compatibillity with other mods!')
	log('---------------------------------')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.reactor.overhaul(reactor_name, level)
	if not apm.lib.utils.reactor.exist(reactor_name) then return end

	--local reactor = data.raw.reactor[reactor_name]
    apm.lib.utils.reactor.set.fuel_categories(reactor_name, {'apm_nuclear_uranium', 'apm_nuclear_mox'})
	--apm.lib.utils.reactor.set.fuel_categories(reactor_name, {'nuclear','apm_nuclear_mox'})
end