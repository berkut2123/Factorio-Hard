------------------------------------------------------------------------------------------------------------------------------------------------------

require("code.functions.functions-recipes")
require("code.functions.functions-technology")

------------------------------------------------------------------------------------------------------------------------------------------------------

-- replace icons for fluids & barrelling

local function fade(colour)
	colour.a = 0.9
	return colour
end

for _,fluid in pairs(data.raw.fluid) do
	if data.raw.recipe["empty-"..fluid.name.."-barrel"] and fluid.auto_barrel ~= false then
		data.raw.recipe["empty-"..fluid.name.."-barrel"].icons = {
			{
				icon = get_icon_path("blank",DIR.icon_size),
				icon_size = DIR.icon_size,
			},
			{
				icon = fluid.icon,
				icon_size = fluid.icon_size,
				scale = 0.25 * (64/fluid.icon_size),
				shift = {2,8},
			},
			{
				icon = get_icon_path("barrel-empty",DIR.icon_size),
				icon_size = DIR.icon_size,
			},
			{
				icon = get_icon_path("barrel-empty-mask",DIR.icon_size),
				icon_size = DIR.icon_size,
				tint = fade(fluid.base_color),
			},
		}
		data.raw.recipe["empty-"..fluid.name.."-barrel"].order = fluid.order
		data.raw.recipe["fill-"..fluid.name.."-barrel"].icons = {
			{
				icon = get_icon_path("barrel-fill",DIR.icon_size),
				icon_size = DIR.icon_size,
			},
			{
				icon = get_icon_path("barrel-fill-mask",DIR.icon_size),
				icon_size = DIR.icon_size,
				tint = fade(fluid.base_color),
			},
			{
				icon = fluid.icon,
				icon_size = fluid.icon_size,
				scale = 0.25 * (64/fluid.icon_size),
				shift = {0,-8},
			},
		}
		data.raw.item[fluid.name.."-barrel"].icons = {
			{
				icon = get_icon_path("empty-barrel",DIR.icon_size),
				icon_size = DIR.icon_size,
			},
			{
				icon = get_icon_path("barrel-mask",DIR.icon_size),
				icon_size = DIR.icon_size,
				tint = fade(fluid.base_color),
			},
		}
		data.raw.recipe["fill-"..fluid.name.."-barrel"].order = fluid.order
		remove_unlock_from_tech("fluid-handling", "empty-"..fluid.name.."-barrel")
		remove_unlock_from_tech("fluid-handling", "fill-"..fluid.name.."-barrel")
		add_unlock_to_tech("deadlock-barrelling", "empty-"..fluid.name.."-barrel")
		add_unlock_to_tech("deadlock-barrelling", "fill-"..fluid.name.."-barrel")
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------

-- barrels can be used as vehicle fuel if their fluid has a fuel value

-- for _,fluid in pairs(data.raw.fluid) do
	-- if fluid.fuel_value then
		-- local barrel = data.raw.item[fluid.name.."-barrel"]
		-- if barrel then
			-- barrel.burnt_result = "empty-barrel"
			-- barrel.fuel_value = (util.parse_energy(fluid.fuel_value)*50).."J"
			-- barrel.fuel_category = "liquid-fuel-barrel"
			-- if fluid.emissions_multiplier then barrel.fuel_emissions_multiplier = fluid.emissions_multiplier end
			-- if fluid.name == "leaded-fuel" then
				-- barrel.fuel_acceleration_multiplier = 1.5
			-- end
		-- end
	-- end
-- end

------------------------------------------------------------------------------------------------------------------------------------------------------

