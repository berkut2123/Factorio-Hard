bobmods.ores.tungsten =
{
  name = "tungsten-ore",
  tint = {r = 0.75, g = 0.5, b = 0.25},
  map_color = {r = 0.375, g = 0.25, b = 0.125},
  mining_time = 3,
  enabled = false,
  icon = "__bobores__/graphics/icons/tungsten-ore.png",
  stage_mult = 100,
  item =
  {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 1
  },
--[[  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.8,
    size = 1.2
  }
]]--
  autoplace = "control-only",
}


function bobmods.ores.tungsten.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("tungsten-ore", {
      name = "tungsten-ore",
      order = "c",
      base_density = 8,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
    )
  else
    data.raw.resource["tungsten-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "tungsten-ore",
      order = "c",
      base_density = 8,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
  end
  bobmods.ores.tungsten.enabled = true
end
