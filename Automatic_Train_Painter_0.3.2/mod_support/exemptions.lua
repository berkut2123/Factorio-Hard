function exemption_check(train)
    local exempt

    --Manual Color Module check
    exempt = check_manual_color(train)
    if exempt == true then
        return exempt
    end

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

    --End of check sequence
    return exempt
end

function check_manual_color(train)
    if train.front_stock.grid and train.front_stock.grid.equipment then
        for _, eq in pairs(train.front_stock.grid.equipment) do
            if eq.name == "manual-color-module" then
                return true
            end
        end
    end
    return false
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