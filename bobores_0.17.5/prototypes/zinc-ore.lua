bobmods.ores.zinc =
{
  name = "zinc-ore",
  tint = {r=0.34, g=0.9, b=0.81},
  map_color = {r=0.47, g=1, b=0.96},
  mining_time = 1.5,
  enabled = false,
  icon = "__bobores__/graphics/icons/zinc-ore.png",
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


function bobmods.ores.zinc.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("zinc-ore", {
      name = "zinc-ore",
      order = "c",
      base_density = 4,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.8,
    }
    )
  else
    data.raw.resource["zinc-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "zinc-ore",
      order = "c",
      base_density = 4,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.8,
    }
  end
  bobmods.ores.zinc.enabled = true
end
