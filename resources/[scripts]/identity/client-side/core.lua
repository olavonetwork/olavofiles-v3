local Tunnel = module("vrp","lib/Tunnel")

vSERVER = Tunnel.getInterface("identity")

local IdentityOpen = false
local HeadshotHandle = nil
local CachedHeadshotUrl = ""

local function UpdateHeadshot()
	if HeadshotHandle then
		UnregisterPedheadshot(HeadshotHandle)
		HeadshotHandle = nil
	end

	local Ped = PlayerPedId()
	local Handle = RegisterPedheadshot(Ped)
	HeadshotHandle = Handle

	-- Polling rápido: Wait(0) = próximo tick, muito mais rápido que 100ms
	local Timeout = 0
	while (not IsPedheadshotReady(Handle) or not IsPedheadshotValid(Handle)) and Timeout < 200 do
		Wait(0)
		Timeout = Timeout + 1
	end

	if IsPedheadshotReady(Handle) and IsPedheadshotValid(Handle) then
		local Txd = GetPedheadshotTxdString(Handle)
		CachedHeadshotUrl = string.format("https://nui-img/%s/%s", Txd, Txd)
	end
end

-- Pré-gerar headshot assim que o jogador spawna
AddEventHandler("playerSpawned", function()
	CreateThread(UpdateHeadshot)
end)

-- Também gera imediatamente ao carregar o script (caso já esteja spawned)
CreateThread(function()
	Wait(2000)
	UpdateHeadshot()
end)

-- Monitoramento: regenera headshot a cada 3 segundos para capturar qualquer mudança
CreateThread(function()
	Wait(3000)
	while true do
		Wait(3000)
		UpdateHeadshot()
	end
end)

local function OpenIdentity()
	if IdentityOpen or LocalPlayer.state.Arena or IsPauseMenuActive() then
		return
	end

	local Payload = vSERVER.Info()
	if not Payload then
		return
	end

	-- Usa URL em cache imediatamente (sem espera)
	Payload.Avatar = CachedHeadshotUrl

	IdentityOpen = true
	SetNuiFocus(true, true)
	SetCursorLocation(0.5, 0.5)
	TriggerEvent("hud:Active", false)
	SendNUIMessage({ Action = "Open", Payload = Payload })

	-- Atualiza headshot em background (caso aparência tenha mudado)
	CreateThread(function()
		UpdateHeadshot()
		if IdentityOpen and CachedHeadshotUrl ~= "" then
			SendNUIMessage({ Action = "UpdateAvatar", Payload = { Avatar = CachedHeadshotUrl } })
		end
	end)
end

RegisterCommand("IdentityCard", function()
	OpenIdentity()
end)

RegisterKeyMapping("IdentityCard", "Abrir identidade", "keyboard", "F11")

RegisterNUICallback("Close", function(Data, Callback)
	IdentityOpen = false
	SetNuiFocus(false, false)
	TriggerEvent("hud:Active", true)
	Callback("Ok")
end)
