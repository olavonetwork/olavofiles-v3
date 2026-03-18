-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
MaxRepair = 1
MinimumWeight = 15
PrisonCoords = vec3(1680.11,2513.04,45.56)
CreatorCoords = vec4(149.57,-158.09,-23.99,303.31)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BANNED
-----------------------------------------------------------------------------------------------------------------------------------------
Banned = {
	Mute = true,
	Route = 9999998,
	Leave = vec3(242.71,-392.01,46.30)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVERINFO
-----------------------------------------------------------------------------------------------------------------------------------------
Currency = "$"
DiscordBot = true
BaseMode = "steam"
Whitelisted = true
Liberation = "Token"
DisconnectReason = 30
NameDefault = "Indivíduo Indigente"
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVER
-----------------------------------------------------------------------------------------------------------------------------------------
ServerLink = "https://discord.gg/headnanB2D" -- Link exibido na whitelist
ServerName = "Olavo" -- Nome do servidor
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAINTENANCE
-----------------------------------------------------------------------------------------------------------------------------------------
Maintenance = false
--{
--	[""] = true
--}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWNCOORDS
-----------------------------------------------------------------------------------------------------------------------------------------
SpawnCoords = {
	vec3(-1039.89,-2740.74,13.88)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TEXTUREPACK
-----------------------------------------------------------------------------------------------------------------------------------------
TexturePack = {
	{ Width = 19, Height = 20, Image = "E" },
	{ Width = 19, Height = 20, Image = "H" },
	{ Width = 72, Height = 72, Image = "Drop" },
	{ Width = 43, Height = 67, Image = "Races" },
	{ Width = 72, Height = 72, Image = "Normal" },
	{ Width = 102, Height = 20, Image = "EPress" },
	{ Width = 102, Height = 20, Image = "HPress" },
	{ Width = 72, Height = 72, Image = "Selected" },
	{ Width = 72, Height = 72, Image = "Marker" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUPS
-----------------------------------------------------------------------------------------------------------------------------------------
Groups = {
	Admin = {
		Permission = {
			Admin = true
		},
		Hierarchy = { "Administrador","Diretor","Moderador","Suporte","Ajudante" },
		Name = "Adminstradores",
		Service = true,
		Chat = true,
		Max = 30
	},
	Ouro = {
		Permission = {
			Ouro = true
		},
		Hierarchy = { "Membro" },
		Salary = { 3750 },
		Backpack = { 25 },
		Service = true,
		Block = true
	},
	Prata = {
		Permission = {
			Prata = true
		},
		Hierarchy = { "Membro" },
		Salary = { 2500 },
		Backpack = { 15 },
		Service = true,
		Block = true
	},
	Bronze = {
		Permission = {
			Bronze = true
		},
		Hierarchy = { "Membro" },
		Salary = { 1250 },
		Backpack = { 5 },
		Service = true,
		Block = true
	},
	LSPD = {
		Permission = {
			LSPD = true
		},
		Hierarchy = { "Coronel","Tenente-Coronel","Major","Capitão","1º Tenente","2º Tenente","Aspirante","Subtenente","1º Sargento","2º Sargento","3º Sargento","Cabo","Soldado","Recruta","Delegada" },
		Salary = { 10000,9750,9500,9250,9000,8750,8500,8250,8000,7750,7500,7250,7000,6750,6500 },
		Name = "Los Santos Police Department",
		SecurityCam = true,
		Service = true,
		Type = "Work",
		Markers = 26,
		Banned = true,
		Chat = true
	},
	PRPD = {
		Permission = {
			PRPD = true
		},
		Hierarchy = { "Chefe","Fiscal","Sargento","Patrulheiro","Aspirante","Estagiário" },
		Salary = { 2500,2250,2000,1750,1500,1500 },
		Name = "Park Ranger Police Department",
		SecurityCam = true,
		Service = true,
		Type = "Work",
		Markers = 15,
		Banned = true,
		Chat = true
	},
	BCSO = {
		Permission = {
			BCSO = true
		},
		Hierarchy = { "Coronel","Tenente-Coronel","Major","Capitão","1º Tenente","2º Tenente","Aspirante","Subtenente","1º Sargento","2º Sargento","3º Sargento","Cabo","Soldado","Recruta","Delegada" },
		Salary = { 10000,9750,9500,9250,9000,8750,8500,8250,8000,7750,7500,7250,7000,6750,6500 },
		Name = "Blaine County Sheriff Officer",
		SecurityCam = true,
		Service = true,
		Type = "Work",
		Markers = 15,
		Banned = true,
		Chat = true
	},
	SAPR = {
		Permission = {
			SAPR = true
		},
		Hierarchy = { "Coronel","Tenente-Coronel","Major","Capitão","1º Tenente","2º Tenente","Aspirante","Subtenente","1º Sargento","2º Sargento","3º Sargento","Cabo","Soldado","Recruta","Delegada" },
		Salary = { 10000,9750,9500,9250,9000,8750,8500,8250,8000,7750,7500,7250,7000,6750,6500 },
		Name = "San Andreas Park Ranger",
		SecurityCam = true,
		Service = true,
		Type = "Work",
		Markers = 17,
		Banned = true,
		Chat = true
	},
	Paramedico = {
		Permission = {
			Paramedico = true
		},
		Hierarchy = { "Diretor-Geral","Diretor Clínico","Diretor Técnico","Chefe de Corpo Clínico","Médico Supervisor","Médico Cirurgião","Médico Plantonista","Médico Especialista","Médico Clínico","Residente","Enfermeiro","Técnico de Enfermagem","Auxiliar de Enfermagem","Estagiário de Medicina","Estagiário de Enfermagem" },
		Salary = { 8750,8500,8250,8000,7750,7500,7250,7000,6750,6500,6250,6000,5750,5500,5250 },
		Service = true,
		Type = "Work",
		Markers = 34,
		Banned = true,
		Chat = true
	},
	Ballas = {
		Permission = {
			Ballas = true
		},
		Hierarchy = { "Chefe","Subchefe","Conselheiro","General","Veterano","Executor","Operacional","Soldado","Novato","Aspirante" },
		SecurityCam = true,
		Domination = true,
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Vagos = {
		Permission = {
			Vagos = true
		},
		Hierarchy = { "Chefe","Subchefe","Conselheiro","General","Veterano","Executor","Operacional","Soldado","Novato","Aspirante" },
		SecurityCam = true,
		Domination = true,
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Families = {
		Permission = {
			Families = true
		},
		Hierarchy = { "Chefe","Subchefe","Conselheiro","General","Veterano","Executor","Operacional","Soldado","Novato","Aspirante" },
		SecurityCam = true,
		Domination = true,
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Marabunta = {
		Permission = {
			Marabunta = true
		},
		Hierarchy = { "Chefe","Subchefe","Conselheiro","General","Veterano","Executor","Operacional","Soldado","Novato","Aspirante" },
		SecurityCam = true,
		Domination = true,
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Aztecas = {
		Permission = {
			Aztecas = true
		},
		Hierarchy = { "Chefe","Subchefe","Conselheiro","General","Veterano","Executor","Operacional","Soldado","Novato","Aspirante" },
		SecurityCam = true,
		Domination = true,
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Bennys = {
		Permission = {
			Bennys = true
		},
		Hierarchy = { "Dono","Gerente de Oficina","Supervisor de Oficina","Especialista Automotivo","Mecânico Sênior","Mecânico Pleno","Mecânico Júnior","Ajudante de Mecânico","Estagiário de Mecânica" },
		Salary = { 4000,3750,3500,3250,3000,2750,2500,2250,2000 },
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Bahamas = {
		Permission = {
			Bahamas = true
		},
		Hierarchy = { "Dono","Sócio","Gerente","Maitré","Especialista","Cozinheiro Sênior","Cozinheiro Pleno","Cozinheiro Júnior","Ajudante de Cozinha","Estagiário de Cozinha" },
		Salary = { 4000,3750,3500,3250,3000,2750,2500,2250,2000,1750 },
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Restaurante = {
		Permission = {
			Restaurante = true
		},
		Hierarchy = { "Dono","Sócio","Gerente","Maitré","Especialista","Cozinheiro Sênior","Cozinheiro Pleno","Cozinheiro Júnior","Ajudante de Cozinha","Estagiário de Cozinha" },
		Salary = { 4000,3750,3500,3250,3000,2750,2500,2250,2000,1750 },
		Service = true,
		Chest = true,
		Type = "Work"
	},
	Booster = {
		Permission = {
			Booster = true
		},
		Hierarchy = { "Membro" },
		Service = true,
		Salary = { 2500 },
		Block = true
	},
	Freecam = {
		Permission = {
			Freecam = true
		},
		Hierarchy = { "Membro" },
		Service = true,
		Block = true
	},
	Policia = {
		Permission = {
			LSPD = true,
			BCSO = true,
			PRPD = true,
			SAPR = true
		},
		Hierarchy = { "Membro" },
		Block = true
	},
	Emergencia = {
		Permission = {
			LSPD = true,
			BCSO = true,
			PRPD = true,
			SAPR = true,
			Paramedico = true
		},
		Hierarchy = { "Membro" },
		Block = true
	},
	Corredor = {
		Permission = {
			Corredor = true
		},
		Hierarchy = { "Jogador" },
		Markers = 46,
		Block = true
	},
	Boosting = {
		Permission = {
			Boosting = true
		},
		Hierarchy = { "Jogador" },
		Markers = 50,
		Block = true
	},
	-- PROPRIEDADES
	Mansao01 = { -- Exemplo de propriedade com painel/permissão
		Permission = {
			Mansao01 = true
		},
		Name = "Mansão",
		Hierarchy = { "Proprietário","Morador" },
		Type = "Propertys",
		Service = true,
		Max = 5
	},
	-- DOMINATION
	Lester = {
		Permission = {
			Lester = true
		},
		Hierarchy = { "Chefe","Subchefe","Membro" },
		Service = true
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUELSTATIONS (gerado automaticamente via loop — evita repetição de FuelStation01..27)
-----------------------------------------------------------------------------------------------------------------------------------------
do
	local FuelHierarchy = { "Proprietário","Gerente","Atendente","Frentista" }
	for i = 1, 27 do
		local Key = string.format("FuelStation%02d", i)
		Groups[Key] = {
			Permission = { [Key] = true },
			Hierarchy  = FuelHierarchy,
			Service    = true,
			Type       = "Fuel",
			Block      = true,
			Max        = 3
		}
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERITENS
-----------------------------------------------------------------------------------------------------------------------------------------
CharacterItens = {
	soda = 2,
	identity = 1,
	hamburger = 2
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- BOXES
-----------------------------------------------------------------------------------------------------------------------------------------
Boxes = {
	treasurebox = {
		Multiplier = { Min = 1, Max = 1 },
		List = {
			{ Item = "dollar", Chance = 100, Min = 4250, Max = 6250 }
		}
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPPERLEVEL
-----------------------------------------------------------------------------------------------------------------------------------------
UpperLevel = {
	Trucker = {
		{
			{ Item = "bandage", Min = 1, Max = 2 },
			{ Item = "advtoolbox", Min = 1, Max = 1 }
		}
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOPINIT
-----------------------------------------------------------------------------------------------------------------------------------------
SkinshopInit = {
	mp_m_freemode_01 = {
		pants = { item = 4, texture = 1 },
		arms = { item = 0, texture = 0 },
		tshirt = { item = 15, texture = 0 },
		torso = { item = 273, texture = 0 },
		vest = { item = 0, texture = 0 },
		shoes = { item = 1, texture = 6 },
		mask = { item = 0, texture = 0 },
		backpack = { item = 0, texture = 0 },
		hat = { item = -1, texture = 0 },
		glass = { item = 0, texture = 0 },
		ear = { item = -1, texture = 0 },
		watch = { item = -1, texture = 0 },
		bracelet = { item = -1, texture = 0 },
		accessory = { item = 0, texture = 0 },
		decals = { item = 0, texture = 0 }
	},
	mp_f_freemode_01 = {
		pants = { item = 4, texture = 1 },
		arms = { item = 14, texture = 0 },
		tshirt = { item = 3, texture = 0 },
		torso = { item = 338, texture = 2 },
		vest = { item = 0, texture = 0 },
		shoes = { item = 1, texture = 6 },
		mask = { item = 0, texture = 0 },
		backpack = { item = 0, texture = 0 },
		hat = { item = -1, texture = 0 },
		glass = { item = 0, texture = 0 },
		ear = { item = -1, texture = 0 },
		watch = { item = -1, texture = 0 },
		bracelet = { item = -1, texture = 0 },
		accessory = { item = 0, texture = 0 },
		decals = { item = 0, texture = 0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARBERSHOPINIT
-----------------------------------------------------------------------------------------------------------------------------------------
BarbershopInit = {
	mp_m_freemode_01 = { 13,25,0,3,0,-1,-1,-1,-1,13,38,38,0,0,0,0,0.5,0,0,1,0,10,1,0,1,0.5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,38 },
	mp_f_freemode_01 = { 13,25,1,3,0,-1,-1,-1,-1,1,38,38,0,0,0,0,1,0,0,1,0,0,0,0,1,0.5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,38 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THEME
-----------------------------------------------------------------------------------------------------------------------------------------
Theme = {
	shadow = true,
	main = "#4c008b",
	mainText = "#ffffff",
	currency = Currency,
	items = ListItem,
	groups = Groups,

	common = "#6fc66a",
	rare = "#6ac6c5",
	epic = "#c66a75",
	legendary = "#c6986a",
	accept = {
		letter = "#dcffe9",
		background = "#3fa466"
	},
	reject = {
		letter = "#ffe8e8",
		background = "#ad4443"
	},
	loading = {
		mode = "dark", -- [ Opções disponíveis: dark,light ],
		model = 2, -- [ Opções disponíveis: 1,2 ],
		progress = true -- [ Opções disponíveis: true, false ],
	},
	chat = {
		Importante = {
			background = "#9d194e",
			letter = "#f7c1d6"
		},
		LSPD = {
			background = "#4c008b",
			letter = "#ffffff"
		},
		BCSO = {
			background = "#4c008b",
			letter = "#ffffff"
		},
		SAPR = {
			background = "#4c008b",
			letter = "#ffffff"
		},
		Paramedico = {
			background = "#4c008b",
			letter = "#ffffff"
		},
		Families = {
			background = "#4c008b",
			letter = "#ffffff"
		},
		Ballas = {
			background = "#4c008b",
			letter = "#ffffff"
		},
		Vagos = {
			background = "#4c008b",
			letter = "#ffffff"
		}
	},
	hud = {
		modes = {
			info = 3, -- [ Opções disponíveis: 1,2,3 ],
			icon = "fill", -- [ Opções disponíveis: fill,line ],
			status = 10, -- [ Opções disponíveis: 1 a 12 ],
			vehicle = 3 -- [ Opções disponíveis: 1,2,3 ]
		},
		logo = 75, -- tamanho da logo
		percentage = false,
		icons = "#FFFFFF",
		nitro = "#f69d2a",
		rpm = "#FFFFFF",
		fuel = "#f94c54",
		engine = "#ff4c55",
		health = "#ff4c55",
		armor = "#4c008b",   
		hunger = "#f39c2b",
		thirst = "#38F8F8",
		oxygen = "#38F8F8",
		stress = "#E287C9",
		luck = "#F18A7C",
		dexterity = "#E4E76E",
		repose = "#7FCCC7",
		pointer = "#ef4444",
		progress = {
			background = "#FFFFFF",
			circle = "#4c008b",
			letter = "#FFFFFF"
		}
	},
	notifyitem = {
		add = {
			letter = "#dcffe9",
			background = "#3fa466"
		},
		remove = {
			letter = "#ffe8e8",
			background = "#ad4443"
		}
	},
	pause = {
		premium = true,
		propertys = true,
		store = true,
		battlepass = true,
		boxes = true,
		marketplace = true,
		skinweapon = true,
		ranking = true,
		statistics = true,
		daily = true,
		code = true,
		map = true,
		settings = true,
		hud = true,
		disconnect = true
	},
	scripts = {
		taximeter = {
			main = "#efcf2f",
			mainText = "#120b02"
		}
	}
}