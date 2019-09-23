require 'util'

if not apm.lib.utils.patch.aai then apm.lib.utils.patch.aai = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.patch.aai.generate_vehicle_fuel()
  local vehicle_fuel_value = apm.lib.utils.string.convert_to_number(data.raw.item["vehicle-fuel"].fuel_value)

  for _, item in pairs(data.raw.item) do
      if item.fuel_value and item.name ~= "vehicle-fuel" and item.fuel_category == "apm_refined_chemical" then
        local fuel_value = apm.lib.utils.string.convert_to_number(item.fuel_value)
        if fuel_value > 0 then
          local recipe_in = 1
          local recipe_out = 1
          -- 5-10% increase in fuel value, but is an end product
          while (recipe_in * fuel_value >= recipe_out * vehicle_fuel_value * 0.95
            or recipe_in * fuel_value < recipe_out * vehicle_fuel_value * 0.90)
            and recipe_in < 10000 and recipe_out < 1000 do
              if recipe_in * fuel_value < recipe_out * vehicle_fuel_value * 0.925 then
                  recipe_in = recipe_in + 1
              else
                  recipe_out = recipe_out + 1
              end
          end
          local recipe = {
            type = "recipe",
            name = "vehicle-fuel-from-" .. item.name,
            enabled = false,
            category = "fuel-processing",
            energy_required = recipe_out,
            ingredients = {{ item.name, recipe_in}},
            results = {{ "vehicle-fuel", recipe_out}},
            localised_name = {"vehicle-fuel-recipe", {"item-name.vehicle-fuel"}, {"item-name." .. item.name} }
          }
          --if not (item.name == "coal" or item.name == "solid-fuel" or item.name == "raw-wood") then
          --  recipe.hidden = true
          --end
          if item.icon then
            recipe.icons = {
              {
                icon = "__aai-industry__/graphics/icons/vehicle-fuel.png",
                scale = 1,
                shift = {0, 0}
              },
              {
                icon = item.icon,
                scale = 0.5,
                shift = {-8, -8}
              }
            }
            recipe.icon_size = 32
          elseif item.icons then
            recipe.icons = {{icon = "__aai-industry__/graphics/icons/vehicle-fuel.png", scale=1, shift = {0, 0}}}
            for _, icon_layer in pairs(item.icons) do
              local scale = 0.5
              local icon_size = 32
              local shift = {-8, -8}
              local tint = nil
              if icon_layer.icon_size == 64 then
                icon_layer.icon_size = 64
                scale = 0.25
              end
              if icon_layer.tint ~= nil then
                tint = icon_layer.tint
              end
              table.insert(recipe.icons, {icon=icon_layer.icon, icon_size=icon_layer.icon_size, scale=scale, shift={-8, -8}, tint=tint})
            end
            recipe.icon_size = 32
          end
          data:extend({ recipe })
          apm.lib.utils.technology.add.recipe_for_unlock('fuel-processing', recipe.name)
        end
      end
  end
end