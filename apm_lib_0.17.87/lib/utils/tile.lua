require 'util'

if apm.lib.utils.tile.get == nil then apm.lib.utils.tile.get = {} end
if apm.lib.utils.tile.set == nil then apm.lib.utils.tile.set = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.tile.exist(tile_name)
    if data.raw.tile[tile_name] then
        return true
    end
    log('Warning: apm.lib.utils.tile.exist(): tile with name: "' .. tostring(tile_name) .. '" dosent exist.')
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.tile.get.layer(tile_name)
	if not apm.lib.utils.tile.exist(tile_name) then return nil end
	local tile = data.raw.tile[tile_name]
	return tile.layer
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.tile.set.layer(tile_name, layer)
	if not apm.lib.utils.tile.exist(tile_name) then return end

	local tile = data.raw.tile[tile_name]
	tile.layer = layer
	log('Info: apm.lib.utils.tile.set.layer(): tile with name: "' .. tostring(tile_name) .. '" set to layer: "' .. tostring(layer) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.tile.unification(old_tile_name, new_tile_name)
    if not apm.lib.utils.tile.exist(old_tile_name) then return end
    if not apm.lib.utils.tile.exist(new_tile_name) then return end

    local old_tile = data.raw.tile[old_tile_name]
    local old_minable = old_tile.minable

    if old_minable then
        local old_minable_item_name = old_minable.result
        if old_minable_item_name then
            if apm.lib.utils.item.exist(old_minable_item_name) then
                local item = data.raw.item[old_minable_item_name]
                item.place_as_tile = { result = new_tile_name, condition_size = 1, condition = { "water-tile" }}
            end
        end
    end


    local new_tile = data.raw.tile[new_tile_name]
    data.raw.tile[old_tile_name] = table.deepcopy(new_tile)
    data.raw.tile[old_tile_name].name = old_tile_name

    apm.lib.utils.tile.set.relation(old_tile_name, new_tile_name, 0)
    log('Info: apm.lib.utils.tile.unification(): tile with name: "' .. tostring(old_tile_name) .. '" unification with: "' .. tostring(new_tile_name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.tile.set.relation(tile_name, base_tile_name, relation)
	if not apm.lib.utils.tile.exist(tile_name) then return end
	if not apm.lib.utils.tile.exist(base_tile_name) then return end

	local base_layer = apm.lib.utils.tile.get.layer(base_tile_name)
	if not base_layer then
		log('Info: apm.lib.utils.tile.set.layer(): base_tile with name: "' .. tostring(tile_name) .. ' dosent have a layer attribute')
		return
	end
	local new_level = base_layer + relation
	apm.lib.utils.tile.set.layer(tile_name, new_level)
end