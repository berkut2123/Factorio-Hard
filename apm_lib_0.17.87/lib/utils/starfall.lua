require 'util'

if not apm.lib.utils.data.tables.starfall then apm.lib.utils.data.tables.starfall = {} end
if not apm.lib.utils.starfall.add then apm.lib.utils.starfall.add = {} end
if not apm.lib.utils.starfall.remove then apm.lib.utils.starfall.remove = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.starfall.add.ore(ore_name, t_tint, probability, required_fluid)
	if apm.lib.utils.item.exist(ore_name) then
		apm.lib.utils.data.tables.starfall[ore_name] = {}
		apm.lib.utils.data.tables.starfall[ore_name].tint = t_tint
		apm.lib.utils.data.tables.starfall[ore_name].probability = probability
		apm.lib.utils.data.tables.starfall[ore_name].required_fluid = required_fluid
		return
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.starfall.remove.ore(ore_name)
	if apm.lib.utils.data.tables.starfall[ore_name] then
		apm.lib.utils.data.tables.starfall[ore_name] = nil
		return
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.starfall.generate()
	for ore_name in pairs(apm.lib.utils.data.tables.starfall) do
		local ore = data.raw.item[ore_name]

		local resource = {}
		resource.type = "resource"
		resource.name = "apm_meteorite_ore_" .. ore_name
		resource.starfall = true
		--ore_name = string.gsub({"item-name." .. ore.name}, "-ore", "")
		resource.localised_name = {"entity-name.apm_meteorite_ore", {"item-name." .. ore.name}}
		resource.localised_description = {"entity-description.apm_meteorite_ore", {"item-name." .. ore.name}}
		resource.icons = {
							--{icon="__apm_resource_pack__/graphics/icons/dynamics/apm_meteorite_ore.png", tint=utils.data.tables.starfall[ore_name].tint}
							{icon = "__apm_resource_pack__/graphics/icons/apm_meteorite_ore.png"},
							{icon = ore.icon, scale = 0.4, shift = {10, 10}}
		}
		resource.icon_size = 32
		resource.flags = {"placeable-neutral"}
		resource.group = 'apm_starfall'
		if apm.lib.utils.data.tables.starfall[ore_name].required_fluid then
			resource.subgroup = 'apm_starfall_res_fluid'
		else
			resource.subgroup = 'apm_starfall_res'
		end
		resource.order="aa_" .. ore_name
		resource.minable = {
			mining_particle = "stone-particle",
      		mining_time = 2,
      		results = {
      			{type='item', name='apm_meteorite_ore', amount=1},
				{type='item', name=ore.name, amount_min=1, amount_max=1, probability=apm.lib.utils.data.tables.starfall[ore_name].probability}
      		},
    	}
		if apm.lib.utils.data.tables.starfall[ore_name].required_fluid ~= nil then
      		resource.minable.fluid_amount = 10
      		resource.minable.required_fluid = apm.lib.utils.data.tables.starfall[ore_name].required_fluid
		end

		resource.collision_box = {{ -0.1, -0.1}, {0.1, 0.1}}
		resource.selection_box = {{ -0.5, -0.5}, {0.5, 0.5}}
		resource.stage_counts = {10000, 5200, 2600, 1800, 1200, 800, 400, 80}
		resource.stages = {
			sheet = {
				filename = "__apm_resource_pack__/graphics/entities/ore/meteorite-ore.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 8,
				variation_count = 8,
				hr_version = {
					filename = "__apm_resource_pack__/graphics/entities/ore/hr-meteorite-ore.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					frame_count = 8,
					variation_count = 8,
					scale = 0.5
				}
			}
		}
		resource.stages_effect = {
			sheet =	{
				filename = "__apm_resource_pack__/graphics/entities/ore/meteorite-ore-glow.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 8,
				variation_count = 8,
				blend_mode = "additive",
				flags = {"light"},
				hr_version = {
					filename = "__apm_resource_pack__/graphics/entities/ore/hr-meteorite-ore-glow.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					frame_count = 8,
					variation_count = 8,
					scale = 0.5,
					blend_mode = "additive",
					flags = {"light"},
				}
			}
		}
		resource.effect_animation_period = 5
		resource.effect_animation_period_deviation = 1
		resource.effect_darkness_multiplier = 3.6
		resource.min_effect_alpha = 0.1
		resource.max_effect_alpha = 0.4
		resource.map_color = apm.lib.utils.data.tables.starfall[ore_name].tint
		data:extend({resource})
	end
end