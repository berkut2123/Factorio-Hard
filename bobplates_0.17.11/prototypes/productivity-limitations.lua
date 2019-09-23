local alloys = {
  "bronze-alloy",
  "brass-alloy",
  "copper-tungsten-alloy",
  "tungsten-carbide",
  "tungsten-carbide-2",
  "gunmetal-alloy",
  "invar-alloy",
  "nitinol-alloy",
  "cobalt-steel-alloy"
}

local chemicals = {
  "water-electrolysis",
  "nitrogen",
  "salt-water-electrolysis",
  "lithium-water-electrolysis",
  "nitrogen-dioxide",
  "hydrogen-chloride",
  "nitric-acid",
  "tungstic-acid",
  "ferric-chloride-solution",
  "liquid-fuel",
  "sulfuric-acid-2",
  "sulfur-dioxide",
  "petroleum-gas-cracking",
  "bob-oil-processing",
  "coal-cracking"
}

local compounds = {
  "salt",
  "lithium-chloride",
  "sulfur-2",
  "calcium-chloride",
  "alumina",
  "lead-oxide",
  "tungsten-oxide",
  "powdered-tungsten",
  "cobalt-oxide",
  "cobalt-oxide-from-copper",
  "silver-from-lead",
  "silicon-carbide"
}

local electronics = {"advanced-processing-unit"}

local gems = {
  "bob-ruby-3",
  "bob-sapphire-3",
  "bob-emerald-3",
  "bob-amethyst-3",
  "bob-topaz-3",
  "bob-diamond-3",
  "bob-ruby-4",
  "bob-sapphire-4",
  "bob-emerald-4",
  "bob-amethyst-4",
  "bob-topaz-4",
  "bob-diamond-4",
}

local parts = {
  "steel-gear-wheel",
  "steel-bearing-ball",
  "steel-bearing",
  "brass-gear-wheel",
  "cobalt-steel-gear-wheel",
  "cobalt-steel-bearing-ball",
  "cobalt-steel-bearing",
  "titanium-gear-wheel",
  "titanium-bearing-ball",
  "titanium-bearing",
  "tungsten-gear-wheel",
  "nitinol-gear-wheel",
  "nitinol-bearing-ball",
  "nitinol-bearing",
  "ceramic-bearing-ball",
  "ceramic-bearing",
  "silver-zinc-battery",
  "lithium-ion-battery",
  "grinding-wheel",
  "polishing-wheel",
}

local plates = {
  "lead-plate",
  "silver-plate",
  "tin-plate",
  "bob-lead-plate",
  "bob-gold-plate",
  "cobalt-plate",
  "bob-tungsten-plate",
  "bob-zinc-plate",
  "bob-nickel-plate",
  "bob-aluminium-plate",
  "bob-titanium-plate",
  "bob-silicon-plate",
  "lithium"
}

local resources = {
  "carbon",
  "bob-resin-wood",
  "bob-resin-oil",
  "bob-rubber",
  "quartz-glass",
  "silicon-wafer",
  "silicon-powder",
  "silicon-nitride",
  "lithium-cobalt-oxide",
  "silver-nitrate",
  "silver-oxide",
  "synthetic-wood",
  "gas-canister",
  "empty-canister",
  "polishing-compound",
  "solid-fuel-from-hydrogen"
}

bobmods.lib.module.add_productivity_limitations(parts)
bobmods.lib.module.add_productivity_limitations(gems)
bobmods.lib.module.add_productivity_limitations(alloys)
bobmods.lib.module.add_productivity_limitations(chemicals)
bobmods.lib.module.add_productivity_limitations(compounds)
bobmods.lib.module.add_productivity_limitations(electronics)
bobmods.lib.module.add_productivity_limitations(plates)
bobmods.lib.module.add_productivity_limitations(resources)

bobmods.lib.module.add_productivity_limitations{
  "thorium-processing",
  "thorium-fuel-cell",
  "thorium-plutonium-fuel-cell"
}

bobmods.lib.module.add_productivity_limitations{
  "lead-oxide-2",
  "hydrogen-sulfide",
  "sulfur-3",
  "heavy-water-electrolysis",
  "deuterium-fuel-cell"
}
