data:extend(
{
  {
    type = "recipe-category",
    name = "bio-processing",
  },
  {
    type = "recipe-category",
    name = "temperate-farming",
  },
  {
    type = "recipe-category",
    name = "desert-farming",
  },
  {
    type = "recipe-category",
    name = "swamp-farming",
  },
  {
    type = "recipe-category",
    name = "bio-fuel",
  },
  {
    type = "recipe-category",
    name = "seed-extractor",
  },
  {
    type = "recipe-category",
    name = "bio-processor",
  },
  {
    type = "recipe-category",
    name = "bio-pressing",
  },
  {
    type = "recipe-category",
    name = "nutrient-extractor",
  },
  {
    type = "recipe-category",
    name = "angels-bio-void",
  },
  {
    type = "recipe-category",
    name = "angels-tree",
  },
  {
    type = "recipe-category",
    name = "angels-tree-temperate",
  },
  {
    type = "recipe-category",
    name = "angels-tree-swamp",
  },
  {
    type = "recipe-category",
    name = "angels-tree-desert",
  },
  {
    type = "recipe-category",
    name = "angels-arboretum",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-biter",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-puffer",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-hogger",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-fish",
  },
  {
    type = "recipe-category",
    name = "bio-hatchery",
  },
  {
    type = "recipe-category",
    name = "bio-butchery",
  },
  --FARMING
  {
    type = "item-group",
    name = "bio-processing",
    order = "le",
    inventory_order = "le",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-group.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "bio-processing-green",
    group = "bio-processing",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-brown",
    group = "bio-processing",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-blue",
    group = "bio-processing",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-red",
    group = "bio-processing",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "bio-wood",
    group = "bio-processing",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum",
    group = "bio-processing",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-temperate",
    group = "bio-processing",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-swamp",
    group = "bio-processing",
    order = "h",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-desert",
    group = "bio-processing",
    order = "i",
  },
  {
    type = "item-subgroup",
    name = "bio-paper",
    group = "bio-processing",
    order = "j",
  },
  {
    type = "item-subgroup",
    name = "farming-gardens",
    group = "bio-processing",
    order = "k",
  },
  {
    type = "item-subgroup",
    name = "farming-temperate",
    group = "bio-processing",
    order = "l",
  },
  {
    type = "item-subgroup",
    name = "farming-desert",
    group = "bio-processing",
    order = "m",
  },
  {
    type = "item-subgroup",
    name = "farming-swamp",
    group = "bio-processing",
    order = "n",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-temperate",
    group = "bio-processing",
    order = "o",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-desert",
    group = "bio-processing",
    order = "p",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-swamp",
    group = "bio-processing",
    order = "q",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-nutrient",
    group = "bio-processing",
    order = "r",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-press",
    group = "bio-processing",
    order = "s",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-fermentation",
    group = "bio-processing",
    order = "t",
  },
  {
    type = "item-subgroup",
    name = "bio-plastic",
    group = "bio-processing",
    order = "u",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-blocks",
    group = "bio-processing",
    order = "y",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-a",
    group = "bio-processing",
    order = "za",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-b",
    group = "bio-processing",
    order = "zb",
  },
  --ALIEN
  {
    type = "item-group",
    name = "bio-processing-alien",
    order = "le",
    inventory_order = "le",
    icon = "__angelsbioprocessing__/graphics/technology/refugium-1-group.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "bio-puffer",
    group = "bio-processing-alien",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-breeding",
    group = "bio-processing-alien",
    order = "ab",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-egg",
    group = "bio-processing-alien",
    order = "ac",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-butchery",
    group = "bio-processing-alien",
    order = "ad",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger",
    group = "bio-processing-alien",
    order = "ba",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger-breeding",
    group = "bio-processing-alien",
    order = "bb",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger-butchery",
    group = "bio-processing-alien",
    order = "bc",
  },
  {
    type = "item-subgroup",
    name = "bio-fish-breeding",
    group = "bio-processing-alien",
    order = "ca",
  },
  {
    type = "item-subgroup",
    name = "bio-fish-butchery",
    group = "bio-processing-alien",
    order = "cb",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-intermediate",
    group = "bio-processing-alien",
    order = "da",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-small",
    group = "bio-processing-alien",
    order = "db",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-medium",
    group = "bio-processing-alien",
    order = "dc",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-big",
    group = "bio-processing-alien",
    order = "dd",
  },

  {
    type = "item-subgroup",
    name = "bio-processing-paste",
    group = "bio-processing-alien",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-pre",
    group = "bio-processing-alien",
    order = "h",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-small",
    group = "bio-processing-alien",
    order = "i",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-z",
    group = "bio-processing-alien",
    order = "za",
  },
}
)
