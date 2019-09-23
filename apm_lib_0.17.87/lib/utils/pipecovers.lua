require 'util'

if not utils then utils = {} end
if not apm.lib.utils.pipecovers then apm.lib.utils.pipecovers = {} end

-- Pipecovers
function apm.lib.utils.pipecovers.assembler2pipepictures()
  return
  {
    north =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5,
      }
    },
    east =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-E.png",
        priority = "extra-high",
        width = 42,
        height = 76,
        shift = util.by_pixel(-24.5, 1),
        scale = 0.5,
      }
    },
    south =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-S.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5,
      }
    },
    west =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-W.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5,
      }
    }
  }
end

function apm.lib.utils.pipecovers.assembler3pipepictures()
  return
  {
    north =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5,
      }
    },
    east =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-E.png",
        priority = "extra-high",
        width = 42,
        height = 76,
        shift = util.by_pixel(-24.5, 1),
        scale = 0.5,
      }
    },
    south =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-S.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5,
      }
    },
    west =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
      hr_version = {
        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-W.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5,
      }
    }
  }
end

function apm.lib.utils.pipecovers.pipecoverspictures()
  return {
    north =
    {
      layers = {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    east =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    south =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    west =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    }
  }
end