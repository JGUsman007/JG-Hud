ESX = exports['es_extended']:getSharedObject()

local info

ESX.RegisterServerCallback('JG-Hud:info', function(source, cb)
   local xPlayer = ESX.GetPlayerFromId(source)

   cb(xPlayer.getAccount('bank').money,xPlayer.getMoney(),xPlayer.getJob())

 end)
