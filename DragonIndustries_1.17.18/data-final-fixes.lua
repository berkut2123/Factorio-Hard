require "tech"

for name,tech in pairs(data.raw.technology) do
	if techUsesPack(tech, "logistic-science-pack") and not techHasDependencyRecursive(tech, "logistic-science-pack") then
		table.insert(tech.prerequisites, "logistic-science-pack")
	end
	if techUsesPack(tech, "chemical-science-pack") and not techHasDependencyRecursive(tech, "chemical-science-pack") then
		table.insert(tech.prerequisites, "chemical-science-pack")
	end
	if techUsesPack(tech, "production-science-pack") and not techHasDependencyRecursive(tech, "production-science-pack") then
		table.insert(tech.prerequisites, "production-science-pack")
	end
	if techUsesPack(tech, "utility-science-pack") and not techHasDependencyRecursive(tech, "utility-science-pack") then
		table.insert(tech.prerequisites, "utility-science-pack")
	end
	if techUsesPack(tech, "space-science-pack") and not techHasDependencyRecursive(tech, "space-science-pack") then
		table.insert(tech.prerequisites, "space-science-pack")
	end
end