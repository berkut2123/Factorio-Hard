local json = require ('json')
local table = require ('table')

-- Factorio has a "data" object with an "extend" method
-- on it. We'll just dummy it up so we can transform
-- the lua table into json when "data:extend" is called.
data = {}
data['items'] = {}

function data:extend (what)
    -- Store the conversion off so we can access it.
    for i, v in ipairs (what) do
        table.insert (data.items, v)
    end
    --data.json = json.encode (what)
end

if not arg[1] then
    print ('error: prototype file not specified')
    return
end

-- Load and process the LUA file.
for _, file in ipairs (arg) do
    dofile (file)
end

print (json.encode (data.items))
