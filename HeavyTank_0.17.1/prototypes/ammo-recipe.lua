data:extend({
  
  --------------------------------------------------------------------------------------------------------
----------------------------------------------------AMMUNITIONS-----------------------------------------
--------------------------------------------------------------------------------------------------------
 {
    type = "recipe",
    name = "HeavyTank-concussive-cannon-shell",
	energy_required = 20,
	enabled = false,
	subgroup = "experimental-tank",
	category = "advanced-crafting",
	order="b",
    ingredients =
    {
	  {"low-density-structure", 10},
	  {"rocket-fuel", 10},
	  {"heat-pipe", 4},
	  {type="fluid", name="steam", amount=1000},
    },
    result = "HeavyTank-concussive-cannon-shell",
  },
-------------------------------------------------------
 {
    type = "recipe",
    name = "HeavyTank-plasma-cannon-shell",
	energy_required = 20,
	enabled = false,
	subgroup = "experimental-tank",
	category = "advanced-crafting",
	order="c",
    ingredients =
    {
	  {"low-density-structure", 10},
	  {"battery", 20},
	  {"rocket-fuel", 10},
	  {"rocket-control-unit", 2},
    },
    result = "HeavyTank-plasma-cannon-shell",
  },
-------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-uranium-cluster-shell",
	energy_required = 20,
	enabled = false,
	subgroup = "experimental-tank",
	category = "advanced-crafting",
	order="d",
    ingredients =
    {
	  {"low-density-structure", 10},
	  {"uranium-238", 40},
	  {"rocket-fuel", 10},
    },
    result = "HeavyTank-uranium-cluster-shell",
  },
------------------------------------------------------- 
  {
    type = "recipe",
    name = "HeavyTank-uranium-piercing-cannon-shell",
	energy_required = 20,
	enabled = false,
	subgroup = "experimental-tank",
	category = "advanced-crafting",
	order="e",
    ingredients =
    {
	  {"low-density-structure", 10},
	  {"uranium-238", 40},
	  {"rocket-fuel", 10},
    },
    result = "HeavyTank-uranium-piercing-cannon-shell",
  },
------------------------------------------------------- -------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-crude-cannon-shell",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-shells",
	order="a",
    ingredients =
    {
      {"steel-plate", 2},
	  {"copper-plate", 8},
	  {"coal", 8},
    },
    result = "HeavyTank-crude-cannon-shell",
  },
------------------------------------------------------- 
 {
    type = "recipe",
    name = "HeavyTank-piercing-cannon-shell",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-shells",
	order="e",
    ingredients =
    {
      {"steel-plate", 25},
	  {"plastic-bar", 20},
	  {"explosives", 40},
    },
    result = "HeavyTank-piercing-cannon-shell",
  },
-------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-basic-cannon-shell",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-shells",
	order="b",
    ingredients =
    {
      {"steel-plate", 5},
	  {"plastic-bar", 4},
	  {"explosives", 4},
    },
    result = "HeavyTank-basic-cannon-shell",
  },
-------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-explosive-cannon-shell",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-shells",
	order="c",
    ingredients =
    {
      {"steel-plate", 5},
	  {"plastic-bar", 4},
	  {"explosives", 20},
    },
    result = "HeavyTank-explosive-cannon-shell",
  },
-------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-cluster-shell",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-shells",
	order="d",
    ingredients =
    {
      {"steel-plate", 25},
	  {"plastic-bar", 20},
	  {"explosives", 40},
    },
    result = "HeavyTank-cluster-shell",
  },
  -------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-uranium-cannon-shell",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-shells",
	order="f",
    ingredients =
    {
	  {"low-density-structure", 4},
	  {"uranium-238", 20},
	  {"rocket-fuel", 4},
    },
    result = "HeavyTank-uranium-cannon-shell",
  },
