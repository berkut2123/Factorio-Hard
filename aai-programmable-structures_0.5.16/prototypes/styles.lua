local ui_width = 300
data.raw["gui-style"]["default"]["aai_struct_settings_textfield"] = {
    minimal_width = 50,
    type = "textbox_style"
}
data.raw["gui-style"]["default"]["aai_struct_settings_label"] = {
    minimal_width = ui_width-50,
    maximal_width = ui_width-50,
    parent= "label",
    type = "label_style"
}
data.raw["gui-style"]["default"]["aai_struct_settings_fieldset"] = {
    minimal_width = ui_width-20,
    maximal_width = ui_width-20,
    type = "frame_style",
    parent = "frame"
}
data.raw["gui-style"]["default"]["aai_struct_settings_container"] = {
    minimal_width = ui_width,
    maximal_width = ui_width,
    type = "frame_style",
    parent = "frame"
}
data.raw["gui-style"]["default"]["aai_struct_settings_button"] = {
    type = "button_style",
    parent = "button"
}
