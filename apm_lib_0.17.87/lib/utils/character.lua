require 'util'

if not apm.lib.utils.character.crafting_category then apm.lib.utils.character.crafting_category = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.character.crafting_category.add(crafting_category)
    if data.raw.player then
        table.insert(data.raw.player.player.crafting_categories, crafting_category)
    elseif data.raw.character then -- this is new to 0.17.35
        table.insert(data.raw.character.character.crafting_categories, crafting_category)
    end
    log('Info: apm.lib.utils.character.crafting_category.add(): added crafting category: "' .. tostring(crafting_category) .. '" to player.')
end