if settings.startup["bobmods-power-accumulators"].value == true then

if data.raw.item["lithium-ion-battery"] and data.raw.technology["battery-2"] then
  bobmods.lib.tech.add_prerequisite ("bob-electric-energy-accumulators-3", "battery-2")
end

if data.raw.item["silver-zinc-battery"] and data.raw.technology["battery-3"] then
  bobmods.lib.tech.add_prerequisite ("bob-electric-energy-accumulators-4", "battery-3")
end

end


if settings.startup["bobmods-power-poles"].value == true then

if data.raw.tool["advanced-logistic-science-pack"] then
  bobmods.lib.tech.replace_science_pack("electric-pole-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("electric-substation-4", "production-science-pack", "advanced-logistic-science-pack")
end

end

