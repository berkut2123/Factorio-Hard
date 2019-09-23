if apm.power.color == nil then apm.power.color = {} end
if apm.power.icons == nil then apm.power.icons = {} end
if apm.power.icons.path == nil then apm.power.icons.path = {} end

-- Colors ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.power.color.sciencepack = {r=0.60, g=0.38, b=20}
apm.power.color.coal = {r=0.25, g=0.25, b=0.25}
apm.power.color.wood = {r=0.80, g=0.55, b=0.33}
apm.power.color.charcoal = {r=0.19, g=0.15, b=0.12}
apm.power.color.coke = {r=0.15, g=0.15, b=0.15}
apm.power.color.generic_ash = {r=0.20, g=0.20, b=0.20}
apm.power.color.coal_ash = {r=0.20, g=0.20, b=0.20}
apm.power.color.wood_ash = {r=0.40, g=0.40, b=0.40}
apm.power.color.ammonium_sulfate = {r=0.95, g=0.95, b=0.95}
apm.power.color.asphalt  = {r=0.20, g=0.20, b=0.20}
apm.power.color.mud_wet = {r=0.193, g=0.123, b=0.064}
apm.power.color.mud_dry = {r=0.437, g=0.300, b=0.185}
apm.power.color.tar  = {r=0.187, g=0.135, b=0.104}
apm.power.color.coke_oven_gas = {r=0.244, g=0.141, b=0.141}
apm.power.color.sive_iron = {r=0.669,g=0.744,b=0.819}
apm.power.color.sieve_copper = {r=0.864,g=0.526,b=0.454}

-- Icon path ------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.power.icons.path.coal = '__base__/graphics/icons/coal.png'
apm.power.icons.path.wood = '__base__/graphics/icons/wood.png'
apm.power.icons.path.resin = '__apm_resource_pack__/graphics/icons/apm_resin.png'
apm.power.icons.path.rubber = '__apm_resource_pack__/graphics/icons/apm_rubber.png'
apm.power.icons.path.gearing = '__apm_resource_pack__/graphics/icons/apm_gearing.png'
apm.power.icons.path.wood_board = '__apm_resource_pack__/graphics/icons/apm_wood_board.png'
apm.power.icons.path.steam_relay = '__apm_resource_pack__/graphics/icons/apm_steam_relay.png'
apm.power.icons.path.sealing_rings = '__apm_resource_pack__/graphics/icons/apm_sealing_rings.png'
apm.power.icons.path.treated_wood_planks = '__apm_resource_pack__/graphics/icons/apm_treated_wood_planks.png'
apm.power.icons.path.electromagnet = '__apm_resource_pack__/graphics/icons/apm_electromagnet.png'
apm.power.icons.path.sciencepack ="__apm_resource_pack__/graphics/icons/apm_industrial_science_pack.png"
apm.power.icons.path.filter_charcoal = '__apm_resource_pack__/graphics/icons/apm_filter_charcoal.png'
apm.power.icons.path.filter_charcoal_used = '__apm_resource_pack__/graphics/icons/apm_filter_charcoal_used.png'
apm.power.icons.path.stone_brick = '__base__/graphics/icons/stone-brick.png'
apm.power.icons.path.crucibel_raw = '__apm_resource_pack__/graphics/icons/apm_stone_crucibel_raw.png'
apm.power.icons.path.crucibel = '__apm_resource_pack__/graphics/icons/apm_stone_crucibel.png'
apm.power.icons.path.tree_seeds = '__apm_resource_pack__/graphics/icons/apm_tree_seeds.png'
apm.power.icons.path.fertiliser_1 = '__apm_resource_pack__/graphics/icons/apm_fertiliser_1.png'
apm.power.icons.path.fertiliser_2 = '__apm_resource_pack__/graphics/icons/apm_fertiliser_2.png'
apm.power.icons.path.landfill = '__base__/graphics/icons/landfill.png'
apm.power.icons.path.uranium_ore = '__base__/graphics/icons/uranium-ore.png'
apm.power.icons.path.basic_oil_processing = '__base__/graphics/icons/fluid/basic-oil-processing.png'
apm.power.icons.path.sieve = '__apm_resource_pack__/graphics/icons/dynamics/sieve.png'
apm.power.icons.path.iron_ore = '__base__/graphics/icons/iron-ore.png'
apm.power.icons.path.copper_ore = '__base__/graphics/icons/copper-ore.png'
apm.power.icons.path.crusher_drumms = '__apm_resource_pack__/graphics/icons/apm_crusher_drumms.png'
apm.power.icons.path.crusher_drumms_used = '__apm_resource_pack__/graphics/icons/apm_crusher_drumms_used.png'
apm.power.icons.path.press_plates = '__apm_resource_pack__/graphics/icons/apm_press_plates.png'
apm.power.icons.path.press_plates_used = '__apm_resource_pack__/graphics/icons/apm_press_plates_used.png'

