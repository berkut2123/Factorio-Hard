if apm.power.overwrites == nil then apm.power.overwrites = {} end
if apm.power.overwrites.data_stage == nil then apm.power.overwrites.data_stage = {} end
if apm.power.overwrites.data_updates_stage == nil then apm.power.overwrites.data_updates_stage = {} end
if apm.power.overwrites.data_final_stage == nil then apm.power.overwrites.data_final_stage = {} end

-- data stage -----------------------------------------------------------------
--
--
-------------------------------------------------------------------------------

-- this can be used to overwrite my coal fuel value settings (in MJ)
-- if not nil, my functions will take this value to set the coal fuel value, my other 
-- functions take this as a base to calculate all other fuel values.
if not apm.power.overwrites.data_stage.coal_fuel_value then apm.power.overwrites.data_stage.coal_fuel_value = nil end

-- data update stage ----------------------------------------------------------
--
--
-------------------------------------------------------------------------------

-- data final stage -----------------------------------------------------------
--
--
-------------------------------------------------------------------------------