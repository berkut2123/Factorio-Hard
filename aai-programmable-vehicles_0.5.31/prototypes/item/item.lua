local structures_subgroup = "programmable-structures"
data:extend{
    {
        type = "selection-tool",
        name = "unit-remote-control",
        icon = "__aai-programmable-vehicles__/graphics/icons/unit-remote-control.png",
        icon_size = 32,
        flags = {},
        subgroup = "tool",
        order = "c[automated-construction]-e[unit-remote-control]",
        stack_size = 1,
        stackable = false,
        selection_color = {r = 0.3, g = 0.9, b = 0.3},
        alt_selection_color = {r = 0.9, g = 0.9, b = 0.3},
        selection_mode = {"same-force"},
        alt_selection_mode = {"same-force"},
        selection_cursor_box_type = "copy",
        alt_selection_cursor_box_type = "entity"
    },
    {
        type = "selection-tool",
        name = "path-remote-control",
        icon = "__aai-programmable-vehicles__/graphics/icons/path-remote-control.png",
        icon_size = 32,
        flags = {},
        subgroup = "tool",
        order = "c[automated-construction]-e[path-remote-control]",
        stack_size = 1,
        stackable = false,
        selection_color = {r = 0.3, g = 0.9, b = 0.3},
        alt_selection_color = {r = 0.3, g = 0.3, b = 0.9},
        selection_mode = {"same-force"},
        alt_selection_mode = {"same-force"},
        selection_cursor_box_type = "copy",
        alt_selection_cursor_box_type = "entity"
    },
    {
        type = "item",
        name = "position-beacon",
        icon = "__aai-programmable-vehicles__/graphics/icons/position-beacon.png",
        icon_size = 32,
        flags = {},
        subgroup = structures_subgroup,
        order = "h",
        place_result = "position-beacon",
        stack_size = 100
    },
    {
        type = "item",
        name = "vehicle-deployer",
        icon = "__aai-programmable-vehicles__/graphics/icons/vehicle-deployer.png",
        icon_size = 32,
        flags = {},
        subgroup = structures_subgroup,
        order = "h",
        place_result = "vehicle-deployer",
        stack_size = 10
    },
    {
        type = "item",
        name = "vehicle-depot",
        icon = "__aai-programmable-vehicles__/graphics/icons/vehicle-depot.png",
        icon_size = 32,
        flags = {},
        subgroup = structures_subgroup,
        order = "i",
        place_result = "vehicle-depot-base",
        stack_size = 10
    },
    {
        type = "item", -- dummy entity to allow deconstruction
        name = "vehicle-depot-chest",
        icon = "__base__/graphics/icons/iron-chest.png",
        icon_size = 32,
        flags = { "hidden"},
        subgroup = structures_subgroup,
        order = "i",
        place_result = "vehicle-depot-chest",
        stack_size = 10
    },
    {
        type = "item",
        name = "vehicle-depot-combinator",
        icon = "__base__/graphics/icons/constant-combinator.png",
        icon_size = 32,
        flags = { "hidden"},
        subgroup = structures_subgroup,
        order = "i",
        place_result = "vehicle-depot-combinator",
        stack_size = 10
    },
}

if data.raw["technology"]["programmable-structures"] then
  data:extend{{
    type = "item",
    name = "unit-control",
    icon = "__aai-programmable-structures__/graphics/icon/unit-control.png",
    icon_size = 32,
    flags = {}, -- overwritten to {} in programmable vehicles
    subgroup = structures_subgroup,
    order = "e",
    stack_size = 50,
    place_result = "unit-control",
}}
data:extend{{
    type = "item",
    name = "unitdata-scan",
    icon = "__aai-programmable-structures__/graphics/icon/unitdata-scan.png",
    icon_size = 32,
    flags = {}, -- overwritten to {} in programmable vehicles
    subgroup = structures_subgroup,
    order = "f",
    stack_size = 50,
    place_result = "unitdata-scan",
}}
  data:extend{{
    type = "item",
    name = "unitdata-control",
    icon = "__aai-programmable-structures__/graphics/icon/unitdata-control.png",
    icon_size = 32,
    flags = {}, -- overwritten to {} in programmable vehicles
    subgroup = structures_subgroup,
    order = "g",
    stack_size = 50,
    place_result = "unitdata-control",
}}
data:extend{{
    type = "item",
    name = "path-scan",
    icon = "__aai-programmable-structures__/graphics/icon/path-scan.png",
    icon_size = 32,
    flags = {}, -- overwritten to {} in programmable vehicles
    subgroup = structures_subgroup,
    order = "f",
    stack_size = 50,
    place_result = "path-scan",
}}
  data:extend{{
    type = "item",
    name = "path-control",
    icon = "__aai-programmable-structures__/graphics/icon/path-control.png",
    icon_size = 32,
    flags = {}, -- overwritten to {} in programmable vehicles
    subgroup = structures_subgroup,
    order = "g",
    stack_size = 50,
    place_result = "path-control",
}}
end
