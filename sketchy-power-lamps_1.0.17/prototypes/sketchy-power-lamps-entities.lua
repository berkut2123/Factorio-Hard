data:extend(
{
	{
		type = "lamp",
		name = "medium-power-lamp",
		icon = "__sketchy-power-lamps__/graphics/icons/medium-power-lamp.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "medium-power-lamp"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_source =
		{
		  type = "electric",
		  usage_priority = "lamp"
		},
		energy_usage_per_tick = "15KW",
		darkness_for_all_lamps_on = 0.5,
		darkness_for_all_lamps_off = 0.3,
		light = {intensity = 0.9, size = 80, color = {r=1.0, g=1.0, b=1.0}},
		light_when_colored = {intensity = 1, size = 12, color = {r=1.0, g=1.0, b=1.0}},
		glow_size = 12,
		glow_color_intensity = 0.16,
		picture_off = {
		layers = {
			{
			  filename = "__sketchy-power-lamps__/graphics/entity/medium-power-lamp.png",
			  priority = "high",
			  width = 42,
			  height = 36,
			  frame_count = 1,
			  axially_symmetrical = false,
			  direction_count = 1,
			  shift = util.by_pixel(0,3),
			  hr_version = {
				filename = "__sketchy-power-lamps__/graphics/entity/hr-medium-power-lamp.png",
				priority = "high",
				width = 83,
				height = 70,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(0.25,3),
				scale = 0.5
			  }
			},
			{
			  filename = "__base__/graphics/entity/small-lamp/lamp-shadow.png",
			  priority = "high",
			  width = 38,
			  height = 24,
			  frame_count = 1,
			  axially_symmetrical = false,
			  direction_count = 1,
			  shift = util.by_pixel(4,5),
			  draw_as_shadow = true,
			  hr_version = {
				filename = "__base__/graphics/entity/small-lamp/hr-lamp-shadow.png",
				priority = "high",
				width = 76,
				height = 47,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(4, 4.75),
				draw_as_shadow = true,
				scale = 0.5
			  }
			}
		  }
		},
		picture_on =
		{
		  filename = "__base__/graphics/entity/small-lamp/lamp-light.png",
		  priority = "high",
		  width = 46,
		  height = 40,
		  frame_count = 1,
		  axially_symmetrical = false,
		  direction_count = 1,
		  shift = util.by_pixel(0, -7),
		  hr_version = {
			filename = "__sketchy-power-lamps__/graphics/entity/hr-lamp-light-large.png",
			priority = "high",
			width = 90,
			height = 78,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			shift = util.by_pixel(0, -7),
			scale = 0.5
		  }
		},
		signal_to_color_mapping =
		{
		  {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
		  {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
		  {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
		  {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
		  {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
		  {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
		},

		circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
		circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
		circuit_wire_max_distance = default_circuit_wire_max_distance
	},
	{
		type = "lamp",
		name = "high-power-lamp",
		icon = "__sketchy-power-lamps__/graphics/icons/high-power-lamp.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "high-power-lamp"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_source =
		{
		  type = "electric",
		  usage_priority = "lamp"
		},
		energy_usage_per_tick = "50KW",
		darkness_for_all_lamps_on = 0.5,
		darkness_for_all_lamps_off = 0.3,
		light = {intensity = 0.9, size = 140, color = {r=1.0, g=1.0, b=1.0}},
		light_when_colored = {intensity = 1, size = 22, color = {r=1.0, g=1.0, b=1.0}},
		glow_size = 22,
		glow_color_intensity = 0.2,
		picture_off = {
		layers = {
			{
			  filename = "__sketchy-power-lamps__/graphics/entity/high-power-lamp.png",
			  priority = "high",
			  width = 42,
			  height = 36,
			  frame_count = 1,
			  axially_symmetrical = false,
			  direction_count = 1,
			  shift = util.by_pixel(0,3),
			  hr_version = {
				filename = "__sketchy-power-lamps__/graphics/entity/hr-high-power-lamp.png",
				priority = "high",
				width = 83,
				height = 70,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(0.25,3),
				scale = 0.5
			  }
			},
			{
			  filename = "__base__/graphics/entity/small-lamp/lamp-shadow.png",
			  priority = "high",
			  width = 38,
			  height = 24,
			  frame_count = 1,
			  axially_symmetrical = false,
			  direction_count = 1,
			  shift = util.by_pixel(4,5),
			  draw_as_shadow = true,
			  hr_version = {
				filename = "__base__/graphics/entity/small-lamp/hr-lamp-shadow.png",
				priority = "high",
				width = 76,
				height = 47,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(4, 4.75),
				draw_as_shadow = true,
				scale = 0.5
			  }
			}
		  }
		},
		picture_on =
		{
		  filename = "__base__/graphics/entity/small-lamp/lamp-light.png",
		  priority = "high",
		  width = 46,
		  height = 40,
		  frame_count = 1,
		  axially_symmetrical = false,
		  direction_count = 1,
		  shift = util.by_pixel(0, -7),
		  hr_version = {
			filename = "__sketchy-power-lamps__/graphics/entity/hr-lamp-light-large.png",
			priority = "high",
			width = 90,
			height = 78,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			shift = util.by_pixel(0, -7),
			scale = 0.5
		  }
		},
		signal_to_color_mapping =
		{
		  {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
		  {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
		  {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
		  {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
		  {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
		  {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
		},

		circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
		circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
		circuit_wire_max_distance = default_circuit_wire_max_distance
	},
}
)
