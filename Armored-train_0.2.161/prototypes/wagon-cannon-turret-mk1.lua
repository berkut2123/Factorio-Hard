---------------------
--DEFINE FAKE ITEMS--
---------------------
data:extend({
	{
		type = "item",
		name = "wagon-cannon-turret-mk1",
				icon = "__Armored-train__/graphics/icons/trainTurrets/wagon-cannon-turret-mk1-icon.png",	
		icon_size = 32,
		flags = {},
		subgroup = "transport",
		order = "a[train-system]-k[platform_turret1]",
		stack_size = 5
	},
	
------------------
--DEFINE RECIPES--
------------------
	{
		type = "recipe",
		name = "wagon-cannon-turret-mk1",
		enabled = false,
		ingredients =
		{
			{"gun-turret", 2},												
			{"electronic-circuit", 3},
			{"iron-gear-wheel", 10},
		},
		result = "wagon-cannon-turret-mk1"
	}
})



--CUSTOM TECHNOLOGY FIX \/
-- Make new cannon turret shell magazine ammo affected by shell technology upgrades
table.insert(data.raw['technology']['physical-projectile-damage-5']['effects'], {type = "ammo-damage", ammo_category = "wagon-cannon-turret-ammo-cat", modifier = 0.9})
table.insert(data.raw['technology']['physical-projectile-damage-6']['effects'], {type = "ammo-damage", ammo_category = "wagon-cannon-turret-ammo-cat", modifier = 1.3})
table.insert(data.raw['technology']['physical-projectile-damage-7']['effects'], {type = "ammo-damage", ammo_category = "wagon-cannon-turret-ammo-cat", modifier = 1.7})

table.insert(data.raw['technology']['weapon-shooting-speed-5']['effects'], {type = "gun-speed", ammo_category = "wagon-cannon-turret-ammo-cat", modifier = 0.8})
table.insert(data.raw['technology']['weapon-shooting-speed-6']['effects'], {type = "gun-speed", ammo_category = "wagon-cannon-turret-ammo-cat", modifier = 1.5})
--CUSTOM TECHNOLOGY FIX /\
	
	
	
----------------------
--CUSTOM CANNON AMMO--
----------------------
--CUSTOM AMMO CATEGORY
local wagon_cannon_turret_ammo_cat = util.table.deepcopy(data.raw["ammo-category"]["cannon-shell"])
wagon_cannon_turret_ammo_cat.name = "wagon-cannon-turret-ammo-cat"


--CUSTOM AMMO (dummy ammo used in turret only)
--1 Regular shell
local wagon_cannon_turret_ammo = util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
wagon_cannon_turret_ammo.name = "wagon-cannon-turret-ammo"
wagon_cannon_turret_ammo.icon = "__Armored-train__/graphics/icons/ammo/turret-cannon-ammo.png"
wagon_cannon_turret_ammo.ammo_type =
    {
	--ammo category custom
      category = "wagon-cannon-turret-ammo-cat",		
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "wagon-cannon-turret-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 30,
          min_range = 5,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          }
        }
      }
    }
wagon_cannon_turret_ammo.order = "h[turret-cannon-ammo]-a[basic]"

--2 Uranium shell
local wagon_cannon_turret_uranium_ammo = util.table.deepcopy(data.raw["ammo"]["uranium-cannon-shell"])
wagon_cannon_turret_uranium_ammo.name = "wagon-cannon-turret-uranium-ammo"
wagon_cannon_turret_uranium_ammo.icon = "__Armored-train__/graphics/icons/ammo/turret-cannon-uranium-ammo.png"
wagon_cannon_turret_uranium_ammo.ammo_type =
    {
	--ammo category custom
      category = "wagon-cannon-turret-ammo-cat",		
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "wagon-cannon-turret-uranium-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 25,
          min_range = 4,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          }
        }
      }
    }
wagon_cannon_turret_uranium_ammo.order = "h[turret-cannon-ammo]-b[uranium]"


