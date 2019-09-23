function add_colors(color1, color2)
    color1.r = color1.r + color2.r
    color1.g = color1.g + color2.g
    color1.b = color1.b + color2.b
    color1.a = color1.a + color2.a
    return color1
end

function weigh_colors(color, p)
    local final_color = {}
    for index, value in pairs(color) do
        final_color[index] = value*p
    end
    return final_color
end

function initial_color()
    return {r=0, g=0, b=0, a=0}
end

function color_calculator(train_content, colors)
    -- Make sure train content is not nil
    if train_content == nil then
        return nil, false
    end

    -- Filter train content
    local train_content_filtered = {}
    for item, value in pairs(train_content) do
        item = filter_name(item)
        -- Include only items present in colors database
        if colors[item] ~= nil then
            train_content_filtered[item] = value
        end
    end

    -- Calculate total item count
    local total_count = 0
    for _, count in pairs(train_content_filtered) do
        total_count = total_count+count
    end

    -- Calculate color mix
    local mixed_color = initial_color()
    local mix_flag = false

    for item, count in pairs(train_content_filtered) do
        local p = count/total_count
        local weighted_color = weigh_colors(colors[item], p)
        mixed_color = add_colors(weighted_color, mixed_color)
        mix_flag = true
    end
    return mixed_color, mix_flag
end