bobmods.lib.tech.remove_science_pack("logistics-3", "production-science-pack")
bobmods.lib.tech.replace_prerequisite("logistics-3", "production-science-pack", "chemical-science-pack")


bobmods.lib.tech.replace_science_pack("character-logistic-slots-4", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("character-logistic-slots-5", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("character-logistic-slots-6", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_prerequisite("character-logistic-slots-4", "production-science-pack", "advanced-logistic-science-pack")

bobmods.lib.tech.replace_science_pack("logistic-system", "utility-science-pack", "advanced-logistic-science-pack")

bobmods.lib.tech.replace_science_pack("braking-force-3", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("braking-force-4", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("braking-force-5", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("braking-force-6", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("braking-force-7", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_prerequisite("braking-force-3", "production-science-pack", "advanced-logistic-science-pack")

bobmods.lib.tech.replace_science_pack("inserter-capacity-bonus-4", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("inserter-capacity-bonus-5", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("inserter-capacity-bonus-6", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("inserter-capacity-bonus-7", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_prerequisite("inserter-capacity-bonus-4", "production-science-pack", "advanced-logistic-science-pack")

bobmods.lib.tech.replace_science_pack("worker-robots-speed-3", "utility-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("worker-robots-speed-4", "utility-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("worker-robots-speed-5", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("worker-robots-speed-6", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_prerequisite("worker-robots-speed-3", "production-science-pack", "advanced-logistic-science-pack")

bobmods.lib.tech.replace_science_pack("worker-robots-storage-2", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("worker-robots-storage-3", "production-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_prerequisite("worker-robots-storage-2", "production-science-pack", "advanced-logistic-science-pack")

bobmods.lib.tech.replace_science_pack("character-logistic-trash-slots-3", "utility-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("character-logistic-trash-slots-4", "utility-science-pack", "advanced-logistic-science-pack")
bobmods.lib.tech.replace_science_pack("character-logistic-trash-slots-5", "production-science-pack", "advanced-logistic-science-pack")

bobmods.lib.tech.replace_science_pack("personal-roboport-equipment-2", "utility-science-pack", "advanced-logistic-science-pack") --pre 0.17.35
bobmods.lib.tech.replace_science_pack("personal-roboport-mk2-equipment", "utility-science-pack", "advanced-logistic-science-pack") --post 0.17.35
bobmods.lib.tech.replace_science_pack("vehicle-roboport-equipment-2", "utility-science-pack", "advanced-logistic-science-pack")


bobmods.lib.tech.add_prerequisite("chemical-science-pack", "alloy-processing-1")
bobmods.lib.tech.replace_prerequisite("production-science-pack", "productivity-module", "automation-2")
bobmods.lib.tech.remove_prerequisite("production-science-pack", "railway")

bobmods.lib.tech.replace_prerequisite("utility-science-pack", "robotics", "electric-engine")
bobmods.lib.tech.add_prerequisite("utility-science-pack", "battery-2")
bobmods.lib.tech.add_prerequisite("utility-science-pack", "ceramics")

bobmods.lib.tech.replace_prerequisite("personal-roboport-equipment-2", "utility-science-pack", "advanced-logistic-science-pack") --pre 0.17.35
bobmods.lib.tech.replace_prerequisite("personal-roboport-mk2-equipment", "utility-science-pack", "advanced-logistic-science-pack") --post 0.17.35
bobmods.lib.tech.remove_prerequisite("vehicle-roboport-equipment-2", "utility-science-pack") --it should be there, but probably isn't. 
bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "advanced-logistic-science-pack") --this way should make sure the new version is always added


bobmods.lib.tech.replace_prerequisite("vehicle-roboport-equipment-2", "utility-science-pack", "advanced-logistic-science-pack")

if settings.startup["bobmods-burnerphase"].value == true then
  if data.raw.technology["logistics-0"] then
    bobmods.lib.tech.replace_science_pack("logistics-0", "automation-science-pack", "steam-science-pack")
  end
  bobmods.lib.tech.add_prerequisite("logistics", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("automation", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("optics", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("turrets", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("stone-walls", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("military", "automation-science-pack")

  bobmods.lib.tech.add_prerequisite("automation", "electricity")
  bobmods.lib.tech.add_prerequisite("optics", "electricity")

  bobmods.lib.tech.add_prerequisite("logistic-science-pack", "lab")
  if data.raw.technology["electrolysis-1"] then
    bobmods.lib.tech.add_prerequisite("electrolysis-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("electrolysis-1", "electricity")
  end
  if data.raw.technology["alloy-processing-1"] then
    bobmods.lib.tech.add_prerequisite("alloy-processing-1", "automation-science-pack")
  end
  if data.raw.technology["chemical-processing-1"] then
    bobmods.lib.tech.add_prerequisite("chemical-processing-1", "automation-science-pack")
    if not (settings.startup["bobmods-plates-newsteel"] and settings.startup["bobmods-plates-newsteel"].value == true) then
      bobmods.lib.tech.add_prerequisite("steel-processing", "automation-science-pack")
    end
  end
  if data.raw.technology["air-compressor-1"] then
    bobmods.lib.tech.add_prerequisite("air-compressor-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("air-compressor-1", "electricity")
  end
  if data.raw.technology["water-bore-1"] then
    bobmods.lib.tech.add_prerequisite("water-bore-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("water-bore-1", "electricity")
  end
  if data.raw.technology["bob-greenhouse"] then
    bobmods.lib.tech.add_prerequisite("bob-greenhouse", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("bob-greenhouse", "electricity")
  end
  if data.raw.technology["water-miner-1"] then
    bobmods.lib.tech.add_prerequisite("water-miner-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("water-miner-1", "electricity")
  end
  if data.raw.technology["bob-boiler-2"] then
    bobmods.lib.tech.add_prerequisite("bob-boiler-2", "steam-power")
  end

  if data.raw.recipe["steam-mining-drill"] then
    data.raw.recipe["steam-mining-drill"].enabled = false
    bobmods.lib.tech.add_recipe_unlock("steam-power", "steam-mining-drill")
  end

  if data.raw.technology["basic-automation"] then
    bobmods.lib.tech.add_prerequisite("automation", "basic-automation")
    bobmods.lib.tech.replace_science_pack("basic-automation", "automation-science-pack", "steam-science-pack")
    bobmods.lib.tech.remove_recipe_unlock("basic-automation", "steam-assembling-machine")

    data.raw.technology["basic-automation"].localised_name = {"technology-name.burner-automation"}
    data:extend(
    {
      {
        type = "technology",
        name = "steam-automation",
        icon_size = 128,
        icon = "__base__/graphics/technology/automation.png",
        prerequisites =
        {
          "basic-automation",
          "steam-power",
        },
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "steam-assembling-machine"
          },
        },
        unit =
        {
          count = 10,
          ingredients =
          {
            {"steam-science-pack", 1}
          },
          time = 5
        },
        order = "a-b-1"
      }
    }
    )
  end

  if data.raw.recipe["burner-generator"] then
    bobmods.lib.recipe.enabled("burner-generator", "false")
    bobmods.lib.tech.add_recipe_unlock("electricity", "burner-generator")
  end
  if data.raw.recipe["burner-generator"] and data.raw.technology["bob-steam-engine-2"] then
    data:extend(
    {
      {
        type = "technology",
        name = "bob-steam-engine-1",
        icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
        icon_size = 128,
        prerequisites =
        {
          "electricity",
          "steam-power",
        },
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "steam-engine"
          },
        },
        unit =
        {
          count = 20,
          ingredients =
          {
            {"steam-science-pack", 1},
          },
          time = 10
        },
        order = "[steam-engine]-1",
      }
    }
    )
    bobmods.lib.tech.remove_prerequisite("electricity", "steam-power")
    bobmods.lib.tech.remove_recipe_unlock("electricity", "steam-engine")

    bobmods.lib.tech.add_prerequisite("bob-steam-engine-2", "bob-steam-engine-1")
  elseif data.raw.technology["bob-steam-engine-2"] then
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-2", "electricity")
  end
end