-------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-atomic-cannon-shell",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-shells",
	order="g",
    ingredients =
    {
	  {"low-density-structure", 4},
	  {"uranium-235", 50},
	  {"rocket-fuel", 4},
	  {"processing-unit", 25},
    },
    result = "HeavyTank-atomic-cannon-shell",
	
  },
  -------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-crude-autocannon-shell",
	energy_required = 5,
    enabled = false,
	subgroup = "heavy-tank-auto",
	order="a",
    ingredients =
    {
      {"steel-plate", 2},
	  {"copper-plate", 8},
	  {"coal", 8},
    },
    result = "HeavyTank-crude-autocannon-shell",
},
-------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-autocannon-shell",
	energy_required = 5,
    enabled = false,
	subgroup = "heavy-tank-auto",
	order="b",
    ingredients =
    {
      {"steel-plate", 10},
	  {"plastic-bar", 5},
	  {"explosives", 10},
    },
    result = "HeavyTank-autocannon-shell",
},
-------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-fire-autocannon-shell",
	energy_required = 5,
	category = "chemistry",
    enabled = false,
	subgroup = "heavy-tank-auto",
	order="c",
    ingredients =
    {
      {"HeavyTank-autocannon-shell", 1},
	  {type="fluid", name="heavy-oil", amount=25},
	  {type="fluid", name="light-oil", amount=25},
    },
    result = "HeavyTank-fire-autocannon-shell",
	amount = 1
  },
  -------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-acid-autocannon-shell",
	energy_required = 5,
	category = "chemistry",
    enabled = false,
	subgroup = "heavy-tank-auto",
	order="d",
    ingredients =
    {
      {"HeavyTank-autocannon-shell", 1},
	  --{"sulfuric-acid-barrel", 1},
	  {type="fluid", name="sulfuric-acid", amount=50},
    },
    result = "HeavyTank-acid-autocannon-shell",
  },
  -------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-multi-rocket",
	energy_required = 0.5,
    enabled = false,
	subgroup = "heavy-tank-rockets",
	order="a",
    ingredients =
    {
      {"rocket", 1},
	  {"explosives", 15},
    },
    result = "HeavyTank-multi-rocket",
  },
    -------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-multi-acid-rocket",
	energy_required = 1,
	category = "chemistry",
    enabled = false,
	subgroup = "heavy-tank-rockets",
	order="c",
    ingredients =
    {
      {"rocket", 1},
	  {type="fluid", name="sulfuric-acid", amount=50},
    },
    result = "HeavyTank-multi-acid-rocket",
  },
      -------------------------------------------------------
  {
    type = "recipe",
    name = "HeavyTank-multi-napalm-rocket",
	energy_required = 1,
	category = "chemistry",
    enabled = false,
	subgroup = "heavy-tank-rockets",
	order="b",
    ingredients =
    {
      {"rocket", 1},
	  {type="fluid", name="heavy-oil", amount=25},
	  {type="fluid", name="light-oil", amount=25},
    },
    result = "HeavyTank-multi-napalm-rocket",
  },
  -------------------------------------------------------
  {
	type = "recipe",
	name = "HeavyTank-multi-storm-rocket",
	category = "chemistry",
	ingredients =
	{
		{"rocket", 1},
		{"advanced-circuit", 1},
		{type="fluid", name="steam", amount=100},
	},
	enabled = false,
	subgroup = "heavy-tank-rockets",
	order = "k",
	energy_required = 1,
	results=
	{
	  {type="item", name="HeavyTank-multi-storm-rocket", amount=1},
	}
},
-------------------------------------------------------
  {
	type = "recipe",
	name = "HeavyTank-uranium-rocket",
	ingredients =
	{
	  {"low-density-structure", 4},
	  {"uranium-238", 40},
	  {"rocket-fuel", 4},
	},
	enabled = false,
	subgroup = "heavy-tank-rockets",
	order = "l",
	energy_required = 1,
	results=
	{
	  {type="item", name="HeavyTank-uranium-rocket", amount=1},
	}
},
----------------
   {
    type = "recipe",
    name = "heavy-land-mine",
	energy_required = 10,
    enabled = false,
	subgroup = "heavy-tank-auto",
	order="l",
    ingredients =
    {
      {"land-mine", 1},
	  {"explosives", 5},
    },
    result = "heavy-land-mine",
  },
  ----------------
   {
    type = "recipe",
    name = "normal-land-mine",
	energy_required = 0.05,
    enabled = false,
	subgroup = "heavy-tank-auto",
	order="k",
    ingredients =
    {
      {"land-mine", 1},
    },
    result = "normal-land-mine",
  },
  

})