-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Spawned = {}
local PedObjects = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIST
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	-- Vacas
	{
		Distance = 50,
		Coords = vec4(957.99,-2207.26,30.6,266.46),
		Model = "a_c_cow",
		Collision = true
	},{
		Distance = 50,
		Coords = vec4(956.66,-2220.51,30.58,266.46),
		Model = "a_c_cow",
		Collision = true
	},{
		Distance = 50,
		Coords = vec4(955.6,-2233.52,30.58,266.46),
		Model = "a_c_cow",
		Collision = true
	},{
		Distance = 50,
		Coords = vec4(954.49,-2247.07,30.58,266.46),
		Model = "a_c_cow",
		Collision = true
	},

	-- Mecânica
	{
		Distance = 50,
		Coords = vec4(949.01,-974.47,39.5,119.06),
		Model = "mp_f_bennymech_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" },
		Collision = true
	},
	{
		Distance = 50,
		Coords = vec4(954.73,-967.78,39.5,93.55),
		Model = "mp_m_waremech_01",
		Anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" },
		Collision = true
	},{
		Distance = 50,
		Coords = vec4(911.65,-975.09,39.5,277.8),
		Model = "ig_car3guy2",
		Anim = { "amb@medic@standing@timeofdeath@base","base" },
		Prop = "prop_notepad_01",
		Flag = 49,
		Mao = 60309,
		Collision = true
	},

	-- Essências
	{
		Distance = 50,
		Coords = vec4(87.62,-1670.45,29.18,73.71),
		Model = "a_f_y_vinewood_01",
		Collision = true
	},

	-- Mecânica
	{
		Distance = 50,
		Coords = vec4(954.73,-967.78,39.5,93.55),
		Model = "mp_m_waremech_01",
		Anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" },
		Collision = true
	},

	-- LSPD
	{
		Distance = 50,
		Coords = vec4(442.69,-981.94,30.68,87.88),
		Model = "mp_m_securoguard_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" },
		Collision = true
	},{
		Distance = 50,
		Coords = vec4(436.58,-985.54,30.68,357.17),
		Model = "s_m_m_prisguard_01",
		Anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" },
		Collision = true
	},{
		Distance = 50,
		Coords = vec4(441.45,-998.62,25.7,2.84),
		Model = "ig_car3guy2",
		Anim = { "amb@medic@standing@timeofdeath@base","base" },
		Prop = "prop_notepad_01",
		Flag = 49,
		Mao = 60309,
		Collision = true
	},{
		Distance = 50,
		Coords = vec4(376.87,791.73,187.64,93.55),
		Model = "ig_car3guy2",
		Anim = { "amb@medic@standing@timeofdeath@base","base" },
		Prop = "prop_notepad_01",
		Flag = 49,
		Mao = 60309,
		Collision = true
	},

	-- PRPD
	{
		Distance = 50,
		Coords = vec4(384.84,794.48,187.45,280.63),
		Model = "s_m_m_prisguard_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" },
		Collision = true
	},

	-- Prison
	{
		Distance = 100,
		Coords = vec4(1761.91,2542.12,45.56,340.16),
		Model = "s_m_y_prisoner_01",
		Anim = { "amb@world_human_aa_smoke@male@idle_a", "idle_c" },
		Prop = "prop_cs_ciggy_01",
		Flag = 49,
		Mao = 28422,
		Collision = true
	},{
		Distance = 100,
		Coords = vec4(1708.95,2497.84,45.56,2.84),
		Model = "mp_f_meth_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" },
		Collision = true
	},{
		Distance = 100,
		Coords = vec4(1701.58,2504.29,45.56,184.26),
		Model = "mp_f_weed_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" },
		Collision = true
	},{
		Distance = 100,
		Coords = vec4(1852.63,2581.97,45.66,272.13),
		Model = "csb_paige",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" },
		Collision = true
	},

	-- Fishing
	{
		Distance = 100,
		Coords = vec4(1331.48,4271.61,31.49,187.09),
		Model = "ig_car3guy2",
		Anim = { "amb@medic@standing@timeofdeath@base","base" },
		Prop = "prop_notepad_01",
		Flag = 49,
		Mao = 60309,
		Collision = true
	},

	{ -- Desmanche
		Distance = 100,
		Coords = vec4(778.49,-395.89,33.43,99.22),
		Model = "g_m_y_salvagoon_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Bus
		Distance = 50,
		Coords = vec4(453.47,-602.34,28.59,266.46),
		Model = "a_m_y_business_02",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Hotel
		Distance = 50,
		Coords = vec4(-772.76,312.81,85.7,181.42),
		Model = "s_m_y_doorman_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Grime
		Distance = 50,
		Coords = vec4(68.99,127.46,79.21,158.75),
		Model = "s_m_m_postal_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Clandestine
		Distance = 50,
		Coords = vec4(179.9,2779.98,45.7,189.93),
		Model = "csb_paige",
		Anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},{ -- MoneyWash
		Distance = 50,
		Coords = vec4(68.93,-1569.81,29.59,48.19),
		Model = "a_m_m_soucent_03",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Throwing
		Distance = 50,
		Coords = vec4(-607.05,-925.7,23.86,218.27),
		Model = "a_m_m_paparazzi_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Taxi
		Distance = 50,
		Coords = vec4(901.97,-167.97,74.07,238.12),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Mercadão
		Distance = 50,
		Coords = vec4(46.67,-1749.73,29.62,48.19),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
		},{ -- Caçador
		Distance = 50,
		Coords = vec4(-679.23,5834.55,17.32,138.9),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Helicopters
		Distance = 100,
		Coords = vec4(-1896.42,-3032.01,13.93,243.78),
		Model = "g_m_y_korlieut_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Caminhoneiro
		Distance = 100,
		Coords = vec4(1239.87,-3257.2,7.09,274.97),
		Model = "s_m_m_trucker_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Cemitery
		Distance = 100,
		Coords = vec4(-1741.52,-219.85,56.14,255.12),
		Model = "g_m_m_armboss_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" },
		Collision = true
	},{ -- Pdm 
		Distance = 50,
		Coords = vec4(-56.32,-1098.46,26.42,28.35),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }	
	},{ -- Arena 
		Distance = 50,
		Coords = vec4(-1048.58,-473.52,36.87,331.66),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }	
	},
	

	

	-- Departament Store
	{ 
		Distance = 15,
		Coords = vec4(24.51,-1346.75,29.49,272.13),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(2556.77,380.87,108.61,0.0),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(1164.81,-323.61,69.2,99.22),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-706.16,-914.55,19.21,87.88),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-47.35,-1758.59,29.42,45.36),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(372.7,326.89,103.56,255.12),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-3242.7,1000.05,12.82,357.17),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(1728.08,6415.6,35.03,243.78),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(549.09,2670.89,42.16,93.55),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(1959.87,3740.44,32.33,300.48),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(2677.65,3279.66,55.23,331.66),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(1697.32,4923.46,42.06,323.15),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-1819.52,793.48,138.08,130.4),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(1391.62,3605.95,34.98,198.43),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-2966.41,391.52,15.05,82.21),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-3039.42,584.42,7.9,14.18),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(1134.32,-983.09,46.4,277.8),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(1165.32,2710.79,38.15,175.75),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-1486.72,-377.61,40.15,130.4),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-1221.48,-907.93,12.32,31.19),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{
		Distance = 15,
		Coords = vec4(-160.54,6320.95,31.59,314.65),
		Model = "mp_m_shopkeep_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},

	{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(1692.27,3760.91,34.69,226.78),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(253.8,-50.47,69.94,65.2),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(842.54,-1035.25,28.19,0.0),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(-331.67,6084.86,31.46,223.94),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(-662.37,-933.58,21.82,181.42),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(-1304.12,-394.56,36.7,73.71),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(-1118.98,2699.73,18.55,221.11),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(2567.98,292.62,108.73,0.0),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(-3173.51,1088.35,20.84,246.62),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(22.53,-1105.52,29.79,155.91),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Ammu-Nation Store
		Distance = 15,
		Coords = vec4(810.22,-2158.99,29.62,0.0),
		Model = "ig_dale",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Jewelry
		Distance = 15,
		Coords = vec4(-628.79,-238.7,38.05,311.82),
		Model = "cs_gurk",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Transporter
		Distance = 20,
		Coords = vec4(264.74,219.99,101.67,343.0),
		Model = "ig_casey",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Leiteirow
		Distance = 50,
		Coords = vec4(963.13,-2215.33,30.55,272.13),
		Model = "cs_manuel",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Lenhador
		Distance = 50,
		Coords = vec4(1961.61,5179.26,47.94,277.8),
		Model = "a_m_o_ktown_01",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Pescador
		Distance = 30,
		Coords = vec4(-1816.64,-1193.73,14.31,334.49),
		Model = "a_f_y_eastsa_03",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Locksmith
		Distance = 50,
		Coords = vec4(165.12,-1808.04,29.32,328.82),
		Model = "a_m_o_soucent_02",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Dismantle
		Distance = 25,
		Coords = vec4(2340.7,3126.49,48.21,351.5),
		Model = "a_m_m_soucent_03",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},{ -- Dismantle
		Distance = 25,
		Coords = vec4(-1674.58,-3174.81,13.99,328.82),
		Model = "a_m_m_soucent_03",
		Anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CREATEPEDOBJECT
-----------------------------------------------------------------------------------------------------------------------------------------
local function CreatePedObject(PedEntity,Prop,Flag,Hands,Height,Pos1,Pos2,Pos3,Pos4,Pos5)
	if not Prop or not Flag or not Hands then
		return nil
	end

	local Hash = GetHashKey(Prop)
	if not LoadModel(Prop) then
		return nil
	end

	local Coords = GetEntityCoords(PedEntity)
	local Object = CreateObject(Hash,Coords.x,Coords.y,Coords.z,false,false,false)

	if DoesEntityExist(Object) then
		SetEntityLodDist(Object,0xFFFF)
		SetEntityCollision(Object,false,false)

		local BoneIndex = GetPedBoneIndex(PedEntity,Hands)
		if Height then
			AttachEntityToEntity(Object,PedEntity,BoneIndex,Height or 0.0,Pos1 or 0.0,Pos2 or 0.0,Pos3 or 0.0,Pos4 or 0.0,Pos5 or 0.0,true,true,false,true,1,true)
		else
			AttachEntityToEntity(Object,PedEntity,BoneIndex,0.0,0.0,0.0,0.0,0.0,0.0,true,true,false,true,2,true)
		end

		return Object
	end

	return nil
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADLIST
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	local CheckInterval = 2000
	local LastCheck = 0

	while true do
		local CurrentTime = GetGameTimer()

		if (CurrentTime - LastCheck) >= CheckInterval then
			local Ped = PlayerPedId()
			local Coords = GetEntityCoords(Ped)

			for Number = 1,#List do
				local Distance = #(Coords - List[Number].Coords.xyz)
				if Distance <= List[Number].Distance then
					if not Spawned[Number] and LoadModel(List[Number].Model) then
						Spawned[Number] = CreatePed(4,List[Number].Model,List[Number].Coords.x,List[Number].Coords.y,List[Number].Coords.z - 1,List[Number].Coords.w,false,false)

						SetEntityInvincible(Spawned[Number],true)
						FreezeEntityPosition(Spawned[Number],true)
						DecorSetBool(Spawned[Number],"CREATIVE_PED",true)
						SetBlockingOfNonTemporaryEvents(Spawned[Number],true)

						if not List[Number].Collision then
							SetEntityNoCollisionEntity(Spawned[Number],Ped,false)
						end

						if List[Number].Anim then
							if type(List[Number].Anim) == "table" and List[Number].Anim[1] and List[Number].Anim[2] then
								if LoadAnim(List[Number].Anim[1]) then
									TaskPlayAnim(Spawned[Number],List[Number].Anim[1],List[Number].Anim[2],8.0,8.0,-1,List[Number].Flag or 1,0,0,0,0)
								end
							elseif type(List[Number].Anim) == "string" then
								TaskStartScenarioInPlace(Spawned[Number],List[Number].Anim,0,true)
							end
						end

						if List[Number].Prop then
							local Object = CreatePedObject(
								Spawned[Number],
								List[Number].Prop,
								List[Number].Flag or 49,
								List[Number].Mao or 28422,
								List[Number].Altura,
								List[Number].Pos1,
								List[Number].Pos2,
								List[Number].Pos3,
								List[Number].Pos4,
								List[Number].Pos5
							)

							if Object then
								PedObjects[Number] = Object
							end
						end
					end
				else
					if Spawned[Number] then
						if PedObjects[Number] and DoesEntityExist(PedObjects[Number]) then
							DeleteEntity(PedObjects[Number])
							PedObjects[Number] = nil
						end

						if DoesEntityExist(Spawned[Number]) then
							DeleteEntity(Spawned[Number])
						end

						Spawned[Number] = nil
					end
				end
			end

			LastCheck = CurrentTime
		end

		Wait(500)
	end
end)