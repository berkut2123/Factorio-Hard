data:extend({
  {
    type = "custom-input",
    name = "quicksearch-open",
    key_sequence = "SHIFT+F",
    consuming = "none"
  },
  {
    type = "font",
    name = "font-quicksearch-button",
    from = "default-bold",
    size = 14
  }
})

-- GUI hierarchy:
-- * Window
-- |-- Inputarea
-- |-- matchFlow (horizontal)
--    |-- playerMatchFrame
--        |--playerMatchGrid
--    |-- chestMatchFrame
--        |--chestMatchGrid
data.raw["gui-style"].default["quicksearch-window-style"] =
{
	type = "frame_style",
  parent = 'frame',
  top_padding = 0,
  right_padding = 0,
  bottom_padding = 0,
  left_padding = 0,
  scalable = false,
}

data.raw["gui-style"].default["quicksearch-button-style"] =
{
	type = "button_style",
	parent = "button",
	font = "font-quicksearch-button",
	align = "center",
  top_padding = 2,
  right_padding = 2,
  bottom_padding = 2,
  left_padding = 2,
	default_font_color = {r = 1, g = 0.707, b = 0.12},
	hovered_font_color = {r = 1, g = 1, b = 1},
	clicked_font_color = {r = 1, g = 0.707, b = 0.12}
}

data.raw["gui-style"].default["quicksearch-match-horizontal-flow-style"] =
{
  type = "horizontal_flow_style",
  top_padding = 0,
  right_padding = 0,
  bottom_padding = 0,
  left_padding = 0,
  horizontal_spacing = 0,
  vertical_spacing = 0,
  resize_row_to_width = true,
  resize_to_row_height = true,
  scalable = false,
}

data.raw["gui-style"].default["quicksearch-match-vertical-flow-style"] =
{
  type = "vertical_flow_style",
  top_padding = 0,
  right_padding = 0,
  bottom_padding = 0,
  left_padding = 0,
  horizontal_spacing = 0,
  vertical_spacing = 0,
  resize_row_to_width = true,
  resize_to_row_height = true,
  scalable = false,
}

data.raw["gui-style"].default["quicksearch-match-frame-style"] =
{
  type = "frame_style",
  parent = 'frame',
  title_top_padding = 0,
  title_right_padding = 0,
  title_bottom_padding = 0,
  title_left_padding = 0,
--  resize_row_to_width = true,
  resize_to_row_height = true,
  scalable = false,
}

data.raw["gui-style"].default["quicksearch-match-scrollpane-style"] =
{
  type = 'scroll_pane_style',
  parent = 'scroll_pane',
  top_padding = 0,
  left_padding = 0,
  right_padding = 0,
--  maximal_width = 36*10+4,
  maximal_height = 36*10+4,
}

data.raw["gui-style"].default["quicksearch-match-grid-style"] =
{
  type = "table_style",
  cell_padding = 0,
  horizontal_spacing = 2,
  vertical_spacing = 2,
  scalable = false,
}

data.raw["gui-style"].default["quicksearch-match-item-style"] =
{
  type = "button_style",
  parent = "slot_button",
  font = "default-semibold",
  height = 36,
  width = 36,
  scalable = false,
}

function monolithIcon(filename, size)
  return {
    filename = filename,
    priority = "extra-high-no-scale",
    align = "center",
    size = size,
    scale = 1,
  }
end

data.raw["gui-style"].default["quicksearch-match-item-favorite-style"] =
{
  type = "button_style",
  parent = "slot_button",
  font = "default-semibold",
  height = 36,
  width = 36,
  scalable = false,

  default_graphical_set = monolithIcon("__Quicksearch__/assets/favorite.png", 36),
  hovered_graphical_set = monolithIcon("__Quicksearch__/assets/favorite-hovered.png", 36),
  clicked_graphical_set = monolithIcon("__Quicksearch__/assets/favorite-clicked.png", 36),
}
