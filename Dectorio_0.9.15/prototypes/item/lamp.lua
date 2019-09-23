-- item/lamp

-- Add glowing coloured lamp
local lamp = util.table.deepcopy(data.raw["item"]["small-lamp"])
lamp.name = "dect-small-lamp-glow"
lamp.icon = "__Dectorio__/graphics/icons/small-lamp-glow.png"
lamp.order = "a[light]-b[small-lamp-glow]"
lamp.place_result = "dect-small-lamp-glow"
data:extend({lamp})
