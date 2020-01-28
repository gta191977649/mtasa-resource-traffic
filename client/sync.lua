addSharedEventHandler('onClientPedRequestAnswer', resourceRoot, function(pedDict)
    for ped, data in pairs(pedDict) do
        pedContainer:append(ped)

        for key, value in pairs(data) do
            pedContainer:setData(ped, key, value)
        end

        checkPedState(ped)
    end
end)

addSharedEventHandler('onClientPedKey', resourceRoot, function(ped, stateTable)
    for control, state in pairs(stateTable) do
        setPedControlState(ped, control, state)
    end
end)