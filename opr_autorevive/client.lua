local isDead = false

AddEventHandler('playerSpawned', function()
    isDead = false
end)

AddEventHandler('esx:onPlayerDeath', function()
    exports['OPRNotify']:Alert("Dr Puttu💖", "You will auto revive in 4 min", 8000, 'info')
    --     ESX.ShowNotification("Dr Opr💖: You will auto revive in 4 min", "error", 10000)
    isDead = true
    reviveTimer()
end)

function reviveTimer()
    Citizen.SetTimeout(10000, function()
        if isDead then
            TriggerEvent('esx_ambulancejob:revive')
            isDead = false
        else
            exports['OPRNotify']:Alert("Dr Puttu💖", "Benda Benda villachil venda!", 8000, 'info')
            print(isDead)
       end
    end)
end