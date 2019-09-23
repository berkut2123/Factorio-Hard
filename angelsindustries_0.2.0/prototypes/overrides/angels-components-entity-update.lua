local OV = angelsmods.functions.OV

local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

OV.patch_recipes({
	{ name = "offshore-pump", ingredients ={
			{"!!"},
			{"block-electronics-0", 1},
			{"block-construction-1", 1},
		},
	},
	{ name = "assembling-machine-1", ingredients ={
			{"!!"},
			{"block-electronics-0", 3},
			{"block-construction-1", 3},
			{"block-mechanical-1", 3},
		},
	},
	{ name = "assembling-machine-2", ingredients ={
			{"!!"},
			{"block-production-1", 1},
			{"block-construction-1", 4},
			{"block-mechanical-1", 4},
		},
	},
}
)

OV.patch_recipes({
	{ name = "transport-belt", ingredients ={
			{"!!"},
			{"mechanical-parts", 2},
			{"construction-components", 1},
		},
	},
	{ name = "underground-belt", ingredients ={
            { name = "construction-components", type = "item", amount = "iron-plate" }
		},
	},
	{ name = "splitter", ingredients ={
			{"!!"},
			{"motor-1", 1},
			{"mechanical-parts", 2},
			{"circuit-grey", 1},
			{"construction-components", 1},
		},
	},
}
)