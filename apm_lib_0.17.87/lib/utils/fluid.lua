require 'util'

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fluid.exist(fluid_name)
    if data.raw.fluid[fluid_name] then 
        return true
    end
    log('Warning: apm.lib.utils.fluid.exist(): fluid with name: "' .. tostring(fluid_name) .. '" dosent exist.')
    return false
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fluid.remove(fluid_name)
    if not apm.lib.utils.fluid.exist(fluid_name) then return end

    local fluid = data.raw.fluid[fluid_name]
    fluid.flags = {'hidden'}
    log('Info: apm.lib.utils.fluid.remove(): fluid with name: "' .. tostring(fluid_name) .. '" set flag "hidden".')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.fluid.delete_hard(fluid_name)
    if not apm.lib.utils.fluid.exist(fluid_name) then return end
    data.raw.fluid[fluid_name] = nil
    log('Info: apm.lib.utils.fluid.delete_hard(): fluid with name: "' .. tostring(fluid_name) .. '" deleted hard (set to nil)')
end