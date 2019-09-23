if aai_industry then
  data.raw.recipe["vehicle-warden"].normal.ingredients = {
      {type="item", name="iron-plate", amount=20},
      {type="item", name="motor", amount=8},
      {type="item", name="iron-chest", amount=5},
      {type="item", name="electronic-circuit", amount=50},
      {type="item", name="radar", amount=1},
  }
  data.raw.recipe["vehicle-warden"].expensive.ingredients = {
    {type="item", name="iron-plate", amount=30},
    {type="item", name="motor", amount=8},
    {type="item", name="iron-chest", amount=10},
    {type="item", name="electronic-circuit", amount=100},
    {type="item", name="radar", amount=1},
  }
end
