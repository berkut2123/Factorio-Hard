if settings.startup["bobmods-lib-resource-generator"].value == true or not resource_autoplace.initialize_patch_set then

local noise = require("noise")
local expression_to_ascii_math = require("noise.expression-to-ascii-math")
local tne = noise.to_noise_expression
local litexp = noise.literal_expression

local starting_resource_count = 4 --value doesn't matter as they're calculated later.
local regular_resource_count = 6

local pointillist_mode = false
local patch_blobbiness_enabled = true

local function dump_expression(name, expr)
  log(name..":\n"..tostring(expression_to_ascii_math(expr)))
end

local onethird = tne(1)/3 -- Looks nicer in output than 0.333333

if not resource_generator then
  resource_generator =
  {
    resource_autoplace_data = {},
    resource_indexes = {
      ["iron-ore"] = 0,
      ["copper-ore"] = 1,
      ["coal"] = 2,
      ["stone"] = 3,
      ["crude-oil"] = 4,
      ["uranium-ore"] = 5,
    },
    next_resource_index = 6 -- Going to start at 6 as there's already 6 entires(0-5).
  }
end

local resource_autoplace_data = resource_generator.resource_autoplace_data
local resource_indexes = resource_generator.resource_indexes

local function get_highest_resource_index()
  local highest = 0
  for resource_name, resource_index in pairs(resource_indexes) do
    if resource_index > highest then
      highest = resource_index
    end
  end
  return highest
end

function resource_generator.get_next_resource_index()
  local resource_index = get_highest_resource_index() + 1
  if resource_generator.next_resource_index < resource_index then
    resource_generator.next_resource_index = resource_index
  else
    resource_index = resource_generator.next_resource_index
  end
  resource_generator.next_resource_index = resource_generator.next_resource_index + 1
  return resource_index
end

local get_next_resource_index = resource_generator.get_next_resource_index


local function get_first_resource_name_from_index(index)
  for resource_name, resource_index in pairs(resource_indexes) do
    if index == resource_index then
      return resource_name
    end
  end
  return nil
end

local function get_all_resource_names_from_index(index)
  local names = {}
  for resource_name, resource_index in pairs(resource_indexes) do
    if index == resource_index then table.insert(names, resource_name) end
  end
  return names 
end

local function get_resource_name_from_index(index)
  local name = nil
  if type(index) == "number" then
    name = get_first_resource_name_from_index(index) -- the number should be on a named entry
  elseif type(index) == "string" then
    if resource_indexes[index] then -- the name is on the list
      name = index
    end
  end
  return name
end


local function update_autoplace_indexes()
  local index = 0
  local resource_indexes_internal = {} -- ordered list
  local names = {} -- temp to store the ones to add later

  for resource_name, resource in pairs(resource_autoplace_data) do
    local index_name = get_resource_name_from_index(resource.resource_index)
    if index_name ~= nil then -- if this fails, the resource wasn't set up properly
      resource.resource_index = index_name -- Change to the name in the new list
      if resource.has_starting_area_placement == nil -- This resource is placed everywhere, inside and outside of the starting area, treat as a starting area resource
      or resource.has_starting_area_placement == true -- this is a resource in the starting area
      then
        if not resource_indexes_internal[index_name] then -- if this fails, the name is already used
          resource_indexes_internal[index_name] = index -- add the name
          index = index + 1
        end
      else -- this is not a resource in the starting area
        table.insert(names, index_name)
      end
    end
  end
  starting_resource_count = index
--  log("resource_indexes_internal = " .. serpent.block(resource_indexes_internal))
--  log("names = " .. serpent.block(names))

  -- add all the non-starting resources
  for _, index_name in pairs(names) do
    if not resource_indexes_internal[index_name] then -- if this fails, the name is already used
      resource_indexes_internal[index_name] = index -- add the name
      index = index + 1
    end
  end
  regular_resource_count = index
