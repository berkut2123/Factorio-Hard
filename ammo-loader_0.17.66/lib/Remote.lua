Rem = {}
Rem.interfaceName = "ammo-loader"

Rem.funcs = {}

function Rem.funcs.printItemDB(args)
    local printList = {}
    for name, item in pairs(ItemDB.items()) do
        local doPrint = true
        if (args) then
            doPrint = false
            if (args.item) and (args.item == name) then
                doPrint = true
            end
            if (args.category) and (args.category == item.category) then
                doPrint = true
            end
        end
        if (doPrint) then
            -- inform(concat(name, "-> category: ", item.category, ", score: ", item.score, ", rank: ", item.rank), true)
            Array.insert(printList, item)
        end
    end
    table.sort(printList, ItemDB.compare)
    for i = 1, #printList do
        local item = printList[i]
        -- inform(concat(item.name, "-> category: ", item.category, ", score: ", item.score, ", rank: ", item.rank), true)
        ctInform("category: ", item.category, ", rank: ", item.rank, ", score: ", item.score, ", name: ", item.name)
    end
    ctInform(#printList, " items printed.")
end

function Rem.funcs.printNumTracked(forceName)
    local total = 0
    local tSlots = 0
    local tInserters = 0
    local tChests = 0
    local tStorage = 0
    local forces = Force.forces()
    local f = Force.get(forceName)
    if forceName and f then
        forces = {forceName = f}
    end
    for name, force in pairs(Force.forces()) do
        local amtSlots = force.slots:size()
        local amtInserters = force.inserters:size()
        local amtChests = force.chests:size()
        local amtStorage = force.storageChests:size()
        local amtT = amtSlots + amtInserters + amtChests + amtStorage
        ctInform(
            "Force ",
            name,
            ": ",
            amtT,
            " total, ",
            amtSlots,
            " slots, ",
            amtInserters,
            " inserters, ",
            amtChests,
            " chests, ",
            amtStorage,
            " storage chests"
        )
        tSlots = tSlots + amtSlots
        tInserters = tInserters + amtInserters
        tChests = tChests + amtChests
        tStorage = tStorage + amtStorage
    end
end

function Rem.funcs.printNumProvided(forceName)
    forceName = forceName or "player"
    local force = Force.get(forceName)
    if (not force) then
        return
    end
    local nProv = force.providedSlots:size()
    ctInform("Force ", forceName, ": ", nProv, " provided")
end

function Rem.funcs.purgeData()
    HI.destroyOrphans()
    cInform("finish destroy orphans")
    EntDB.purgeTracked()
    cInform("finish purge tracked")
end

Rem.funcs.on_entity_replaced = function(data)
    Handlers.onBuilt({created_entity = data.new_entity})
end

remote.add_interface("ammo-loader", Rem.funcs)

return Rem
