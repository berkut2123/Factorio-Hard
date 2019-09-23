local multiplier = data.raw.character.character.inventory_size / 80
if settings.startup["bobmods-plates-inventorysize"] then
  multiplier = settings.startup["bobmods-plates-inventorysize"].value / 80
end

for index, character in pairs(bobmods.classes.characters) do
  if not character.name == "character" then -- should fix the issue where if you're not using bobplates, but another mod changes the base inventory size, the base character doesn't end up with the multiplier being applied twice.
    data.raw.character[character.name].inventory_size = math.floor(character.inventory_size * multiplier)
  end
end


require("bodies-updates")


if data.raw["item-group"]["bob-intermediate-products"] then
  data.raw["item-subgroup"]["body-parts"].group = "bob-intermediate-products"
end