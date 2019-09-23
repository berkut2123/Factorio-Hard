data:extend({
    
	
	
	{--hier neu
    type = "generator",
    name = "wind-turbine",
    icon = "__Wind_Turbine V16__/graphics/wind_turbine_item.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "wind-turbine"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 2,
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 100,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
	  {
				type = "physical",
				percent = 100
	  },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = "wind-turbine",
    collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      --pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        --{ type = "input-output", position = {0, 3} },
        --{ type = "input-output", position = {0, -3} },
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 0.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
		horizontal_animation = {
			filename = "__Wind_Turbine V16__/graphics/wind_turbine1_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__Wind_Turbine V16__/graphics/wind_turbine1_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
                volume = 0.6
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.0,
        performance_to_sound_speedup = 0.2
    },
	
	{--hier neu 2
    type = "generator",
    name = "wind-turbine2",
    icon = "__Wind_Turbine V16__/graphics/wind_turbine_item.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "wind-turbine2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 8.0,
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 100,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
	  {
				type = "physical",
				percent = 100
	  },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = "wind-turbine2",
    collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      --pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        --{ type = "input-output", position = {0, 3} },
        --{ type = "input-output", position = {0, -3} },
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 0.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
		horizontal_animation = {
			filename = "__Wind_Turbine V16__/graphics/wind_turbine2_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__Wind_Turbine V16__/graphics/wind_turbine2_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
                volume = 0.6
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.00,
        performance_to_sound_speedup = 0.2
    },
	
	{--hier neu 3
    type = "generator",
    name = "wind-turbine3",
    icon = "__Wind_Turbine V16__/graphics/wind_turbine_item.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "wind-turbine3"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 20,
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 100,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
	  {
				type = "physical",
				percent = 100
	  },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = "wind-turbine3",
    collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      --pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        --{ type = "input-output", position = {0, 3} },
        --{ type = "input-output", position = {0, -3} },
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 0.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
		horizontal_animation = {
			filename = "__Wind_Turbine V16__/graphics/wind_turbine3_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__Wind_Turbine V16__/graphics/wind_turbine3_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
                volume = 0.6
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.0,
        performance_to_sound_speedup = 0.2
    },
	--item
    {
		type = "item",
		name = "wind-turbine",
		icon = "__Wind_Turbine V16__/graphics/wind_turbine_item.png",
		icon_size= 32,
		--flags = {"goes-to-quickbar"},
        group = "logistics",
		subgroup = "energy",
		order = "b[steam-power]-c[wind-turbine]",
		place_result = "wind-turbine",
		stack_size = 100
	},
	{
		type = "item",
		name = "wind-turbine2",
		icon = "__Wind_Turbine V16__/graphics/wind_turbine_item.png",
		icon_size= 32,
		--flags = {"goes-to-quickbar"},
        group = "logistics",
		subgroup = "energy",
		order = "b[steam-power]-c[wind-turbine]",
		place_result = "wind-turbine2",
		stack_size = 100
	},
	{
		type = "item",
		name = "wind-turbine3",
		icon = "__Wind_Turbine V16__/graphics/wind_turbine_item.png",
		icon_size= 32,
		--flags = {"goes-to-quickbar"},
        group = "logistics",
		subgroup = "energy",
		order = "b[steam-power]-c[wind-turbine]",
		place_result = "wind-turbine3",
		stack_size = 100
	},
	--rezept
    {
        type = "recipe",
        name = "wind-turbine",
        energy_required = 5,
        enabled = "false",
        ingredients = {
            {"electronic-circuit", 1},
            {"engine-unit", 1},
            {"iron-gear-wheel", 4},
            {"steel-plate", 10}
        },
        result = "wind-turbine"
    },
	{
        type = "recipe",
        name = "wind-turbine2",
        energy_required = 10,
        enabled = "false",
        ingredients = {
            {"advanced-circuit", 4},
            {"electric-engine-unit", 4},
            {"iron-gear-wheel", 8},
            {"steel-plate", 20}
        },
        result = "wind-turbine2"
    },
	{
        type = "recipe",
        name = "wind-turbine3",
        energy_required = 10,
        enabled = "false",
        ingredients = {
            {"advanced-circuit", 5},
			{"processing-unit",1},
            {"electric-engine-unit", 10},
            {"iron-gear-wheel", 20},
            {"steel-plate", 40}
        },
        result = "wind-turbine3"
    },
	--technology
    {
        type = "technology",
        name = "wind-turbine",
        icon = "__Wind_Turbine V16__/graphics/windturbine1.png",
        icon_size = 128,
        prerequisites = {"engine"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine"
            }
        },
        unit = {
            count = 50,
            ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
            time = 10
        }
    },
	{
        type = "technology",
        name = "wind-turbine2",
        icon = "__Wind_Turbine V16__/graphics/windturbine2.png",
        icon_size = 128,
        prerequisites = {"electric-engine", "wind-turbine"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine2"
            }
        },
        unit = {
            count = 50,
            ingredients = {{"automation-science-pack", 3}, {"logistic-science-pack", 3},{"chemical-science-pack", 3}},
            time = 15
        }
    },
	{
        type = "technology",
        name = "wind-turbine3",
        icon = "__Wind_Turbine V16__/graphics/windturbine3.png",
        icon_size = 128,
        prerequisites = {"electric-engine", "advanced-electronics-2", "wind-turbine2"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine3"
            }
        },
        unit = {
            count = 50,
            ingredients = {{"automation-science-pack", 4}, {"logistic-science-pack", 4},{"chemical-science-pack", 4},{"utility-science-pack", 4}},
            time = 20
        }
    }
})
