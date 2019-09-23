
--[[
To do:
	define array for classes with "type", "name" and "target subgroup"
	then call function like: 'if [type][name] then [type][name].subgroup = [target subgroup]'
	and loop it for every class in an array
	
	name arrays with required mods and separate function calls per mod
]]

-- programmable structures
if data.raw["item-subgroup"]["programmable-structures"] then
	data.raw["item-subgroup"]["programmable-structures"].group = "aai-group"
end


-- programmable vehicles
if data.raw["selection-tool"]["unit-remote-control"] then
	data.raw["selection-tool"]["unit-remote-control"].subgroup = "aai-tools"
	data.raw["selection-tool"]["path-remote-control"].subgroup = "aai-tools"

	data.raw.ammo["cannon-shell-precision"].subgroup = "aai-ammo"
	data.raw.ammo["explosive-cannon-shell-precision"].subgroup = "aai-ammo"
end

-- data.raw["item-subgroup"]["cars"].group = "aai-group"


-- vehicle chaingunner
if data.raw["item-with-entity-data"]["vehicle-chaingunner"] then
	data.raw["item-with-entity-data"]["vehicle-chaingunner"].subgroup = "aai-vehicles"
end


-- vehicle flametank
if data.raw["item-with-entity-data"]["vehicle-flame-tank"] then
	data.raw["item-with-entity-data"]["vehicle-flame-tank"].subgroup = "aai-vehicles"
	data.raw.ammo["flamejet-ammo"].subgroup = "aai-ammo"
end


-- vehicle tumbler
if data.raw["item-with-entity-data"]["vehicle-flame-tumbler"] then
	data.raw["item-with-entity-data"]["vehicle-flame-tumbler"].subgroup = "aai-vehicles"
	data.raw.ammo["flamejet-ammo"].subgroup = "aai-ammo"
end


-- vehicle hauler
if data.raw["item-with-entity-data"]["vehicle-hauler"] then
	data.raw["item-with-entity-data"]["vehicle-hauler"].subgroup = "aai-vehicles"
end


-- vehicle laser tank
if data.raw["item-with-entity-data"]["vehicle-laser-tank"] then
	data.raw["item-with-entity-data"]["vehicle-laser-tank"].subgroup = "aai-vehicles"
	data.raw.ammo["laser-cannon-battery-piercing"].subgroup = "aai-ammo"
	data.raw.ammo["laser-cannon-battery-focussed"].subgroup = "aai-ammo"	
end


-- vehicle miner
if data.raw["item-with-entity-data"]["vehicle-miner"] then
	data.raw["item-with-entity-data"]["vehicle-miner"].subgroup = "aai-miners"
	data.raw["item-with-entity-data"]["vehicle-miner-mk2"].subgroup = "aai-miners"
	data.raw["item-with-entity-data"]["vehicle-miner-mk3"].subgroup = "aai-miners"
	data.raw["item-with-entity-data"]["vehicle-miner-mk4"].subgroup = "aai-miners"
	data.raw["item-with-entity-data"]["vehicle-miner-mk5"].subgroup = "aai-miners"
end


-- vehicle warden
if data.raw["item-with-entity-data"]["vehicle-warden"] then
	data.raw["item-with-entity-data"]["vehicle-warden"].subgroup = "aai-vehicles"
	data.raw.ammo["electroshock-pulse-ammo"].subgroup = "aai-ammo"
end


-- zones
if data.raw["selection-tool"]["zone-planner"] then
	data.raw["selection-tool"]["zone-planner"].subgroup = "aai-tools"
end





















