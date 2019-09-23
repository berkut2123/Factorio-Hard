-- setting names must be safe as gui element names
-- two settings on the same entity cannot share the same signal
-- optional setting parameter is signal_type, virtual-signal is assumed
-- optional label prameter to change caption, name is assumed
-- "bool-setting" saved as +1 or -1
-- "int-setting" saved as int, signals as int
local struct_types = {
    unit_scan = {
        name = "unit_scan",
        type = "input-output",
        struct_main = "unit-scan",
        struct_input = "struct-generic-input",
        struct_output = "struct-generic-output",
        struct_settings = "struct-generic-scanner-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
            {
                type = "bool-setting",
                name = "output_pulse",
                default_value = 0,
                signal_name = "signal-1"
            },
            {
                type = "fieldset",
                name = "output-filtering",
                settings = {
                    {
                        type = "bool-setting",
                        name = "quantity",
                        default_value = 1,
                        signal_name = "signal-count"
                    },
                    {
                        type = "bool-setting",
                        name = "unit_id",
                        default_value = 1,
                        signal_name = "signal-id"
                    },
                    {
                        type = "bool-setting",
                        name = "surface",
                        default_value = 1,
                        signal_name = "signal-surface"
                    },
                    {
                        type = "bool-setting",
                        name = "type_id",
                        default_value = 1,
                        signal_name = "signal-grey"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_tile",
                        default_value = 1,
                        signal_name = "signal-x-tile"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_subtile",
                        default_value = 1,
                        signal_name = "signal-x-sub"
                    },
                    {
                        type = "bool-setting",
                        name = "physical", -- angle, speed
                        default_value = 1,
                        signal_name = "signal-angle"
                    },
                    {
                        type = "bool-setting",
                        name = "stat", -- health, battery
                        default_value = 1,
                        signal_name = "signal-health"
                    },
                    {
                        type = "bool-setting",
                        name = "timer", -- time since...
                        default_value = 1,
                        signal_name = "signal-time-move"
                    },
                    {
                        type = "bool-setting",
                        name = "inventory_space",
                        default_value = 1,
                        signal_name = "signal-inventory-slot"
                    },
                    {
                        type = "bool-setting",
                        name = "inventory",
                        default_value = 1,
                        signal_name = "signal-yellow"
                    },
                    {
                        type = "bool-setting",
                        name = "zone",
                        default_value = 1,
                        signal_name = "signal-pink"
                    },{
                        type = "bool-setting",
                        name = "path_id",
                        default_value = 1,
                        signal_name = "signal-path"
                    },
                    {
                        type = "bool-setting",
                        name = "waypoint_id",
                        default_value = 1,
                        signal_name = "signal-waypoint"
                    },
                }
            }
        }
    },
    unitdata_scan = {
        name = "unitdata_scan",
        type = "input-output",
        struct_main = "unitdata-scan",
        struct_input = "struct-generic-input",
        struct_output = "struct-generic-output",
        struct_settings = "struct-generic-scanner-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
            {
                type = "bool-setting",
                name = "output_pulse",
                default_value = 0,
                signal_name = "signal-1"
            },
            {
                type = "fieldset",
                name = "output-filtering",
                settings = {
                    {
                        type = "bool-setting",
                        name = "quantity",
                        default_value = 1,
                        signal_name = "signal-count"
                    },
                    {
                        type = "bool-setting",
                        name = "unit_id",
                        default_value = 1,
                        signal_name = "signal-id"
                    },
                    {
                        type = "bool-setting",
                        name = "surface",
                        default_value = 1,
                        signal_name = "signal-surface"
                    },
                    {
                        type = "bool-setting",
                        name = "type_id",
                        default_value = 1,
                        signal_name = "signal-grey"
                    },
                    {
                        type = "bool-setting",
                        name = "unitdata",
                        default_value = 1,
                        signal_name = "signal-blue"
                    }
                }
            }
        }
    },
    path_scan = {
        name = "path_scan",
        type = "input-output",
        struct_main = "path-scan",
        struct_input = "struct-generic-input",
        struct_output = "struct-generic-output",
        struct_settings = "struct-generic-scanner-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
            {
                type = "bool-setting",
                name = "output_pulse",
                default_value = 0,
                signal_name = "signal-1"
            },
            {
                type = "fieldset",
                name = "output-filtering",
                settings = {
                    {
                        type = "bool-setting",
                        name = "surface",
                        default_value = 1,
                        signal_name = "signal-surface"
                    },
                    {
                        type = "bool-setting",
                        name = "path_id",
                        default_value = 1,
                        signal_name = "signal-path"
                    },
                    {
                        type = "bool-setting",
                        name = "path_quantity",
                        default_value = 1,
                        signal_name = "signal-path-count"
                    },
                    {
                        type = "bool-setting",
                        name = "waypoint_id",
                        default_value = 1,
                        signal_name = "signal-waypoint"
                    },
                    {
                        type = "bool-setting",
                        name = "waypoint_quantity",
                        default_value = 1,
                        signal_name = "signal-waypoint-count"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_tile",
                        default_value = 1,
                        signal_name = "signal-x-tile"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_subtile",
                        default_value = 1,
                        signal_name = "signal-x-sub"
                    },
                    {
                        type = "bool-setting",
                        name = "target", -- player_id, unit_id, beacon_id, depot_id
                        default_value = 1,
                        signal_name = "signal-green"
                    },
                    {
                        type = "bool-setting",
                        name = "misc",
                        default_value = 1,
                        signal_name = "signal-M"
                    },
                }
            }
        }
    },
    zone_scan = {
        name = "zone_scan",
        type = "input-output",
        struct_main = "zone-scan",
        struct_input = "struct-generic-input",
        struct_output = "struct-generic-output",
        struct_settings = "struct-generic-scanner-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
            {
                type = "bool-setting",
                name = "output_pulse",
                default_value = 0,
                signal_name = "signal-1"
            },
            {
                type = "fieldset",
                name = "output-filtering",
                settings = {
                    {
                        type = "bool-setting",
                        name = "quantity",
                        default_value = 1,
                        signal_name = "signal-count"
                    },
                    {
                        type = "bool-setting",
                        name = "surface",
                        default_value = 1,
                        signal_name = "signal-surface"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_tile",
                        default_value = 1,
                        signal_name = "signal-x-tile"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_subtile",
                        default_value = 1,
                        signal_name = "signal-x-sub"
                    },
                    {
                        type = "bool-setting",
                        name = "zone", -- return the id
                        default_value = 1,
                        signal_name = "signal-pink"
                    },
                }
            }
        }
    },
    tile_scan = {
        name = "tile_scan",
        type = "input-output",
        struct_main = "tile-scan",
        struct_input = "struct-generic-input",
        struct_output = "struct-generic-output",
        struct_settings = "struct-generic-scanner-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
            {
                type = "bool-setting",
                name = "output_pulse",
                default_value = 0,
                signal_name = "signal-1"
            },
            {
                type = "fieldset",
                name = "output-filtering",
                settings = {
                    {
                        type = "bool-setting",
                        name = "surface",
                        default_value = 1,
                        signal_name = "signal-surface"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_tile",
                        default_value = 1,
                        signal_name = "signal-x-tile"
                    },
                    {
                        type = "bool-setting",
                        name = "xy_subtile",
                        default_value = 1,
                        signal_name = "signal-x-sub"
                    },
                    {
                        type = "bool-setting",
                        name = "terrain",
                        default_value = 1,
                        signal_name = "signal-land"
                    },
                    {
                        type = "bool-setting",
                        name = "resource",
                        default_value = 1,
                        signal_name = "signal-inventory-slot"
                    },
                    {
                        type = "bool-setting",
                        name = "entity",
                        default_value = 1,
                        signal_name = "signal-enemy-unit"
                    },
                    {
                        type = "bool-setting",
                        name = "unit_id",
                        default_value = 1,
                        signal_name = "signal-id"
                    },
                    {
                        type = "bool-setting",
                        name = "zone",
                        default_value = 1,
                        signal_name = "signal-pink"
                    },
                }
            }
        }
    },
    unit_control = {
        name = "unit_control",
        type = "input-output",
        struct_main = "unit-control",
        struct_settings = "struct-generic-controller-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
        }
    },
    unitdata_control = {
        name = "unitdata_control",
        type = "input-output",
        struct_main = "unitdata-control",
        struct_settings = "struct-generic-controller-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
        }
    },
    path_control = {
        name = "path_control",
        type = "input-output",
        struct_main = "path-control",
        struct_settings = "struct-generic-controller-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
        }
    },
    zone_control = {
        name = "zone_control",
        type = "input-output",
        struct_main = "zone-control",
        struct_settings = "struct-generic-controller-settings",
        settings = {
            {
                type = "int-setting",
                name = "tick_limit",
                default_value = 1,
                minimum_value = 0,
                maximum_value = 1000,
                signal_name = "signal-0"
            },
        }
    }
}
local function flatten_settings_recursive(settings_by_name, setting)
    if setting.type == "fieldset" then
        if setting.settings then
            for _, child in pairs(setting.settings) do
                flatten_settings_recursive(settings_by_name, child)
            end
        end
    elseif setting.name then
        settings_by_name[setting.name] = setting
    elseif setting[1] then
        for _, child in ipairs(setting) do
            flatten_settings_recursive(settings_by_name, child)
        end
    end
end
struct_types.errors = {}

for _, struct_type in pairs(struct_types) do
    if struct_type.settings then
        -- flatten settings by name
        local settings_by_name = {}
        for _, setting in pairs(struct_type.settings) do
            flatten_settings_recursive(settings_by_name, setting)
        end
        struct_type.settings_by_name = settings_by_name
    end
end

return struct_types
