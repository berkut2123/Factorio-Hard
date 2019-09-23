if settings.startup["ht-grid-type-personal"].value == true and settings.startup["ht-grid-type-mods"].value == true then

  data.raw.car["HeavyTank_experimental_tank"].equipment_grid = "HeavyTank-experimental-tank-grid-abs"
  data.raw.car["HeavyTank_heavy_tank"].equipment_grid = "HeavyTank-tank-grid-abs"
  data.raw.car["HeavyTank_medium_tank"].equipment_grid = "HeavyTank-tank-medium-grid-abs"
  data.raw.car["HeavyTank_scrap_tank"].equipment_grid = "HeavyTank-tank-scrap-grid-abs"
  
  
  
elseif settings.startup["ht-grid-type-personal"].value == false and settings.startup["ht-grid-type-mods"].value == true then

  data.raw.car["HeavyTank_experimental_tank"].equipment_grid = "HeavyTank-experimental-tank-grid-bs"
  data.raw.car["HeavyTank_heavy_tank"].equipment_grid = "HeavyTank-tank-grid-bs"
  data.raw.car["HeavyTank_medium_tank"].equipment_grid = "HeavyTank-tank-medium-grid-bs"
  data.raw.car["HeavyTank_scrap_tank"].equipment_grid = "HeavyTank-tank-scrap-grid-bs"

  
  
elseif settings.startup["ht-grid-type-personal"].value == true and settings.startup["ht-grid-type-mods"].value == false then

  data.raw.car["HeavyTank_experimental_tank"].equipment_grid = "HeavyTank-experimental-tank-grid-a"
  data.raw.car["HeavyTank_heavy_tank"].equipment_grid = "HeavyTank-tank-grid-a"
  data.raw.car["HeavyTank_medium_tank"].equipment_grid = "HeavyTank-tank-medium-grid-a"
  data.raw.car["HeavyTank_scrap_tank"].equipment_grid = "HeavyTank-tank-scrap-grid-a"

  
  
else 

  data.raw.car["HeavyTank_experimental_tank"].equipment_grid = "HeavyTank-experimental-tank-grid"
  data.raw.car["HeavyTank_heavy_tank"].equipment_grid = "HeavyTank-tank-grid"
  data.raw.car["HeavyTank_medium_tank"].equipment_grid = "HeavyTank-tank-medium-grid"
  data.raw.car["HeavyTank_scrap_tank"].equipment_grid = "HeavyTank-tank-scrap-grid"

end
  
  
  

--  data.raw.car["bob-tank-2"].equipment_grid = "bob-tank-2"

