-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Services = {
	{
	    Permission = "LSPD",
		Coords = vec3(441.80,-982.06,30.84),
		Distance = 1.5,
		Weight = 0.1
	},{
		Permission = "PRPD",
		Coords = vec3(385.44,794.43,187.48),
		Distance = 1.5,
		Weight = 0.1
	},{
		Permission = "Bennys",
		Coords = vec3(952.02,-968.35,39.33),
		Distance = 1.5,
		Weight = 0.1
	},{
		Permission = "Restaurante",
		Coords = vec3(-634.32,235.25,82.20),
		Distance = 3.0,
		Weight = 0.25	
	},{
		Permission = "Paramedico",
		Coords = vec3(350.97,-1429.29,32.42),
		Distance = 1.5,
		Weight = 0.1
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIANTS
-----------------------------------------------------------------------------------------------------------------------------------------
local Variants = {
	LSPD = "Policia",
	SAPR = "Policia",
	BCSO = "Policia"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSERVICE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Index,v in pairs(Services) do
		exports.target:AddCircleZone("Service:"..Index,v.Coords,v.Weight,{
			name = "Service:"..Index,
			heading = 0.0,
			useZ = true
		},{
			Distance = v.Distance,
			options = {
				{
					event = "target:Service",
					label = "Iniciar Expediente",
					service = v.Permission,
					tunnel = "proserver"
				}
			}
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:CLIENT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("service:Client")
AddEventHandler("service:Client",function(Permission,Status)
	for Index,v in pairs(Services) do
		if (Variants[Permission] and Variants[Permission] == v.Permission) or Permission == v.Permission then
			exports.target:LabelText("Service:"..Index,(Status and "Finalizar Expediente" or "Iniciar Expediente"))
		end
	end
end)