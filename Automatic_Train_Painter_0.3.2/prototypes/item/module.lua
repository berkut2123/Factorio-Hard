data:extend({
    {
        type = "item",
        name = "manual-color-module",
        icon = "__Automatic_Train_Painter__/graphics/icons/manual-color-module.png",
        icon_size = 32,
        placed_as_equipment_result = "manual-color-module",
        subgroup = "transport",
        order = "a[train-system]-fz[locomotive]",
        stack_size = 10
    },
    {
        type = "solar-panel-equipment",
        name = "manual-color-module",
        sprite =
        {
            filename = "__Automatic_Train_Painter__/graphics/equipment/manual-color-module.png",
            width = 64,
            height = 64,
            priority = "medium"
        },
        shape =
        {
            width = 2,
            height = 2,
            type = "full"
        },
        energy_source =
        {
            type = "electric",
            usage_priority = "primary-output"
        },
        power = "1W",
        categories = {"atp-eqcat"}
    },
})