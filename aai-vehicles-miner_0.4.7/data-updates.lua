if data.raw.technology["basic-vehicles"] then
  --data.raw.technology["vehicle-miner"].prerequisites = {"basic-vehicles"}
end

if aai_industry then
  data.raw.recipe["vehicle-miner"].normal.ingredients = {
          {"burner-mining-drill", 5},
          {"iron-plate", 20},
          {"motor", 6},
  }
  data.raw.recipe["vehicle-miner"].expensive.ingredients = {
          {"burner-mining-drill", 5},
          {"iron-plate", 30},
          {"motor", 10},
  }
end
