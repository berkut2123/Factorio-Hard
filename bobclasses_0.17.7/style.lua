local function glow_function(tint_value)
  return
  {
    position = {200, 128},
    corner_size = 8,
    tint = tint_value,
    draw_type = "outer"
  }
end

local shadow = glow_function({15, 7, 3, 100})
local glow = glow_function({225, 177, 106, 255})
local glow_green = glow_function({135, 216, 139, 128})
local glow_red = glow_function({254, 90, 90, 128})
local glow_blue = glow_function({90, 200, 250, 128})



data.raw["gui-style"].default.bob_button_flow = 
{
  type = "horizontal_flow_style",
  parent = "horizontal_flow",
  horizontally_stretchable = "on",
}

data.raw["gui-style"].default.bob_button_filler =
{
  type = "frame_style",
  graphical_set = data.raw["gui-style"].default.draggable_space.graphical_set,
  left_margin = data.raw["gui-style"].default.draggable_space.left_margin,
  right_margin = data.raw["gui-style"].default.draggable_space.right_margin,
  height = 32,
  horizontally_stretchable = "on",
}



data.raw["gui-style"].default.green_button =
{
  type = "button_style",
  parent = "button",
  default_graphical_set =
  {
    base = {position = {68, 17}, corner_size = 8},
    shadow = shadow
  },
  hovered_graphical_set =
  {
    base = {position = {102, 17}, corner_size = 8},
    shadow = shadow,
    glow = glow_green
  },
  clicked_graphical_set =
  {
    base = {position = {119, 17}, corner_size = 8},
    shadow = shadow
  },
  disabled_graphical_set =
  {
    base = {position = {85, 17}, corner_size = 8},
    shadow = shadow
  }
}

data.raw["gui-style"].default.blue_button =
{
  type = "button_style",
  parent = "button",
  default_graphical_set =
  {
    base = {position = {329, 48}, corner_size = 8},
    shadow = shadow
  },
  hovered_graphical_set =
  {
    base = {position = {346, 48}, corner_size = 8},
    shadow = shadow,
    glow = glow_blue
  },
  clicked_graphical_set =
  {
    base = {position = {363, 48}, corner_size = 8},
    shadow = shadow
  },
}

data.raw["gui-style"].default.selected_button =
{
  type = "button_style",
  parent = "button",
  default_graphical_set =
  {
    base = data.raw["gui-style"].default.button.hovered_graphical_set.base,
    shadow = shadow
  }
}


data.raw["gui-style"].default.green_mod_gui_button =
{
  type = "button_style",
  parent = "green_button",
  minimal_width = 36,
  height = 36,
  padding = 1
}

data.raw["gui-style"].default.red_mod_gui_button =
{
  type = "button_style",
  parent = "red_button",
  minimal_width = 36,
  height = 36,
  padding = 1
}

data.raw["gui-style"].default.blue_mod_gui_button =
{
  type = "button_style",
  parent = "blue_button",
  minimal_width = 36,
  height = 36,
  padding = 1
}

data.raw["gui-style"].default.selected_mod_gui_button =
{
  type = "button_style",
  parent = "selected_button",
  minimal_width = 36,
  height = 36,
  padding = 1
}


data.raw["gui-style"].default.mod_gui_button_28 =
{
  type = "button_style",
  parent = "mod_gui_button",
  size = {28,28}
}

data.raw["gui-style"].default.green_mod_gui_button_28 =
{
  type = "button_style",
  parent = "green_mod_gui_button",
  size = {28,28}
}

data.raw["gui-style"].default.red_mod_gui_button_28 =
{
  type = "button_style",
  parent = "red_mod_gui_button",
  size = {28,28}
}

data.raw["gui-style"].default.blue_mod_gui_button_28 =
{
  type = "button_style",
  parent = "blue_mod_gui_button",
  size = {28,28}
}

data.raw["gui-style"].default.selected_mod_gui_button_28 =
{
  type = "button_style",
  parent = "selected_mod_gui_button",
  size = {28,28}
}

