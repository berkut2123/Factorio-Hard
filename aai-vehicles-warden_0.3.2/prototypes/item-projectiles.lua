-- make projectiles for all items
-- projectiles used for inventoery transfer animation
data:extend({{
    type="projectile",
    name="default-item-projectile",
    acceleration = 0.02,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-sticker",
            sticker = "slowdown-sticker"
          }
        }
      }
    },
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

for _, item in pairs(data.raw.item) do
    -- may need to validate icon further, i.e. composite icons might cause problems?
    local animation

    if item.icon then
        if type(item.icon) ~= "table" then
            animation = {
                filename = item.icon,
                frame_count = 1,
                width = 32,
                height = 32,
                priority = "high"
            }
        else
            animation = {}
            --[[
            if item.icon.icon then
                animation = {
                    filename = item.icon.icon,
                    frame_count = 1,
                    width = 32,
                    height = 32,
                    priority = "high"
                }
                if item.icon.tint then
                    animation.tint = item.icon.tint
                end
            elseif item.icon[1] then
                animation.layers = {}
                for _, icon in pairs(item.icon) do
                    animation.layers[_] = {
                        filename = icon.icon,
                        frame_count = 1,
                        width = 32,
                        height = 32,
                        priority = "high"
                    }
                    if icon.tint then
                        animation.layers[_].tint = icon.tint
                    end
                end
            end
            ]]--
        end
    end

    if animation then
        data:extend({{
            type="projectile",
            name=item.name .. "-_-" .. "projectile",
            acceleration = 0.03,
            action =
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "create-sticker",
                    sticker = "slowdown-sticker"
                  }
                }
              }
            },
            light = {intensity = 0.2, size = 10},
            animation = animation,
            speed = 0.05
        }})
    end

end
