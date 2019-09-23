local waterwell = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
waterwell.name = "stone-waterwell"
waterwell.icon = "__StoneWaterWell__/graphics/stone-waterwell.icon.png"

for i,d in ipairs({"north", "east", "south", "west"}) do
	waterwell.picture[d] = 
	{
		filename = "__StoneWaterWell__/graphics/stone-waterwell.png",
		priority = "extra-high",
		shift = {0.3, 0.8},
		width = 256,
		height = 256,
		x = (i - 1) * 256
	}
end

waterwell.minable = {mining_time = 1, result = "stone-waterwell"}
waterwell.collision_box = {{-2.2, -2.2}, {2.2, 2.2}}
waterwell.selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
waterwell.collision_mask = { "water-tile", "object-layer", "player-layer", "item-layer" }
waterwell.adjacent_tile_collision_test = { "ground-tile" }
waterwell.fluid_box.pipe_connections[1].position = {0, 3}
waterwell.flags = {"placeable-neutral", "player-creation"}
waterwell.placeable_position_visualization = nil
waterwell.circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points
waterwell.circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites

data:extend(
{
	waterwell, 
	{
		type = "recipe",
		name = "stone-waterwell",
		energy_required = 10,
		ingredients =
		{
			{"iron-stick", 4},
			{"stone-brick", 8},
			{"stone", 40},
			{"pipe-to-ground", 1},
			{"offshore-pump", 1}
		},
		result_count = 1,
		result = "stone-waterwell"
	},
	{
		type = "item",
		name = "stone-waterwell",
		icon = "__StoneWaterWell__/graphics/stone-waterwell.icon.png",
		icon_size = 32,
		subgroup = "extraction-machine",
		order = "b[fluids]-a[stone-waterwell]",
		place_result = "stone-waterwell",
		stack_size = 5
	}
})
