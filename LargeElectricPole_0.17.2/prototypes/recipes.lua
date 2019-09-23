data:extend({
 {
    type = "recipe",
    name = "large-electric-pole",
	normal = 
	 {
	enabled=true,
	energy_required=10,
    ingredients = 
      {
       {"copper-plate",10},
       {"steel-plate",10},
       {"electronic-circuit",1},
      },
    result = "large-electric-pole"
	 },
	expensive =
	 {
	enabled=true,
	energy_required=20,
	ingredients =
	  {
       {"copper-plate",15},
       {"steel-plate",15},
       {"electronic-circuit",2},
	  },
	result = "large-electric-pole"
	},
  }
})
