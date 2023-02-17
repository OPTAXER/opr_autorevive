local isDead = false

AddEventHandler('playerSpawned', function()
    isDead = false
end)

AddEventHandler('esx:onPlayerDeath', function()
    --exports['OPRNotify']:Alert("Dr Opr💖", "You will auto revive in 4 min", 8000, 'info')
    ESX.ShowNotification("Dr Opr💖: You will auto revive in 4 min", "error", 10000)
    isDead = true
    reviveTimer()
end)

function reviveTimer()
    Citizen.SetTimeout(240000, function()
        if isDead then
            TriggerEvent('esx_ambulancejob:revive')
            isDead = false
        end
    end)
end