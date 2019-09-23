------------------------------------------------------------------------------------------------------------------------------------------------------

-- DEADLOCK'S INDUSTRIAL REVOLUTION
-- © Deadlock989 2018-2019
-- See license.txt for license details

------------------------------------------------------------------------------------------------------------------------------------------------------

-- GLOBALS
require("code.data.globals")

-- ITEMS
require("code.items-recipes.items")

-- FLUIDS
require("code.fluids.fluids")

-- SIGNALS -- before entities
require("code.signals.signals")
require("code.signals.signal-colour-mapping")

-- ENTITIES
require("code.entities.entities")

-- PRE-TECH MODS
if mods["deadlock-beltboxes-loaders"] or mods["DeadlockCrating"] or mods["LoaderRedux"] then require("code.mods.mods-data-pretech") end

-- TECHNOLOGIES
require("code.technology.technology")
require("code.technology.technology-regenerate")
require("code.technology.technology-recost")

-- TERRAIN
require("code.terrain.terrain")

-- FONTS
require("code.gui.fonts")

-- STYLES
require("code.gui.styles")

-- INPUT
require("code.gui.custom-input")

-- POST-TECH MODS
require("code.mods.mods-data-posttech")

------------------------------------------------------------------------------------------------------------------------------------------------------
