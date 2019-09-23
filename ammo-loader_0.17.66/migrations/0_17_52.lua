local names = require("prototypes/names")
for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
    for techName, tech in pairs(technologies) do
        local effects = tech.effects
        for _, effect in pairs(effects) do
            if (effect.type == "unlock-recipe") and (effect.recipe:find("ammo.loader.cartridge")) then
                recipes[effect.recipe].enabled = tech.researched
            end
        end
    end
end
