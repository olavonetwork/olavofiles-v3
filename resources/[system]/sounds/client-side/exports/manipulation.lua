function Distance(name, distance)
    if soundExists(name) then
        soundInfo[name].distance = distance
        SendNUIMessage({
            status = "distance",
            name = name,
            distance = distance,
        })
    end
end

exports('Distance', Distance)

function Destroy(name)
    if soundExists(name) then
        SendNUIMessage({
            status = "delete",
            name = name
        })
        soundInfo[name] = nil
        globalOptionsCache[name] = nil
    end
end

exports('Destroy', Destroy)

function Pause(name)
    if soundExists(name) then
        soundInfo[name].playing = false
        soundInfo[name].paused = true
        SendNUIMessage({
            status = "pause",
            name = name
        })
    end
end

exports('Pause', Pause)

function Resume(name)
    if soundExists(name) then
        soundInfo[name].playing = true
        soundInfo[name].paused = false
        SendNUIMessage({
            status = "resume",
            name = name
        })
    end
end

exports('Resume', Resume)

function setVolume(name, vol)
    if soundExists(name) then
        soundInfo[name].volume = vol
        SendNUIMessage({
            status = "volume",
            name = name,
            volume = vol,
        })
    end
end

exports('setVolume', setVolume)

function setTimeStamp(name, time)
    if soundExists(name) then
        soundInfo[name].timeStamp = time
        SendNUIMessage({
            status = "timestamp",
            name = name,
            timestamp = time,
        })
    end
end

exports('setTimeStamp', setTimeStamp)

function destroyOnFinish(name, bool)
    if soundExists(name) then
        soundInfo[name].destroyOnFinish = bool
    end
end

exports('destroyOnFinish', destroyOnFinish)
