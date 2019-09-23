--luacheck: no global
if data.raw["technology"]["programmable-structures"] then
  data:extend{
      struct_animated_disconnected("unit-scan"),
      struct_animated_disconnected("unitdata-scan"),
      struct_animated_disconnected("path-scan"),
      struct_static_connected("unit-control"),
      struct_static_connected("unitdata-control"),
      struct_static_connected("path-control"),
  }
end
