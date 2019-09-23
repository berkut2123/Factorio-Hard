require("functions")

if smeltingelectro.value == true then
	angelsmods.functions.OV.remove_unlock("nickel-processing", "bob-nickel-plate")
	angelsmods.functions.OV.remove_unlock("zinc-processing", "bob-zinc-plate")
	angelsmods.functions.OV.remove_unlock("lead-processing", "lead-oxide")
	angelsmods.functions.OV.remove_unlock("lead-processing", "bob-lead-plate")
	angelsmods.functions.OV.remove_unlock("lead-processing", "silver-from-lead")
	angelsmods.functions.OV.remove_unlock("aluminium-processing", "alumina")
	angelsmods.functions.OV.remove_unlock("aluminium-processing", "bob-aluminium-plate")
	angelsmods.functions.OV.remove_unlock("gold-processing", "bob-gold-plate")
	angelsmods.functions.OV.remove_unlock("silicon-processing", "bob-silicon-plate")
	angelsmods.functions.OV.remove_unlock("titanium-processing", "bob-titanium-plate")
	angelsmods.functions.OV.remove_unlock("tungsten-processing", "bob-tungsten-plate")
	angelsmods.functions.OV.remove_unlock("cobalt-processing", "cobalt-oxide-from-copper")
	angelsmods.functions.OV.remove_unlock("cobalt-processing", "cobalt-plate")
	angelsmods.functions.OV.remove_unlock("cobalt-processing", "cobalt-oxide")
	angelsmods.functions.OV.remove_unlock("tungsten-processing", "tungstic-acid")
	angelsmods.functions.OV.remove_unlock("tungsten-processing", "powdered-tungsten")
	angelsmods.functions.OV.remove_unlock("tungsten-processing", "tungsten-oxide")
	angelsmods.functions.OV.remove_unlock("battery-3", "silver-nitrate")
	
	--silver plate of CMHMod spc
	--angelsmods.functions.OV.remove_unlock("gold-processing", "advanced-electrum")
	
	--CMHMod
	angelsmods.functions.OV.remove_unlock("aluminium-titanium", "aluminium-titanium-a")
	angelsmods.functions.OV.remove_unlock("zinc-processing", "zinc-iron")
	--remove_technology_unlock("zinc-processing", "zinc-iron")
	angelsmods.functions.OV.remove_unlock("advanced-tin", "zinc-tin")
	
	if recipe("bob-nickel-plate") then
	recipe("bob-nickel-plate").enabled = false
	end
	if recipe("bob-zinc-plate") then
	recipe("bob-zinc-plate").enabled = false
	end
	if recipe("lead-oxide") then
	recipe("lead-oxide").enabled = false
	end
	if recipe("bob-lead-plate") then
	recipe("bob-lead-plate").enabled = false
	end
	if recipe("silver-from-lead") then
	recipe("silver-from-lead").enabled = false
	end
	if recipe("alumina") then
	recipe("alumina").enabled = false
	end
	if recipe("bob-aluminium-plate") then
	recipe("bob-aluminium-plate").enabled = false
	end
	if recipe("bob-gold-plate") then
	recipe("bob-gold-plate").enabled = false
	end
	if recipe("bob-silicon-plate") then
	recipe("bob-silicon-plate").enabled = false
	end
	if recipe("bob-titanium-plate") then
	recipe("bob-titanium-plate").enabled = false
	end
	if recipe("bob-tungsten-plate") then
	recipe("bob-tungsten-plate").enabled = false
	end
	if recipe("cobalt-oxide-from-copper") then
	recipe("cobalt-oxide-from-copper").enabled = false
	end
	if recipe("cobalt-plate") then
	recipe("cobalt-plate").enabled = false
	end
	if recipe("cobalt-oxide") then
	recipe("cobalt-oxide").enabled = false
	end
	if recipe("tungstic-acid") then
	recipe("tungstic-acid").enabled = false
	end
	if recipe("powdered-tungsten") then
	recipe("powdered-tungsten").enabled = false
	end
	if recipe("tungsten-oxide") then
	recipe("tungsten-oxide").enabled = false
	end
	if recipe("silver-nitrate") then
	recipe("silver-nitrate").enabled = false
	end
	if recipe("aluminium-titanium-a") then
	recipe("aluminium-titanium-a").enabled = false
	end
	if recipe("zinc-iron") then
	--recipe("zinc-iron").enabled = false
	data.raw.recipe["zinc-iron"]=nil
	end
	if recipe("zinc-tin") then
	recipe("zinc-tin").enabled = false
	end
end