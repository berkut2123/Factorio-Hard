function check_color(colors)
    for keys, color in pairs(colors) do
        if(color['r'] == nil or color['g'] == nil or color['b'] == nil) then
            error('Must set rgb on all colors: ' .. serpent.block(keys))
        end

        if(color['r'] < 0 or color['r'] > 255 or color['g'] < 0 or color['g'] > 255 or color['b'] < 0 or color['b'] > 255) then
            error('Colors must be 0 to 255: ' .. serpent.block(keys))
        end

        if(color['a'] ~= nil and color['a'] < 0 or color['a'] > 255) then
            error('Alpha/opacity must be 0 to 255: ' .. serpent.block(keys))
        end
    end
end