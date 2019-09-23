if apm.recycling.color == nil then apm.recycling.color = {} end
if apm.recycling.path == nil then apm.recycling.path = {} end
if apm.recycling.icons == nil then apm.recycling.icons = {} end

apm.recycling.path.scrap = '__apm_resource_pack__/graphics/icons/dynamics/apm_scrap_metal.png'
apm.recycling.path.box = '__apm_resource_pack__/graphics/icons/dynamics/apm_scrap_metal_box.png'

apm.recycling.color.dirt_water = {r=0.399, g=0.246, b=0.155}
apm.recycling.icons.dirt_water = {icon='__apm_resource_pack__/graphics/icons/dynamics/apm_fluid.png', tint=apm.recycling.color.dirt_water }