require("prototypes.technology")

if bobmods.assembly then
	if settings.startup["bobmods-assembly-electronicmachines"].value == true then
		data.raw.recipe["angels-wire-coil-insulated-converting"].category = "electronics"
	end
end