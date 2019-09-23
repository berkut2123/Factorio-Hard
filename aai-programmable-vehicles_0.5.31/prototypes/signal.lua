
data:extend{
  {
    type = "virtual-signal",
    name = "signal-vehicle-depot-id",
    icons = {
        {
            icon = "__aai-programmable-vehicles__/graphics/icons/ids/id_background.png"
        },
        {
            icon = "__aai-programmable-vehicles__/graphics/icons/vehicle-depot.png"
        },
        {
            icon = "__aai-programmable-vehicles__/graphics/icons/ids/id_overlay.png"
        },
    },
    icon_size = 32,
    subgroup = "vehicle-ids",
    order = "z[vehicle]"
  },
  {
    type = "virtual-signal",
    name = "signal-position-beacon-id",
    icons = {
        {
            icon = "__aai-programmable-vehicles__/graphics/icons/ids/id_background.png"
        },
        {
            icon = "__aai-programmable-vehicles__/graphics/icons/position-beacon.png"
        },
        {
            icon = "__aai-programmable-vehicles__/graphics/icons/ids/id_overlay.png"
        },
    },
    icon_size = 32,
    subgroup = "vehicle-ids",
    order = "z[vehicle]"
  }
}
