require ('util')

local apm_recycler_integration_bob = settings.startup["apm_recycler_integration_bob"].value
local apm_recycler_integration_angel = settings.startup["apm_recycler_integration_angel"].value
local apm_recycler_integration_earendel = settings.startup["apm_recycler_integration_earendel"].value
local apm_recycler_integration_kingarthur = settings.startup["apm_recycler_integration_kingarthur"].value
local apm_recycler_compat_bob = settings.startup["apm_recycler_compat_bob"].value
local apm_recycler_compat_angel = settings.startup["apm_recycler_compat_angel"].value
local apm_recycler_compat_earendel = settings.startup["apm_recycler_compat_earendel"].value
local apm_recycler_compat_kingarthur = settings.startup["apm_recycler_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/recycling/generate.lua')
log('apm_recycler_integration_bob: ' .. tostring(apm_recycler_integration_bob))
log('apm_recycler_integration_angel: ' .. tostring(apm_recycler_integration_angel))
log('apm_recycler_integration_earendel: ' .. tostring(apm_recycler_integration_earendel))
log('apm_recycler_compat_kingarthur: ' .. tostring(apm_recycler_compat_kingarthur))
log('apm_recycler_compat_bob: ' .. tostring(apm_recycler_compat_bob))
log('apm_recycler_compat_angel: ' .. tostring(apm_recycler_compat_angel))
log('apm_recycler_compat_earendel: ' .. tostring(apm_recycler_compat_earendel))
log('apm_recycler_compat_kingarthur: ' .. tostring(apm_recycler_compat_kingarthur))
log('-------------------------------------------------------')

-------------------------------------------------------------------------------------------------------------------------
-- apm.lib.utils.recycling.metal.add(name, tint, output, output_category, wight, output_probability, t_catalysts,
--                                   t_output_byproducts, b_own_tech, t_tech_prerequisites, output_amount_overwrite)
-------------------------------------------------------------------------------------------------------------------------

-- normal tier metals
if not mods.angelssmelting and mods.bobplates and not mods.PyCoalTBaA and apm_recycler_compat_bob then
    apm.lib.utils.recycling.metal.add('iron', {r= 0.75, g = 0.76, b = 0.77}, 'iron-plate', nil, 1, 0.25, nil, nil, false, nil)
    apm.lib.utils.recycling.metal.add('copper', {r= 0.83, g = 0.45, b = 0.37}, 'copper-plate', nil, 1, 0.25, nil, nil, false, nil)
    apm.lib.utils.recycling.metal.add('steel', {r= 0.75, g = 0.76, b = 0.69}, 'steel-plate', nil, 3, 0.25, nil, nil, true, {'steel-processing'})
elseif mods.angelssmelting and not mods.PyCoalTBaA and apm_recycler_compat_angel then
    apm.lib.utils.recycling.metal.add('iron', {r= 0.46, g = 0.53, b = 0.59}, 'liquid-molten-iron', 'induction-smelting', 1, 0.25, nil, nil, true, {'angels-iron-smelting-1'})
    apm.lib.utils.recycling.metal.add('copper', {r= 0.68, g = 0.47, b = 0.40}, 'liquid-molten-copper', 'induction-smelting', 1, 0.25, nil, nil, true, {'angels-copper-smelting-1'})
    apm.lib.utils.recycling.metal.add('steel', {r= 0.68, g = 0.70, b = 0.73}, 'liquid-molten-steel', 'induction-smelting', 3, 0.25, nil, nil, true, {'angels-steel-smelting-1'})
elseif mods.PyCoalTBaA and apm_recycler_compat_kingarthur then
    apm.lib.utils.recycling.metal.add('iron', {r= 0.46, g = 0.53, b = 0.59}, 'liquid-molten-iron', 'induction-smelting', 1, 0.25, nil, nil, true, {'iron-mk01'})
    apm.lib.utils.recycling.metal.add('copper', {r= 0.68, g = 0.47, b = 0.40}, 'liquid-molten-copper', 'induction-smelting', 1, 0.25, nil, nil, true, {'angels-copper-smelting-1'})
    apm.lib.utils.recycling.metal.add('steel', {r= 0.68, g = 0.70, b = 0.73}, 'liquid-molten-steel', 'induction-smelting', 3, 0.25, nil, nil, true, {'angels-steel-smelting-1'})
else -- Fallback (Vanilla)
    apm.lib.utils.recycling.metal.add('iron', {r= 0.56, g = 0.63, b = 0.74}, 'iron-plate', nil, 1, 0.25, nil, nil, false, nil)
    apm.lib.utils.recycling.metal.add('copper', {r= 1.00, g = 0.69, b = 0.46}, 'copper-plate', nil, 1, 0.25, nil, nil, false, nil)
    apm.lib.utils.recycling.metal.add('steel', {r= 0.80, g = 0.80, b = 0.76}, 'steel-plate', nil, 3, 0.25, nil, nil, true, {'steel-processing'})
end

-- higher tier metals
if mods.bobplates and mods.bobores and not mods.angelssmelting and not mods.PyCoalTBaA and apm_recycler_compat_bob then
    apm.lib.utils.recycling.metal.add('tin', {r= 0.57, g = 0.57, b = 0.57}, 'tin-plate', nil, 2, 0.25, nil, nil, true, nil)
    apm.lib.utils.recycling.metal.add('lead', {r= 0.60, g = 0.75, b = 0.90}, 'lead-plate', nil, 2, 0.25, nil, nil, true, nil)
    apm.lib.utils.recycling.metal.add('bronze', {r= 0.71, g = 0.58, b = 0.45}, 'bronze-alloy', nil, 4, 0.25, nil, nil, true, {'alloy-processing-1'})
    apm.lib.utils.recycling.metal.add('brass', {r= 0.74, g = 0.72, b = 0.48}, 'brass-alloy', nil, 4, 0.25, nil, nil, true, {'zinc-processing'})
    apm.lib.utils.recycling.metal.add('cobalt', {r= 0.26, g = 0.36, b = 0.49}, 'cobalt-plate', nil, 5, 0.25, nil, nil, true, {'cobalt-processing'})
    apm.lib.utils.recycling.metal.add('cobalt-steel', {r= 0.62, g = 0.69, b = 0.77}, 'cobalt-steel-alloy', nil, 6, 0.25, nil, nil, true, {'cobalt-processing'})
    apm.lib.utils.recycling.metal.add('zinc', {r= 0.58, g = 0.56, b = 0.58}, 'zinc-plate', nil, 6, 0.25, nil, nil, true, {'zinc-processing'})
    if mods.bobwarfare then
        apm.lib.utils.recycling.metal.add('gunmetal', {r= 0.817, g = 0.677, b = 0.221}, 'gunmetal-alloy', nil, 6, 0.25, nil, nil, true, {'zinc-processing'})
    end    
    apm.lib.utils.recycling.metal.add('nickel', {r= 0.82, g = 0.77, b = 0.68}, 'nickel-plate', nil, 6, 0.25, nil, nil, true, {'nickel-processing'})
    apm.lib.utils.recycling.metal.add('invar', {r= 0.63, g = 0.60, b = 0.52}, 'invar-alloy', nil, 7, 0.25, nil, nil, true, {'invar-processing'})
    apm.lib.utils.recycling.metal.add('aluminium', {r= 0.95, g = 0.95, b = 0.95}, 'aluminium-plate', nil, 7, 0.25, nil, nil, true, {'aluminium-processing'})
    apm.lib.utils.recycling.metal.add('silver', {r= 0.83, g = 0.87, b = 0.91}, 'silver-plate', nil, 8, 0.25, nil, nil, true, nil)
    apm.lib.utils.recycling.metal.add('gold', {r= 0.77, g = 0.55, b = 0.12}, 'gold-plate', nil, 8, 0.25, nil, nil, true, {'gold-processing'})
    apm.lib.utils.recycling.metal.add('titanium', {r= 0.97, g = 0.90, b = 0.97}, 'titanium-plate', nil, 9, 0.25, nil, nil, true, {'titanium-processing'})
    apm.lib.utils.recycling.metal.add('nitinol', {r= 0.65, g = 0.66, b = 0.65}, 'nitinol-alloy', nil, 9, 0.25, nil, nil, true, {'nitinol-processing'})
    apm.lib.utils.recycling.metal.add('tungsten', {r= 0.25, g = 0.25, b = 0.25}, 'tungsten-plate', nil, 9, 0.25, nil, nil, true, {'tungsten-processing'})
elseif mods.bobplates and mods.bobores and mods.angelssmelting and not mods.PyCoalTBaA and apm_recycler_compat_angel then
    apm.lib.utils.recycling.metal.add('tin', {r= 0.33, g = 0.49, b = 0.36}, 'liquid-molten-tin', 'induction-smelting', 2, 0.25, nil, nil, true, {'angels-tin-smelting-1'})
    apm.lib.utils.recycling.metal.add('lead', {r= 0.29, g = 0.30, b = 0.34}, 'liquid-molten-lead', 'induction-smelting', 2, 0.25, nil, nil, true, {'angels-lead-smelting-1'})
    apm.lib.utils.recycling.metal.add('bronze', {r= 0.84, g = 0.58, b = 0.21}, 'liquid-molten-bronze', 'induction-smelting', 4, 0.25, nil, nil, true, {'angels-bronze-smelting-1'})
    apm.lib.utils.recycling.metal.add('brass', {r= 0.77, g = 0.58, b = 0.38}, 'liquid-molten-brass', 'induction-smelting', 4, 0.25, nil, nil, true, {'angels-brass-smelting-1'})
    apm.lib.utils.recycling.metal.add('cobalt', {r= 0.18, g = 0.27, b = 0.40}, 'liquid-molten-cobalt', 'induction-smelting', 5, 0.25, nil, nil, true, {'angels-cobalt-smelting-1'})
    apm.lib.utils.recycling.metal.add('cobalt-steel', {r= 0.61, g = 0.70, b = 0.81}, 'liquid-molten-cobalt-steel', 'induction-smelting', 6, 0.25, nil, nil, true, {'angels-cobalt-steel-smelting-1'})
    apm.lib.utils.recycling.metal.add('zinc', {r= 0.45, g = 0.73, b = 0.71}, 'liquid-molten-zinc', 'induction-smelting', 6, 0.25, nil, nil, true, {'angels-zinc-smelting-1'})
    if mods.bobwarfare then
        apm.lib.utils.recycling.metal.add('gunmetal', {r= 0.835, g = 0.380, b = 0.255}, 'liquid-molten-gunmetal', 'induction-smelting', 6, 0.25, nil, nil, true, {'angels-gunmetal-smelting-1'})
    end
    apm.lib.utils.recycling.metal.add('nickel', {r= 0.22, g = 0.46, b = 0.44}, 'liquid-molten-nickel', 'induction-smelting', 6, 0.25, nil, nil, true, {'angels-nickel-smelting-1'})
    apm.lib.utils.recycling.metal.add('invar', {r= 0.62, g = 0.65, b = 0.53}, 'liquid-molten-invar', 'induction-smelting', 7, 0.25, nil, nil, true, {'angels-invar-smelting-1'})
    apm.lib.utils.recycling.metal.add('aluminium', {r= 0.64, g = 0.59, b = 0.30}, 'liquid-molten-aluminium', 'induction-smelting', 7, 0.25, nil, nil, true, {'angels-aluminium-smelting-1'})
    apm.lib.utils.recycling.metal.add('silver', {r= 0.84, g = 0.88, b = 0.90}, 'liquid-molten-silver', 'induction-smelting', 8, 0.25, nil, nil, true, {'angels-silver-smelting-1'})
    apm.lib.utils.recycling.metal.add('gold', {r= 0.84, g = 0.64, b = 0.21}, 'liquid-molten-gold', 'induction-smelting', 8, 0.25, nil, nil, true, {'angels-gold-smelting-1'})
    apm.lib.utils.recycling.metal.add('titanium', {r= 0.46, g = 0.36, b = 0.45}, 'liquid-molten-titanium', 'induction-smelting', 9, 0.25, nil, nil, true, {'angels-titanium-smelting-1'})
    apm.lib.utils.recycling.metal.add('nitinol', {r= 0.37, g = 0.30, b = 0.58}, 'liquid-molten-nitinol', 'induction-smelting', 9, 0.25, nil, nil, true, {'angels-nitinol-smelting-1'})
    --apm.lib.utils.recycling.metal.add('tungsten', {r= 0.59, g = 0.49, b = 0.43}, 'liquid-molten-tungsten', 'induction-smelting', 9, 0.25, nil, nil, true, {'angels-tungsten-smelting-1'})
    apm.lib.utils.recycling.metal.add('tungsten', {r= 0.50, g = 0.36, b = 0.23}, 'tungsten-plate', nil, 9, 0.25, nil, nil, true, {'angels-tungsten-smelting-1'})
elseif mods.PyCoalTBaA and apm_recycler_compat_kingarthur then
    apm.lib.utils.recycling.metal.add('tin', {r= 0.33, g = 0.49, b = 0.36}, 'liquid-molten-tin', 'induction-smelting', 2, 0.25, nil, nil, true, {'tin-mk02'}, 4)
    apm.lib.utils.recycling.metal.add('lead', {r= 0.29, g = 0.30, b = 0.34}, 'liquid-molten-lead', 'induction-smelting', 2, 0.25, nil, nil, true, {'lead-mk02'}, 4)
    apm.lib.utils.recycling.metal.add('bronze', {r= 0.84, g = 0.58, b = 0.21}, 'liquid-molten-bronze', 'induction-smelting', 4, 0.25, nil, nil, true, {'angels-bronze-smelting-1'})
    apm.lib.utils.recycling.metal.add('brass', {r= 0.77, g = 0.58, b = 0.38}, 'liquid-molten-brass', 'induction-smelting', 4, 0.25, nil, nil, true, {'angels-brass-smelting-1'})
    apm.lib.utils.recycling.metal.add('cobalt', {r= 0.18, g = 0.27, b = 0.40}, 'liquid-molten-cobalt', 'induction-smelting', 5, 0.25, nil, nil, true, {'angels-cobalt-smelting-1'})
    apm.lib.utils.recycling.metal.add('cobalt-steel', {r= 0.61, g = 0.70, b = 0.81}, 'liquid-molten-cobalt-steel', 'induction-smelting', 6, 0.25, nil, nil, true, {'angels-cobalt-steel-smelting-1'})
    apm.lib.utils.recycling.metal.add('zinc', {r= 0.45, g = 0.73, b = 0.71}, 'liquid-molten-zinc', 'induction-smelting', 6, 0.25, nil, nil, true, {'zinc-mk01'}, 4)
    if mods.bobwarfare then
        apm.lib.utils.recycling.metal.add('gunmetal', {r= 0.835, g = 0.380, b = 0.255}, 'liquid-molten-gunmetal', 'induction-smelting', 6, 0.25, nil, nil, true, {'angels-gunmetal-smelting-1'})
    end
    apm.lib.utils.recycling.metal.add('nickel', {r= 0.22, g = 0.46, b = 0.44}, 'liquid-molten-nickel', 'induction-smelting', 6, 0.25, nil, nil, true, {'nickel-mk01'}, 4)
    apm.lib.utils.recycling.metal.add('invar', {r= 0.62, g = 0.65, b = 0.53}, 'liquid-molten-invar', 'induction-smelting', 7, 0.25, nil, nil, true, {'angels-invar-smelting-1'})
    apm.lib.utils.recycling.metal.add('aluminium', {r= 0.64, g = 0.59, b = 0.30}, 'liquid-molten-aluminium', 'induction-smelting', 7, 0.25, nil, nil, true, {'aluminium-mk01', 4})
    apm.lib.utils.recycling.metal.add('silver', {r= 0.84, g = 0.88, b = 0.90}, 'liquid-molten-silver', 'induction-smelting', 8, 0.25, nil, nil, true, {'angels-silver-smelting-1'})
    apm.lib.utils.recycling.metal.add('gold', {r= 0.84, g = 0.64, b = 0.21}, 'liquid-molten-gold', 'induction-smelting', 8, 0.25, nil, nil, true, {'angels-gold-smelting-1'})
    apm.lib.utils.recycling.metal.add('titanium', {r= 0.46, g = 0.36, b = 0.45}, 'liquid-molten-titanium', 'induction-smelting', 9, 0.25, nil, nil, true, {'titanium-mk02'}, 40)
    apm.lib.utils.recycling.metal.add('nitinol', {r= 0.37, g = 0.30, b = 0.58}, 'liquid-molten-nitinol', 'induction-smelting', 9, 0.25, nil, nil, true, {'angels-nitinol-smelting-1'})
    --apm.lib.utils.recycling.metal.add('tungsten', {r= 0.59, g = 0.49, b = 0.43}, 'liquid-molten-tungsten', 'induction-smelting', 9, 0.25, nil, nil, true, {'angels-tungsten-smelting-1'})
    apm.lib.utils.recycling.metal.add('tungsten', {r= 0.50, g = 0.36, b = 0.23}, 'tungsten-plate', nil, 9, 0.25, nil, nil, true, {'angels-tungsten-smelting-1'})
end

-------------------------------------------------------------------------------
-- 
-------------------------------------------------------------------------------
apm.lib.utils.recycling.scrap.add('copper-cable', 'copper')
apm.lib.utils.recycling.scrap.add('iron-stick', 'iron')
apm.lib.utils.recycling.scrap.add('iron-gear-wheel', 'iron')
apm.lib.utils.recycling.scrap.add('electronic-circuit', 'copper')
apm.lib.utils.recycling.scrap.add('battery', 'iron')
apm.lib.utils.recycling.scrap.add('battery', 'copper')
apm.lib.utils.recycling.scrap.add('empty-barrel', 'steel')

if not mods['aai-industry'] and apm_recycler_compat_earendel then
    apm.lib.utils.recycling.scrap.add('electronic-circuit', 'iron')
end

if mods.bobplates and mods.bobores and mods.bobrevamp and apm_recycler_compat_bob then
    apm.lib.utils.recycling.scrap.add('low-density-structure', 'aluminium')
    apm.lib.utils.recycling.scrap.add('low-density-structure', 'titanium')
else
    apm.lib.utils.recycling.scrap.add('low-density-structure', 'copper')
    apm.lib.utils.recycling.scrap.add('low-density-structure', 'steel')
end

apm.lib.utils.recycling.scrap.add('flying-robot-frame', 'steel')
apm.lib.utils.recycling.scrap.add('engine-unit', 'iron')
apm.lib.utils.recycling.scrap.add('engine-unit', 'steel')

-- Special none intermediates
apm.lib.utils.recycling.scrap.add('pipe', 'iron')
apm.lib.utils.recycling.scrap.add('pipe-to-ground', 'iron')
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Earendel
-------------------------------------------------------------------------------
if mods['aai-industry'] and apm_recycler_integration_earendel then
    apm.lib.utils.recycling.scrap.add('motor', 'iron')
    apm.lib.utils.recycling.scrap.add('electronic-circuit-stone', 'copper')
end

if mods['space-exploration'] and apm_recycler_integration_earendel then
    apm.lib.utils.recycling.scrap.add('se-heat-shielding', 'steel')
    apm.lib.utils.recycling.scrap.add('rocket-control-unit', 'iron')
    apm.lib.utils.recycling.scrap.add('se-cargo-rocket-cargo-pod', 'steel')
    apm.lib.utils.recycling.scrap.add('se-space-platform-scaffold', 'steel')
    apm.lib.utils.recycling.scrap.add('se-space-platform-plating', 'steel')
    apm.lib.utils.recycling.scrap.add('se-material-testing-pack', 'iron')
    apm.lib.utils.recycling.scrap.add('se-material-testing-pack', 'copper')
    apm.lib.utils.recycling.scrap.add('se-canister', 'copper')
    apm.lib.utils.recycling.scrap.add('se-canister', 'steel')
    apm.lib.utils.recycling.scrap.add('se-space-mirror', 'steel')
    apm.lib.utils.recycling.scrap.add('se-data-storage-substrate', 'steel')
    apm.lib.utils.recycling.scrap.add('se-space-pipe', 'steel')
    apm.lib.utils.recycling.scrap.add('se-space-pipe', 'copper')
end

-------------------------------------------------------------------------------
-- Bob
-------------------------------------------------------------------------------
if mods.bobplates and mods.bobores and apm_recycler_integration_bob then
    apm.lib.utils.recycling.scrap.add('steel-gear-wheel', 'steel')
    apm.lib.utils.recycling.scrap.add('brass-gear-wheel', 'brass')
    apm.lib.utils.recycling.scrap.add('cobalt-steel-gear-wheel', 'cobalt-steel')
    apm.lib.utils.recycling.scrap.add('titanium-gear-wheel', 'titanium')
    apm.lib.utils.recycling.scrap.add('tungsten-gear-wheel', 'tungsten')
    apm.lib.utils.recycling.scrap.add('nitinol-gear-wheel', 'nitinol')
    apm.lib.utils.recycling.scrap.add('steel-bearing-ball', 'steel')
    apm.lib.utils.recycling.scrap.add('brass-bearing-ball', 'brass')
    apm.lib.utils.recycling.scrap.add('cobalt-steel-bearing-ball', 'cobalt-steel')
    apm.lib.utils.recycling.scrap.add('titanium-bearing-ball', 'titanium')
    apm.lib.utils.recycling.scrap.add('nitinol-bearing-ball', 'nitinol')
    apm.lib.utils.recycling.scrap.add('steel-bearing', 'steel')
    apm.lib.utils.recycling.scrap.add('brass-bearing', 'brass')
    apm.lib.utils.recycling.scrap.add('cobalt-steel-bearing', 'cobalt-steel')
    apm.lib.utils.recycling.scrap.add('titanium-bearing', 'titanium')
    apm.lib.utils.recycling.scrap.add('nitinol-bearing', 'nitinol')
    apm.lib.utils.recycling.scrap.add('silver-zinc-battery', 'zinc')
    apm.lib.utils.recycling.scrap.remove('battery')
    apm.lib.utils.recycling.scrap.add('battery', 'lead')
    apm.lib.utils.recycling.scrap.add('grinding-wheel', 'steel')
    apm.lib.utils.recycling.scrap.add('polishing-wheel', 'steel')
end
    
if mods.bobplates and mods.bobores and mods.bobelectronics and apm_recycler_integration_bob then
    apm.lib.utils.recycling.scrap.add('tinned-copper-cable', 'copper')
    apm.lib.utils.recycling.scrap.add('tinned-copper-cable', 'tin')
    apm.lib.utils.recycling.scrap.add('insulated-cable', 'tin')
    apm.lib.utils.recycling.scrap.add('gilded-copper-cable', 'copper')
    apm.lib.utils.recycling.scrap.add('gilded-copper-cable', 'gold')
    apm.lib.utils.recycling.scrap.add('basic-electronic-components', 'tin')
    apm.lib.utils.recycling.scrap.add('electronic-components', 'tin')
    apm.lib.utils.recycling.scrap.add('intergrated-electronics', 'tin')
    apm.lib.utils.recycling.scrap.add('processing-electronics', 'gold')
    apm.lib.utils.recycling.scrap.add('basic-circuit-board', 'copper')
    apm.lib.utils.recycling.scrap.remove('electronic-circuit')
    apm.lib.utils.recycling.scrap.add('circuit-board', 'copper')
    apm.lib.utils.recycling.scrap.add('circuit-board', 'tin')
    apm.lib.utils.recycling.scrap.add('superior-circuit-board', 'copper')
    apm.lib.utils.recycling.scrap.add('superior-circuit-board', 'gold')
    apm.lib.utils.recycling.scrap.add('multi-layer-circuit-board', 'copper')
    apm.lib.utils.recycling.scrap.add('multi-layer-circuit-board', 'gold')
end

if mods.bobplates and mods.bobores and mods.boblogistics and apm_recycler_integration_bob then
    apm.lib.utils.recycling.scrap.add('roboport-antenna-1', 'copper')
    apm.lib.utils.recycling.scrap.add('roboport-antenna-1', 'steel')
    apm.lib.utils.recycling.scrap.add('roboport-antenna-2', 'tin')
    apm.lib.utils.recycling.scrap.add('roboport-antenna-2', 'aluminium')
    apm.lib.utils.recycling.scrap.add('roboport-antenna-3', 'nickel')
    apm.lib.utils.recycling.scrap.add('roboport-antenna-4', 'nickel')
    apm.lib.utils.recycling.scrap.add('roboport-antenna-4', 'gold')
    apm.lib.utils.recycling.scrap.add('roboport-chargepad-1', 'steel')
    apm.lib.utils.recycling.scrap.add('roboport-chargepad-2', 'invar')
    apm.lib.utils.recycling.scrap.add('roboport-chargepad-3', 'titanium')
    apm.lib.utils.recycling.scrap.add('roboport-chargepad-4', 'nitinol')
    apm.lib.utils.recycling.scrap.add('roboport-door-1', 'steel')
    apm.lib.utils.recycling.scrap.add('roboport-door-2', 'invar')
    apm.lib.utils.recycling.scrap.add('roboport-door-3', 'titanium')
    apm.lib.utils.recycling.scrap.add('roboport-door-4', 'nitinol')
    apm.lib.utils.recycling.scrap.add('flying-robot-frame-2', 'aluminium')
    apm.lib.utils.recycling.scrap.add('flying-robot-frame-3', 'titanium')
    apm.lib.utils.recycling.scrap.add('robot-tool-logistic', 'steel')
    apm.lib.utils.recycling.scrap.add('robot-tool-logistic-2', 'aluminium')
    apm.lib.utils.recycling.scrap.add('robot-tool-logistic-2', 'brass')
    apm.lib.utils.recycling.scrap.add('robot-tool-logistic-3', 'titanium')
    apm.lib.utils.recycling.scrap.add('robot-tool-logistic-4', 'nitinol')
    apm.lib.utils.recycling.scrap.add('robot-tool-construction', 'steel')
    apm.lib.utils.recycling.scrap.add('robot-tool-construction-2', 'aluminium')
    apm.lib.utils.recycling.scrap.add('robot-tool-construction-2', 'brass')
    apm.lib.utils.recycling.scrap.add('robot-tool-construction-3', 'titanium')
    apm.lib.utils.recycling.scrap.add('robot-tool-construction-4', 'nitinol')
    -- Special none intermediates
    apm.lib.utils.recycling.scrap.add('copper-pipe', 'copper')
    apm.lib.utils.recycling.scrap.add('bronze-pipe', 'bronze')
    apm.lib.utils.recycling.scrap.add('steel-pipe', 'steel')
    apm.lib.utils.recycling.scrap.add('brass-pipe', 'brass')
    apm.lib.utils.recycling.scrap.add('titanium-pipe', 'titanium')
    apm.lib.utils.recycling.scrap.add('tungsten-pipe', 'tungsten')
    apm.lib.utils.recycling.scrap.add('copper-pipe-to-ground', 'copper')
    apm.lib.utils.recycling.scrap.add('bronze-pipe-to-ground', 'bronze')
    apm.lib.utils.recycling.scrap.add('steel-pipe-to-ground', 'steel')
    apm.lib.utils.recycling.scrap.add('brass-pipe-to-ground', 'brass')
    apm.lib.utils.recycling.scrap.add('titanium-pipe-to-ground', 'titanium')
    apm.lib.utils.recycling.scrap.add('tungsten-pipe-to-ground', 'tungsten')
end

if mods.bobplates and mods.bobores and mods.bobwarfare and apm_recycler_integration_bob then
    apm.lib.utils.recycling.scrap.add('rocket-engine', 'tungsten')
    apm.lib.utils.recycling.scrap.add('rocket-body', 'aluminium')
    apm.lib.utils.recycling.scrap.add('robot-tool-combat', 'steel')
    apm.lib.utils.recycling.scrap.add('robot-tool-combat-2', 'brass')
    apm.lib.utils.recycling.scrap.add('robot-tool-combat-3', 'titanium')
    apm.lib.utils.recycling.scrap.add('robot-tool-combat-4', 'nitinol')
    apm.lib.utils.recycling.scrap.add('robot-drone-frame', 'steel')
    apm.lib.utils.recycling.scrap.add('robot-drone-frame-large', 'steel')
    apm.lib.utils.recycling.scrap.add('ap-bullet-projectile', 'copper')
    apm.lib.utils.recycling.scrap.add('ap-bullet-projectile', 'tungsten')
    apm.lib.utils.recycling.scrap.add('acid-bullet-projectile', 'copper')
    apm.lib.utils.recycling.scrap.add('electric-bullet-projectile', 'copper')
    apm.lib.utils.recycling.scrap.add('electric-bullet-projectile', 'steel')
    apm.lib.utils.recycling.scrap.add('flame-bullet-projectile', 'copper')
    apm.lib.utils.recycling.scrap.add('he-bullet-projectile', 'copper')
    apm.lib.utils.recycling.scrap.add('poison-bullet-projectile', 'copper')
    apm.lib.utils.recycling.scrap.add('bullet-projectile', 'copper')
    apm.lib.utils.recycling.scrap.add('bullet-projectile', 'lead')
    apm.lib.utils.recycling.scrap.add('rocket-warhead', 'steel')
    apm.lib.utils.recycling.scrap.add('piercing-rocket-warhead', 'steel')
    apm.lib.utils.recycling.scrap.add('piercing-rocket-warhead', 'tungsten')
    apm.lib.utils.recycling.scrap.add('explosive-rocket-warhead', 'steel')
    apm.lib.utils.recycling.scrap.add('flame-rocket-warhead', 'steel')
    apm.lib.utils.recycling.scrap.add('poison-rocket-warhead', 'steel')
    apm.lib.utils.recycling.scrap.add('acid-rocket-warhead', 'steel')
    apm.lib.utils.recycling.scrap.add('electric-rocket-warhead', 'steel')
    apm.lib.utils.recycling.scrap.add('magazine', 'steel')
    apm.lib.utils.recycling.scrap.add('shot', 'lead')
    apm.lib.utils.recycling.scrap.add('bullet-casing', 'gunmetal')
    apm.lib.utils.recycling.scrap.add('shotgun-shell-casing', 'gunmetal')
end

-- angel ----------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelsrefining and apm_recycler_integration_angel then
    apm.lib.utils.recycling.scrap.add('catalyst-metal-carrier', 'iron')
    apm.lib.utils.recycling.scrap.add('angels-electrode', 'steel')
end

-------------------------------------------------------------------------------
-- kingarthur
-------------------------------------------------------------------------------
if mods.PyCoalTBaA and apm_recycler_integration_kingarthur then
    apm.lib.utils.recycling.scrap.add('copper-coating', 'copper')
    apm.lib.utils.recycling.scrap.add('chemical-science-pack', 'iron')
    apm.lib.utils.recycling.scrap.add('empty-gas-canister', 'aluminium')
    apm.lib.utils.recycling.scrap.add('empty-gas-canister', 'brass')
    apm.lib.utils.recycling.scrap.add('drill-head', 'iron')
    apm.lib.utils.recycling.scrap.add('drill-head', 'steel')
    apm.lib.utils.recycling.scrap.add('nas-battery', 'steel')
    apm.lib.utils.recycling.scrap.add('nas-battery', 'lead')
    apm.lib.utils.recycling.scrap.add('lead-container', 'lead')
    apm.lib.utils.recycling.scrap.add('sc-wire', 'tin')
    apm.lib.utils.recycling.scrap.add('science-coating', 'titanium')
    apm.lib.utils.recycling.scrap.add('wall-shield', 'steel')
    apm.lib.utils.recycling.scrap.add('inductor1', 'copper')
    apm.lib.utils.recycling.scrap.add('capacitor1', 'tin')
    apm.lib.utils.recycling.scrap.add('capacitor2', 'aluminium')
    apm.lib.utils.recycling.scrap.add('resistor1', 'tin')
    apm.lib.utils.recycling.scrap.add('electronic-circuit-initial', 'copper')
    apm.lib.utils.recycling.scrap.add('pcb1', 'copper')
    apm.lib.utils.recycling.scrap.add('valcea', 'copper')
    apm.lib.utils.recycling.scrap.add('valcea', 'iron')
    apm.lib.utils.recycling.scrap.add('bose-einstein-superfluid', 'copper')
    apm.lib.utils.recycling.scrap.add('laser-turret-deconstruction', 'iron')
    apm.lib.utils.recycling.scrap.add('laser-turret-deconstruction', 'steel')
    apm.lib.utils.recycling.scrap.add('nanocrystaline-core', 'gold')
    apm.lib.utils.recycling.scrap.add('nanocrystaline-core', 'copper')
    apm.lib.utils.recycling.scrap.add('nano-wires', 'gold')
    apm.lib.utils.recycling.scrap.add('supercapacitor-shell', 'gold')
    apm.lib.utils.recycling.scrap.add('yag-laser-module', 'aluminium')
    apm.lib.utils.recycling.scrap.add('inductor3', 'gold')
    apm.lib.utils.recycling.scrap.add('tinned-cable', 'copper')
    apm.lib.utils.recycling.scrap.add('tinned-cable', 'tin')
    apm.lib.utils.recycling.scrap.add('resistor2', 'nickel')
    apm.lib.utils.recycling.scrap.add('valvea', 'copper')
    apm.lib.utils.recycling.scrap.add('valvea', 'iron')
    apm.lib.utils.recycling.scrap.add('capacitor-termination', 'nickel')
    apm.lib.utils.recycling.scrap.add('capacitor-termination', 'silver')
    apm.lib.utils.recycling.scrap.add('superconductor', 'gold')
    apm.lib.utils.recycling.scrap.add('re-magnet', 'nickel')
    apm.lib.utils.recycling.scrap.add('paradiamatic-resistor', 'lead')
end