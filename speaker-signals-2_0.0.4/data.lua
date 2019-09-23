ssm = {}
ssm.colors = {	{"red",		false},
				{"yellow",	false},
				{"green",	false},
				{"blue",	false},
				{"white",	false},
				{"gray",	false},
				{"black",	true},
				{"none",	false},
				{"none",	true}
}
ssm.icons = {	{"01", "danger", "Danger"},
				{"02", "energy", "Energy"},
				{"03", "unplugged", "Unplugged"},
				{"04", "destroyed", "Destroyed"},
				{"05", "fluid", "Fluid"},
				{"06", "fuel", "Fuel"},
				{"07", "no-storage-space", "No storage space"},
				{"08", "no-building-material", "No building material"},
				{"09", "no-building-material", "No building material"},
				{"10", "not-enough-construction-robots", "Not enough construction robots"},
				{"11", "recharge", "Recharge"},
				{"12", "too-far-from-roboport", "Too far from roboport"},
				{"13", "misaligned", "Misaligned"},
				{"14", "ammo", "Ammo"},
				{"15", "train", "Train"},
				{"16", "plus", "Plus"},
				{"17", "marker", "Marker"},
}


for _,y in ipairs(ssm.icons) do
	data:extend({{
		type = "item-subgroup",
		name = "speaker-signals-2-" .. y[1],
		group = "signals",
		order = "z-z-z-"..y[1],
	}})
	for i,v in ipairs(ssm.colors) do
		if v[2] == true then
			data:extend({{
				type = "virtual-signal",
				name = "speaker-signals-2-" .. y[2] .. "-".. v[1],
				icons = {	{icon = "__speaker-signals-2__/icons/" .. v[1] .. ".png"},
							{icon = "__speaker-signals-2__/icons/" .. y[1] .. "n.png"}},
				subgroup = "speaker-signals-2-" .. y[1],
				localised_name = y[3],
				icon_size = 64,
				order = i
			}})
		else
			data:extend({{
				type = "virtual-signal",
				name = "speaker-signals-2-" .. y[2] .. "-".. v[1],
				icons = {	{icon = "__speaker-signals-2__/icons/" .. v[1] .. ".png"},
							{icon = "__speaker-signals-2__/icons/" .. y[1] .. ".png"}},
				subgroup = "speaker-signals-2-" .. y[1],
				localised_name = y[3],
				icon_size = 64,
				order = i
			}})
			if v[1] == "none" then
				data.raw["virtual-signal"]["speaker-signals-2-" .. y[2] .. "-".. v[1]].name = "speaker-signals-2-" .. y[2] .. "-".. v[1] .. "_"
				data.raw["virtual-signal"]["speaker-signals-2-" .. y[2] .. "-".. v[1] .. "_"] = data.raw["virtual-signal"]["speaker-signals-2-" .. y[2] .. "-".. v[1]]
			end
		end
	end
end