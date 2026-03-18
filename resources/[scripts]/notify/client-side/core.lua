-----------------------------------------------------------------------------------------------------------------------------------------
-- NOTIFY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Notify")
AddEventHandler("Notify",function(Title,Message,Color,Timer,Position,Mode,Route)
	if Route and LocalPlayer["state"]["Route"] ~= Route then
		return false
	end

	Mode = Mode or Config.Mode
	Timer = Timer or Config.Timer
	Position = Position or Config.Position

	if Color == "verde" or Color == "vermelho" or Color == "amarelo" then
		TriggerEvent("sounds:Private", Color, 0.5)
	end

	SendNUIMessage({ Action = "Notify", Payload = { Title = Title, Message = Message, Timer = Timer, Theme = Config.Themes[Color], Position = Position, Progress = Mode } })
end)