data:extend(
{
	{
    type = "technology",
    name = "cargo-robots",
    icon = "__angelsindustries__/graphics/technology/robot-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"engine",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "cargo-box"
      },
	  {
        type = "unlock-recipe",
        recipe = "cargo-robot"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-construction-robot"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-construction-zone-expander"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-zone-expander"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-relay-station"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-big-chest"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-requester"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-passive-provider"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1}
	  },
      time = 30
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "cargo-robots-2",
    icon = "__angelsindustries__/graphics/technology/robot-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"cargo-robots",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "cargo-hub"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-zone-expander-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-relay-station-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-construction-zone-expander-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-storage"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-active-provider"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-buffer"
      },
    },
    unit =
    {
      count = 100,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1}
	  },
      time = 30
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "cargo-robots-3",
    icon = "__angelsindustries__/graphics/technology/robot-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"cargo-robots-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-charging-station"
      },
	  {
        type = "unlock-recipe",
        recipe = "cargo-robot-2"
      },

    },
    unit =
    {
      count = 100,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1}
	  },
      time = 30
    },
    order = "c-a"
    },
--VEHICLES
    {
    type = "technology",
    name = "angels-crawler",
    icon = "__angelsindustries__/graphics/technology/crawler-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"angels-vequipment-1",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-crawler"
      },
  	  {
        type = "unlock-recipe",
        recipe = "angels-construction-roboport-vequip"
      },
    },
    unit =
    {
      count = 60,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "angels-crawler-train",
    icon = "__angelsindustries__/graphics/technology/crawler-loco-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"angels-crawler",
	"railway",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "crawler-locomotive"
      },
	  {
        type = "unlock-recipe",
        recipe = "crawler-locomotive-wagon"
      },
	  {
        type = "unlock-recipe",
        recipe = "crawler-wagon"
      },
	  {
        type = "unlock-recipe",
        recipe = "crawler-bot-wagon"
      },
    },
    unit =
    {
      count = 60,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
--LOADERS
    -- {
    -- type = "technology",
    -- name = "angels-yellow-loader",
    -- icon = "__angelsindustries__/graphics/technology/yellow-loader-tech.png",
	-- icon_size = 128,
	-- prerequisites =
    -- {
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "loader"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 60,
      -- ingredients = {
	  -- {"automation-science-pack", 1},
	  -- },
      -- time = 15
    -- },
    -- order = "c-a"
    -- },
    -- {
    -- type = "technology",
    -- name = "angels-red-loader",
    -- icon = "__angelsindustries__/graphics/technology/red-loader-tech.png",
	-- icon_size = 128,
	-- prerequisites =
    -- {
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "fast-loader"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 60,
      -- ingredients = {
	  -- {"automation-science-pack", 1},
	  -- {"logistic-science-pack", 1},
	  -- },
      -- time = 15
    -- },
    -- order = "c-a"
    -- },
    -- {
    -- type = "technology",
    -- name = "angels-blue-loader",
    -- icon = "__angelsindustries__/graphics/technology/blue-loader-tech.png",
	-- icon_size = 128,
	-- prerequisites =
    -- {
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "express-loader"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 60,
      -- ingredients = {
	  -- {"automation-science-pack", 1},
	  -- {"logistic-science-pack", 1},
	  -- {"chemical-science-pack", 1},
	  -- },
      -- time = 15
    -- },
    -- order = "c-a"
    -- },
}
)


