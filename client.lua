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
            playerCash = ESX.Math.GroupDigits(ESX.GetPlayerData().money)
        })
    end
end)