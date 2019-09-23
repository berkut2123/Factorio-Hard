------------------------------------------------------------------------------------------------------------------------------------------------------

-- projectors

require("code.data.projectors")

------------------------------------------------------------------------------------------------------------------------------------------------------

local projectors = get_projectors()

local circuits = circuit_connector_definitions.create (
    universal_connector_template,
    {{ variation = 26, main_offset = util.by_pixel(0,8), shadow_offset = util.by_pixel(0,8), show_shadow = true }}
)

local signal_colours = table.deepcopy(data.raw.lamp["small-lamp"].signal_to_color_mapping)
for _,map in pairs(signal_colours) do
    map.color.r = (map.color.r + 2) / 3
    map.color.g = (map.color.g + 2) / 3
    map.color.b = (map.color.b + 2) / 3
end

local default_colour = { r=0.9, g=0.95, b=1.0 }
local default_icon_colour = table.deepcopy(default_colour)
default_icon_colour.a = 0.8

local function get_projector(name, path)
    return {
        always_on = true,
        circuit_connector_sprites = circuits.sprites,
        circuit_wire_connection_point = circuits.points,
        circuit_wire_max_distance = 9,
        collision_box = {{-0.45,-0.45},{0.45,0.45}},
        selection_box = {{-0.5,-0.5},{0.5,0.5}},
        drawing_box = {{-0.5,-3.0},{0.5,0.5}},
        tile_width = 1,
        tile_height = 1,
        corpse = "medium-remnants",
        energy_source = {
            type = "electric",
            usage_priority = "lamp"
        },
        energy_usage_per_tick = "20KW",
        fast_replaceable_group = "projector",
        flags = {"placeable-neutral","player-creation"},
        glow_color_intensity = 0.1,
        glow_size = 4,
        icons = {{
            icon = path,
            icon_size = 128,
            tint = default_colour,
        }},
        light = {
            color = default_colour,
            intensity = 0.5,
            size = 12,
        },
        light_when_colored = {
            color = {r=1.0,g=1.0,b=1.0},
            intensity = 0.5,
            size = 12,
        },
        localised_name = {"entity-name.projector-default"},
        max_health = 120,
        minable = {
            mining_time = 0.5,
            result = "projector-default",
        },
        mined_sound = {
            filename = "__core__/sound/deconstruct-small.ogg"
        },
        name = name,
        picture_off = {
            layers = {
                {
                    filename = string.format("%s/machines/projector-base.png", DIR.sprites_path),
                    priority = "high",
                    shift = {0,-0.25},
                    width = 64,
                    height = 96,
                    scale = 0.5,
                },
                {
                    filename = string.format("%s/machines/projector-shadow.png", DIR.sprites_path),
                    priority = "high",
                    shift = {0.5,0.25},
                    width = 128,
                    height = 96,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            }
        },
        picture_on = {
            layers = {
                {
                    filename = string.format("%s/machines/projector-cone.png", DIR.sprites_path),
                    priority = "high",
                    shift = {0,-1},
                    height = 192,
                    width = 192,
                    scale = 0.5,
                    blend_mode = "additive",
                    tint = default_colour,
                },
                {
                    filename = string.format("%s/machines/projector-indicator.png", DIR.sprites_path),
                    priority = "high",
                    shift = {0,0},
                    height = 64,
                    width = 64,
                    scale = 0.5,
                    blend_mode = "additive",
                    tint = DIR.indicator_colours.iron,
                },
                {
                    filename = path,
                    priority = "high",
                    shift = {0,-2},
                    height = 128,
                    width = 128,
                    scale = 0.5,
                    tint = default_icon_colour,
                },
            }
        },
        placeable_by = {item = "projector-default", count = 1},
        resistances = {
            {
                type = "fire",
                percent = 50
            },
        },
        signal_to_color_mapping = signal_colours,
        type = "lamp",
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65,
        },
    }
end

------------------------------------------------------------------------------------------------------------------------------------------------------

local count = 0

for name,path in pairs(projectors) do
	count = count + 1
	data:extend({get_projector(name,path)})
	-- also a virtual signal, for map markers
	data:extend({{
		type = "virtual-signal",
		name = name,
		subgroup = "virtual-signal-map-markers",
		icons = {{
			icon = path,
			icon_size = 128,
			tint = default_colour,
		}},
		order = string.format("%02d",count),
	}})
end

------------------------------------------------------------------------------------------------------------------------------------------------------
