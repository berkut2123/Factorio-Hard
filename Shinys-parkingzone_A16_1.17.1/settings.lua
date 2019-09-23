data:extend(
    {
         --Speed of vehicles on parking zone, higher is slower. Sand is 1.8, concrete is 0.8, my default was 75.
         {
            type = "double-setting",
            name = "Shinyparkingzonespeed",
            setting_type = "startup",
            minimum_value = 0,
            maximum_value = 1000,
            default_value = 75,
            order = "a"
         }
    }
)
