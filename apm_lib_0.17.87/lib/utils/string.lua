require 'util'

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local char_to_multiplier = {
    m = 0.001,
    c = 0.01,
    d = 0.1,
    h = 100,
    k = 1000,
    M = 1000000,
    G = 1000000000,
    T = 1000000000000,
    P = 1000000000000000,
}

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.string.convert_to_number(string)
    string = ""..string
    local number_string = ""
    local last_char = nil
    for i = 1, #string do
        local c = string:sub(i,i)
        if c == "." or tonumber(c) ~= nil then
            number_string = number_string .. c
        else
            last_char = c
            break
        end
    end
    if last_char and char_to_multiplier[last_char] then
        return tonumber(number_string) * char_to_multiplier[last_char]
    end
    return tonumber(number_string)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.string.version_to_number(version)
    version = string.gsub(version, "%.", "")
    version = tonumber(version)
    return version
end