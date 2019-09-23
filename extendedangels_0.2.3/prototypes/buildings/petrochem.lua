data:extend(
{
--ADVANCED CHEMICAL PLANT
    {
    type = "item",
    name = "advanced-chemical-plant-3",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/advanced-chemical-plant.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "j",
    place_result = "advanced-chemical-plant-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "advanced-chemical-plant-3",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/advanced-chemical-plant.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "advanced-chemical-plant-3"},
	fast_replaceable_group = "advanced-chemical-plant",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"chemistry", "advanced-chemistry"},
    crafting_speed = 3.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "500kW",
    ingredient_count = 4,
    animation ={
	layers={
    {
        filename = "__angelspetrochem__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
        width = 224,
        height = 224,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0, 0},
    },
    -- {
        -- filename = "__angelspetrochem__/graphics/entity/advanced-chemical-plant/5x5-overlay.png",
		-- tint = {r = 0.8, g = 0, b = 0},
        -- width = 160,
        -- height = 160,
        -- frame_count = 1,
		-- line_length = 4,
		-- animation_speed = 0.5,
        -- shift = {0, 0},
    -- },
	}
	},
	fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 3} }}
      },
	  {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
	  {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      },
	  --off_when_no_fluid_recipe = true
    },
    pipe_covers = pipecoverspictures(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
--AIR FILTER  
        {
            type = "item",
            name = "angels-air-filter-3",
            icons = {
                {
                    icon = "__angelspetrochem__/graphics/icons/air-filter.png",
                },
                {
                    icon = "__angelspetrochem__/graphics/icons/num_3.png",
                    tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
                    scale = 0.32,
                    shift = {-12, -12},
                }
            },
            icon_size = 32,	
            subgroup = "petrochem-electrolyser",
            order = "k",
            place_result = "angels-air-filter-3",
            stack_size = 10,
            },
            {
                type = "assembling-machine",
                name = "angels-air-filter-3",
                icons = {
                    {
                        icon = "__angelspetrochem__/graphics/icons/air-filter.png",
                    },
                    {
                        icon = "__angelspetrochem__/graphics/icons/num_3.png",
                        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
                        scale = 0.32,
                        shift = {-12, -12},
                    }
                },
                icon_size = 32,	
                flags = {"placeable-neutral","player-creation"},
                minable = {mining_time = 1, result = "angels-air-filter-3"},
                fast_replaceable_group = "angels-air-filter",
                max_health = 300,
                corpse = "big-remnants",
                dying_explosion = "medium-explosion",
                collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
                selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
                module_specification =
                {
                  module_slots = 3
                },
                allowed_effects = {"consumption", "speed", "productivity", "pollution"},
                crafting_categories = {"petrochem-air-filtering"},
                crafting_speed = 3,
                energy_source =
                {
                  type = "electric",
                  usage_priority = "secondary-input",
                  emissions = 0.02 / 2
                },
                energy_usage = "250kW",
                ingredient_count = 3,
                animation =
                {
                    filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
                    width = 256,
                    height = 256,
                    frame_count = 36,
                    line_length = 6,
                    shift = {0.5, -0.5},
                    animation_speed = 0.5
                },
                vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
                working_sound =
                {
                  sound = { filename = "__base__/sound/idle1.ogg" },
                  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
                  apparent_volume = 2.5,
                },
                fluid_boxes =
                {
                  {
                    production_type = "input",
                    pipe_picture = electrolyserpictures(),
                    pipe_covers = pipecoverspictures(),
                    base_area = 10,
                    base_level = -1,
                    pipe_connections = {{ type="input", position = {0, -3} }}
                  },
                  {
                    production_type = "output",
                    pipe_picture = electrolyserpictures(),
                    pipe_covers = pipecoverspictures(),
                    base_level = 1,
                    pipe_connections = {{ position = {0, 3} }}
                  },
                },
                pipe_covers = pipecoverspictures()
                },   
                {
                    type = "item",
                    name = "angels-air-filter-4",
                    icons = {
                        {
                            icon = "__angelspetrochem__/graphics/icons/air-filter.png",
                        },
                        {
                            icon = "__angelspetrochem__/graphics/icons/num_4.png",
                            tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
                            scale = 0.32,
                            shift = {-12, -12},
                        }
                    },
                    icon_size = 32,	
                    subgroup = "petrochem-electrolyser",
                    order = "l",
                    place_result = "angels-air-filter-4",
                    stack_size = 10,
                    },
                    {
                        type = "assembling-machine",
                        name = "angels-air-filter-4",
                        icons = {
                            {
                                icon = "__angelspetrochem__/graphics/icons/air-filter.png",
                            },
                            {
                                icon = "__angelspetrochem__/graphics/icons/num_4.png",
                                tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
                                scale = 0.32,
                                shift = {-12, -12},
                            }
                        },
                        icon_size = 32,	
                        flags = {"placeable-neutral","player-creation"},
                        minable = {mining_time = 1, result = "angels-air-filter-4"},
                        fast_replaceable_group = "angels-air-filter",
                        max_health = 300,
                        corpse = "big-remnants",
                        dying_explosion = "medium-explosion",
                        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
                        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
                        module_specification =
                        {
                          module_slots = 4
                        },
                        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
                        crafting_categories = {"petrochem-air-filtering"},
                        crafting_speed = 4,
                        energy_source =
                        {
                          type = "electric",
                          usage_priority = "secondary-input",
                          emissions = 0.02 / 2
                        },
                        energy_usage = "300kW",
                        ingredient_count = 3,
                        animation =
                        {
                            filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
                            width = 256,
                            height = 256,
                            frame_count = 36,
                            line_length = 6,
                            shift = {0.5, -0.5},
                            animation_speed = 0.5
                        },
                        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
                        working_sound =
                        {
                          sound = { filename = "__base__/sound/idle1.ogg" },
                          idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
                          apparent_volume = 2.5,
                        },
                        fluid_boxes =
                        {
                          {
                            production_type = "input",
                            pipe_picture = electrolyserpictures(),
                            pipe_covers = pipecoverspictures(),
                            base_area = 10,
                            base_level = -1,
                            pipe_connections = {{ type="input", position = {0, -3} }}
                          },
                          {
                            production_type = "output",
                            pipe_picture = electrolyserpictures(),
                            pipe_covers = pipecoverspictures(),
                            base_level = 1,
                            pipe_connections = {{ position = {0, 3} }}
                          },
                        },
                        pipe_covers = pipecoverspictures()
                        },
}
)