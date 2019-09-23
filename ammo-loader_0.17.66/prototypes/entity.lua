local names = require("prototypes.names")
local util = require("prototypes.util")

local entities = {}

local basicAmmoPic = {
    filename = util.filePath(names.chests.loader, "entity"),
    priority = "extra-high",
    width = 45,
    height = 32,
    shift = {0.1875, 0},
    --shift = {0, 0}
    hr_version = {
        filename = util.filePath(names.chests.loader, "entity"),
        priority = "extra-high",
        width = 45,
        height = 32,
        shift = {0.1875, 0}
    }
}
-- local basicFuelPic = {
--     filename = "__ammo-loader__/graphics/entity/FuelLoaderChest.png",
--     priority = "extra-high",
--     width = 44,
--     height = 32,
--     shift = {0.1875, 0}
--     --shift = {0, 0}
-- }
local invisInserterPic = util.invisPic
-- local platPic = data.raw["inserter"]["fast-inserter"].platform_picture

entities.hiddenInserter =
    util.modifiedEnt(
    data.raw["inserter"]["filter-inserter"],
    {
        name = names.hiddenInserter,
        filter_count = 1,
        allow_custom_vectors = true,
        -- icon = "nil",
        -- icon_size = 1,
        selection_box = {{0, 0}, {0, 0}},
        collision_box = {{0, 0}, {0, 0}},
        drawing_box = {{0, 0}, {0, 0}},
        pickup_position = {-0.5, 0.5},
        insert_position = {0.5, 0.5},
        extension_speed = 100,
        rotation_speed = 100,
        energy_source = {
            type = "void"
        },
        selectable_in_game = false,
        allow_copy_paste = false,
        next_upgrade = "nil",
        draw_held_item = false,
        hand_size = 0,
        corpse = "nil",
        minable = "nil"
    },
    {
        collision_mask = {},
        flags = {
            "not-on-map",
            "hide-alt-info",
            "not-deconstructable",
            "not-repairable",
            "not-blueprintable"
        },
        platform_picture = {
            sheet = util.invisPic
        },
        hand_base_picture = util.invisPic,
        hand_open_picture = util.invisPic,
        hand_closed_picture = util.invisPic,
        hand_base_shadow = util.invisPic,
        hand_open_shadow = util.invisPic,
        hand_closed_shadow = util.invisPic
    }
)

entities.basicAmmoChest =
    util.modifiedEnt(
    data.raw["container"]["iron-chest"],
    {
        name = names.chests.loader,
        minable = {result = names.chests.loader},
        inventory_size = 16
    },
    {
        picture = {
            layers = {
                {
                    filename = util.filePath(names.chests.loader, "entity"),
                    priority = "extra-high",
                    width = 45,
                    height = 32,
                    frame_count = 1,
                    shift = {0.1875, 0},
                    -- scale = 1,
                    hr_version = {
                        filename = util.filePath(names.chests.loader, "entity"),
                        priority = "extra-high",
                        width = 45,
                        height = 32,
                        frame_count = 1,
                        shift = {0.1875, 0},
                        scale = 1
                    }
                }
                --shift = {0, 0}
            }
        }
    }
)

entities.requesterChest =
    util.modifiedEnt(
    data.raw["logistic-container"]["logistic-chest-requester"],
    {
        name = names.chests.requester,
        minable = {result = names.chests.requester},
        inventory_size = 32,
        render_not_in_network_icon = false,
        logistic_slots_count = 6
    },
    {
        animation = {
            layers = {
                {
                    filename = util.filePath(names.chests.requester, "entity"),
                    priority = "extra-high",
                    width = 45,
                    height = 32,
                    frame_count = 1,
                    shift = {0.1875, 0},
                    -- scale = 1,
                    hr_version = {
                        filename = util.filePath(names.chests.requester, "entity"),
                        priority = "extra-high",
                        width = 45,
                        height = 32,
                        frame_count = 1,
                        shift = {0.1875, 0},
                        scale = 1
                    }
                }
                --shift = {0, 0}
            }
        }
    }
)

