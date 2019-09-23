-- startup --------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
--data:extend(
--{
--  {type = "bool-setting", name = "apm_lib_hide_mod_list", setting_type = "startup", default_value = true, order='ae_a'},
--})

-- runtime-global -------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if not mods.apm_power and not mods.apm_nuclear then
	data:extend(
	{
	  {type = "bool-setting", name = "apm_lib_inserter_functions", setting_type = "runtime-global", default_value = false, order='aa_a'},
	})
end

data:extend(
{
  {type = "int-setting", name = "apm_lib_inserter_iterations_01759", setting_type = "runtime-global", minimum_value = 0, maximum_value = 100, default_value = 15, order='ab_a'},
  {type = "bool-setting", name = "apm_lib_storage_spit_out", setting_type = "runtime-global", default_value = true, order='ac_a'},
  {type = "bool-setting", name = "apm_lib_radiation_dmg", setting_type = "runtime-global", default_value = true, order='ad_a'},
})