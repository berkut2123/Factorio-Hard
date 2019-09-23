local signals_increment_current = 0;
local signals_increment_order = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","v","w","x","y","z","z-a", "z-b"}
function signals_increment() 
	signals_increment_current = signals_increment_current + 1
	return "a-" .. signals_increment_order[signals_increment_current]
end
data:extend(
{
	{
		type = "item-subgroup",
		name = "speaker-signals",
		group = "signals",
		order = "d-a-z",
	},
	{
		type = "virtual-signal",
		name = "danger-icon",
		icon = "__core__/graphics/danger-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "destroyed-icon",
		icon = "__core__/graphics/destroyed-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "electricity-icon-red",
		icon = "__core__/graphics/electricity-icon-red.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "fluid-icon-red",
		icon = "__core__/graphics/fluid-icon-red.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "recharge-icon",
		icon = "__core__/graphics/recharge-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "ammo-icon-red",
		icon = "__core__/graphics/ammo-icon-red.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "logistic-delivery",
		icon = "__core__/graphics/logistic-delivery.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "warning-icon",
		icon = "__core__/graphics/warning-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "not-enough-repair-packs-icon",
		icon = "__core__/graphics/not-enough-repair-packs-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "not-enough-construction-robots-icon",
		icon = "__core__/graphics/not-enough-construction-robots-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "no-storage-space-icon",
		icon = "__core__/graphics/no-storage-space-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "no-building-material-icon",
		icon = "__core__/graphics/no-building-material-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "electricity-icon-unplugged",
		icon = "__core__/graphics/electricity-icon-unplugged.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "misaligned-icon",
		icon = "__core__/graphics/electricity-icon-unplugged.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "misaligned-icon",
		icon = "__core__/graphics/misaligned-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
	{
		type = "virtual-signal",
		name = "too-far-from-roboport-icon",
		icon = "__core__/graphics/too-far-from-roboport-icon.png",
		subgroup = "speaker-signals",
		icon_size = 64,
		order = ""..signals_increment()
	},
})
