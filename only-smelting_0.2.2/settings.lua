--require("values")

data:extend({

-- Player Equipment
{type = "bool-setting", setting_type = "startup", order = "aea", name = "smelting-tiny-equipment", default_value = false},

-- Start research
{type = "bool-setting", setting_type = "startup", order = "afa", name = "smelting-start-research", default_value = false},
	
-- Supress insted of disabled recipe
--{type = "bool-setting", setting_type = "startup", order = "afe", name = "smelting-nul", default_value = false},
	
-- Steel spc?
{type = "bool-setting", setting_type = "startup", order = "aff", name = "smelting-steel", default_value = true},

-- electroplate bob
{type = "bool-setting", setting_type = "startup", order = "afr", name = "smelting-electro", default_value = true},

-- overide solder
{type = "bool-setting", setting_type = "startup", order = "afs", name = "smelting-solder", default_value = false},

-- Cables hell
{type = "bool-setting", setting_type = "startup", order = "aft", name = "smelting-cable", default_value = false},
	
-- Early glass
{type = "bool-setting", setting_type = "startup", order = "afu", name = "smelting-glass", default_value = false},
})