-- Tradutor para manter compatibilidade com scripts antigos da OriginalFiles
RegisterNetEvent("sounds:Private")
AddEventHandler("sounds:Private", function(Sound, Volume)
    -- Converte a chamada antiga para a função PlayUrl do novo sistema
    PlayUrl(Sound, "nui://sounds/web-side/sounds/"..Sound..".mp3", Volume or 0.5)
end)

RegisterNetEvent("sounds:Area")
AddEventHandler("sounds:Area", function(Sound, Volume, Coords, Distance)
    -- Converte a chamada de área antiga para o novo sistema 3D
    PlayUrlPos(Sound, "nui://sounds/web-side/sounds/"..Sound..".mp3", Volume or 0.5, Coords, false)
    Distance(Sound, Distance)
end)
