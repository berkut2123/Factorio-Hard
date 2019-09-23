function fillPyFusionConfig(config)
	
	
	config["molybdenum-ore"] = {
		type="resource-ore",
		
		allotment=70,
		spawns_per_region={min=1, max=1},
		richness=12000,
		size={min=10, max=20},
		min_amount=250,
	}
	
	config["regolites"] = {
		type="resource-liquid",
		minimum_amount=50000,
		allotment=60,
		spawns_per_region={min=1, max=2},
		richness={min=50000, max=100000}, -- richness per resource spawn
		size={min=2, max=5},
		useOreScaling = true
	}
	
	config["volcanic-pipe"] = {
		type="resource-liquid",
		minimum_amount=50000,
		allotment=60,
		spawns_per_region={min=1, max=2},
		richness={min=50000, max=100000}, -- richness per resource spawn
		size={min=2, max=5},
		useOreScaling = true
	}
end