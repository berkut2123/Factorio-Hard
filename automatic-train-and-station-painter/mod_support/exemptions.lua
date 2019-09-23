function exemption_check(train)
    local exempt

    --Shuttle Train mod check
    exempt = check_shuttle_train(train)
    if exempt == true then
        return exempt
    end

    --F.A.R.L mod check
    exempt = check_farl(train)
    if exempt == true then
        return exempt
    end

    --LTN mod check
    exempt = check_LTN(train)
    if exempt == true then
        return exempt
    end

    --End of check sequence
    return exempt
end

function check_shuttle_train(train)
if train.front_stock.grid and train.front_stock.grid.equipment then
for _, eq in pairs(train.front_stock.grid.equipment) do
    if eq.name == "shuttle-lite" then
        return true
    end
end
end
return false
end

function check_farl(train)
    if train.front_stock.grid and train.front_stock.grid.equipment then
        for _, eq in pairs(train.front_stock.grid.equipment) do
            if eq.name == "farl-roboport" then
                return true
            end
        end
    end
    return false
end

function check_LTN(train)
    if(global.deliveries) then
        local LTN_IDs={}
        local n=0
        for k,_ in pairs(global.deliveries) do
            n=n+1
            LTN_IDs[n]=k
        end
        for k,_ in pairs(LTN_IDs) do
            if train.id == LTN_IDs[k] and train.get_item_count() == 0 and train.get_fluid_count() == 0 then
                LTN_paint(train)
                return true
                --some trains fail this condition if on same route as multiple other trains
            end
        end
    end
    return false
end