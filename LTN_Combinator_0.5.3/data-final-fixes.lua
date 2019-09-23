-- check if LogisticTrainNetwork added 
if mods["LogisticTrainNetwork"] and data.raw["technology"]["logistic-train-network"] then
  table.insert( 
    data.raw["technology"]["logistic-train-network"].effects,
    {type = "unlock-recipe", recipe = "ltn-combinator"}
  )
else
  table.insert( 
    data.raw["technology"]["circuit-network"].effects,
    {type = "unlock-recipe", recipe = "ltn-combinator"}
  )
end

-- make vanilla combinator upgradable to ltn-combinator
data.raw["constant-combinator"]["constant-combinator"].next_upgrade = "ltn-combinator"
data.raw["constant-combinator"]["constant-combinator"].fast_replaceable_group = "constant-combinator"