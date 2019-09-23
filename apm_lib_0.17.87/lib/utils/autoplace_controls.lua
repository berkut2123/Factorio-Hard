require 'util'

if not apm.lib.utils.autoplace_controls.add then apm.lib.utils.autoplace_controls.add = {} end
if not apm.lib.utils.autoplace_controls.table then apm.lib.utils.autoplace_controls.table = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.autoplace_controls.add.ore(ore_name, frequency, size, richness)
    if not data.raw.resource[ore_name] then
        log('Warning: apm.lib.utils.autoplace_controls.add.ore(): resource with name: "' .. tostring(ore_name) .. '" dosent exist.')
        return
    end
    apm.lib.utils.autoplace_controls.table[ore_name] = {frequency=frequency, size=size, richness=richness}
    log('Info: apm.lib.utils.autoplace_controls.add.ore(): resource with name: "' .. tostring(ore_name) .. '" added.')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.autoplace_controls.get()
    return apm.lib.utils.autoplace_controls.table
end