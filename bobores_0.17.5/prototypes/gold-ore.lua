bobmods.ores.gold =
{
  name = "gold-ore",
  tint = {r = 1, g = 0.75, b = 0},
  map_color = {r=0.9, g=0.63, b=0},
  mining_time = 0.75,
  enabled = false,
  icon = "__bobores__/graphics/icons/gold-ore.png",
  stage_mult = 100,
  item =
  {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 2
  },
--[[
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 1,
    size = 1.2
  }
]]--
  autoplace = "control-only",
}

function bobmods.ores.gold.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("gold-ore", {
      name = "gold-ore",
      order = "c",
      base_density = 4,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.9,
    }
    )
  else
    data.raw.resource["gold-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "gold-ore",
      order = "c",
      base_density = 4,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.9,
    }
  end
  bobmods.ores.gold.enabled = true
end
