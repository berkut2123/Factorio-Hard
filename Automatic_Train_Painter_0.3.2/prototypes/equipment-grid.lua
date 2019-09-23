data:extend({
    {
        type = "equipment-category",
        name = "atp-eqcat"
    },
    {
        type = "equipment-grid",
        name = "atp-equipment-grid",
        width = settings.startup["loc-eqpm-grid-w"].value,
        height = settings.startup["loc-eqpm-grid-h"].value,
        equipment_categories = {"atp-eqcat"}
    },
})