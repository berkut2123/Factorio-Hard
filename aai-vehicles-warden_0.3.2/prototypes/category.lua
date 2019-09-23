data:extend{
    {
      type = "ammo-category",
      name = "electro-bolter",
      bonus_gui_order = "k-c",
    },
    {
      type = "damage-type",
      name = "repair"
      -- usually applies negative damage
      -- biological units should get 100% resistance
    },
}
data.raw["utility-constants"].default.bonus_gui_ordering["electro-bolter"] = "k-c"
