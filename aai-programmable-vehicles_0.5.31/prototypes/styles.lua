data.raw["gui-style"]["default"]["aai_vehicles_units-scroll-pane"] =
{
    type = "scroll_pane_style",
    parent = "scroll_pane",
    vertical_scroll_bar_spacing = 1,
    maximal_height = 500
}
data.raw["gui-style"]["default"]["aai_vehicles_unit-frame"] =
{
    type = "frame_style",
    parent = "frame",
    scalable = false,
    scale = 1,
    top_padding = 1,
    bottom_padding = 1,
}
data.raw["gui-style"]["default"]["aai_vehicles_unit-number-label"] =
{
    type = "label_style",
    parent = "label",
    minimal_width = 28,
    top_padding = 5,
    scale = 0.75,
    scalable = false,
    align = "left",
    font = "default-semibold",
}
data.raw["gui-style"]["default"]["aai_vehicles_unit-button-fixed"] =
{
    type = "button_style",
    parent = "button",
    minimal_width = 38,
    minimal_height = 38,
    top_padding = 0,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    scale = 1,
    scalable = false,
}
data.raw["gui-style"]["default"]["aai_vehicles_frame-selected"] =
{
    type = "frame_style",
    parent = "frame",
    scalable = false,
    scale = 1,
    top_padding = 1,
    bottom_padding = 1,
    graphical_set = {
      corner_size = {
        3,
        3
      },
      filename = "__core__/graphics/gui.png",
      load_in_minimal_mode = true,
      position = {
        0,
        8
      },
      priority = "extra-high-no-scale",
      type = "composition"
    },
    default_graphical_set = {
      corner_size = {
        3,
        3
      },
      filename = "__core__/graphics/gui.png",
      load_in_minimal_mode = true,
      position = {
        0,
        8
      },
      priority = "extra-high-no-scale",
      type = "composition"
    },
}

data.raw["gui-style"]["default"]["aai_vehicles_waypoint_button_small"] =
{
    type = "button_style",
    parent = "button",
    minimal_width = 25,
    minimal_height = 25,
    width = 25,
    height = 25,
    padding = 0,
    top_padding = 0,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    scale = 0.5,
    scalable = false,
}

data.raw["gui-style"]["default"]["aai_vehicles_waypoint_label"] =
{
    type = "label_style",
    parent = "label",
    minimal_width = 200,
    maximal_width = 200,
    align = "left",
}

data.raw["gui-style"]["default"]["aai_vehicles_waypoint_instructions_label"] =
{
    type = "label_style",
    parent = "label",
    minimal_width = 300,
    maximal_width = 300,
    single_line = false,
    align = "left",
}
