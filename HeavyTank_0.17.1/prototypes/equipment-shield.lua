data:extend({

--------------------------------vehicle scrap armor
  {
    type = "energy-shield-equipment",
    name = "scrap-armor-unworn",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/scrap_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "500KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 500,
	energy_per_shield = "1kJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
----------------------------
  {
    type = "energy-shield-equipment",
    name = "scrap-armor",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/scrap_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "500KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 500,
	energy_per_shield = "1kJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
    {
    type = "item",
    name = "scrap-armor-unworn",
    icon = "__HeavyTank__/graphics/equipments/shield/scrap_armor_iconV.png",
    icon_size = 32,
    placed_as_equipment_result = "scrap-armor-unworn",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield_rdy",
    order = "d[chargepack]-a[chargepack-1-small]",
    stack_size = 5,
    default_request_amount = 4
},
---------------
{
    type = "item",
    name = "scrap-armor",
    icon = "__HeavyTank__/graphics/equipments/shield/scrap_armor_icon.png",
    icon_size = 32,
    placed_as_equipment_result = "scrap-armor",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "scrap-armor-unworn",
	ingredients =
	{
		{"scrap-armor", 1},
		{"repair-pack", 1},
		{"wood", 25},
	},
	enabled = false,
	subgroup = "ht_shield_rdy",
	order = "a",
	energy_required = 10,
	results=
	{
	  {type="item", name="scrap-armor-unworn", amount=1},
	}
},
----------------
{
	type = "recipe",
	name = "scrap-armor",
	ingredients =
	{
		{"iron-plate", 100},
		{"wood", 100},
	},
	enabled = false,
	subgroup = "ht_shield",
	order = "a",
	energy_required = 3,
	results=
	{
	  {type="item", name="scrap-armor", amount=1},
	}
},
	----------------
	--------------------------------vehicle steel armor
  {
    type = "energy-shield-equipment",
    name = "steel-armor-unworn",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/steel_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1000KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 1000,
	energy_per_shield = "1kJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
----------------------------
  {
    type = "energy-shield-equipment",
    name = "steel-armor",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/steel_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1000KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 1000,
	energy_per_shield = "1kJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
    {
    type = "item",
    name = "steel-armor-unworn",
    icon = "__HeavyTank__/graphics/equipments/shield/steel_armor_iconV.png",
    icon_size = 32,
    placed_as_equipment_result = "steel-armor-unworn",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield_rdy",
    order = "d[chargepack]-a[chargepack-1-small]",
    stack_size = 5,
    default_request_amount = 4
},
---------------
{
    type = "item",
    name = "steel-armor",
    icon = "__HeavyTank__/graphics/equipments/shield/steel_armor_icon.png",
    icon_size = 32,
    placed_as_equipment_result = "steel-armor",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "steel-armor-unworn",
	ingredients =
	{
		{"steel-armor", 1},
		{"repair-pack", 2},
		{"steel-plate", 50},
	},
	enabled = false,
	subgroup = "ht_shield_rdy",
	order = "b",
	energy_required = 15,
	results=
	{
	  {type="item", name="steel-armor-unworn", amount=1},
	}
},
----------------
{
	type = "recipe",
	name = "steel-armor",
	ingredients =
	{
		{"iron-plate", 200},
		{"steel-plate", 100},
	},
	enabled = false,
	subgroup = "ht_shield",
	order = "b",
	energy_required = 5,
	results=
	{
	  {type="item", name="steel-armor", amount=1},
	}
},
	--------------------------------vehicle dark armor
  {
    type = "energy-shield-equipment",
    name = "dark-armor-unworn",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/dark_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1000KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 5000,
	energy_per_shield = "1kJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
----------------------------
  {
    type = "energy-shield-equipment",
    name = "dark-armor",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/dark_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5000KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 5000,
	energy_per_shield = "1kJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
    {
    type = "item",
    name = "dark-armor-unworn",
    icon = "__HeavyTank__/graphics/equipments/shield/dark_armor_iconV.png",
    icon_size = 32,
    placed_as_equipment_result = "dark-armor-unworn",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield_rdy",
    order = "d[chargepack]-a[chargepack-1-small]",
    stack_size = 5,
    default_request_amount = 4
},
---------------
{
    type = "item",
    name = "dark-armor",
    icon = "__HeavyTank__/graphics/equipments/shield/dark_armor_icon.png",
    icon_size = 32,
    placed_as_equipment_result = "dark-armor",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "dark-armor-unworn",
	category = "chemistry",
	ingredients =
	{
		{"dark-armor", 1},
		{"plastic-bar", 50},
		{type="fluid", name="sulfuric-acid", amount = 100}
	},
	enabled = false,
	subgroup = "ht_shield_rdy",
	order = "c",
	energy_required = 15,
	results=
	{
	  {type="item", name="dark-armor-unworn", amount=1},
	}
},
----------------
{
	type = "recipe",
	name = "dark-armor",
    category = "chemistry",
	ingredients =
	{
		{"iron-stick", 200},
		{"copper-cable", 200},
		{"plastic-bar", 200},
		{type="fluid", name="heavy-oil", amount=200},
	},
	enabled = false,
	subgroup = "ht_shield",
	order = "c",
	energy_required = 45,
	results=
	{
	  {type="item", name="dark-armor", amount=1},
	}
},
	----------------
	--------------------------------vehicle uranium armor
  {
    type = "energy-shield-equipment",
    name = "ht-uranium-armor-unworn",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/uranium_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10000KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 10000,
	energy_per_shield = "1KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
----------------------------
  {
    type = "energy-shield-equipment",
    name = "ht-uranium-armor",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/uranium_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10000KJ",
      input_flow_limit = "1W",
      usage_priority = "primary-input"
    },
	max_shield_value = 10000,
	energy_per_shield = "1KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
    {
    type = "item",
    name = "ht-uranium-armor-unworn",
    icon = "__HeavyTank__/graphics/equipments/shield/uranium_armor_iconV.png",
    icon_size = 32,
    placed_as_equipment_result = "ht-uranium-armor-unworn",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield_rdy",
    order = "d[chargepack]-a[chargepack-1-small]",
    stack_size = 5,
    default_request_amount = 4
},
---------------
{
    type = "item",
    name = "ht-uranium-armor",
    icon = "__HeavyTank__/graphics/equipments/shield/uranium_armor_icon.png",
    icon_size = 32,
    placed_as_equipment_result = "ht-uranium-armor",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "ht-uranium-armor-unworn",
    category = "centrifuging",
	ingredients =
	{
		{"ht-uranium-armor", 1},
		{"uranium-238", 50},
		{"sulfur", 50},
	},
	enabled = false,
	subgroup = "ht_shield_rdy",
	order = "d",
	energy_required = 30,
	results=
	{
	  {type="item", name="ht-uranium-armor-unworn", amount=1},
	}
},
----------------
{
	type = "recipe",
	name = "ht-uranium-armor",
    category = "centrifuging",
	ingredients =
	{
		{"dark-armor-unworn", 2},
		{"uranium-238", 200},
		{"sulfur", 200},
	},
	enabled = false,
	subgroup = "ht_shield",
	order = "d",
	energy_required = 60,
	results=
	{
	  {type="item", name="ht-uranium-armor", amount=1},
	}
},
	--------------------------------vehicle dark nano armor
  {
    type = "energy-shield-equipment",
    name = "dark-nano-armor",
    sprite =
    {
      filename = "__HeavyTank__/graphics/equipments/shield/dark_nano_armor_equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "4MW",
      usage_priority = "primary-input"
    },
	max_shield_value = 5000,  --500MJ to fully charge and 125s
	energy_per_shield = "100KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
{
    type = "item",
    name = "dark-nano-armor",
    icon = "__HeavyTank__/graphics/equipments/shield/darknano.png",
    icon_size = 32,
    placed_as_equipment_result = "dark-nano-armor",
    ----flags = {"goes-to-main-inventory"},
	subgroup = "ht_shield",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "dark-nano-armor",
	category = "advanced-crafting",
	ingredients =
	{
		{"dark-armor-unworn", 1},
		{"productivity-module-3", 2},
		{"flying-robot-frame", 50},
	},
	enabled = false,
	subgroup = "ht_shield",
	order = "e",
	energy_required = 300,
	results=
	{
	  {type="item", name="dark-nano-armor", amount=1},
	}
},

------------------
--------------------------------vehicle uranium nano armor
  {
    type = "energy-shield-equipment",
    name = "uranium-nano-armor",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/shield/uranium_nano_armor_equipment.png",
      width = 64, height = 64, priority = "medium" },
    shape = { width = 2, height = 2, type = "full" },
    energy_source =
    { type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "8MW",
      usage_priority = "primary-input" },
	max_shield_value = 10000,  --1000MJ to fully charge and 125s
	energy_per_shield = "100KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
{
    type = "item",
    name = "uranium-nano-armor",
    icon = "__HeavyTank__/graphics/equipments/shield/uraniumnano.png",
    icon_size = 32,
    placed_as_equipment_result = "uranium-nano-armor",
	subgroup = "ht_shield",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "uranium-nano-armor",
	category = "advanced-crafting",
	ingredients =
	{	{"ht-uranium-armor-unworn", 1},
		{"productivity-module-3", 4},
		{"flying-robot-frame", 100},
	},
	enabled = false,
	subgroup = "ht_shield",
	order = "f",
	energy_required = 600,
	results= { {type="item", name="uranium-nano-armor", amount=1},}
},
--------------------------------vehicle uranium nano armor x2
  {
    type = "energy-shield-equipment",
    name = "uranium-nano-armor-x2",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/shield/nano-x2.png",
      width = 86, height = 64, priority = "medium" },
    shape = { width = 3, height = 2, type = "full" },
    energy_source =
    { type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "16MW",
      usage_priority = "primary-input" },
	max_shield_value = 20000,  
	energy_per_shield = "95KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
{
    type = "item",
    name = "uranium-nano-armor-x2",
    icon = "__HeavyTank__/graphics/equipments/shield/nano-x2-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "uranium-nano-armor-x2",
	subgroup = "ht_shield",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "uranium-nano-armor-x2",
	--category = "advanced-crafting",
	ingredients =
	{	{"uranium-nano-armor", 2},
		--{"uranium-nano-armor", 1},
		--{"productivity-module-3", 4},
		--{"flying-robot-frame", 100},
	},
	enabled = false,
	subgroup = "ht_shield",
	order = "f",
	energy_required = 10,
	results= { {type="item", name="uranium-nano-armor-x2", amount=1},}
},
--------------------------------vehicle uranium nano armor x3
  {
    type = "energy-shield-equipment",
    name = "uranium-nano-armor-x3",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/shield/nano-x3.png",
      width = 96, height = 64, priority = "medium" },
    shape = { width = 4, height = 2, type = "full" },
    energy_source =
    { type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "24MW",
      usage_priority = "primary-input" },
	max_shield_value = 30000,  
	energy_per_shield = "90KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
{
    type = "item",
    name = "uranium-nano-armor-x3",
    icon = "__HeavyTank__/graphics/equipments/shield/nano-x3-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "uranium-nano-armor-x3",
	subgroup = "ht_shield_rdy",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "uranium-nano-armor-x3",
	--category = "advanced-crafting",
	ingredients =
	{	
		{"uranium-nano-armor-x2", 1},
		{"uranium-nano-armor", 1},
	},
	enabled = false,
	subgroup = "ht_shield_rdy",
	order = "f",
	energy_required = 10,
	results= { {type="item", name="uranium-nano-armor-x3", amount=1},}
},
--------------------------------vehicle uranium nano armor-x4
  {
    type = "energy-shield-equipment",
    name = "uranium-nano-armor-x4",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/shield/nano-x4.png",
      width = 128, height = 64, priority = "medium" },
    shape = { width = 5, height = 2, type = "full" },
    energy_source =
    { type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "32MW",
      usage_priority = "primary-input" },
	max_shield_value = 40000,  
	energy_per_shield = "80KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
{
    type = "item",
    name = "uranium-nano-armor-x4",
    icon = "__HeavyTank__/graphics/equipments/shield/nano-x4-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "uranium-nano-armor-x4",
	subgroup = "ht_shield_rdy",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "uranium-nano-armor-x4",
	--category = "advanced-crafting",
	ingredients =
	{	
		{"uranium-nano-armor-x3", 1},
		{"uranium-nano-armor", 1},
	},
	enabled = false,
	subgroup = "ht_shield_rdy",
	order = "f",
	energy_required = 10,
	results= { {type="item", name="uranium-nano-armor-x4", amount=1},}
},
--------------------------------vehicle uranium nano armor-x5
  {
    type = "energy-shield-equipment",
    name = "uranium-nano-armor-x5",
    sprite =
    { filename = "__HeavyTank__/graphics/equipments/shield/nano-x5.png",
      width = 160, height = 64, priority = "medium" },
    shape = { width = 5, height = 2, type = "full" },
    energy_source =
    { type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "40MW",
      usage_priority = "primary-input" },
	max_shield_value = 50000,  
	energy_per_shield = "70KJ",
    categories = {"steam","diesel","nuclear","tank", "vehicle", "armoured-vehicle"}
  },
  --------------item
{
    type = "item",
    name = "uranium-nano-armor-x5",
    icon = "__HeavyTank__/graphics/equipments/shield/nano-x5-icon.png",
    icon_size = 32,
    placed_as_equipment_result = "uranium-nano-armor-x5",
	subgroup = "ht_shield_rdy",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 5,
    default_request_amount = 4
},
  ----------------------------------
{
	type = "recipe",
	name = "uranium-nano-armor-x5",
	--category = "advanced-crafting",
	ingredients =
	{	
		{"uranium-nano-armor-x4", 1},
		{"uranium-nano-armor", 1},
	},
	enabled = false,
	subgroup = "ht_shield_rdy",
	order = "f",
	energy_required = 10,
	results= { {type="item", name="uranium-nano-armor-x5", amount=1},}
},



})

