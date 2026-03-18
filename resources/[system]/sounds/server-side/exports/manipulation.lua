function Destroy(source, name)
    TriggerClientEvent("sounds:stateSound", source, "stop", {
        soundId = name
    })
end

exports('Destroy', Destroy)

function Pause(source, name)
    TriggerClientEvent("sounds:stateSound", source, "pause", {
        soundId = name
    })
end

exports('Pause', Pause)

function Resume(source, name)
    TriggerClientEvent("sounds:stateSound", source, "resume", {
        soundId = name
    })
end

exports('Resume', Resume)

function setVolume(source, name, vol)
    TriggerClientEvent("sounds:stateSound", source, "volume", {
        soundId = name,
        volume = vol
    })
end

exports('setVolume', setVolume)
