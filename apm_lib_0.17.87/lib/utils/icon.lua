require 'util'

if not apm.lib.utils.icon.get then apm.lib.utils.icon.get = {} end
if not apm.lib.utils.icon.set then apm.lib.utils.icon.set = {} end
if not apm.lib.utils.icon.dynamics then apm.lib.utils.icon.dynamics = {} end
if not apm.lib.utils.icon.static then apm.lib.utils.icon.static = {} end
if not apm.lib.utils.icon.signal then apm.lib.utils.icon.signal = {} end
if not apm.lib.utils.icon.layer then apm.lib.utils.icon.layer = {} end
if not apm.lib.utils.icon.dynamics.recipe then apm.lib.utils.icon.dynamics.recipe = {} end
if not apm.lib.utils.icon.dynamics.machine then apm.lib.utils.icon.dynamics.machine = {} end
if not apm.lib.utils.icon.dynamics.letter then apm.lib.utils.icon.dynamics.letter = {} end
if not apm.lib.utils.icon.path then apm.lib.utils.icon.path = {} end
if not apm.lib.utils.icon.generate then apm.lib.utils.icon.generate = {} end

-- Icon path ----------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.lib.utils.icon.path.air = '__apm_resource_pack__/graphics/icons/apm_air.png'
apm.lib.utils.icon.path.chemical_flame_1 = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_1.png'
apm.lib.utils.icon.path.chemical_flame_2 = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_2.png'
apm.lib.utils.icon.path.chemical_flame_3 = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_3.png'
apm.lib.utils.icon.path.recipe_t1 = '__apm_resource_pack__/graphics/icons/dynamics/apm_tier_1.png'
apm.lib.utils.icon.path.recipe_t2 = '__apm_resource_pack__/graphics/icons/dynamics/apm_tier_2.png'
apm.lib.utils.icon.path.recipe_t3 = '__apm_resource_pack__/graphics/icons/dynamics/apm_tier_3.png'
apm.lib.utils.icon.path.recipe_t4 = '__apm_resource_pack__/graphics/icons/dynamics/apm_tier_4.png'
apm.lib.utils.icon.path.recipe_t5 = '__apm_resource_pack__/graphics/icons/dynamics/apm_tier_5.png'
apm.lib.utils.icon.path.smelting = '__apm_resource_pack__/graphics/icons/dynamics/apm_smelting.png'
apm.lib.utils.icon.path.crushed = '__apm_resource_pack__/graphics/icons/dynamics/apm_crushed.png'
apm.lib.utils.icon.path.chunk = '__apm_resource_pack__/graphics/icons/dynamics/apm_chunk.png'
apm.lib.utils.icon.path.briquette ='__apm_resource_pack__/graphics/icons/dynamics/apm_briquette.png'
apm.lib.utils.icon.path.dust = '__apm_resource_pack__/graphics/icons/dynamics/apm_dust.png'
apm.lib.utils.icon.path.heap = '__apm_resource_pack__/graphics/icons/dynamics/apm_heap.png'
apm.lib.utils.icon.path.signal_burnt_result = '__apm_lib__/graphics/icons/signals/burnt_result.png'
apm.lib.utils.icon.path.signal_radioactive = '__apm_lib__/graphics/icons/signals/radioactive.png'
apm.lib.utils.icon.path.signal_info = '__apm_lib__/graphics/icons/signals/info.png'
apm.lib.utils.icon.path.signal_warning = '__apm_lib__/graphics/icons/signals/warning.png'
apm.lib.utils.icon.path.signal_bullet_point = '__apm_lib__/graphics/icons/signals/bullet_point.png'

