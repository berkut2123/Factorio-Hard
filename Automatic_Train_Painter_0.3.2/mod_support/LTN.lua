script.on_init(function()
    if remote.interfaces["logistic-train-network"] then
        script.on_event(remote.call("logistic-train-network", "on_dispatcher_updated"), OnDispatcherUpdated)
        script.on_event(remote.call("logistic-train-network", "on_delivery_completed"), OnDeliveryCompleted)
    end
end)

script.on_load(function()
    if remote.interfaces["logistic-train-network"] then
        script.on_event(remote.call("logistic-train-network", "on_dispatcher_updated"), OnDispatcherUpdated)
        script.on_event(remote.call("logistic-train-network", "on_delivery_completed"), OnDeliveryCompleted)
    end
end)

function LTN_check(train)
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
                --some trains fail this condition
            end
        end
    end
    return false
end

function OnDispatcherUpdated(event)
    global.deliveries = event.deliveries
end

function OnDeliveryCompleted(event)
    local train = event.delivery.train
    local check = exemption_check(train)
    if check == true then
        return
    else
        unpaint_empty(train)
        unpaint_wagons(train)
    end
end

function get_cargo_delivery(inv)
    local delivery = {}
    if inv.shipment then
        for k, v in pairs(inv.shipment) do
            local split_string = split(k, ",")
            local name = split_string[2]
            delivery[name] = v
        end
    end
    return delivery
end

function LTN_read(train)
    for ltn_train_id, inv in pairs(global.deliveries) do
        local delivery = get_cargo_delivery(inv)
        if ltn_train_id == train.id then
            return delivery
        end
    end
end

function LTN_paint(train)
    --LTN train content
    local LTN_content = LTN_read(train)

    --color mixing calculator
    local final_color, flag = color_calculator(LTN_content, colors)

    --check if mixed_colors were initialized
    if flag == false then
        return
    end

    --paint locomotives
    paint_locomotive(train, 'front_movers', final_color)
    paint_locomotive(train, 'back_movers', final_color)

    --paint cargo wagons
    paint_wagons(train.cargo_wagons, 'paint-cargo-wagon', default_cargo_color, final_color)
    paint_wagons(train.fluid_wagons, 'paint-fluid-wagon', default_fluid_color, final_color)
end