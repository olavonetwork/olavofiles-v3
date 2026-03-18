local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

Creative = {}
Tunnel.bindInterface("identity",Creative)

function Creative.Info()
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then
		return false
	end

	-- Verificar se o jogador possui o item identity no inventário
	if not vRP.ConsultItem(Passport, "identity") then
		TriggerClientEvent("Notify", source, "Identidade", "Você não possui uma carteira de identidade.", "erro", 4000)
		return false
	end

	local Identity = vRP.Identity(Passport)
	if not Identity then
		return false
	end

	local Gender = "Masculino"
	if Identity.Skin == "mp_f_freemode_01" then
		Gender = "Feminino"
	end

	local JobPermission = vRP.GetUserType(Passport,"Work")
	local JobName = "Desempregado"
	if JobPermission then
		local Groups = vRP.Groups() or {}
		JobName = (Groups[JobPermission] and (Groups[JobPermission].Name or JobPermission)) or JobPermission
	end

	local Diamonds = vRP.UserGemstone(Identity.License)

	local FullName = (Identity.Name or "").." "..(Identity.Lastname or "")
	FullName = FullName:gsub("^%s+",""):gsub("%s+$","")
	if FullName == "" then
		FullName = vRP.FullName(Passport)
	end

	local QrData = json.encode({ Passport = Passport, Name = FullName })

	local AvatarUrl = exports.vrp:Avatar(Passport) or ""

	return {
		Name = FullName,
		Passport = Passport,
		Gender = Gender,
		Diamonds = Diamonds or 0,
		Job = JobName,
		QrData = QrData,
		Avatar = AvatarUrl
	}
end
