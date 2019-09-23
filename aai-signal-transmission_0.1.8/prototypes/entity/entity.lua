--luacheck: no global
local scanner_selection_box = {{-0.9, -1.4}, {0.9, 1.4}}
local scanner_collision_box = {{-1.1, -1.1}, {1.1, 1.1}}
local controller_selection_box = {{-1.4, -1.4}, {1.4, 1.4}}
local controller_collision_box = {{-1.1, -1.1}, {1.1, 1.1}}

local blank = {
    filename = "__aai-signal-transmission__/graphics/blank.png",
    width = 1,
    height = 1,
    frame_count = 1,
    direction_count = 1
}

function struct_extension_sprite()
    return {
        filename = "__aai-signal-transmission__/graphics/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1,
        shift = {0, 0},
    }
end

function struct_extension_led_sprite(mode)
  return {
      filename = "__base__/graphics/entity/combinator/activity-leds/constant-combinator-LED-N.png",
      width = 11,
      height = 6,
      frame_count = 1,
      shift = {-0.32, 0.20625},
  }
end

function struct_extension_led_offset(mode)
    return {0, 0}
end

local sender_connections = {
    shadow =
    {
        green = {-1.5, 2.2},
        red = {-1.5, 2.2},
    },
    wire =
    {
        green = {-2, 1.7},
        red = {-2, 1.7},
    }
}

local receiver_connections = {
    shadow =
    {
        green = {-2.5, 4.2},
        red = {-2.7, 4},
    },
    wire =
    {
        green = {-3.5, 3.2},
        red = {-3.7, 3},
    }
}

function struct_extension_connections()
  return {
      shadow =
      {
          green = {0.3125, 0.2},
          red = {0.35, 0.65},
      },
      wire =
      {
          green = {0.13125, -0.12},
          red = {0.13125, 0.22},
      }
  }
end


