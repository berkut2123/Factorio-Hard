-- utility sprites don't work right now so use hidden signals
data:extend({
  {
    type = "virtual-signal",
    name = "chip",
    icon = "__aai-programmable-vehicles__/graphics/icons/chip.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = "z",
    hidden = true
  },
  {
    type = "virtual-signal",
    name = "active-state-on",
    icon = "__aai-programmable-vehicles__/graphics/icons/active-state-green.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = "z",
    hidden = true
  },
  {
    type = "virtual-signal",
    name = "active-state-off",
    icon = "__aai-programmable-vehicles__/graphics/icons/active-state-red.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = "z",
    hidden = true
  },
  {
    type = "virtual-signal",
    name = "active-state-auto",
    icon = "__aai-programmable-vehicles__/graphics/icons/active-state-blue.png",
    icon_size = 32,
    subgroup = "virtual-signal-utility",
    order = "z",
    hidden = true
  },
})
