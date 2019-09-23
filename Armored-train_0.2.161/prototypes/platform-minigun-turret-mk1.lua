---------------------
--DEFINE FAKE ITEMS--
---------------------
data:extend({
	{
		type = "item",
		name = "platform-minigun-turret-mk1",
		icon = "__Armored-train__/graphics/icons/trainTurrets/platform-minigun-turret-mk1-icon.png",	
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
		name = "platform-minigun-turret-mk1",
		enabled = false,
		ingredients =
		{
			{"gun-turret", 1},												
			{"electronic-circuit", 1},
			{"iron-gear-wheel", 10},
		},
		result = "platform-minigun-turret-mk1"
	}
})


	
-------------------
--DEFINE ENTITIES--
-------------------
--Deep copy base data and create new one with custom parametres
local platform_minigun_turret_mk1 = util.table.deepcopy(data.raw["ammo-turret"]["gun-turret"])				--ADDD ICON to wagon (SHOWn ON MAP AS LOH)
platform_minigun_turret_mk1.name = "platform-minigun-turret-mk1"
platform_minigun_turret_mk1.minable = nil


--COLLISION AND FLAGS
-- Do not collide with parent wagon
platform_minigun_turret_mk1.collision_mask = {"ghost-layer"};  --only for player colissions
--collision box for inserters and actual entity
platform_minigun_turret_mk1.collision_box = {{0, 0}, {0, 0}};	
--collision box for selection box and hp of entity
platform_minigun_turret_mk1.selection_box = {{0, 0}, {0, 0}};

--flags
platform_minigun_turret_mk1.flags = {
  --"hide-alt-info",         
  "player-creation",        -- Can aggro enemies
  "placeable-off-grid",     
  --"not-on-map",          
  "not-repairable",         
  "not-deconstructable",    
  "not-blueprintable",      
}


--TURRET DATA SHEET
platform_minigun_turret_mk1.inventory_size = 1
--ammo can be inserted to turret. can be deep copy of ammo stack size or...?
platform_minigun_turret_mk1.automated_ammo_count =  10  	
--Same as wagon hp
platform_minigun_turret_mk1.max_health = 1000		
platform_minigun_turret_mk1.attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 6,
      projectile_creation_distance = 1.39375,
      projectile_center = {0, -0.0875}, 
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {-0.0625, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 18,
      sound = make_heavy_gunshot_sounds()
    }		

--COPY FROM BASE HP data from tank \/
-------------------------------------
local base_tank = data.raw.car["tank"];
platform_minigun_turret_mk1.resistances = base_tank.resistances
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

platform_minigun_turret_mk1.attacking_animation = blank_layers;
platform_minigun_turret_mk1.base_picture = blank_layers;
platform_minigun_turret_mk1.folded_animation = blank_layers;
platform_minigun_turret_mk1.folding_animation = blank_layers;
platform_minigun_turret_mk1.prepared_animation = blank_layers;
platform_minigun_turret_mk1.preparing_animation = blank_layers;



--FINAL RESULTS and write
data:extend({platform_minigun_turret_mk1})