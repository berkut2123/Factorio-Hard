bobmods.ores.sulfur =
{
  name = "sulfur",
  tint = {r = 0.8, g = 0.75, b = 0.1},
  map_color = {r=0.8, g=0.75, b=0.1},
  mining_time = 0.25,
  enabled = false,
  icon = "__base__/graphics/icons/sulfur.png",
  stage_mult = 100,
  items =
  {
    {
      name = "sulfur"
    }
  },
  sprite =
  {
    sheet = 4
  },
--[[
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 1,
    size = 1
  }
]]--
  autoplace = "control-only",
}

function bobmods.ores.sulfur.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("sulfur", {
      name = "sulfur",
      order = "c",
      base_density = 8,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
    )
  else
    data.raw.resource["sulfur"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "sulfur",
      order = "c",
      base_density = 8,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
  end
  bobmods.ores.sulfur.enabled = true
end
