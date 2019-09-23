local data_util = {}
data_util.turret_y_offset = 0.1
data_util.programmable_identifier = "programmable"
data_util.composite_suffix = "-_-" -- used to filter out sub-units (i.e. "-" would break most units)
data_util.damage_target_max_health = 1000000

data_util.construction_denial_range = 50

data_util.char_to_multiplier = {
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

function data_util.string_to_number(str)
    str = ""..str
    local number_string = ""
    local last_char = nil
    for i = 1, #str do
        local c = str:sub(i,i)
        if c == "." or tonumber(c) ~= nil then
            number_string = number_string .. c
        else
            last_char = c
            break
        end
    end
    if last_char and data_util.char_to_multiplier[last_char] then
        return tonumber(number_string) * data_util.char_to_multiplier[last_char]
    end
    return tonumber(number_string)
end

function data_util.replace(str, what, with)
    what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
    with = string.gsub(with, "[%%]", "%%%%") -- escape replacement
    return string.gsub(str, what, with)
end

-- splits a string by spaces
function data_util.just_words(str)
   --[[str = str
   local t = {}
   local function helper(word)
      table.insert(t, word)
      return ""
   end
   if not str:gsub("%w+", helper):find"%S" then
      return t
   end]]--
   local words = {}
   for w in str:gmatch("%S+") do
     if w  and w ~= "" then
       table.insert(words, w)
     end
   end
   if #words > 0 then
     return words
   end
end

function data_util.table_contains(table, check)
  for k,v in pairs(table) do if v == check then return true end end
  return false
end


function data_util.tech_remove_prerequisites (prototype_name, prerequisites)
  local prototype = data.raw.technology[prototype_name]
  if not prototype then return end
  for _, new_prerequisite in pairs(prerequisites) do
    if prototype.prerequisites then
      for i = #prototype.prerequisites, 1, -1 do
        if prototype.prerequisites[i] == new_prerequisite then
          table.remove(prototype.prerequisites, i)
        end
      end
    end
  end
end

return data_util
