data:extend(
{
  {type = "int-setting", name = "apm_recycler_payback", setting_type = "startup", minimum_value = 5, maximum_value = 100, default_value = 10, order='aa_a'},
  {type = "int-setting", name = "apm_recycler_conversion", setting_type = "startup", minimum_value = 1, maximum_value = 5, default_value = 3, order='aa_b'},
  {type = "bool-setting", name = "apm_recycler_integration_bob", setting_type = "startup", default_value = true, order='ia_a'},
  {type = "bool-setting", name = "apm_recycler_integration_angel", setting_type = "startup", default_value = true, order='ia_b'},
  {type = "bool-setting", name = "apm_recycler_integration_earendel", setting_type = "startup", default_value = true, order='ia_c'},
  {type = "bool-setting", name = "apm_recycler_integration_kingarthur", setting_type = "startup", default_value = true, order='ia_d'},
  {type = "bool-setting", name = "apm_recycler_integration_sctm", setting_type = "startup", default_value = true, order='ia_e'},
  {type = "bool-setting", name = "apm_recycler_compat_bob", setting_type = "startup", default_value = true, order='pa_a'},
  {type = "bool-setting", name = "apm_recycler_compat_angel", setting_type = "startup", default_value = true, order='pb_a'},
  {type = "bool-setting", name = "apm_recycler_compat_earendel", setting_type = "startup", default_value = true, order='pc_a'},
  {type = "bool-setting", name = "apm_recycler_compat_kingarthur", setting_type = "startup", default_value = true, order='pe_a'},
  {type = "bool-setting", name = "apm_recycler_compat_sctm", setting_type = "startup", default_value = true, order='pf_a'},

})