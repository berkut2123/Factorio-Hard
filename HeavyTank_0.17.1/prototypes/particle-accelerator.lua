data:extend({

	{
		type = "recipe-category",
		name = "ht-accelerator"
	},
---------------------item---------------------
   {
    type = "item",
    name = "ht-particle-accelerator",
    icon = "__HeavyTank__/graphics/icons/explosives.png",
    icon_size = 32,
    place_result = "ht-particle-accelerator",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
  
  {
    type = "item",
    name = "ht-anti-matter",
    icon = "__HeavyTank__/graphics/entities/1/shells32.png",
    icon_size = 32,
    --place_result = "ht-particle-accelerator",
    ----flags = {"goes-to-main-inventory"},
    subgroup = "heavy-tank",
    order = "d[active-defense]-a[personal-laser-defense-equipment]",
    stack_size = 20
  },
---------------------recipe---------------------

{
	type = "recipe",
	name = "ht-particle-accelerator",
	ingredients ={{"laser-turret", 10},
				  {"flying-robot-frame", 5},
				  {"substation", 3},
				  {"speed-module", 5},
				  {"productivity-module", 5},},
	enabled = false,
	subgroup = "ht_equipment",
	order = "f",
	energy_required = 1,
	results={{type="item", name="ht-particle-accelerator", amount=1},}
},
{
	type = "recipe",
	name = "ht-anti-matter",
	category = "ht-accelerator",
	ingredients ={},
	enabled = false,
	subgroup = "ht_equipment",
	order = "f",
	energy_required = 1,
	results={{type="item", name="ht-anti-matter", amount=1},}
},






 {
    type = "assembling-machine",
    name = "ht-particle-accelerator",
    icon = "__HeavyTank__/graphics/icons/explosives.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ht-particle-accelerator"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {{type = "fire", percent = 70}},


	collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},

	animation =
	{
		filename = "__HeavyTank__/graphics/entities/1/acelerador.png",
		priority = "high",
        width = 1000,
        height = 800,
		scale = 0.5,
        shift = {0.96, 0},
		frame_count = 1,

	},
	
	-- working_visualisations =
	-- {

		-- animation =
		-- {
			-- filename = "__Bio_Industries__/graphics/entities/biofarm/Bio_Farm_Working.png",
			-- priority = "high",
			-- width = 348,
			-- height = 288,
			-- shift = {0.96, 0},
			-- frame_count = 1,
		-- },
	-- },
    crafting_categories = {"ht-accelerator"},
    crafting_speed = 1,
    energy_source =

	{
      type = "electric",
      usage_priority = "primary-input",
	  drain = "50kW",
	  emissions = 0, 
    },	

    energy_usage = "500MW",
    ingredient_count = 3,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	module_specification =
    {
      module_slots = 0
    },
	--allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  },



})

