-- Establish patch start-end pieces
basic_belt_animation_set = 
{
	animation_set =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
		priority = "extra-high",
		width = 64,
		height = 64,
		frame_count = 16,
		direction_count = 20,
		hr_version =
		{
			filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 16,
			direction_count = 20
		}
	},

	east_index = 1,
	west_index = 2,
	north_index = 3,
	south_index = 4,

	east_to_north_index = 5,
	north_to_east_index = 6,

	west_to_north_index = 7,
	north_to_west_index = 8,

	south_to_east_index = 9,
	east_to_south_index = 10,

	south_to_west_index = 11,
	west_to_south_index = 12,

	starting_south_index = 13,
	ending_south_index = 14,

	starting_west_index = 15,
	ending_west_index = 16,

	starting_north_index = 17,
	ending_north_index = 18,

	starting_east_index = 19,
	ending_east_index = 20,

	--ending_patch = ending_patch_prototype
	--ends_with_stopper = false
	}


-- Establish generic end pieces
basic_belt_horizontal =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		scale = 0.5,
		frame_count = 16
	}
}
basic_belt_vertical =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	y = 64,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		frame_count = 16,
		scale = 0.5,
		y = 128
	}
}
basic_belt_ending_top =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	y = 64*2,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		frame_count = 16,
		y = 128*2,
		scale = 0.5
	}
}
basic_belt_ending_bottom =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	y = 64*3,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		frame_count = 16,
		y = 128*3,
		scale = 0.5
	}
}
basic_belt_ending_side =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	y = 64*4,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		frame_count = 16,
		y = 128*4,
		scale = 0.5
	}
}

basic_belt_starting_top =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	y = 64*5,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		frame_count = 16,
		y = 128*5,
		scale = 0.5
	}
}
basic_belt_starting_bottom =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	y = 64*6,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		frame_count = 16,
		y = 128*6,
		scale = 0.5
	}
}
basic_belt_starting_side =
{
	filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/black-transport-belt.png",
	priority = "extra-high",
	width = 64,
	height = 64,
	frame_count = 16,
	y = 64*7,
	hr_version =
	{
		filename = "__bob-basic-belt-reskin__/graphics/entity/basic-transport-belt/hr-black-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		frame_count = 16,
		y = 128*7,
		scale = 0.5
	}
}