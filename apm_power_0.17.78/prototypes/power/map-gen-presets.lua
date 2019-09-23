require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/map-gen-presets.lua')
log('-------------------------------------------------------')

local preset_name  = 'apm_map_preset'
local apm_map_preset = {}
apm_map_preset[preset_name] = {}
apm_map_preset[preset_name].order = 'aa_a'
apm_map_preset[preset_name].basic_settings = {}

-- vanilla ores
apm.lib.utils.autoplace_controls.add.ore("coal", 0.3, 1, 1.5)
apm.lib.utils.autoplace_controls.add.ore("uranium-ore", 0.3, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("iron-ore", 0.3, 1, 1.2)
apm.lib.utils.autoplace_controls.add.ore("copper-ore", 0.3, 1, 1.2)
apm.lib.utils.autoplace_controls.add.ore("stone", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("crude-oil", 0.15, 2.5, 2.5)
-- vanilla angel ores
apm.lib.utils.autoplace_controls.add.ore("angels-ore1", 0.3, 1, 1.2)
apm.lib.utils.autoplace_controls.add.ore("angels-ore2", 0.3, 1, 1.2)
apm.lib.utils.autoplace_controls.add.ore("angels-ore3", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("angels-ore4", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("angels-ore5", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("angels-ore6", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("angels-natural-gas", 0.15, 2.5, 3)
apm.lib.utils.autoplace_controls.add.ore("angels-fissure", 0.15, 2.5, 3)
-- vanilla bob ores
apm.lib.utils.autoplace_controls.add.ore("bauxite-ore", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("lead-ore", 0.3, 1, 1.2)
apm.lib.utils.autoplace_controls.add.ore("tin-ore", 0.3, 1, 1.2)
apm.lib.utils.autoplace_controls.add.ore("quartz", 0.3, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("cobalt-ore", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("nickel-ore", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("zinc-ore", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("rutile-ore", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("tungsten-ore", 0.25, 1, 1)
apm.lib.utils.autoplace_controls.add.ore("ground-water", 0.55, 0.5, 0.5)
apm.lib.utils.autoplace_controls.add.ore("lithia-water", 0.3, 0.75, 1.2)
apm.lib.utils.autoplace_controls.add.ore("gem-ore", 0.15, 1, 2.25)
apm.lib.utils.autoplace_controls.add.ore("silver-ore", 0.25, 0.95, 1.1)
apm.lib.utils.autoplace_controls.add.ore("gold-ore", 0.15, 0.85, 3)
apm.lib.utils.autoplace_controls.add.ore("thorium-ore", 0.3, 1, 1)

apm_map_preset[preset_name].basic_settings.autoplace_controls = apm.lib.utils.autoplace_controls.get()
apm_map_preset[preset_name].basic_settings.terrain_segmentation = 1.25
apm_map_preset[preset_name].basic_settings.water = 1.75
apm_map_preset[preset_name].starting_area = 'big'
apm_map_preset[preset_name].advanced_settings = {}
apm_map_preset[preset_name].advanced_settings.enemy_evolution = {}
apm_map_preset[preset_name].advanced_settings.enemy_evolution.time_factor = 0.00000025
apm_map_preset[preset_name].advanced_settings.enemy_evolution.pollution_factor = 0.000001
apm_map_preset[preset_name].advanced_settings.enemy_evolution.enemy_expansion = {}
apm_map_preset[preset_name].advanced_settings.enemy_evolution.enemy_expansion.enabled = true
apm_map_preset[preset_name].advanced_settings.enemy_evolution.enemy_expansion.max_expansion_distance = 8.0
apm_map_preset[preset_name].advanced_settings.enemy_evolution.enemy_expansion.settler_group_min_size = 7.0
apm_map_preset[preset_name].advanced_settings.enemy_evolution.enemy_expansion.settler_group_max_size = 30.0
apm_map_preset[preset_name].advanced_settings.enemy_evolution.enemy_expansion.min_expansion_cooldown = 8.0 * 3600
apm_map_preset[preset_name].advanced_settings.enemy_evolution.enemy_expansion.max_expansion_cooldown = 85.0 * 3600

if mods.alien_biomes then
    apm_map_preset[preset_name].basic_settings.seed = '1579685571'
else
    apm_map_preset[preset_name].basic_settings.seed = '4189143784'
end

data.raw['map-gen-presets']['default'][preset_name] = apm_map_preset[preset_name]