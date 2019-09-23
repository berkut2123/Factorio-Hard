local data_util = require("data-util")

-- make projectiles for all items
-- projectiles used for inventoery transfer animation
data:extend({{
    type="projectile",
    name="default-item-projectile",
    acceleration = 0.02,
    light = {intensity = 0.1, size = 10},
    animation = {
        filename = "__base__/graphics/icons/fluid-wagon.png",
        frame_count = 1,
        width = 32,
        height = 32,
        priority = "high"
    },
    speed = 0.05
}})

local function projectile_from_item(item)
  -- may need to validate icon further, i.e. composite icons might cause problems?
  local animation

  if item.icon and type(item.icon) == "string" then
      animation = {
          filename = item.icon,
          frame_count = 1,
          width = 32,
          height = 32,
          priority = "high"
      }
  elseif item.icons and item.icons[1] then
      animation = {layers = {}}
      for _, icon in pairs(item.icons) do
          local layer = table.deepcopy(icon)
          layer.filename = layer.icon
          layer.icon = nil
          layer.frame_count = 1
          layer.width = layer.width or 32
          layer.height = layer.height or 32
          layer.priority = layer.priority or "high"
          if layer.shift and layer.shift[1] and layer.shift[2] then
              layer.shift[1] = layer.shift[1]/32
              layer.shift[2] = layer.shift[2]/32
          end
          animation.layers[_] = layer
      end
  end

  if animation then
      data:extend({{
          type="projectile",
          name=item.name .. data_util.composite_suffix .. "projectile",
          acceleration = 0.03,
          light = {intensity = 0.2, size = 10},
          animation = animation,
          speed = 0.05
      }})
  end

end

for _, item in pairs(data.raw.item) do
    projectile_from_item(item)
end
for _, item in pairs(data.raw["item-with-entity-data"]) do
    projectile_from_item(item)
end
for _, item in pairs(data.raw.ammo) do
    projectile_from_item(item)
end

--log( serpent.block( data.raw["projectile"], {comment = false, numformat = '%1.8g' } ) )
