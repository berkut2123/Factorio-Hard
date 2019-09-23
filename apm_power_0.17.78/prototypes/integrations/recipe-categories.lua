require ('util')

local apm_power_compat_earendel = settings.startup["apm_power_compat_earendel"].value
local apm_power_compat_bob = settings.startup["apm_power_compat_bob"].value
local apm_power_compat_angel = settings.startup["apm_power_compat_angel"].value
local apm_power_compat_sctm = settings.startup["apm_power_compat_sctm"].value
local apm_power_compat_bio_industries = settings.startup["apm_power_compat_bio_industries"].value
local apm_power_compat_expensivelandfillrecipe = settings.startup["apm_power_compat_expensivelandfillrecipe"].value
local apm_power_compat_kingarthur = settings.startup["apm_power_compat_kingarthur"].value

log('- Info ------------------------------------------------')
log('./prototypes/integrations/recipe-categories.lua')
log('apm_power_compat_earendel: ' .. tostring(apm_power_compat_earendel))
log('apm_power_compat_bob: ' .. tostring(apm_power_compat_bob))
log('apm_power_compat_angel: ' .. tostring(apm_power_compat_angel))
log('apm_power_compat_sctm: ' .. tostring(apm_power_compat_sctm))
log('apm_power_compat_bio_industries: ' .. tostring(apm_power_compat_bio_industries))
log('apm_power_compat_expensivelandfillrecipe: ' .. tostring(apm_power_compat_expensivelandfillrecipe))
log('apm_power_compat_kingarthur: ' .. tostring(apm_power_compat_kingarthur))

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods['aai-industry'] and apm_power_compat_earendel then
    apm.lib.utils.recipe.category.change('sand-from-stone', 'apm_crusher')
    apm.lib.utils.recipe.set.always_show_made_in('sand-from-stone', true)
    apm.lib.utils.recipe.set.always_show_products('sand-from-stone', true)
end

-- bio_industries -------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.Bio_Industries and apm_power_compat_bio_industries then
	apm.lib.utils.recipe.category.overwrite_all('biofarm-mod-crushing', 'apm_crusher')
    apm.lib.utils.recipe.category.change('bi_recipe_woodpulp', 'apm_crusher')
    apm.lib.utils.recipe.set.always_show_made_in('bi_recipe_woodpulp', true)
    apm.lib.utils.recipe.set.always_show_products('bi_recipe_woodpulp', true)
end

if mods.Bio_Industries and apm_power_compat_bio_industries then
    apm.lib.utils.recipe.category.overwrite_all('biofarm-mod-crushing', 'apm_crusher')
    apm.lib.utils.recipe.set.always_show_made_in('biofarm-mod-crushing', true)
    apm.lib.utils.recipe.set.always_show_products('biofarm-mod-crushing', true)
end


-- angel ------------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods.angelsrefining and apm_power_compat_angel then
    apm.lib.utils.assembler.mod.category.add('apm_crusher_machine_0', 'ore-sorting-t1')
    apm.lib.utils.assembler.mod.category.add('apm_crusher_machine_1', 'ore-sorting-t1')
    apm.lib.utils.assembler.mod.category.add('apm_crusher_machine_2', 'ore-sorting-t1')

    apm.lib.utils.assembler.mod.category.add('burner-ore-crusher', 'apm_crusher')
    apm.lib.utils.assembler.mod.category.add('ore-crusher', 'apm_crusher')
    apm.lib.utils.assembler.mod.category.add('ore-crusher', 'apm_crusher_with_tool')
    apm.lib.utils.assembler.mod.category.add('ore-crusher-2', 'apm_crusher')
    apm.lib.utils.assembler.mod.category.add('ore-crusher-2', 'apm_crusher_with_tool')
    apm.lib.utils.assembler.mod.category.add('ore-crusher-3', 'apm_crusher')
    apm.lib.utils.assembler.mod.category.add('ore-crusher-3', 'apm_crusher_with_tool')
end

-- Earendel -------------------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------------------
if mods['space-exploration'] and apm_power_compat_earendel then
    apm.lib.utils.recipe.category.change('sand-from-stone', 'apm_crusher')
    apm.lib.utils.recipe.set.always_show_made_in('sand-from-stone', true)
    apm.lib.utils.recipe.set.always_show_products('sand-from-stone', true)
end