--CUSTOM PROJECTILE
--1 Regular shell
local wagon_cannon_turret_projectile = util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
wagon_cannon_turret_projectile.name =  "wagon-cannon-turret-projectile"
--Do not damage self force
wagon_cannon_turret_projectile.force_condition = "not-same"

--2 Uranium shell
local wagon_cannon_turret_uranium_projectile = util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
wagon_cannon_turret_uranium_projectile.name =  "wagon-cannon-turret-uranium-projectile"
--Do not damage self force
wagon_cannon_turret_uranium_projectile.force_condition = "not-same"



-------------------
--DEFINE ENTITIES--
-------------------
--Deep copy base data and create new one with custom parametres
local wagon_cannon_turret_mk1 = util.table.deepcopy(data.raw["ammo-turret"]["gun-turret"])				--ADDD ICON to wagon (SHOWn ON MAP AS LOH)
wagon_cannon_turret_mk1.name = "wagon-cannon-turret-mk1"
wagon_cannon_turret_mk1.minable = nil


--COLLISION AND FLAGS
-- Do not collide with parent wagon
wagon_cannon_turret_mk1.collision_mask = {"ghost-layer"};  --only for player colissions
--collision box for inserters and actual entity
wagon_cannon_turret_mk1.collision_box = {{0, 0}, {0, 0}};	
--collision box for selection box and hp of entity
wagon_cannon_turret_mk1.selection_box = {{0, 0}, {0, 0}};

--flags
wagon_cannon_turret_mk1.flags = {
  --"hide-alt-info",         
  "player-creation",        -- Can aggro enemies
  "placeable-off-grid",     
  --"not-on-map",          
  "not-repairable",         
  "not-deconstructable",    
  "not-blueprintable",      
}


--TURRET DATA SHEET
wagon_cannon_turret_mk1.inventory_size = 1
--ammo can be inserted to turret. can be deep copy of ammo stack size or...?
wagon_cannon_turret_mk1.automated_ammo_count =  10  	
--Same as wagon hp
wagon_cannon_turret_mk1.max_health = 1000
wagon_cannon_turret_mk1.attack_parameters =
    {
      type = "projectile",
      ammo_category = "wagon-cannon-turret-ammo-cat",
      cooldown = 90,
      projectile_creation_distance = 1.75,
      projectile_center = {0, 0},
      damage_modifier = 1,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 25,
      min_range = 5,
      sound =
      {
        {
            filename = "__base__/sound/fight/tank-cannon.ogg",
            --filename = "__vtk-cannon-turret__/sounds/CANNHVY5.ogg",
            volume = 1.0
        }
      },
    }

--COPY FROM BASE HP data from tank \/
-------------------------------------
local base_tank = data.raw.car["tank"];
wagon_cannon_turret_mk1.resistances = base_tank.resistances
-------------------------------------
--COPY FROM BASE HP data from tank /\


--TURRET GRAPHICS \/
-------------------------------------
--work around to delete layers using one script
local blank_layers = 
{
	layers = 
	{
		{
			axially_symmetrical = false,
			direction_count = 1,
			filename = 	"__Armored-train__/graphics/entity/entity-transparent.png",
			frame_count = 1,
			height = 16,
			width = 16
		},
	}
};

wagon_cannon_turret_mk1.attacking_animation = blank_layers;
wagon_cannon_turret_mk1.base_picture = blank_layers;
wagon_cannon_turret_mk1.folded_animation = blank_layers;
wagon_cannon_turret_mk1.folding_animation = blank_layers;
wagon_cannon_turret_mk1.prepared_animation = blank_layers;
wagon_cannon_turret_mk1.preparing_animation = blank_layers;



--FINAL RESULTS and write
data:extend({
wagon_cannon_turret_mk1,
--category
wagon_cannon_turret_ammo_cat,
--ammo 
wagon_cannon_turret_ammo,
wagon_cannon_turret_uranium_ammo,
--uranium ammo
wagon_cannon_turret_projectile,
wagon_cannon_turret_uranium_projectile
})