--  log("resource_indexes_internal = " .. serpent.block(resource_indexes_internal))
--  log("starting_resource_count = " .. starting_resource_count)
--  log("regular_resource_count = " .. regular_resource_count)

  for name, resource in pairs(resource_autoplace_data) do
    if type(resource.resource_index) == "string" -- it's a string
    and resource_indexes_internal[resource.resource_index] --an entry exists in the table
    then
      resource_indexes[resource.resource_index] = resource_indexes_internal[resource.resource_index] -- update resource_indexes
      resource.resource_index = resource_indexes_internal[resource.resource_index] -- sets the number based on the new ordered list.
    end
  end
end



function resource_generator.setup_resource_autoplace_data(name, params)
  if resource_generator.generated then
    resource_generator.generated = nil
  end

  if params.resource_index == nil then
    if resource_indexes[name] then
      params.resource_index = resource_indexes[name]
    else
      params.resource_index = get_next_resource_index()
    end
  end
  if type(params.resource_index) == "number" then
    resource_indexes[name] = params.resource_index
  elseif type(params.resource_index) == "string" then
    if not resource_indexes[params.resource_index] then
      resource_indexes[params.resource_index] = get_next_resource_index()
    end
  end
  resource_autoplace_data[name] = params
  return params
end



local function resource_autoplace_settings(params)
  local name = params.name
  local order = params.order or "d"
  -- How much of this stuff (probability * richness) should occur per tile on average near the starting area?
  local base_density = params.base_density
  -- Random probability that this stuff is placed when probability is otherwise positive
  -- This IS automatically compensated for by richness, so you don't need to adjust base_density
  local random_probability = params.random_probability or 1
  local base_spots_per_km2 = params.base_spots_per_km2 or 2.5
  local random_spot_size_minimum = params.random_spot_size_minimum or 0.25
  local random_spot_size_maximum = params.random_spot_size_maximum or 2.00
  -- Amplitude of spot 'blob noise' relative to typical spot amplitude
  local regular_blob_amplitude_multiplier = 1/8 * (params.regular_blob_amplitude_multiplier or 1)
  local starting_blob_amplitude_multiplier = 1/8 * (params.starting_blob_amplitude_multiplier or 1)

  local control_setting = noise.get_control_setting(name)
  local frequency_multiplier = control_setting.frequency_multiplier
  local size_multiplier = control_setting.size_multiplier
  local density_multiplier = frequency_multiplier * size_multiplier

  -- The following are more dangerous, since they'll throw total quantities off if you don't compensate for them:

  -- additional_richness will be added to richness but does not affect probability of anything being placed at all.
  -- This is NOT automatically compensated for, because that would be difficult to calculate.
  -- The caller will need to compensate for any additional_richness by adjusting base_density.
  local additional_richness = params.additional_richness or 0
   -- richness will be clamped to minimum_richness at the low end anywhere the stuff is otherwise placed
   -- Not automatically compensated for.
  local minimum_richness = params.minimum_richness or 0
  -- 'post' as in multiplied after everything else is calculated, including additional_richness
  -- and minimum_richness.
  local richness_post_multiplier = (params.richness_post_multiplier or 1) * control_setting.richness_multiplier

  local seed1 = 100

  -- rq_factor is the ratio of the radius of a patch to the cube root of its quantity,
  -- i.e. radius of a quantity=1 patch; higher values = fatter, shallower patches
  -- Watch out!  Shallower patches are more heavily thrown off by noise,
  -- so adjust noise amplitude accordingly!
  -- (this is automatically done -- se *_blob_amplitude, below)
  local regular_rq_factor = (params.regular_rq_factor_multiplier or 1) * 1 / 10
  local starting_rq_factor = (params.starting_rq_factor_multiplier or 1) * 1 / 7

  local elevation = noise.var("elevation")
  local distance = noise.var("distance")

  -- > I just realized because of the new rule of "keep ores outside the
  -- > starting area", the starting area size setting should not affect ore
  -- > placement. The ore's starting area should be it's own fixed value
  -- > that ignores the setting.
  -- Twinsen, August 2018
  local starting_resource_placement_radius = starting_resource_count * 20 + 40
  local regular_modulation
  -- has_starting_area_placement values:
  -- - true  - place in starting area and outside starting area independently
  -- - false - place outside starting area but not inside
  -- - nil   - place everywhere as if there is no starting area

  local regular_patch_fade_in_distance = 300
  local regular_ns_multiplier_at
  if params.has_starting_area_placement == nil then
    regular_ns_multiplier_at = function(dist) return 1 end
  else
    regular_ns_multiplier_at = function(dist)
      return noise.clamp((dist - starting_resource_placement_radius) / regular_patch_fade_in_distance, 0, 1)
    end
  end
  local double_density_distance = 1300 -- distance at which patches have twice as much stuff in them

  -- Maximum distance at which blob amplitude should keep increasing along with spot height
  local regular_blob_amplitude_maximum_distance = double_density_distance
  local spot_enlargement_maximum_distance = regular_blob_amplitude_maximum_distance

  -- Get distance for purposes of calculating regular ore density, patch size, and richness
  local function size_effective_distance_at(dist)
    if params.has_starting_area_placement == nil then
      return dist
    else
      -- If there's a starting area measure from the edge of the fade-in radius
      return dist - regular_patch_fade_in_distance
    end
  end

  local function regular_density_at(dist)
    -- Don't increase density beyond spot_enlargement_maximum_distance
    -- because large spots get unwieldy.  We'll increase richness after that, instead.
    effective_distance = noise.clamp(size_effective_distance_at(dist), 0, spot_enlargement_maximum_distance)
    local distance_density_multiplier = 1 + effective_distance / double_density_distance
    return base_density * density_multiplier * distance_density_multiplier * regular_ns_multiplier_at(dist)
  end
  local spots_per_km2_near_start = base_spots_per_km2 * frequency_multiplier
  local candidate_point_count = tne(128)
  
  if pointillist_mode then
    -- Split ore into lots and lots and lots of little patches
    -- so that we can get a better idea of the underlying distribution
    candidate_point_count = 10000 -- hardcoded max so we don't melt the player's CPU
    spots_per_km2_near_start = candidate_point_count / regular_resource_count
  end

  -- Regular spot quantity without randomization added
  local function regular_spot_quantity_base_at(dist)
    return regular_density_at(dist) * 1000000 / spots_per_km2_near_start
  end
  -- Regular spot quantity averaging over randomization
  local function regular_spot_quantity_typical_at(dist)
    local average_random_size_multiplier = (random_spot_size_minimum + random_spot_size_maximum) / 2
    return average_random_size_multiplier * regular_spot_quantity_base_at(dist)
  end
  local function regular_spot_height_typical_at(dist)
    return regular_spot_quantity_typical_at(dist)^(onethird) / ((math.pi/3) * regular_rq_factor^2)
  end

  local regular_density_expression = regular_density_at(distance)
  local regular_spot_quantity_expression = noise.random_between(random_spot_size_minimum, random_spot_size_maximum) * regular_spot_quantity_base_at(distance)
  local regular_spot_radius_expression = noise.min(32, regular_rq_factor * regular_spot_quantity_expression ^ (onethird))

  if params.has_starting_area_placement ~= nil then
    regular_blob_amplitude_maximum_distance = regular_blob_amplitude_maximum_distance + regular_patch_fade_in_distance
  end
  local function regular_blob_amplitude_at(dist)
    return regular_blob_amplitude_multiplier * noise.min(
      regular_spot_height_typical_at(regular_blob_amplitude_maximum_distance),
      regular_spot_height_typical_at(dist)
    )
  end
  local regular_blob_amplitude_maximum = regular_blob_amplitude_at(regular_blob_amplitude_maximum_distance)
  local regular_blob_amplitude_expression = regular_blob_amplitude_at(distance)

  -- Values for starting spots.
  -- Simpler calculations than for regular spots because they are only placed
  -- in one place and therefore there are fewer variables!

  -- reduce the influence of the frequency slider over the amount of ore in the starting area.
  -- note that starting_spot_count is still set to frequency_multiplier below, so we still split the ore to a fairly high amount of patches.
  local starting_frequency_multiplier = ((frequency_multiplier - 1) * 0.5) + 1
  local starting_amount = 40000 * base_density * starting_frequency_multiplier * size_multiplier
  --local starting_amount = 1000000 -- nicer for testing - just check that all spots have ~1.0M
  local starting_area_sharpness = tne(math.huge)
  local starting_resource_placement_area = math.pi*starting_resource_placement_radius*starting_resource_placement_radius
  local starting_density = starting_amount / starting_resource_placement_area
  -- Goes < 0 outside of starting area and at negative elevations
  local starting_modulation =
    noise.clamp((starting_resource_placement_radius - distance) * starting_area_sharpness, 0, 1)
  local starting_feasibility =
    noise.clamp((elevation - 1) / 10, 0, 1) * starting_modulation
     -- Allow resources at lower elevations for starting

  -- Set minimum_favorability_for_full_placement to lower numbers to decrease the likelihood that the starting patches get split.
  -- Quantity will automatically be clamped by the spot noise function
  -- and radius will be automatically adjusted, too,
  -- so it's fine for the spot quantity to be more than the region target quantity.
  local minimum_favorability_for_full_placement = 1/2
  local starting_spot_count = frequency_multiplier
  local starting_area_spot_quantity = starting_amount / minimum_favorability_for_full_placement / starting_spot_count
  local starting_spot_height = starting_area_spot_quantity ^ (1/3) / ((math.pi/3) * starting_rq_factor^2)
  local starting_blob_amplitude = starting_blob_amplitude_multiplier * starting_spot_height

  -- since starting and regular spots get maxed together,
  -- the basement value should be the lower of the two.
  -- This value needs to be low enough that any noise added to it is still below zero
  -- so that we don't get bits of ores sticking out between spot noise spots.
  -- It also needs to be constant because that's how the spot noise op works.
  -- Simply using -infinity would work, but calculating it based on blob amplitude:
  -- a) looks nicer if you render the value on a map preview
  -- b) acts as a check on our blob_amplitude calculations
  local basement_value = noise.min(-6 * regular_blob_amplitude_maximum,
                                   -6 * starting_blob_amplitude)

  local regular_spots = tne{
    type = "function-application",
    function_name = "spot-noise",
    arguments =
    {
      x = noise.var("x"),
      y = noise.var("y"),
      seed0 = noise.var("map_seed"),
      seed1 = tne(seed1),
      region_size = tne(16 * regular_resource_count + 928),
      candidate_point_count = tne(candidate_point_count),
      skip_span = tne(regular_resource_count),
      skip_offset = tne(params.resource_index or 0),
      density_expression = litexp(regular_density_expression), -- low-frequency noise evaluate for an entire region
      spot_quantity_expression = litexp(regular_spot_quantity_expression), -- used to figure out where spots go
      hard_region_target_quantity = tne(false), -- it's fine for large spots to push region quantity past the target
      spot_radius_expression = litexp(regular_spot_radius_expression),
      spot_favorability_expression = litexp(1),
      basement_value = basement_value,
      maximum_spot_basement_radius = tne(128)
    }
  }

  -- If you change starting area region size,
  -- also change the default starting area position in MapGenSettings
  local starting_spots = tne{
    type = "function-application",
    function_name = "spot-noise",
    arguments =
    {
      x = noise.var("x"),
      y = noise.var("y"),
      seed0 = noise.var("map_seed"),
      seed1 = tne(seed1+1),
      skip_span = tne(starting_resource_count),
      skip_offset = tne(params.resource_index or 0),
      region_size = tne(starting_resource_placement_radius * 2),
      candidate_point_count = tne(128),
      minimum_candidate_point_spacing = tne(32),
      density_expression = litexp(starting_density * starting_modulation),
      spot_quantity_expression = litexp(starting_area_spot_quantity),
      hard_region_target_quantity = tne(true), -- Since there's [usually] only one spot, clamp its quantity to the target quantity
      spot_radius_expression = litexp(starting_rq_factor * starting_area_spot_quantity ^ (onethird)),
      spot_favorability_expression = litexp(
        starting_feasibility * 2 -
        1 * distance / starting_resource_placement_radius +
        noise.random(0.5)
      ),
      basement_value = basement_value,
      maximum_spot_basement_radius = tne(128) -- does making this huge make a difference?
    }
  }

  if pointillist_mode or not patch_blobbiness_enabled then
    regular_blob_amplitude_expression = 0
  end
  if not patch_blobbiness_enabled then
    starting_blob_amplitude = 0
  end

  -- Add some blobbiness
  local blobs0 = tne{
    type = "function-application",
    function_name = "factorio-basis-noise",
    arguments =
    {
      x = noise.var("x"),
      y = noise.var("y"),
      seed0 = noise.var("map_seed"),
      seed1 = tne(seed1),
      input_scale = tne(1/8),
      output_scale = tne(1)
    }
  } + tne{
    type = "function-application",
    function_name = "factorio-basis-noise",
    arguments =
    {
      x = noise.var("x"),
      y = noise.var("y"),
      seed0 = noise.var("map_seed"),
      seed1 = tne(seed1),
      input_scale = tne(1/24),
      output_scale = tne(1)
    }
  }
  local blobs0f = blobs0 - 1/4
  
  local blobs1 = blobs0 + tne{
    type = "function-application",
    function_name = "factorio-basis-noise",
    arguments =
    {
      x = noise.var("x"),
      y = noise.var("y"),
      seed0 = noise.var("map_seed"),
      seed1 = tne(seed1),
      input_scale = tne(1/64),
      output_scale = tne(1.5)
    }
  }
  local blobs1f = blobs1 - onethird -- attempt to remove positive bias

  local regular_patches = regular_spots + blobs1f * regular_blob_amplitude_expression
  local starting_patches = starting_spots + blobs0f * starting_blob_amplitude

  local all_patches
  if params.has_starting_area_placement == true then
    all_patches = noise.max(starting_patches, regular_patches)
  elseif params.has_starting_area_placement == false then
    all_patches = regular_patches
  else -- nil or unspecified means just make it uniform everywhere
    all_patches = regular_patches
  end

  local richness_expression = noise.delimit_procedure(all_patches) -- Re-use all that stuff between richness/probability!
  local probability_expression = noise.clamp(richness_expression, 0, 1)
  if random_probability < 1 then
    richness_expression = richness_expression / random_probability
    probability_expression = probability_expression * tne{
      type = "function-application",
      function_name = "random-penalty",
      arguments =
      {
       source = tne(1),
       x = noise.var("x"),
       y = noise.var("y"),
       amplitude = tne(1/random_probability) -- put random_probability points with probability < 0
      }
    }
  end
  if additional_richness > 0 then
    richness_expression = richness_expression + additional_richness
  end
  if minimum_richness > 0 then
    richness_expression = noise.max(richness_expression, minimum_richness)
  end

  -- sed = size-effective distance
  local function post_semd_richness_distance_multiplier_at(sed)
    local ddd = double_density_distance
    local semd = spot_enlargement_maximum_distance
    -- density = pre-richness-mutliplied density * richness_distance_multiplier.
    -- Since pre-richness-multiplied density plateaus at semd,
    -- richness needs to increase at that point, and by this much:
    return (ddd + sed)/(ddd + semd)
  end
  local richness_distance_multiplier = noise.max(1, post_semd_richness_distance_multiplier_at(size_effective_distance_at(distance)))

  richness_expression = richness_expression * richness_distance_multiplier * richness_post_multiplier
  
  local ret =
  {
    order = order,
    control = name,
    probability_expression = probability_expression,
    richness_expression = richness_expression
  }
  
  return ret
end


function resource_generator.finalise_resource_autoplace()
  if not resource_generator.generated then
--    log("resource_autoplace_data = " .. serpent.block(resource_autoplace_data))
    update_autoplace_indexes()
--    log("resource_autoplace_data = " .. serpent.block(resource_autoplace_data))
    for name, resource in pairs(resource_autoplace_data) do
      if data.raw.resource[name] then
        data.raw.resource[name].autoplace = resource_autoplace_settings(resource)
      end
    end
    resource_generator.generated = true
  end
end

end