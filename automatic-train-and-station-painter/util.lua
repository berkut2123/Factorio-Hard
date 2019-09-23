function normalize(content, norm_val)
    if content == nil then
        return nil
    end

    local normed_content = {}
    for index, value in pairs(content) do
        normed_content[index] = value/norm_val
    end
    return normed_content
end

function tableMerge(t1, t2)
    if t1 == nil or t2 == nil then
        return t1 or t2
    end

    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

function print_color(desc, color)
    if color == nil then
        print (string.format ("%s = {}", desc))
    else
        print (string.format(
                "%s = {r=%f, g=%f, b=%f a=%f}",
                desc, color.r, color.g, color.b, color.a
        ))
    end
end

function printf(content)
    if type(content) == 'table' then
        --        game.print("nil")
        return
    end
    for key, value in pairs(content) do
        game.print(key,value)
    end
end

function split(str, pat)
    local t = {}
    local fpat = "(.-)" .. pat
    local last_end = 1
    local s, e, cap = str:find(fpat, 1)
    while s do
        if s ~= 1 or cap ~= "" then
            table.insert(t,cap)
        end
        last_end = e+1
        s, e, cap = str:find(fpat, last_end)
    end
    if last_end <= #str then
        cap = str:sub(last_end)
        table.insert(t, cap)
    end
    return t
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    return count
end