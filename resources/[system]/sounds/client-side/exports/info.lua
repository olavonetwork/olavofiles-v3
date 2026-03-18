function soundExists(name)
	if soundInfo[name] == nil then return false end
	return true
end

function isPlaying(name)
	if soundExists(name) then
		return soundInfo[name].playing
	end
	return false
end

function getInfo(name)
	if soundExists(name) then
		return soundInfo[name]
	end
	return nil
end

exports('soundExists', soundExists)
exports('isPlaying', isPlaying)
exports('getInfo', getInfo)
