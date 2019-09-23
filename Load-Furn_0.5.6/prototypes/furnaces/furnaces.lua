function add_furnace(data)
local name = data.name
local crafting_speed = data.crafting_speed
local energy_usage = data.energy_usage
local next_upgrade = data.next_upgrade
local module_specification = data.module_specification
local icon = data.icon
local icons = data.icons

if mods["angelssmelting"] and not mods["bobelectronics"] then
	crafting_categories = {"smelting", "pro-smelting", "AdvFurn", "pro-chemical-smelting", "pro-mixing-smelting", "pro-chemical-furnace", "strand-casting", "induction-smelting", "chemical-smelting", "casting", "blast-smelting", "mixing-furnace", "chemical-furnace"}
elseif mods["angelssmelting"] and mods["bobelectronics"] then
	crafting_categories = {"smelting", "pro-smelting", "AdvFurn", "pro-chemical-smelting", "pro-mixing-smelting", "pro-chemical-furnace", "strand-casting", "induction-smelting", "chemical-smelting", "casting", "blast-smelting", "mixing-furnace"}
elseif mods["bobelectronics"] and not mods["bobplates"] and not mods["angelssmelting"] then
	crafting_categories = {"smelting", "pro-smelting", "AdvFurn", "pro-mixing-smelting", "pro-chemical-furnace", "mixing-furnace"}
elseif mods["bobplates"] and not mods["angelssmelting"] then
	crafting_categories = {"smelting", "pro-smelting", "AdvFurn", "pro-mixing-smelting", "pro-chemical-furnace", "mixing-furnace", "chemical-furnace"}
else
	crafting_categories = {"smelting", "pro-smelting", "AdvFurn", "pro-mixing-smelting", "pro-chemical-furnace", "mixing-furnace", "chemical-furnace"}
end

return {
		type = "assembling-machine",
		name = name,
		icon = icon,
		icons = icons,
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 1, result = name},
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		light = {intensity = 1, size = 10},
		resistances = {
			{type = "fire", percent = 100},
			{type = "acid", percent = 100}
		},
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
		selection_box = {{-2.9, -2.9}, {2.9, 2.9}},
		module_specification = module_specification,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		crafting_categories = crafting_categories,
		fast_replaceable_group = "furnace",
		ingredient_count = 4,
		result_count = 2,
		crafting_speed = crafting_speed,
		next_upgrade = next_upgrade,
		energy_usage = energy_usage,
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1.5, -3.5} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {3.5, -1.5} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1.5, -3.5} }}
			},
			{
				production_type = "output",
				--pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1.5, 3.5} }}
			},
			{
				production_type = "output",
				--pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1.5, 3.5} }}
			},
			off_when_no_fluid_recipe = true
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.005
		},
		vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound = {
			sound = {filename = "__base__/sound/electric-furnace.ogg", volume = 0.7},
			apparent_volume = 1.5
		},
		animation = {
			layers =
				{
					{
						filename = "__Load-Furn__/graphics/entity/"..name..".png",
						priority = "high",
						width = 258,
						height = 200,
						frame_count = 1,
						shift = {0.921875, 0},
					}
				}
		},
		working_visualisations = {
			{
				animation = {
					filename = "__Load-Furn__/graphics/entity/" .. 'electric-furnace-heater.png',
					priority = "high",
					width = 28,
					height = 42,
					frame_count = 9,
					animation_speed = 0.5,
					shift = {1.7, 1.4}
				},
				light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
			},
			{
				animation = {
					filename = "__Load-Furn__/graphics/entity/" .. 'electric-furnace-propeller-1.png',
					priority = "high",
					width = 38,
					height = 26,
					frame_count = 4,
					animation_speed = 0.5,
					shift = {-0.95, -2.50}
				}
			},
		}
	}
end

local entities = 
{
	add_furnace{
		name = "furnace-pro-01",
		crafting_speed = 48,
		energy_usage = "4320kW", 
		module_specification = {module_slots = 2, module_info_icon_shift = {0, 0.8}},
		icon = "__Load-Furn__/graphics/icons/furnace-pro.png",
		next_upgrade = "furnace-pro-02"
	},
	add_furnace{
		name = "furnace-pro-02",
		crafting_speed = 96,
		energy_usage = "8640kW",
		module_specification = {module_slots = 3, module_info_icon_shift = {0, 0.8}},
		icons = {
					{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
					{icon = "__Load-Furn__/graphics/icons/2.png"}
				},
		next_upgrade = "furnace-pro-03"
	},
	add_furnace{
		name = "furnace-pro-03", 
		crafting_speed = 192,
		energy_usage = "17280kW",
		module_specification = {module_slots = 4, module_info_icon_shift = {0, 0.8}},
		icons = {
					{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
					{icon = "__Load-Furn__/graphics/icons/3.png"}
				},
		next_upgrade = "furnace-pro-04"
	},
add_furnace{
		name = "furnace-pro-04",
		crafting_speed = 384,
		energy_usage = "34560kW",
		module_specification = {module_slots = 5, module_info_icon_shift = {0, 0.8}},
		icons = {
					{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
					{icon = "__Load-Furn__/graphics/icons/4.png"}
				},
		next_upgrade = "furnace-pro-05"
	},
add_furnace{
		name = "furnace-pro-05",
		crafting_speed = 768,
		energy_usage =  "69120kW",
		module_specification = {module_slots = 6, module_info_icon_shift = {0, 0.8}},
		icons = {
					{icon = "__Load-Furn__/graphics/icons/furnace-pro.png"},
					{icon = "__Load-Furn__/graphics/icons/5.png"}
				},
		next_upgrade = nil
	} 
}
data:extend(entities)