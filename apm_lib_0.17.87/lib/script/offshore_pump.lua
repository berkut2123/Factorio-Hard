if not offshore_pump then offshore_pump = {} end
if not offshore_pump.setup then offshore_pump.setup = {} end

-- Local ----------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function offshore_pump.setup.burner(entity)
    local direction = entity.direction
    local position = entity.position
    local surface = entity.surface
    local force = entity.force
    local unit_number = entity.unit_number

    local new_entity = surface.create_entity{name="apm_offshore_pump_burner", position=position, direction=direction, force=entity.force, fast_replace=true, spill=false, raise_built=true, create_build_effect_smoke=false}
    entity.destroy()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function offshore_pump.setup.electric(entity)
    local direction = entity.direction
    local position = entity.position
    local surface = entity.surface
    local force = entity.force
    local unit_number = entity.unit_number

    local new_entity = surface.create_entity{name="apm_offshore_pump_electric", position=position, direction=direction, force=entity.force, fast_replace=true, spill=false, raise_built=true, create_build_effect_smoke=false}
    entity.destroy()
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function offshore_pump.on_build(entity)
    if not entity then return end
    if not entity.valid then return end
    if not entity.type == 'offshore-pump' then return end
    if entity.name == 'apm_offshore_pump_0' then
        offshore_pump.setup.burner (entity)
    elseif entity.name == 'apm_offshore_pump_1' then
        offshore_pump.setup.electric (entity)
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function offshore_pump.converting()
    if not global.offshore_pump_01751 then
        log('--- offshore_pump.converting() ----------------------------------------------')
        log('- offshore_pump.converting(): from version lower 0.17.51')
        global.offshore_pump_01751 = true
        local count_burner = 0
        local count_electric = 0
        for _, surface in pairs(game.surfaces) do
            local offshore_pumps = surface.find_entities_filtered{type='offshore-pump'}
            for _, op in pairs(offshore_pumps) do
                if op and op.valid then
                    if op.name == 'apm_offshore_pump' then
                        offshore_pump.setup.burner(op)
                        count_burner = count_burner + 1
                    elseif op.name == 'apm_offshore_pump_0' then
                        offshore_pump.setup.burner(op)
                        count_burner = count_burner + 1
                    elseif op.name == 'offshore-pump' then
                        offshore_pump.setup.electric(op)
                        count_electric = count_electric + 1
                    elseif op.name == 'apm_offshore_pump_1' then
                        offshore_pump.setup.burner(op)
                        count_electric = count_electric + 1
                    end
                end
            end
        end
        log('- offshore_pump.converting(): offshore_pumps: ' .. tostring(count_burner + count_electric))
        log('- offshore_pump.converting(): to burner: ' .. tostring(count_burner))
        log('- offshore_pump.converting(): to electric: ' .. tostring(count_electric))
        log('-----------------------------------------------------------------------------')
    end
end

-- Function -------------------------------------------------------------------
--
--
-------------------------------------------------------------------------------
function offshore_pump.on_update()
    offshore_pump.converting()
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
return offshore_pump