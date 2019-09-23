local names = require("prototypes/names")
data:extend {
    {
        type = "bool-setting",
        name = "ammo_loader_enabled",
        setting_type = "runtime-global",
        default_value = true,
        order = "Ammo[items]-a[bools]-a[enabled]"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_draw_range",
        setting_type = "runtime-per-user",
        default_value = true,
        order = "Ammo[items]-a[bools]-ab"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_debugging",
        setting_type = "runtime-global",
        default_value = false,
        order = "Ammo[items]-z[debugging]-b"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_check_after_research",
        setting_type = "runtime-global",
        default_value = true,
        order = "Ammo[items]-z[debugging]-a"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_upgrade_ammo",
        setting_type = "runtime-global",
        default_value = true,
        order = "Ammo[items]-a[bools]-ammo-ab"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_return_items",
        setting_type = "runtime-global",
        default_value = true,
        order = "Ammo[items]-a[bools]-ammo-a"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_fill_artillery",
        setting_type = "runtime-global",
        default_value = true,
        order = "Ammo[items]-a[bools]-ammo-b"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_fill_burner_structures",
        setting_type = "runtime-global",
        default_value = true,
        order = "Ammo[items]-a[bools]-fuel"
    },
    {
        type = "bool-setting",
        name = "ammo_loader_fill_locomotives",
        setting_type = "runtime-global",
        default_value = true,
        order = "Ammo[items]-a[bools]-fuel"
    },
    {
        type = "bool-setting",
        name = names.settings.useCartridges,
        setting_type = "startup",
        default_value = false,
        order = "Ammo[items]-a[bools]-b[2]"
    },
    {
        type = "bool-setting",
        name = names.settings.bypassResearch,
        setting_type = "startup",
        default_value = false,
        order = "Ammo[items]-a[bools]-a[1]"
    },
    -- {
    --        type = "int-setting",
    --        name = "ammo_loader_max_items_per_inventory",
    --        setting_type = "runtime-global",
    --        default_value = 0,
    -- 	minimum_value = 0,
    -- 	order = "Ammo[items]-d[ints]"
    --    },
    -- {
    --     type = "int-setting",
    --     name = "ammo_loader_max_items_per_slot",
    --     setting_type = "runtime-global",
    --     default_value = 5,
    --     minimum_value = 0,
    --     maximum_value = 1000,
    --     order = "Ammo[items]-b[ints]-a[prefs]"
    -- },
    -- {
    --     type = "int-setting",
    --     name = "ammo_loader_ticks_between_cycles",
    --     setting_type = "runtime-global",
    --     default_value = 3,
    --     minimum_value = 1,
    --     maximum_value = 3600,
    --     order = "Ammo[items]-b[ints]-b[performance]-a"
    -- },
    -- {
    --     type = "int-setting",
    --     name = "ammo_loader_max_inventories_per_cycle",
    --     setting_type = "runtime-global",
    --     default_value = 10,
    --     minimum_value = 1,
    --     maximum_value = 1000,
    --     order = "Ammo[items]-b[ints]-b[performance]-c"
    -- },
    -- {
    --     type = "int-setting",
    --     name = "ammo_loader_max_chests_per_cycle",
    --     setting_type = "runtime-global",
    --     default_value = 1,
    --     minimum_value = 1,
    --     maxiumum_value = 100,
    --     order = "Ammo[items]-b[ints]-b[performance]-b"
    -- },
    -- {
    --     type = "int-setting",
    --     name = "ammo_loader_new_invs_checked_per_cycle",
    --     setting_type = "runtime-global",
    --     default_value = 100,
    --     minimum_value = 1,
    --     maximum_value = 1000,
    --     order = "Ammo[items]-b[ints]-b[performance]-d"
    -- },
    {
        type = "int-setting",
        name = "ammo_loader_chest_radius",
        setting_type = "runtime-global",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1000,
        order = "Ammo[items]-b[ints]-a[prefs]"
    }
}
