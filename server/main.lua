local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("duffel-bag", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-bag:client:duffelbag', source, item.info.bagid)
    end
end)