-- Icons ----------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.power.icons.sciencepack = {icon=apm.power.icons.path.sciencepack}
apm.power.icons.coal = {icon=apm.power.icons.path.coal}
apm.power.icons.wood = {icon=apm.power.icons.path.wood}
apm.power.icons.resin = {icon=apm.power.icons.path.resin, icon_size=64}
apm.power.icons.rubber = {icon=apm.power.icons.path.rubber, icon_size=64}
apm.power.icons.coal_crushed = {icon=apm.lib.utils.icon.path.crushed, icon_size=64, tint=apm.power.color.coal}
apm.power.icons.wood_crushed = {icon=apm.lib.utils.icon.path.crushed, icon_size=64, tint=apm.power.color.wood}
apm.power.icons.coke_crushed = {icon=apm.lib.utils.icon.path.crushed, icon_size=64, tint=apm.power.color.coke}
apm.power.icons.coke_chunk = {icon=apm.lib.utils.icon.path.chunk, icon_size=64, tint=apm.power.color.coke}
apm.power.icons.charcoal_chunk = {icon=apm.lib.utils.icon.path.chunk, icon_size=64, tint=apm.power.color.charcoal}
apm.power.icons.coal_brick = {icon=apm.lib.utils.icon.path.briquette, icon_size=64, tint=apm.power.color.coal}
apm.power.icons.coke_brick = {icon=apm.lib.utils.icon.path.briquette, icon_size=64, tint=apm.power.color.coke}
apm.power.icons.wood_brick = {icon=apm.lib.utils.icon.path.briquette, icon_size=64, tint=apm.power.color.wood}
apm.power.icons.charcoal_brick = {icon=apm.lib.utils.icon.path.briquette, icon_size=64, tint=apm.power.color.charcoal}
apm.power.icons.generic_ash = {icon=apm.lib.utils.icon.path.dust, icon_size=64, tint=apm.power.color.generic_ash}
apm.power.icons.coal_ash = {icon=apm.lib.utils.icon.path.dust, icon_size=64, tint=apm.power.color.coal_ash}
apm.power.icons.wood_ash = {icon=apm.lib.utils.icon.path.dust, icon_size=64, tint=apm.power.color.wood_ash}
apm.power.icons.filter_charcoal = {icon=apm.power.icons.path.filter_charcoal, icon_size=64}
apm.power.icons.filter_charcoal_used = {icon=apm.power.icons.path.filter_charcoal_used, icon_size=64}
apm.power.icons.tar_small_left = {icon='__apm_resource_pack__/graphics/icons/dynamics/apm_fluid.png', scale=0.6, shift={-6,0}, tint=apm.power.color.tar}
apm.power.icons.mud_wet = {icon=apm.lib.utils.icon.path.heap, icon_size=64, tint=apm.power.color.mud_wet}
apm.power.icons.mud_dry = {icon=apm.lib.utils.icon.path.heap, icon_size=64, tint=apm.power.color.mud_dry}
apm.power.icons.asphalt = {icon=apm.power.icons.path.stone_brick, tint=apm.power.color.asphalt}
apm.power.icons.stone_brick = {icon=apm.power.icons.path.stone_brick}
apm.power.icons.crucibel_raw = {icon=apm.power.icons.path.crucibel_raw, icon_size=64}
apm.power.icons.crucibel  = {icon=apm.power.icons.path.crucibel, icon_size=64}
apm.power.icons.tree_seeds = {icon=apm.power.icons.path.tree_seeds, icon_size=64}
apm.power.icons.fertiliser_1 = {icon=apm.power.icons.path.fertiliser_1, icon_size=64}
apm.power.icons.fertiliser_2 = {icon=apm.power.icons.path.fertiliser_2, icon_size=64}
apm.power.icons.ammonium_sulfate = {icon=apm.lib.utils.icon.path.dust, icon_size=64, tint=apm.power.color.ammonium_sulfate}
apm.power.icons.gearing = {icon=apm.power.icons.path.gearing, icon_size=64}
apm.power.icons.wood_board = {icon=apm.power.icons.path.wood_board, icon_size=64}
apm.power.icons.steam_relay = {icon=apm.power.icons.path.steam_relay, icon_size=64}
apm.power.icons.sealing_rings = {icon=apm.power.icons.path.sealing_rings, icon_size=64}
apm.power.icons.treated_wood_planks = {icon=apm.power.icons.path.treated_wood_planks, icon_size=64}
apm.power.icons.electromagnet = {icon=apm.power.icons.path.electromagnet}
apm.power.icons.landfill = {icon=apm.power.icons.path.landfill}
apm.power.icons.uranium_ore = {icon=apm.power.icons.path.uranium_ore}
apm.power.icons.iron_ore = {icon=apm.power.icons.path.iron_ore}
apm.power.icons.copper_ore = {icon=apm.power.icons.path.copper_ore}
apm.power.icons.basic_oil_processing = {icon=apm.power.icons.path.basic_oil_processing}
apm.power.icons.sieve_iron = {icon=apm.power.icons.path.sieve, icon_size=64, tint=apm.power.color.sieve_iron}
apm.power.icons.sieve_copper = {icon=apm.power.icons.path.sieve, icon_size=64, tint=apm.power.color.sieve_copper}
apm.power.icons.crusher_drumms = {icon=apm.power.icons.path.crusher_drumms, icon_size=64}
apm.power.icons.crusher_drumms_used = {icon=apm.power.icons.path.crusher_drumms_used, icon_size=64}
apm.power.icons.press_plates = {icon=apm.power.icons.path.press_plates, icon_size=64}
apm.power.icons.press_plates_used = {icon=apm.power.icons.path.press_plates_used, icon_size=64}

-- From mods ------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.power.icons.path.angel_cellulose_fiber = '__angelsbioprocessing__/graphics/icons/cellulose-fiber.png'
apm.power.icons.angel_cellulose_fiber = {icon=apm.power.icons.path.angel_cellulose_fiber, icon_size=32}
apm.power.icons.path.angel_solid_paper = '__angelsbioprocessing__/graphics/icons/solid-paper.png'
apm.power.icons.angel_solid_paper = {icon=apm.power.icons.path.angel_solid_paper, icon_size=32}