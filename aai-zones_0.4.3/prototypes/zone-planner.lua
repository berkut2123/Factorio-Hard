-------------------------------------------------------------------------------
--[[Recipe]]--
-------------------------------------------------------------------------------
data:extend{
    {
        type = "recipe",
        name = "zone-planner",
        category = "crafting",
        enabled = data.raw["technology"]["electronics"] == nil,
        energy_required = 2,
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=5}
        },
        results=
        {
            {type="item", name="zone-planner", amount=1},
        },
    },
}
-------------------------------------------------------------------------------
--[[Item]]--
-------------------------------------------------------------------------------
data:extend{
    {
        type = "selection-tool",
        name = "zone-planner",
        icon = "__aai-zones__/graphics/icons/zone-planner.png",
        icon_size = 32,
        subgroup = "tool",
        order = "c[automated-construction]-d[zone-planner]",
        stack_size = 1,
        stackable = false,
        selection_color = {r = 0.3, g = 0.9, b = 0.3},
        alt_selection_color = {r = 0.9, g = 0.1, b = 0.1},
        selection_mode = {"any-tile"},
        alt_selection_mode = {"any-tile"},
        selection_cursor_box_type = "copy",
        alt_selection_cursor_box_type = "not-allowed"
    },
}

-------------------------------------------------------------------------------
--[[Technology]]--
-------------------------------------------------------------------------------
if data.raw["technology"]["electronics"] then
    if not data.raw["technology"]["electronics"].effects then
      data.raw["technology"]["electronics"].effects = {}
    end
    table.insert(data.raw["technology"]["electronics"].effects, {type = "unlock-recipe", recipe = "zone-planner"})
end
