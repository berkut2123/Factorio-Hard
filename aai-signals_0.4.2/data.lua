local signals_increment_current = 0;
local signals_increment_order = {"a-a","a-b","a-c","a-d","a-e","a-f","a-g","a-h","a-i","a-j","a-k","a-l","a-m",
"a-n","a-o","a-p","a-q","a-r","a-s","a-t","a-v","a-w","a-x","a-y","a-z",
"b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","v","w","x","y","z"}
function signals_increment()
  signals_increment_current = signals_increment_current + 1
  return "a-" .. signals_increment_order[signals_increment_current]
end
data:extend(
{
  {
    type = "item-subgroup",
    name = "virtual-signal-utility",
    group = "signals",
    order = "1",
  },
  {
    type = "virtual-signal",
    name = "signal-player",
    icon = "__aai-signals__/graphics/signal/signal-player.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-player-cursor",
    icon = "__aai-signals__/graphics/signal/signal-player-cursor.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-inventory-slot",
    icon = "__aai-signals__/graphics/signal/signal-inventory-slot.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-energy",
    icon = "__aai-signals__/graphics/signal/signal-energy.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-battery-percent",
    icon = "__aai-signals__/graphics/signal/signal-battery-percent.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-health",
    icon = "__aai-signals__/graphics/signal/signal-health.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-angle",
    icon = "__aai-signals__/graphics/signal/signal-angle.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-speed",
    icon = "__aai-signals__/graphics/signal/signal-speed.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-range",
    icon = "__aai-signals__/graphics/signal/signal-range.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-time-target",
    icon = "__aai-signals__/graphics/signal/signal-time-target.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-time-move",
    icon = "__aai-signals__/graphics/signal/signal-time-move.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-time-command",
    icon = "__aai-signals__/graphics/signal/signal-time-command.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-surface",
    icon = "__aai-signals__/graphics/signal/signal-surface.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-x-tile",
    icon = "__aai-signals__/graphics/signal/signal-x-tile.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-y-tile",
    icon = "__aai-signals__/graphics/signal/signal-y-tile.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-x-sub",
    icon = "__aai-signals__/graphics/signal/signal-x-sub.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-y-sub",
    icon = "__aai-signals__/graphics/signal/signal-y-sub.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-enemy-unit",
    icon = "__aai-signals__/graphics/signal/signal-enemy-unit.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-enemy-unit-spawner",
    icon = "__aai-signals__/graphics/signal/signal-enemy-unit-spawner.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-enemy-turret",
    icon = "__aai-signals__/graphics/signal/signal-enemy-turret.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-land",
    icon = "__aai-signals__/graphics/signal/signal-land.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-water",
    icon = "__aai-signals__/graphics/signal/signal-water.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-void",
    icon = "__aai-signals__/graphics/signal/signal-void.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-cliff",
    icon = "__base__/graphics/icons/cliff-icon.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-count",
    icon = "__aai-signals__/graphics/signal/signal-count.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-id",
    icon = "__aai-signals__/graphics/signal/signal-id.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-follow-id",
    icon = "__aai-signals__/graphics/signal/signal-follow-id.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-follow-player",
    icon = "__aai-signals__/graphics/signal/signal-follow-player.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-minimum-fuel",
    icon = "__aai-signals__/graphics/signal/signal-minimum-fuel.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-pathfinding",
    icon = "__aai-signals__/graphics/signal/signal-pathfinding.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-path",
    icon = "__aai-signals__/graphics/signal/signal-path.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-path-count",
    icon = "__aai-signals__/graphics/signal/signal-path-count.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-waypoint",
    icon = "__aai-signals__/graphics/signal/signal-waypoint.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
  {
    type = "virtual-signal",
    name = "signal-waypoint-count",
    icon = "__aai-signals__/graphics/signal/signal-waypoint-count.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = ""..signals_increment()
  },
})
