require 'util'
if not apm.lib.utils.category.create then apm.lib.utils.category.create = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.category.create.group(name, icon, order)
    local name = tostring(name)
    local icon = tostring(icon)
    local order = tostring(order)
    local new = {}
    new.type = 'item-group'
    new.name = name
    new.icon = icon
    new.icon_size = 64
    new.order = order
    new.inventory_order = order
    data:extend({new})
    log('Info: apm.lib.utils.category.create.group() new category group created: "' .. tostring(name) .. '"')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.category.create.subgroup(group, subgroup, order)
    local group = tostring(group)
    local subgroup = tostring(subgroup)
    local order = tostring(order)
    local new = {}
    
    if data.raw['item-group'][group] == nil then
        return
    end
    
    new.type = 'item-subgroup'
    new.name = subgroup
    new.group = group
    new.order = order
    data:extend({new})
    log('Info: apm.lib.utils.category.create.group() new subgroup created: "' .. tostring(subgroup) .. '" in group: "' .. tostring(group) .. '"')
end