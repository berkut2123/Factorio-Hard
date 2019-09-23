Mods = {}
Mods.VehicleTurrets = {}
function Mods.VehicleTurrets.isVehicleTurret(ent)
    if (ent.type == "ammo-turret") and (ent.name:find("vehicle-")) then
        return true
    end
    return false
end
