local noise = require("noise");
local tne = noise.to_noise_expression;
local resource_autoplace = require("resource-autoplace");

local function autoplace_settings(name, order, coverage)
  return
  {
    order = order,
    control = name,
    sharpness = 15/16,
    richness_multiplier = 1500,
    richness_multiplier_distance_bonus = 20,
    richness_base = 10,
    coverage = coverage,
    peaks =
    {
      {
        noise_layer = name,
        noise_octaves_difference = -0.85,
        noise_persistence = 0.4
      }
    },
    starting_area_size = 5500 * coverage,
    starting_area_amount = 1600
  }
end

resource_autoplace.get_next_resource_index() -- iron
resource_autoplace.get_next_resource_index() -- copper
resource_autoplace.get_next_resource_index() -- coal

data.raw.resource.stone.autoplace = resource_autoplace.resource_autoplace_settings{
  name = "stone",
  order = "b",
  base_density = 10,
  has_starting_area_placement = true,
  resource_index = resource_autoplace.get_next_resource_index(),
  regular_rq_factor_multiplier = 1.1;
  starting_rq_factor_multiplier = 1.5;
}
