-- Locals ---------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local fuel_value_exclude_list = {['PyCoalTBaA'] = true}

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function is_mod_on_exclude_list()
    for mod_name, _ in pairs(mods) do
        if fuel_value_exclude_list[mod_name] then
            return true
        end
    end
    return false
end

-- dynamic settings -----------------------------------------------------------
--
--
-------------------------------------------------------------------------------
if not is_mod_on_exclude_list() then
    data:extend(
    { 
        {type = "double-setting", name = "apm_power_coal_value_01761", setting_type = "startup", minimum_value = 0.1, maximum_value = 50, default_value = 3.0, order='aa_a'}
    })
else
    log('Info: settings.lua: setting for fuel values disabled, because of the present of a mod on the "fuel_value_exclude_list"')
end

-- static settings ------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
data:extend(
{
  {type = "bool-setting", name = "apm_power_generic_ash", setting_type = "startup", default_value = true, order='ab_a'},
  {type = "bool-setting", name = "apm_power_compat_bob", setting_type = "startup", default_value = true, order='pa_a'},
  {type = "bool-setting", name = "apm_power_compat_angel", setting_type = "startup", default_value = true, order='pb_a'},
  {type = "bool-setting", name = "apm_power_compat_sctm", setting_type = "startup", default_value = true, order='pc_a'},
  {type = "bool-setting", name = "apm_power_compat_earendel", setting_type = "startup", default_value = true, order='pd_a'},
  {type = "bool-setting", name = "apm_power_compat_bio_industries", setting_type = "startup", default_value = true, order='pe_a'},
  {type = "bool-setting", name = "apm_power_compat_expensivelandfillrecipe", setting_type = "startup", default_value = true, order='pf_a'},
  {type = "bool-setting", name = "apm_power_compat_kingarthur", setting_type = "startup", default_value = true, order='pg_a'},
})