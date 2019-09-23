

local function rfItem(n)
	local item = {
		type = "item",
		name = "reverse-factory-"..n,
		icon = "__reverse-factory__/graphics/item/reverse-factory-"..n..".png",
		icon_size = 32,
		subgroup = "smelting-machine",
		order = "d[reverse-factory]-"..n,
		place_result = "reverse-factory-"..n,
		stack_size = 10
	}
	if mods["ShinyBobGFX"] then
		if settings.startup["add-powerbars"].value then
			item.icons = {
				{icon = "__reverse-factory__/graphics/item/reverse-factory-"..n..".png"},
				{icon = "__reverse-factory__/graphics/icon/rf-bar-"..n..".png"},
			}
		end
	end

	return item
end


local function rfRecipe(n)
	local recipe = {
		type = "recipe",
		name = "reverse-factory-"..n,
		energy_required = 5,
		enabled = "false",
		ingredients = 
		{
			{"iron-plate", 10},
			{"electronic-circuit", 5},
		},
		result = "reverse-factory-"..n
	}
	if n > 1 then
		table.insert(recipe.ingredients,{"reverse-factory-"..(n-1),1})
	end
	
	return recipe
end


local function rfEntity(n)
	local entity =
	{
		type = "furnace",
		name = "reverse-factory-"..n,
		icon = "__reverse-factory__/graphics/item/reverse-factory-"..n..".png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {
			mining_time = 1,
			result = "reverse-factory-"..n
		},
		--Starts at 150 for t1, increases to 300 for t4
		max_health = (100 + 50*n),
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		light = {
			intensity = 1,
			size = 10
		},
		resistances = {
			{
			  type = "fire",
			  percent = 80
			}
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		--Module slots set to 1,3,4,6 (T1 much weaker than T2, and T4 much stronger than t3)
		module_specification = {
			module_slots = math.floor(1.5*n),
			module_info_icon_shift = {0, 0.8},
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		crafting_categories = {"recycle-products"},
		result_inventory_size = 4,
		crafting_speed = n,
		--Starts at 125kw for t1, ends at 275kw for t4
		energy_usage = (75+50*n).."kW",
		source_inventory_size = 1,
		fast_replaceable_group = "reverse-factory",
	    energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 5-n
		},
		working_sound = {
			sound =
			{
				filename = "__base__/sound/electric-furnace.ogg",
				volume = 0.7
			},
			apparent_volume = 1.5
		},
	    animation = {
		  layers =
		  {
			{
			filename = "__reverse-factory__/graphics/entity/reverse-factory-"..n..".png",
			priority = "high",
			width = 129,
			height = 100,
			frame_count = 1,
			shift = {0.421875, 0},
			hr_version =
			  {
				filename = "__reverse-factory__/graphics/entity/hr-reverse-factory-"..n..".png",
				priority = "high",
				width = 239,
				height = 219,
				frame_count = 1,
				shift = util.by_pixel(0.75, 5.75),
				scale = 0.5
			  }
			},
			{
			  filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
			  priority = "high",
			  width = 129,
			  height = 100,
			  frame_count = 1,
			  shift = {0.421875, 0},
			  draw_as_shadow = true,
			  hr_version =
			  {
				filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
				priority = "high",
				width = 227,
				height = 171,
				frame_count = 1,
				draw_as_shadow = true,
				shift = util.by_pixel(11.25, 7.75),
				scale = 0.5
			  }
			}
		  }
		},
		working_visualisations = {
			{
				animation =
				{
					filename = "__reverse-factory__/graphics/entity/reverse-factory-heater.png",
					priority = "high",
					width = 25,
					height = 15,
					frame_count = 12,
					animation_speed = 1/n,
					shift = {0.015625, 0.890625},
					hr_version =
					  {
						filename = "__reverse-factory__/graphics/entity/hr-reverse-factory-heater.png",
						priority = "high",
						width = 60,
						height = 56,
						frame_count = 12,
						animation_speed = 1/n,
						shift = util.by_pixel(1.75, 32.75),
						scale = 0.5
					  }
				},
				light =
				{
					intensity = 0.4,
					size = 6, shift = {0.0, 1.0}
				}
			},
			{
				animation =
				{
					filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
					priority = "high",
					width = 19,
					height = 13,
					frame_count = 4,
					animation_speed = 1/n,
					shift = {-0.671875, -0.640625},
					hr_version =
					{
					  filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
					  priority = "high",
					  width = 37,
					  height = 25,
					  frame_count = 4,
					  animation_speed = 1/n,
					  shift = util.by_pixel(-20.5, -18.5),
					  scale = 0.5
				  }
				}
			},
			{
				animation =
				{
					filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
					priority = "high",
					width = 12,
					height = 9,
					frame_count = 4,
					animation_speed = 1/n,
					shift = {0.0625, -1.234375},
					hr_version =
				   {
					  filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
					  priority = "high",
					  width = 23,
					  height = 15,
					  frame_count = 4,
					  animation_speed = 1/n,
					  shift = util.by_pixel(3.5, -38),
					  scale = 0.5
					}
				}
			}
		},
	}
	if n==1 then
		entity.crafting_categories = {"recycle-products"}
	elseif n==2 then
		entity.next_upgrade = "reverse-factory-"..(n-1)
		entity.crafting_categories = {"recycle-products", "recycle-intermediates"}
	elseif n==3 then
		entity.next_upgrade = "reverse-factory-"..(n-1)
		entity.crafting_categories = {"recycle-products", "recycle-intermediates", "recycle-with-fluids"}
		entity.fluid_boxes = {
			{
				production_type = "output",
				pipe_picture = rfpipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = rfpipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, -2} }}
			}
		}
	elseif n==4 then
		entity.next_upgrade = "reverse-factory-"..(n-1)
		entity.crafting_categories = {"recycle-products", "recycle-intermediates", "recycle-with-fluids", "recycle-productivity"}
		entity.fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = rfpipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, 2} }}
			},
			{
				production_type = "output",
				pipe_picture = rfpipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = rfpipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, -2} }}
			}
		}
	end
	return entity
end


local function rfTech(n)
	local tech = {
		type = "technology",
		name = "reverse-factory-"..n,
		icon = "__reverse-factory__/graphics/technology/reverse-factory.png",
		icon_size = 128,
		prerequisites = {},
		effects =
		{
			{
			  type = "unlock-recipe",
			  recipe = "reverse-factory-"..n,
			}
		},		 
		unit =
		{
			count = 80,
			ingredients =
			{
				{"automation-science-pack", 1},
			},
			time = 15
		}
	}
	if n > 1 then
		tech.prerequisites = {"reverse-factory-"..(n-1)}
	end

	return tech
end


for n=1,4 do
	data:extend({rfItem(n)})
	data:extend({rfRecipe(n)})
	data:extend({rfEntity(n)})
	data:extend({rfTech(n)})
end

