if not bobmods then bobmods = {} end
if not bobmods.classes then bobmods.classes = {} end
if not bobmods.avatars then bobmods.avatars = {} end

require("character")
require("category")
require("bodies")
require("style")


data:extend{
  {
    type = "sprite",
    name = "class-balanced-button",
    filename = "__bobclasses__/icons/balanced.png",
    priority = "extra-high",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-miner-button",
    filename = "__bobclasses__/icons/miner.png",
    priority = "extra-high",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-fighter-button",
    filename = "__bobclasses__/icons/fighter.png",
    priority = "extra-high",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-builder-button",
    filename = "__bobclasses__/icons/builder.png",
    priority = "extra-high",
    width = 32,
    height = 32,
  },
}
