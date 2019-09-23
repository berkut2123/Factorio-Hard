--[[
Mining power is 3, same as electric miner
Mining Speeds, for reference, burner is 0.35, electric is 0.5
]]--
local vehicle_speed = {"50kW", "70kW", "95kW", "125kW", "160kW"}
local vehicle_friction = {0.045, 0.04, 0.035, 0.03, 0.026}
local miner_health = {600, 800, 1000, 1250, 1500}
--local inventory_size = {60, 90, 110, 140, 170}
local inventory_size = {50, 70, 90, 120, 150}
local fuel_inventory_size = {2, 2, 3, 3, 4}
local animation_speed = 60
for i=1,5 do
    local real_suffix = ("-mk"..i)
    local suffix = (i > 1) and real_suffix or ""

    local vehicle = {
        type = "car",
        name = "vehicle-miner"..suffix,
        order = "z[programmable]", -- programmable in programmable-vehicles
        icon = "__aai-vehicles-miner__/graphics/icons/miner"..suffix..".png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
        minable = {mining_time = 1, result = "vehicle-miner"..suffix},
        max_health = miner_health[i],
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        energy_per_hit_point = 0.5,
        resistances = {
            {
                type = "fire",
                decrease = 15,
                percent = 50
            },
            {
                type = "physical",
                decrease = 0,
                percent = 20
            },
            {
                type = "impact",
                decrease = 50,
                percent = 60
            },
        },
        selection_box = {{-2, -2.4}, {2, 2.4}},
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        burner =
        {
            effectivity = 2,
            fuel_inventory_size = fuel_inventory_size[i],
            smoke = {
                {
                    name = "tank-smoke",
                    deviation = {0.25, 0.25},
                    frequency = 50,
                    position = {0, 1.5},
                    starting_frame = 0,
                    starting_frame_deviation = 60
                }
            }
        },
        effectivity = 2,
        --weight = 15000,
        weight = 6000,
        consumption = vehicle_speed[i],
        braking_power = vehicle_speed[i],
        terrain_friction_modifier = 0.01,
        --friction = 0.03,
        friction = vehicle_friction[i],
        rotation_speed = 0.003,
        turret_rotation_speed = 0.01,
        turret_return_timeout = 300,
        tank_driving = true,
        light =
        {
            {
                intensity = 0.6,
                minimum_darkness = 0.3,
                size = 30
            },
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture =
                {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 2,
                    width = 200,
                    height = 200
                },
                shift = {0, -14},
                size = 2,
                intensity = 0.6
            }
        },
        animation =
        {
            layers =
            {
              {
                    width = 2024/8,
                    height = 1744/8,
                    frame_count = 2,
                    direction_count = 64,
                    shift = {0.0, -0.88125},
                    animation_speed = animation_speed,
                    max_advance = 1,
                    priority = "low",
                    stripes =
                    {
                        {
                            filename = "__aai-vehicles-miner__/graphics/entity/miner/miner"..real_suffix.."-main-b.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                        {
                            filename = "__aai-vehicles-miner__/graphics/entity/miner/miner"..real_suffix.."-main-a.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        }
                    }
                },
                {
                    width = 2024/8,
                    height = 1744/8,
                    frame_count = 2,
                    apply_runtime_tint = true,
                    direction_count = 64,
                    shift = {0.0, -0.88125},
                    animation_speed = animation_speed,
                    max_advance = 1,
                    priority = "low",
                    line_length = 8,
                    stripes =
                    {
                        {
                            filename = "__aai-vehicles-miner__/graphics/entity/miner/miner"..real_suffix.."-mask-b.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                        {
                            filename = "__aai-vehicles-miner__/graphics/entity/miner/miner"..real_suffix.."-mask-a.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        }
                    }
                },
                {
                    width = 2048/8,
                    height = 1344/8,
                    frame_count = 2,
                    draw_as_shadow = true,
                    direction_count = 64,
                    shift = {0.9, 0.15},
                    animation_speed = animation_speed,
                    max_advance = 1,
                    priority = "low",
                    scale = 4448/2/2048,-- shadow was downscaled to fit in 2048
                    stripes =
                    {
                        {
                            filename = "__aai-vehicles-miner__/graphics/entity/miner/miner"..real_suffix.."-shadow-b.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                        {
                            filename = "__aai-vehicles-miner__/graphics/entity/miner/miner"..real_suffix.."-shadow-a.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                    }
                }
            }
        },
        stop_trigger_speed = 0.2,
        sound_no_fuel = { { filename = "__base__/sound/fight/tank-no-fuel-1.ogg", volume = 0.6 }, },
        stop_trigger = { { type = "play-sound", sound = { { filename = "__base__/sound/car-breaks.ogg", volume = 0.6 }, } }, },
        sound_minimum_speed = 0.15;
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound = { filename = "__base__/sound/fight/tank-engine.ogg", volume = 0.6 },
            activate_sound = { filename = "__base__/sound/fight/tank-engine-start.ogg", volume = 0.6 },
            deactivate_sound = { filename = "__base__/sound/fight/tank-engine-stop.ogg", volume = 0.6 },
            match_speed_to_activity = true,
        },
        open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
        close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
        inventory_size = inventory_size[i],
    }

    --vehicle.animation = data.raw.car.car.animation
    data:extend{vehicle}

end
