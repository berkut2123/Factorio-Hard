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
