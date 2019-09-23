------------------------------------------------------------------------------------------------------------------------------------------------------

-- less is more
data.raw["utility-constants"]["default"].item_outline_radius = 8
data.raw["utility-constants"]["default"].item_outline_color = { 0, 0, 0, 0.75 }
-- data.raw["utility-constants"]["default"].disabled_recipe_slot_tint = {1,1,1,1}
data.raw["gui-style"]["default"].tooltip_title_label.minimal_width = 20

data.raw["utility-sprites"]["default"].slot_icon_module.filename = get_icon_path("module-slot")
data.raw["utility-sprites"]["default"].slot_icon_module.height = 64
data.raw["utility-sprites"]["default"].slot_icon_module.width = 64


------------------------------------------------------------------------------------------------------------------------------------------------------

-- custom styles

local function add_styles(styles)
    local default_styles = data.raw["gui-style"]["default"]
    for name, style in pairs(styles) do
        default_styles[name] = style
    end
end

add_styles({
	display_frame = {
		type = "frame_style",
		parent = "frame",
		bottom_padding = 8,
	},
    display_buttons = {
        type = "table_style",
        horizontal_spacing = 0,
        vertical_spacing = 0,
    },
	display_button_selected = {
		type = "button_style",
		parent = "quick_bar_slot_button",
		default_graphical_set = data.raw["gui-style"]["default"]["quick_bar_slot_button"].selected_graphical_set
	},
	display_fake_header = {
		type = "frame_style",
		height = 24,
		graphical_set = data.raw["gui-style"]["default"]["draggable_space"].graphical_set,
		use_header_filler = false,
		horizontally_stretchable = "on",
		vertical_align = "center",
		alignment = "right",
		left_margin = data.raw["gui-style"]["default"]["draggable_space"].left_margin,
		right_margin = data.raw["gui-style"]["default"]["draggable_space"].right_margin,
	},
	display_small_button = {
		type = "button_style",
		parent = "close_button",
		left_margin = 1,
		right_margin = 1,
	},
	display_large_button = {
		type = "button_style",
		parent = "close_button",
		left_margin = 1,
		right_margin = 1,
		width = 40,
		height = 40,
		padding = 0,
	},
	display_map_button = {
		type = "button_style",
		parent = "display_large_button",
		left_click_sound = {{ filename = DIR.sound_path.."/map-marker-place.ogg", volume = 1 }},
	},
	display_map_button_active = {
		type = "button_style",
		parent = "display_large_button",
		left_click_sound = {{ filename = DIR.sound_path.."/map-marker-remove.ogg", volume = 1 }},
		default_graphical_set = data.raw["gui-style"]["default"]["frame_button"].clicked_graphical_set,
	}
})

-- button sprites, genman sounds, dummy items for genman icons

data:extend({
	{
		 type = "sprite",
		 name = "display-circuit-network",
		 filename = get_icon_path("circuit-network-white",32),
		 priority = "extra-high",
		 width = 32,
		 height = 32,
	},
	{
		 type = "sprite",
		 name = "display-map-marker",
		 filename = get_icon_path("map-marker",64),
		 priority = "extra-high",
		 width = 64,
		 height = 64,
	},
	{
		 type = "sprite",
		 name = "display-alpha",
		 filename = get_icon_path("alpha",32),
		 priority = "extra-high",
		 width = 32,
		 height = 32,
	},
    {
		type = "sound",
		name = "genman-inventory",
		variations = {
			filename = DIR.sound_path.."/genman-inventory.ogg",
			volume = 1
		}
    },
    {
		type = "sound",
		name = "genman-warning",
		variations = {
			filename = DIR.sound_path.."/genman-warning.ogg",
			volume = 1
		}
    },	
    {
		type = "sprite",
		name = "fuel-icon-red",
		filename = get_icon_path("fuel-icon-red"),
		priority = "extra-high",
		width = 64,
		height = 64,
    },	
    {
		type = "sprite",
		name = "fuel-icon-yellow",
		filename = get_icon_path("fuel-icon-yellow"),
		priority = "extra-high",
		width = 64,
		height = 64,
    },	
    {
		type = "sprite",
		name = "fuel-icon-inventory",
		filename = get_icon_path("fuel-icon-inventory"),
		priority = "extra-high",
		width = 64,
		height = 64,
    },	
    {
		type = "sprite",
		name = "tank-pollution",
		filename = get_icon_path("pollution"),
		priority = "extra-high",
		width = 64,
		height = 64,
    },	
})

------------------------------------------------------------------------------------------------------------------------------------------------------
