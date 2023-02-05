ESX = exports['es_extended']:getSharedObject()
CreateThread(function()
    while true do
        Wait(500)
        local money,bank,job
        ESX.TriggerServerCallback('JG-Hud:info', function(bank,money,job,grade,id)
            SendNUIMessage({
                value = true,
                type = 'info',
                bank = ("$".. bank),
                money = ("$".. money),
                job = string.upper(job.label),
                grade = string.upper(job.grade_label),
                id = string.upper("ID ".. GetPlayerServerId(PlayerId()))
               })
        end)

        
        if IsPauseMenuActive() then
            SendNUIMessage({
                type = 'visible',
                value = false
            })
        else
        SendNUIMessage({
            type = 'visible',
            value = true
        })
        end
    end
end)

