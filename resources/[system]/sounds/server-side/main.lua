if not module then
	function module(Resource,Patch)
		if not Patch then
			Patch = Resource
			Resource = "vrp"
		end

		local File = LoadResourceFile(Resource,Patch..".lua")
		if File then
			local Float = load(File,Resource.."/"..Patch..".lua")
			if Float then
				local Accept,Result = xpcall(Float,debug["traceback"])
				if Accept then
					return Result
				end
			end
		end
	end
end

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
