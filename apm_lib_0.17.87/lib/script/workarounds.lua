if not workarounds then workarounds = {} end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function science_pack_disable_recipe(force, recipe_name)
    if force.recipe[recipe_name] ~= nil then
        force.recipe[recipe_name].enabled = false
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function workarounds.science_pack_tech_check()
	if game.tick == 1 or game.tick % 60 == 13 then
	    for _, v in pairs(game.forces) do
	        --if v.force.technologies["ap_science_pack_1"].researched == false then
	        --    science_pack_disable_recipe(v.force, 'science-pack-1')
	        --    science_pack_disable_recipe(v.force, 'lab')
	        --end
	        --if v.force.technologies["ap_science_pack_2"].researched == false then
	        --    science_pack_disable_recipe(v.force, 'science-pack-2')
	        --end
		end
	end
end


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
return workarounds