data:extend({

  {
      type = "roboport",
      name = "aai-signal-sender",
      icon = "__aai-signal-transmission__/graphics/icons/signal-sender.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {mining_time = 0.2, result = "aai-signal-sender"},
      max_health = 400,
      corpse = "big-remnants",
      collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -2.9}, {2.5, 2.5}},
      dying_explosion = "medium-explosion",
      energy_source =
      {
          type = "electric",
          usage_priority = "secondary-input",
          input_flow_limit = "20MW",
          buffer_capacity = "5MJ"
      },
      recharge_minimum = "5MJ",
      energy_usage = "10MW",
      charging_energy = "5MW",
      logistics_radius = 0,
      construction_radius = 0,
      charge_approach_distance = 0,
      robot_slots_count = 0,
      material_slots_count = 0,
      base = blank,
      base_patch = blank,
      base_animation = {
        layers =
        {
          {
            filename = "__aai-signal-transmission__/graphics/entity/signal-sender/signal-sender.png",
            priority = "high",
            width = 2880/8/2,
            height = 3232/8/2,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(6, -13),
            animation_speed = 0.18,
            hr_version = {
              filename = "__aai-signal-transmission__/graphics/entity/signal-sender/hr-signal-sender.png",
              priority = "high",
              width = 2880/8,
              height = 3232/8,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel(6, -13),
              animation_speed = 0.18,
              scale = 0.5,
            }
          },
          {
            draw_as_shadow = true,
            filename = "__aai-signal-transmission__/graphics/entity/signal-sender/signal-sender-shadow.png",
            priority = "high",
            width = 3712/8/2,
            height = 2224/8/2,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(33, 10),
            hr_version = {
              draw_as_shadow = true,
              filename = "__aai-signal-transmission__/graphics/entity/signal-sender/hr-signal-sender-shadow.png",
              priority = "high",
              width = 3712/8,
              height = 2224/8,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel(33, 10),
              scale = 0.5,
            }
          },
        },
      },
      door_animation_up = blank,
      door_animation_down = blank,
      recharging_animation = blank,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
          sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
          max_sounds_per_type = 3,
          audible_distance_modifier = 0.5,
          probability = 1 / (15 * 60) -- average pause between the sound is 5 seconds
      },
      request_to_open_door_timeout = 15,
      spawn_and_station_height = -0.1,
      draw_logistic_radius_visualization = false,
      draw_construction_radius_visualization = false,
      open_door_trigger_effect =
      {
          {
              type = "play-sound",
              sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
          },
      },
      close_door_trigger_effect =
      {
          {
              type = "play-sound",
              sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
          },
      },
      circuit_wire_connection_point = sender_connections,
      --circuit_connector_sprites = get_circuit_connector_sprites({0.59375, 1.3125}, nil, 18),
      circuit_wire_max_distance = 10,
  },
  {
      type = "roboport",
      name = "aai-signal-receiver",
      icon = "__aai-signal-transmission__/graphics/icons/signal-receiver.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "aai-signal-receiver"},
      max_health = 800,
      corpse = "big-remnants",
      collision_box = {{-4.3, -4.3}, {4.3, 4.3}},
      selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
      drawing_box = {{-4.5, -4.9}, {4.5, 4.5}},
      dying_explosion = "medium-explosion",
      energy_source =
      {
          type = "electric",
          usage_priority = "secondary-input",
          input_flow_limit = "4MW",
          buffer_capacity = "1MJ"
      },
      recharge_minimum = "1MJ",
      energy_usage = "2MW",
      charging_energy = "1MW",
      logistics_radius = 0,
      construction_radius = 0,
      charge_approach_distance = 0,
      robot_slots_count = 0,
      material_slots_count = 0,
      base = blank,
      base_patch = blank,
      base_animation = {
        layers =
        {
          {
            filename = "__aai-signal-transmission__/graphics/entity/signal-receiver/signal-receiver.png",
            priority = "high",
            width = 4688/8/2,
            height = 5440/8/2,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(1, -26),
            animation_speed = 0.15,
            hr_version = {
              filename = "__aai-signal-transmission__/graphics/entity/signal-receiver/hr-signal-receiver.png",
              priority = "high",
              width = 4688/8,
              height = 5440/8,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel(1, -26),
              animation_speed = 0.15,
              scale = 0.5,
            }
          },
          {
            draw_as_shadow = true,
            filename = "__aai-signal-transmission__/graphics/entity/signal-receiver/signal-receiver-shadow.png",
            priority = "high",
            width = 5440/8/2,
            height = 4800/8/2,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel(25, 19),
            hr_version = {
              draw_as_shadow = true,
              filename = "__aai-signal-transmission__/graphics/entity/signal-receiver/hr-signal-receiver-shadow.png",
              priority = "high",
              width = 5440/8,
              height = 4800/8,
              frame_count = 64,
              line_length = 8,
              shift = util.by_pixel(25, 19),
              scale = 0.5,
            }
          },
        },
      },
      door_animation_up = blank,
      door_animation_down = blank,
      recharging_animation = blank,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
          sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
          max_sounds_per_type = 3,
          audible_distance_modifier = 0.5,
          probability = 1 / (15 * 60) -- average pause between the sound is 5 seconds
      },
      request_to_open_door_timeout = 15,
      spawn_and_station_height = -0.1,
      draw_logistic_radius_visualization = false,
      draw_construction_radius_visualization = false,
      open_door_trigger_effect =
      {
          {
              type = "play-sound",
              sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
          },
      },
      close_door_trigger_effect =
      {
          {
              type = "play-sound",
              sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
          },
      },
      circuit_wire_connection_point = receiver_connections,
      --circuit_connector_sprites = get_circuit_connector_sprites({0.59375, 1.3125}, nil, 18),
      circuit_wire_max_distance = 10,
  },
  {
      type = "constant-combinator",
      name = "aai-signal-receiver-combinator",
      icon = "__aai-signal-transmission__/graphics/blank.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-deconstructable", "not-repairable"},
      order = "y",
      max_health = 10000,
      healing_per_tick = 10000,
      corpse = "small-remnants",
      collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
      collision_mask = {"not-colliding-with-itself"},
      selection_box = {{-0.5, -0.9}, {0.5, 0.9}},
      selectable_in_game = false,
      item_slot_count = 1000,
      sprites =
      {
          north = struct_extension_sprite("output"),
          east = struct_extension_sprite("output"),
          south = struct_extension_sprite("output"),
          west = struct_extension_sprite("output")
      },
      activity_led_sprites =
      {
          north = struct_extension_led_sprite("output"),
          east = struct_extension_led_sprite("output"),
          south = struct_extension_led_sprite("output"),
          west = struct_extension_led_sprite("output")
      },
      activity_led_light =
      {
          intensity = 0.8,
          size = 1,
      },
      activity_led_light_offsets =
      {
          struct_extension_led_offset("output"),
          struct_extension_led_offset("output"),
          struct_extension_led_offset("output"),
          struct_extension_led_offset("output")
      },
      circuit_wire_connection_points =
      {
          receiver_connections,
          receiver_connections,
          receiver_connections,
          receiver_connections
      },
      circuit_wire_max_distance = 1
  },
})
