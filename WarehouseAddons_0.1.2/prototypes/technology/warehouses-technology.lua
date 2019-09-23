data:extend(
{

	{
    type = "technology",
    name = "logistic-warehouses-2",
    icon = "__angelsaddons-warehouses__/graphics/technology/warehouses-logistics.png",
	icon_size = 128,
	prerequisites =
    {
	"angels-logistic-warehouses",
    },
    effects =
    {
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-passive-provider-mk2"
      },
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-active-provider-mk2"
      },
	  {
        type = "unlock-recipe",
        recipe = "warehouse-storage-mk2"
      },
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-requester-mk2"
      },
    },
    unit =
    {
      count = 125,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  {"chemical-science-pack", 1},
	  },
      time = 20
    },
    order = "c-a"
    },
	
	{
    type = "technology",
    name = "logistic-warehouses-3",
    icon = "__angelsaddons-warehouses__/graphics/technology/warehouses-logistics.png",
	icon_size = 128,
	prerequisites =
    {
	"logistic-warehouses-2",
    },
    effects =
    {
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-passive-provider-mk3"
      },
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-active-provider-mk3"
      },
	  {
        type = "unlock-recipe",
        recipe = "warehouse-storage-mk3"
      },
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-requester-mk3"
      },
    },
    unit =
    {
      count = 200,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  {"chemical-science-pack", 1},
	  {"production-science-pack", 1},
	  },
      time = 25
    },
    order = "c-a"
    },
	
	{
    type = "technology",
    name = "logistic-warehouses-4",
    icon = "__angelsaddons-warehouses__/graphics/technology/warehouses-logistics.png",
	icon_size = 128,
	prerequisites =
    {
	"logistic-warehouses-3",
    },
    effects =
    {
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-passive-provider-mk4"
      },
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-active-provider-mk4"
      },
	  {
        type = "unlock-recipe",
        recipe = "warehouse-storage-mk4"
      },
  	  {
        type = "unlock-recipe",
        recipe = "warehouse-requester-mk4"
      },
    },
    unit =
    {
      count = 300,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  {"chemical-science-pack", 1},
	  {"production-science-pack", 1},
	  {"utility-science-pack", 1}
	  },
      time = 30
    },
    order = "c-a"
    }

})
