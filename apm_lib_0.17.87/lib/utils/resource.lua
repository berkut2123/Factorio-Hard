require 'util'

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.resource.exist(resource_name)
	if data.raw.resource[resource_name] then
        return true
    end
    log('Warning: apm.lib.utils.resource.exist(): resource with name: "' .. tostring(name) .. '" dosent exist.')
    return false
end