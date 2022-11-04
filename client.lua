ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    while true do 
        Wait(2000)
        local currentHour = GetClockHours()
        local currentMinute = GetClockMinutes()
        if currentHour < 10 then
            currentHour = "0" .. currentHour
        end
        if currentMinute < 10 then
            currentMinute = "0" .. currentMinute
        end
        SendNUIMessage({
            action = 'update',
            gameHour = currentHour .. ":" .. currentMinute,
            playerCash = ESX.Math.GroupDigits(ESX.PlayerData.money)
        })
    end
end)


RegisterNetEvent('esx:setAccountMoney')
AddEventHandler('esx:setAccountMoney', function(account)
     if account.name == "money" then 
        ESX.PlayerData.money = account.money
    end
end)
