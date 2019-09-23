local NumericUpDown = require "scripts/settings/elements/numeric_up_down"

local GlobalNumericUpDown = {
  classname = "FNNumericUpDown",
}

local textfield_name = "-textfield"

function GlobalNumericUpDown.get_val(setting)
  local global_set = global.fnei

  if global_set[setting.name] == nil then
    global_set[setting.name] = setting.def_val
  end

  return global_set[setting.name]
end

function GlobalNumericUpDown.set_val(setting, val)
  if type(val) == "number" then
    if setting.max_val and val > setting.max_val then
      val = setting.max_val
    elseif setting.min_val and val < setting.min_val then
      val = setting.min_val
    end

    global.fnei[setting.name] = val

    NumericUpDown.set_val_in_gui(setting.name, val)
  end
end

function GlobalNumericUpDown.add_label_func(parent, sett)
  NumericUpDown.add_label_func(parent, sett)
end

function GlobalNumericUpDown.add_content_func(parent, sett)
  NumericUpDown.add_content_func(parent, sett)
end

function GlobalNumericUpDown.event_init(sett)
  NumericUpDown.event_init(sett)
end

return GlobalNumericUpDown