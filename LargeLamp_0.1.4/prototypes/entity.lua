data:extend({
{
    type = "lamp",
    name = "LargeLamp",
    icon = "__LargeLamp__/graphics/icons/large-lamp-icon.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.6, result = "LargeLamp"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},	-- {{Left border, Top border}, {Right border, Bottom border}},
	drawing_box = {{-0.5, -2.7}, {0.5, 0.2}},	-- when item selected small window opens with a drawing box
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "20KW",
    light = {intensity = 0.9, size = 80, color = {r=1.0, g=1.0, b=1.0}},
    light_when_colored = {intensity = 1, size = 6, color = {r=1.0, g=1.0, b=1.0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__LargeLamp__/graphics/entity/large-lamp-off.png",
      priority = "high",
      width = 128,
      height = 160,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0, -1.7},
    },
    picture_on =
    {
      filename = "__LargeLamp__/graphics/entity/large-lamp-on.png",
      priority = "high",
      width = 128,
      height = 160,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0, -1.7},
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

    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.234375, 0.178125},
        green = {0.309375, 0.280625},
      },
      wire =
      {
        red = {0.40625, 0.08},
        green = {0.40625, 0.22},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
    circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance

  },
  })