-- vanilla reources have a hardness of 0.4 except urnium which is 0.9
-- Mining time / ((Mining power - Mining hardness) * Mining speed) = Seconds for one resource item
local miner_variants = {
    ["vehicle-miner"] = {
        vehicle_name = "vehicle-miner",
        attachment_name = "vehicle-miner-attachment",
        tier = 1,
        mining_speed = 1,
        mining_energy_use = 1 * 300000 * math.pow(0.95, 0),
        mining_pollution = 1 * 0.001 * math.pow(0.95, 0),
        mining_range = 3.5,
        tree_range = 3.5
    },
    ["vehicle-miner-mk2"] = {
        vehicle_name = "vehicle-miner-mk2",
        attachment_name = "vehicle-miner-mk2-attachment",
        tier = 2,
        mining_speed = 3,
        mining_energy_use = 3 * 300000 * math.pow(0.95, 1),
        mining_pollution = 3 * 0.001 * math.pow(0.95, 1),
        mining_range = 4,
        tree_range = 4
    },
    ["vehicle-miner-mk3"] = {
        vehicle_name = "vehicle-miner-mk3",
        attachment_name = "vehicle-miner-mk3-attachment",
        tier = 3,
        mining_speed = 6,
        mining_energy_use = 6 * 300000 * math.pow(0.95, 2),
        mining_pollution = 6 * 0.001 * math.pow(0.95, 2),
        mining_range = 4.5,
        tree_range = 4.5
    },
    ["vehicle-miner-mk4"] = {
        vehicle_name = "vehicle-miner-mk4",
        attachment_name = "vehicle-miner-mk4-attachment",
        tier = 4,
        mining_speed = 12,
        mining_energy_use = 12 * 300000 * math.pow(0.95, 3),
        mining_pollution = 12 * 0.001 * math.pow(0.95, 3),
        mining_range = 5,
        tree_range = 5
    },
    ["vehicle-miner-mk5"] = {
        vehicle_name = "vehicle-miner-mk5",
        attachment_name = "vehicle-miner-mk5-attachment",
        tier = 5,
        mining_speed = 24,
        mining_energy_use = 24 * 300000 * math.pow(0.95, 4),
        mining_pollution = 24 * 0.001 * math.pow(0.95, 4),
        mining_range = 5.5,
        tree_range = 5.5
    }
}

return miner_variants
