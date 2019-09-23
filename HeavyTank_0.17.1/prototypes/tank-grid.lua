data:extend(
{
	{ type = "equipment-category",name = "tank" },
    { type = "equipment-category",name = "vehicle"},
    { type = "equipment-category",name = "armoured-vehicle"},
	{ type = "equipment-category",name = "nuclear"},
	{ type = "equipment-category",name = "diesel"},
	{ type = "equipment-category",name = "steam"},
	
--------shall mods
	
  {
    type = "equipment-category",
    name = "tank-M"
  },
  {
    type = "equipment-category",
    name = "tank-H"
  },
  {
    type = "equipment-category",
    name = "tank-SH"
  },
  {
    type = "equipment-category",
    name = "tank-F"
  },
  {
    type = "equipment-category",
    name = "artillery-rocket"
  },

	
	------ Grid + Personal + bob + shall
	
	{	type = "equipment-grid", name = "HeavyTank-experimental-tank-grid-abs",	width = 15,	height = 10,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "armor", "nuclear",  "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-grid-abs", width = 10,height = 10,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "armor", "nuclear",  "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-medium-grid-abs", width = 10, height = 6,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "armor", "diesel",   "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-scrap-grid-abs", width = 10, height = 4,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "armor", "steam", "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"}	},
		
		
		
	------ Grid + bob + shall - NO PERSONAL
	
	{	type = "equipment-grid", name = "HeavyTank-experimental-tank-grid-bs",	width = 15,	height = 10,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "nuclear",  "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-grid-bs", width = 10,height = 10,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "nuclear",  "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-medium-grid-bs", width = 10, height = 6,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "diesel",   "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-scrap-grid-bs", width = 10, height = 4,
		equipment_categories = {"tank", "vehicle", "armoured-vehicle", "steam", "artillery-rocket","tank-F","tank-SH","tank-H","tank-M"}	},


	------ Grid + Personal
	
	{	type = "equipment-grid", name = "HeavyTank-experimental-tank-grid-a",	width = 15,	height = 10,
		equipment_categories = {"nuclear","armor"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-grid-a", width = 10,height = 10,
		equipment_categories = {"nuclear","armor"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-medium-grid-a", width = 10, height = 6,
		equipment_categories = {"diesel","armor"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-scrap-grid-a", width = 10, height = 4,
		equipment_categories = {"steam","armor"} },		
		
		
	------ Grid - Fucking Nothing
	
	{	type = "equipment-grid", name = "HeavyTank-experimental-tank-grid",	width = 15,	height = 10,
		equipment_categories = {"nuclear"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-grid", width = 10,height = 10,
		equipment_categories = {"nuclear"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-medium-grid", width = 10, height = 6,
		equipment_categories = {"diesel"} },
		
	{	type = "equipment-grid", name = "HeavyTank-tank-scrap-grid", width = 10, height = 4,
		equipment_categories = {"steam"} }		
		

})