------------------------------------------------------------------------------------------------------------------------------------------------------

-- STONE MACHINES

------------------------------------------------------------------------------------------------------------------------------------------------------

-- stone template

local speed = 1
local animspeed = 1
local energy = get_scaled_energy_usage(speed, 0)
local stone = {
	crafting_speed = speed,
	energy_source = {
		effectivity = 1,
		emissions_per_minute = speed * 3,
		fuel_category = "chemical",
		fuel_inventory_size = 1,
		smoke = {
			{
				frequency = 10,
				name = "smoke",
				position = {
					0,
					-1.25
				},
				starting_frame_deviation = 60,
				starting_vertical_speed = 0.08
			},
		},
		type = "burner"
	},
	energy_usage = energy.active,
	allowed_effects = {
		"pollution"
	},
	max_health = 200,
	resistances = {
	  {
		type = "fire",
		percent = 90
	  },
	},
	corpse = "big-remnants",
	flags = {"placeable-player", "placeable-neutral", "player-creation"},
	collision_box = standard_3x3_collision(),
	selection_box = standard_3x3_selection(),
	working_sound = {
		sound = {
			filename = "__base__/sound/furnace.ogg",
			volume = 1.0
		}
	},
	open_sound = {
		filename = "__base__/sound/machine-open.ogg",
		volume = 0.75
	},
	close_sound = {
		filename = "__base__/sound/machine-close.ogg",
		volume = 0.75
	},
	mined_sound = {
		filename = "__base__/sound/deconstruct-bricks.ogg"
	},
	vehicle_impact_sound = {
		filename = "__base__/sound/car-stone-impact.ogg",
		volume = 0.65
	},
}

-- stone furnace

local stone_furnace = table.deepcopy(stone)
stone_furnace.name = "stone-age-furnace"
--stone_furnace.type = "furnace"
stone_furnace.type = "assembling-machine"
stone_furnace.icon = get_icon_path("stone-age-furnace", DIR.icon_size)
stone_furnace.icon_size = DIR.icon_size
--stone_furnace.result_inventory_size = 1
--stone_furnace.source_inventory_size = 1
stone_furnace.crafting_categories = {"smelting","smelting-1"}
stone_furnace.gui_title_key = "gui-title.smelting"
stone_furnace.animation = {
	layers = {
		get_layer("machines/stone-furnace-base", nil, nil, false, nil, animspeed, 192, 256, 0, 0, 192, 256, {0,-0.5}),
		get_layer("machines/stone-furnace-shadow", nil, nil, true, nil, animspeed, 320, 192, 0, 0, 320, 192, {1.0,0}),
	}
}
stone_furnace.working_visualisations = {
	{
		animation = get_layer("machines/stone-furnace-working", 30, 6, false, nil, animspeed, 192, 256, 0, 0, 192, 256, {0,-0.5}, "additive"),
	}
}
stone_furnace.match_animation_speed_to_activity = false
stone_furnace.fast_replaceable_group = "furnace"
stone_furnace.next_upgrade = "bronze-furnace"
stone_furnace.minable = {
	mining_time = 0.5,
	result = "stone-age-furnace"
}
stone_furnace.placeable_by = {item = "stone-age-furnace", count = 1}
data:extend({table.deepcopy(stone_furnace)})

------------------------------------------------------------------------------------------------------------------------------------------------------