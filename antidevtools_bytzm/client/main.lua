RegisterNUICallback('devtools', function(data, cb)
    local timeDiff = data.timeDifference or "N/A"
    if Config.AntiDevTools then
        print(timeDiff)
        if tonumber(timeDiff) and tonumber(timeDiff) > Config.Threshold then
            TriggerServerEvent("antidevtools_kick", source)
        end
    end
end)