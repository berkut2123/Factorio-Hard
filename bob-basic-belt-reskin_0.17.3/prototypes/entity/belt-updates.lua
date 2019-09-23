-- Import transport belt images
require("prototypes.entity.basic-transport-belt-pictures")	

if data.raw.item["basic-transport-belt"] then
	-- Patch the Transport Belts
	basicBelt = data.raw["transport-belt"]["basic-transport-belt"]
	basicBelt.belt_animation_set = basic_belt_animation_set
end
		
if data.raw.item["basic-underground-belt"] then
	-- Patch the Underground Belts
	basicUnderground = data.raw["underground-belt"]["basic-underground-belt"]
	basicUnderground.belt_animation_set = basic_belt_animation_set
	basicUnderground.structure.direction_in.sheet.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-underground-belt/black-underground-belt-structure.png"
	basicUnderground.structure.direction_in.sheet.hr_version.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-underground-belt/hr-black-underground-belt-structure.png"
	basicUnderground.structure.direction_out.sheet.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-underground-belt/black-underground-belt-structure.png"
	basicUnderground.structure.direction_out.sheet.hr_version.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-underground-belt/hr-black-underground-belt-structure.png"
end
	
if data.raw.item["basic-splitter"] then
	-- Patch the Splitters
	basicSplitter = data.raw["splitter"]["basic-splitter"]
	basicSplitter.belt_animation_set = basic_belt_animation_set
	basicSplitter.structure.north.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/black-splitter-north.png"
	basicSplitter.structure.north.hr_version.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/hr-black-splitter-north.png"
	basicSplitter.structure.east.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/black-splitter-east.png"
	basicSplitter.structure.east.hr_version.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/hr-black-splitter-east.png"
	basicSplitter.structure.south.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/black-splitter-south.png"
	basicSplitter.structure.south.hr_version.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/hr-black-splitter-south.png"
	basicSplitter.structure.west.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/black-splitter-west.png"
	basicSplitter.structure.west.hr_version.filename = "__bob-basic-belt-reskin__/graphics/entity/basic-splitter/hr-black-splitter-west.png"
end

if data.raw["loader"]["basic-loader"] then
	-- Patch the Loader
	basicLoader = data.raw["loader"]["basic-loader"]
	basicLoader.belt_animation_set = basic_belt_animation_set
end