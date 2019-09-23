data:extend(
{
  {
    type = "technology",
    name = "Armored-train",
    icon = "__Armored-train__/graphics/technology/armored-train-wagon-turrets.png",
	icon_size = 128,
    effects =
    {
	--Refactoring
	{
        type = "unlock-recipe",
        recipe = "armored-locomotive-mk1"
      },
	  
	  --COMMON WAGONS/PLATFORMS
	  {
        type = "unlock-recipe",
        recipe = "armored-wagon-mk1"
      },
	  {
        type = "unlock-recipe",
        recipe = "armored-platform-mk1"
      },
	  
	  
	  
	  --TURRETS FOR PLATFORMS AS ITEMS
	  {
        type = "unlock-recipe",
        recipe = "wagon-cannon-turret-mk1"
      },
	  {
        type = "unlock-recipe",
        recipe = "platform-rocket-turret-mk1"
      },
	  {
        type = "unlock-recipe",
        recipe = "platform-minigun-turret-mk1"
      },
	  
	  
	  
	  
	  
	  --TURRET PLATFORMS/WAGONS
	  {
        type = "unlock-recipe",
        recipe = "armored-platform-minigun-mk1"
      },
	  {
        type = "unlock-recipe",
        recipe = "armored-wagon-cannon-mk1"
      },
	  {
        type = "unlock-recipe",
        recipe = "armored-platform-rocket-mk1"
      },
	  {
        type = "unlock-recipe",
        recipe = "armored-wagon-chaingun-mk1"
      }
	  
	  
	  
	  

	  --AMMO TYPES
	  --bullets
	  
	  
	  
	 
    },
    prerequisites = {"turrets", "military", "railway"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 20
    },
    order = "e-g"
  }
  
})