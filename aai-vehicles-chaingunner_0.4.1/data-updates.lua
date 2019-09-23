-- from hauler
if data.raw.technology["basic-vehicles"] then
  table.insert(data.raw.technology["vehicle-chaingunner"].prerequisites, "basic-vehicles")
end

if aai_industry then
  data.raw.recipe["vehicle-chaingunner"].normal.ingredients = {
        {type="item", name="iron-plate", amount=16},
        {type="item", name="motor", amount=6},
        {type="item", name="gun-turret", amount=1},
  }
  data.raw.recipe["vehicle-chaingunner"].expensive.ingredients = {
        {type="item", name="iron-plate", amount=20},
        {type="item", name="motor", amount=8},
        {type="item", name="gun-turret", amount=1},
  }
end
