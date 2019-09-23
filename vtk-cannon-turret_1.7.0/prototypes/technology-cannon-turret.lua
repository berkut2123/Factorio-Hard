-- New cannon turret and its shell magazine ammo technology
data:extend(
{
  {
    type = "technology",
    name = "vtk-cannon-turret-unlock",
    icon_size = 128,
    icon = "__vtk-cannon-turret__/graphics/technology/cannon-turret-tech.png",
    effects = 
    {
        {
          type = "unlock-recipe",
          recipe = "vtk-cannon-turret"
        },
        {
          type = "unlock-recipe",
          recipe = "vtk-cannon-turret-heavy"
        },
        {
          type = "unlock-recipe",
          recipe = "cannon-shell-magazine"
        },
        {
          type = "unlock-recipe",
          recipe = "explosive-cannon-shell-magazine"
        },
      },
    prerequisites = {"turrets", "tanks"}, 
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 30,
    },
    upgrade = true,
    order = "e-c-c-a"
  },
  {
    type = "technology",
    name = "vtk-cannon-turret-wall-resistance",
    icon_size = 128,
    icon = "__vtk-cannon-turret__/graphics/technology/vtk-cannon-turret-wall-resistance.png",
    effects = 
    {
        {
          type = "nothing",
          effect_description = "Walls and gates explosion 90% resistance bonus"
        },
      },
    prerequisites = {"vtk-cannon-turret-unlock", "stone-walls"}, 
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 30,
    },
    upgrade = true,
    order = "e-c-c-a"
  },
})

-- Set unlock on uranium magazine ammo on uranium ammo technology
table.insert(data.raw['technology']['uranium-ammo']['effects'], {type = "unlock-recipe", recipe = "uranium-cannon-shell-magazine"})
table.insert(data.raw['technology']['uranium-ammo']['effects'], {type = "unlock-recipe", recipe = "explosive-uranium-cannon-shell-magazine"})


-- Make new cannon turret shell magazine ammo affected by shell technology upgrades
table.insert(data.raw['technology']['physical-projectile-damage-5']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 0.9})
table.insert(data.raw['technology']['physical-projectile-damage-6']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 1.3})
table.insert(data.raw['technology']['physical-projectile-damage-7']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 1})

table.insert(data.raw['technology']['weapon-shooting-speed-5']['effects'], {type = "gun-speed", ammo_category = "cannon-shell-magazine", modifier = 0.8})
table.insert(data.raw['technology']['weapon-shooting-speed-6']['effects'], {type = "gun-speed", ammo_category = "cannon-shell-magazine", modifier = 1.5})
