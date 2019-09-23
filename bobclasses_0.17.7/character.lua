bobmods.classes.characters = {}

data.raw.character.character.fast_replaceable_group = "character"

bobmods.classes.characters["bob-character-miner"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-miner",
    icons = {
      {icon = "__bobclasses__/icons/player.png", shift = {-5, 0}},
      {icon = "__bobclasses__/icons/miner.png", scale = 0.5, shift = {8, 0}} 
    },
    icon_size = 32,
    max_health = 200,
    healing_per_tick = 0.12,
    crafting_categories = {"crafting", "smelting"},
    inventory_size = 80,
    build_distance = 8,
    reach_distance = 8,
    reach_resource_distance = 3.5,
    running_speed = 0.12,
    mining_speed = 1,
  }
}


bobmods.classes.characters["bob-character-fighter"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-fighter",
    icons = {
      {icon = "__bobclasses__/icons/player.png", shift = {-5, 0}},
      {icon = "__bobclasses__/icons/fighter.png", scale = 0.5, shift = {8, 0}} 
    },
    icon_size = 32,
    max_health = 300,
    healing_per_tick = 0.18,
    inventory_size = 60,
    build_distance = 8,
    reach_distance = 8,
    running_speed = 0.2,
  }
}

bobmods.classes.characters["bob-character-builder"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-builder",
    icons = {
      {icon = "__bobclasses__/icons/player.png", shift = {-5, 0}},
      {icon = "__bobclasses__/icons/builder.png", scale = 0.5, shift = {8, 0}} 
    },
    icon_size = 32,
    max_health = 200,
    healing_per_tick = 0.12,
    inventory_size = 106,
    build_distance = 12,
    reach_distance = 12,
    running_speed = 0.12,
  }
}


for index, character in pairs(bobmods.classes.characters) do
  data:extend{
    bobmods.classes.characters[index]
  }
end



--[[DEFAULTS
  {
    name = "character",

    max_health = 250,
    healing_per_tick = 0.15,

    crafting_categories = {"crafting"},
    mining_categories = {"basic-solid"},

    inventory_size = 80 --60,

    build_distance = 10 --6,
    reach_distance = 10 --6,
    reach_resource_distance = 2.7,

    drop_item_distance = 10 --6,
    item_pickup_distance = 1,
    loot_pickup_distance = 2,

    running_speed = 0.15,

    mining_speed = 0.5,
  },
]]--

