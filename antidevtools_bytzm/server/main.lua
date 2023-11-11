RegisterServerEvent('antidevtools_kick')
AddEventHandler('antidevtools_kick', function(player)
    DropPlayer(player, "Verwendung von Entwicklertools")
end)