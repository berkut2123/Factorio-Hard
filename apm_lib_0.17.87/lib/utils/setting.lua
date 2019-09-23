require 'util'

if not apm.lib.utils.setting.get then apm.lib.utils.setting.get = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.setting.get.starup(settings_name)
    if settings.startup[settings_name] then
        return settings.startup[settings_name].value
    end
    return nil
end