entities.storageChest =
    util.modifiedEnt(
    data.raw["logistic-container"]["logistic-chest-storage"],
    {
        name = names.chests.storage,
        minable = {result = names.chests.storage},
        render_not_in_network_icon = false,
        inventory_size = 50
    },
    {
        animation = {
            layers = {
                {
                    filename = util.filePath(names.chests.storage, "entity"),
                    priority = "extra-high",
                    width = 45,
                    height = 32,
                    frame_count = 1,
                    shift = {0.1875, 0},
                    -- scale = 1,
                    hr_version = {
                        filename = util.filePath(names.chests.storage, "entity"),
                        priority = "extra-high",
                        width = 45,
                        height = 32,
                        frame_count = 1,
                        shift = {0.1875, 0},
                        scale = 1
                    }
                }
                --shift = {0, 0}
            }
        }
    }
)

entities.passiveProviderChest =
    util.modifiedEnt(
    data.raw["logistic-container"]["logistic-chest-passive-provider"],
    {
        name = names.chests.passiveProvider,
        minable = {result = names.chests.passiveProvider},
        inventory_size = 32,
        render_not_in_network_icon = false
    },
    {
        animation = {
            layers = {
                {
                    filename = util.filePath(names.chests.passiveProvider, "entity"),
                    priority = "extra-high",
                    width = 45,
                    height = 32,
                    frame_count = 1,
                    shift = {0.1875, 0},
                    -- scale = 1,
                    hr_version = {
                        filename = util.filePath(names.chests.passiveProvider, "entity"),
                        priority = "extra-high",
                        width = 45,
                        height = 32,
                        frame_count = 1,
                        shift = {0.1875, 0},
                        scale = 1
                    }
                }
                --shift = {0, 0}
            }
        }
    }
)

-- local baseAnimation = {
--     layers = {
--         {
--             filename = "__base__/graphics/entity/logistic-chest/logistic-chest-storage.png",
--             priority = "extra-high",
--             width = 34,
--             height = 38,
--             frame_count = 7,
--             shift = util.by_pixel(0, -2),
--             hr_version = {
--                 filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-storage.png",
--                 priority = "extra-high",
--                 width = 66,
--                 height = 74,
--                 frame_count = 7,
--                 shift = util.by_pixel(0, -2),
--                 scale = 0.5
--             }
--         },
--         {
--             filename = "__base__/graphics/entity/logistic-chest/logistic-chest-shadow.png",
--             priority = "extra-high",
--             width = 48,
--             height = 24,
--             repeat_count = 7,
--             shift = util.by_pixel(8.5, 5.5),
--             draw_as_shadow = true,
--             hr_version = {
--                 filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-shadow.png",
--                 priority = "extra-high",
--                 width = 96,
--                 height = 44,
--                 repeat_count = 7,
--                 shift = util.by_pixel(8.5, 5),
--                 draw_as_shadow = true,
--                 scale = 0.5
--             }
--         }
--     }
-- }
-- entities.rangeIndicator = {
--     name = names.rangeIndicator,
--     type = "simple-entity",
--     flags = {
--         -- "not-on-map",
--         "not-rotatable",
--         -- "hide-from-bonus-gui",
--         "hide-alt-info",
--         "not-deconstructable",
--         "not-blueprintable",
--         "placeable-off-grid",
--         "not-flammable"
--     },
--     minable = {mining_time = 0, results = {}},
--     selectable_in_game = false,
--     tile_width = 1,
--     tile_height = 1,
--     picture = {
--         filename = util.filePath(names.rangeIndicator, "entity"),
--         priority = "extra-high",
--         width = 32,
--         height = 32
--     },
--     map_color = {r = 0.858, g = 0.301, b = 0.741, a = 0.25}
-- }

for k, v in pairs(entities) do
    data:extend {v}
end
