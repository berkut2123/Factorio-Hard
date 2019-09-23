------------------------------------------------------------------------------------------------------------------------------------------------------

-- BOTS

------------------------------------------------------------------------------------------------------------------------------------------------------

local idle = get_layer("bots/steambot", 1, 16, false, nil, 0.5, 80, 80, 0, 0, 80, 80, {0,0}, nil, nil, nil, 16)
local working = get_layer("bots/steambot-working", 1, 16, false, nil, 0.5, 80, 80, 0, 0, 80, 80, {0,0}, nil, nil, nil, 16)
local shadow = get_layer("bots/steambot-shadow", 1, 16, true, nil, 0.5, 128, 80, 0, 0, 128, 80, {1.05,0.59}, nil, nil, nil, 16)

local steambot = {
    cargo_centered = {0,0.2},
    collision_box = {{0,0},{0,0}},
    selection_box = {{-0.5,-1.5},{0.5,-0.5}},
    construction_vector = {0.3,0.22},
	draw_cargo = true,
    energy_per_move = "2.5kJ",
    energy_per_tick = "0.025kJ",
    flags = {
        "placeable-player",
        "player-creation",
        "placeable-off-grid",
        "not-on-map"
    },
    icon = get_icon_path("steambot",DIR.icon_size),
    icon_size = DIR.icon_size,
    idle = idle,
    in_motion = idle,
    working = working,
    shadow_idle = shadow,
    shadow_in_motion = shadow,
    shadow_working = shadow,
    max_energy = "0.75MJ",
    max_health = 75,
    max_payload_size = 1,
    max_to_charge = 0.95,
    min_to_charge = 0.2,
    minable = {
        mining_time = 0.1,
        result = "steambot"
    },
    name = "steambot",
    resistances = {{percent = 85, type = "fire"}},
    smoke = data.raw["construction-robot"]["construction-robot"].smoke,
    sparks = data.raw["construction-robot"]["construction-robot"].sparks,
    speed = 0.045,
    speed_multiplier_when_out_of_energy = 0.2,
    transfer_distance = 0.5,
    type = "construction-robot",
    working_light = {
        color = {
            b = 0.4,
            g = 0.7,
            r = 0.8
        },
        intensity = 0.8,
        size = 3
    },
    working_sound = {
        max_sounds_per_type = 3,
        sound = {
            {
                filename = DIR.sound_path.."/ticktock.ogg",
                volume = 0.8
            },
        }
    },
}

data:extend({steambot})

------------------------------------------------------------------------------------------------------------------------------------------------------
