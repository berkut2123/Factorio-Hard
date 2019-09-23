function unpaint_empty(train)
    if settings.global['unpaint-empty'].value then
        if(train.get_item_count() == 0 and train.get_fluid_count() == 0) then
            --unpaint locomotives
            if #train.cargo_wagons > 0 or #train.fluid_wagons > 0 then
                for _, locomotive in pairs(train.locomotives['front_movers']) do
                    locomotive.color = default_loco_color
                end

                for _, locomotive in pairs(train.locomotives['back_movers']) do
                    locomotive.color = default_loco_color
                end
            end

            --unpaint cargo wagons
            for _, cargo_wagon in pairs(train.cargo_wagons) do
                cargo_wagon.color = default_cargo_color
            end

            --unpaint fluid wagons
            for _, fluid_wagon in pairs(train.fluid_wagons) do
                fluid_wagon.color = default_fluid_color
            end
        end
    end
end

function unpaint_wagons(train)
    --unpaint empty cargo wagons when paint cargo wagons setting is off
    for _, cargo_wagon in pairs(train.cargo_wagons) do
        if settings.global['paint-cargo-wagon'].value then
        else
            if(train.get_item_count() ~= nil) then
                cargo_wagon.color = default_cargo_color
            end
        end
    end

    --unpaint empty fluid wagons when paint fluid wagons setting is off
    for _, fluid_wagon in pairs(train.fluid_wagons) do
        if settings.global['paint-fluid-wagon'].value then
        else
            if(train.get_fluid_count() ~= nil) then
                fluid_wagon.color = default_fluid_color
            end
        end
    end
end

--paint locomotives
function paint_locomotive(train, orientation, final_color)
    for _, locomotive in pairs(train.locomotives[orientation]) do
        if settings.global['paint-loco'].value then
            locomotive.color = final_color
        end
    end
end

--paint wagons
function paint_wagons(wagon_type, wagon_setting, wagon_color, final_color)
    for _, wagon in pairs(wagon_type) do
        if settings.global[wagon_setting].value then
            wagon.color = final_color
        else
            wagon.color = wagon_color
        end
    end
end

-- @doktorstick
-- There are two distinct painting cases. The most straight-forward
-- one is when a train leaves and will be painted, `train_color` is set
-- and the station gets painted to the train's future color.
-- This station typically provides goods.
--
-- In the other case, the train is leaving but has no cargo and
-- will be unpainted. Before unpainting it, however, we need to
-- grab the color of the train and paint the station with that.
-- This station typically receives goods.
function paint_station(train, train_color)
    if settings.global['paint-stations'].value == false then
        return
    end

    -- The station to paint will be the previous station, which
    -- has been saved off in the global table.
    local station = global.train_at_station[train.id]
    if station ~= nil and station.valid then
        if train_color == nil then
            -- The train didn't have cargo (or the paint couldn't
            -- be determined) so we'll use the train's current color.
            local locos = train.locomotives
            local target = locos['front_movers'][1] or locos['back_movers'][1]
            if target.color == nil then
                target.color = initial_color()
            end
            train_color = target.color
        else
            -- The train has cargo which will be used to paint
            -- the station, stored in `train_color`. However, when
            -- we fetch colors from entities, that are in fractions
            -- so we'll need to scale down `train_color` so the mixing
            -- works later on.
            train_color = normalize (train_color, 255)
        end

        -- If a color has never been set, default it to the color
        -- chosen by the train's contents (or lack thereof).
        if station.color == nil then
            station.color = train_color
        end

        -- We continually mix the colors each time to account
        -- for stations that provide/receive different shipment types.
        -- Weigh it in favor of the train.
        station.color = blend_colors (station.color, train_color, 0.55)
    end

    global.train_at_station[train.id] = nil
end