-- Icons ----------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
apm.lib.utils.icon.dynamics.empty_32 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_empty_32.png'}
apm.lib.utils.icon.dynamics.air = {icon = apm.lib.utils.icon.path.air, icon_size=64}
apm.lib.utils.icon.dynamics.recycling = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_recycling.png', scale = 0.7, shift = {6,-6}}
apm.lib.utils.icon.dynamics.radioactive = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_radioactive.png', scale = 0.7, shift = {6,-6}}
apm.lib.utils.icon.dynamics.red_input = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_red_input.png'}
apm.lib.utils.icon.dynamics.red_output = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_red_output.png'}
apm.lib.utils.icon.dynamics.purple_input = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_purple_input.png'}
apm.lib.utils.icon.dynamics.purple_output = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_purple_output.png'}
apm.lib.utils.icon.dynamics.smelting = {icon = apm.lib.utils.icon.path.smelting, icon_size=64, scale = 0.35, shift = {6,-6}}
apm.lib.utils.icon.dynamics.t1 = {icon = apm.lib.utils.icon.path.recipe_t1, icon_size=64}
apm.lib.utils.icon.dynamics.t2 = {icon = apm.lib.utils.icon.path.recipe_t2, icon_size=64}
apm.lib.utils.icon.dynamics.t3 = {icon = apm.lib.utils.icon.path.recipe_t3, icon_size=64}
apm.lib.utils.icon.dynamics.t4 = {icon = apm.lib.utils.icon.path.recipe_t4, icon_size=64}
apm.lib.utils.icon.dynamics.t5 = {icon = apm.lib.utils.icon.path.recipe_t5, icon_size=64}
apm.lib.utils.icon.dynamics.machine.t0 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_base_0.png'}
apm.lib.utils.icon.dynamics.machine.t1 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_base_1.png'}
apm.lib.utils.icon.dynamics.machine.t2 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_base_2.png'}
apm.lib.utils.icon.dynamics.machine.t3 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_base_3.png'}
apm.lib.utils.icon.dynamics.lable_a = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_a.png'}
apm.lib.utils.icon.dynamics.lable_ac = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_ac.png'}
apm.lib.utils.icon.dynamics.lable_c = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_c.png'}
apm.lib.utils.icon.dynamics.lable_ce = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_ce.png'}
apm.lib.utils.icon.dynamics.lable_co = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_co.png'}
apm.lib.utils.icon.dynamics.lable_cp = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_cp.png'}
apm.lib.utils.icon.dynamics.lable_cr = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_cr.png'}
apm.lib.utils.icon.dynamics.lable_gh = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_gh.png'}
apm.lib.utils.icon.dynamics.lable_l = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_l.png'}
apm.lib.utils.icon.dynamics.lable_p = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_p.png'}
apm.lib.utils.icon.dynamics.lable_pf = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_pf.png'}
apm.lib.utils.icon.dynamics.lable_r = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_r.png'}
apm.lib.utils.icon.dynamics.lable_si = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_si.png'}
apm.lib.utils.icon.dynamics.lable_sw = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_sw.png'}
apm.lib.utils.icon.dynamics.lable_lightning = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_machine_lable_lightning.png'}
apm.lib.utils.icon.dynamics.chemical_flame_1 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_1.png'}
apm.lib.utils.icon.dynamics.chemical_flame_2 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_2.png'}
apm.lib.utils.icon.dynamics.chemical_flame_3 = {icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_3.png'}
apm.lib.utils.icon.signal.burnt_result = {icon=apm.lib.utils.icon.path.signal_burnt_result, icon_size=64}
apm.lib.utils.icon.signal.radioactive = {icon=apm.lib.utils.icon.path.signal_radioactive, icon_size=64}
apm.lib.utils.icon.signal.info = {icon=apm.lib.utils.icon.path.signal_info, icon_size=64}
apm.lib.utils.icon.signal.warning = {icon=apm.lib.utils.icon.path.signal_warning, icon_size=64}
apm.lib.utils.icon.signal.bullet_point = {icon=apm.lib.utils.icon.path.signal_bullet_point, icon_size=64}

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.get.from_item(object_name)
   local prototype_list = {'item', 'fluid' }
   for _, prototype in pairs(prototype_list) do
       local object = data.raw[prototype][object_name]
       if object then
           if object.icon then
               return object.icon
           end
           if object.icons then
               return object.icons
           end
       end
   end
   -- something is wrong here but we need to return something
   return '__apm_resource_pack__/graphics/icons/apm_dummy.png'
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.get.from_fluid(object_name)
	apm.lib.utils.icon.item.get(object_name)
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.mod(t_icon, scale, shift)
	local new_icon = table.deepcopy(t_icon)
	if scale then
		if new_icon.icon_size then
			new_icon.scale = scale*(32/new_icon.icon_size)
		else
			new_icon.scale = scale
		end
	end
	if shift then
		if new_icon.shift then
			new_icon.shift = {new_icon.shift[1] + shift[1], new_icon.shift[2] + shift[2]}
		else
			new_icon.shift = shift
		end
	end
	return new_icon
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.generate.chemical(tint_1, tint_2, tint_3, symbol, scale, shift)
	local icons = {}
	table.insert(icons,{icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_1.png', tint=tint_1, icon_size=64, scale=scale, shift=shift})
	table.insert(icons,{icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_2.png', tint=tint_2, icon_size=64, scale=scale, shift=shift})
	table.insert(icons,{icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_chemical_flame_3.png', tint=tint_3, icon_size=64, scale=scale, shift=shift})
	if symbol then
		symbol.scale=scale
		symbol.shift=shift
		table.insert(icons, symbol)
	end
	return icons
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.generate.fluid(tint_1, tint_2, symbol)
	local icons = {}
	table.insert(icons,{icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_fluid_drop_inner.png', tint=tint_2, icon_size=64})
	table.insert(icons,{icon = '__apm_resource_pack__/graphics/icons/dynamics/apm_fluid_drop_body.png', tint=tint_1, icon_size=64})
	if symbol then
		table.insert(icons, symbol)
	end
	return icons
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.layer.insert(base_dn, layer, icon_path, icon_size, scale, shift, tint)
	if not base_dn then return end
	if not base_dn.icons then return end
	-- todo:
	-- shifting icons at position behind target-layer, insert new one
	log('Debug: DUMMY used! No fuctions here, its a placeholder!')
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.replace(icon_path_old, icon_path_new, icon_size, scale, shift, tint)
	local type_list = {'item', 'recipe'}
	for _, obj_type in pairs(type_list) do
		for _, obj in pairs(data.raw[obj_type]) do
			if obj.icon then
				if obj.icon == icon_path_old then
					obj.icon = icon_path_new
				end
			end
			if obj.icons then
				for _, layer in pairs(obj.icons) do
					if layer.icon == icon_path_old then
						layer.icon = icon_path_new
						layer.icon_size = icon_size
						layer.scale = scale
						layer.shift = shift
						layer.tint = tint
					end
				end
			end
		end
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.layer.replace(base_dn, layer, icon_path, icon_size, scale, shift, tint)
	if not base_dn then return end
	if not base_dn.icons then return end

	if not icon_size then icon_size = 32 end

	for k, object in pairs(base_dn.icons) do
		if k == layer then
			base_dn.icons[k] = {icon=icon_path, icon_size=icon_size, scale=scale, shift=shift, tint=tint}
			log('Info: apm.lib.utils.icon.layer.replace: in: "' .. tostring(base_dn.name) .. '" type: "' .. tostring(base_dn.type) .. '" on layer: "' .. tostring(layer) .. '" new icon: "' .. tostring(icon_path) .. '" with size: "'.. tostring(icon_size) .. '" with scale: "'.. tostring(scale) .. '" with shift: "'.. tostring(shift) .. '" with tint: "'.. tostring(tint) .. '"')
			return
		end
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
local function get_tier_icon(level)
	if level == 1 then return apm.lib.utils.icon.dynamics.t1
	elseif level == 2 then return apm.lib.utils.icon.dynamics.t2
	elseif level == 3 then return apm.lib.utils.icon.dynamics.t3
	elseif level == 4 then return apm.lib.utils.icon.dynamics.t4
	elseif level == 5 then return apm.lib.utils.icon.dynamics.t5
	else return nil
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.add_tier_lable(name, level)
	local prototypes = {'item', 'fluid', 'recipe', 'assembling-machine', 'boiler', 'logistic-robot', 'construction-robot', 'inserter', 'lab', 'locomotive', 'mining-drill', 'module', 'reactor', 'ammo-turret', 'car'}
	for k, prototype in pairs(prototypes) do
		local item = data.raw[prototype][name]
		if item ~= nil then
			if item.icon then
				item.icons = {{icon=item.icon}, get_tier_icon(level)}
				item.icon = nil
			end
			if item.icons then
				table.insert(item.icons, get_tier_icon(level))
			end
		end
	end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function apm.lib.utils.icon.set.icons(object, icons)
	local icon_set = false
	object.icons = {}
	for _, icon in pairs(icons) do
		table.insert(object.icons, icon)
		icon_set = true
	end
	if icon_set then
		object.icon = nil
		log('Info: apm.lib.utils.icon.set.icons(): icons set for type: "' .. tostring(object.type) .. '" name: "' .. tostring(object.name) .. '"')	end
end