-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Weapon = ""
local Timer = GetGameTimer()

-- CONTROLE NPC JA VENDIDO
local SoldPeds = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- DRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
local Drunk = 0
local DrunkTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENERGETIC
-----------------------------------------------------------------------------------------------------------------------------------------
local Energetic = 0
local EnergeticTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- COCAINE
-----------------------------------------------------------------------------------------------------------------------------------------
local Cocaine = 0
local CocaineTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- METHAMPHETAMINE
-----------------------------------------------------------------------------------------------------------------------------------------
local Methamphetamine = 0
local MethamphetamineTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- METADONE
-----------------------------------------------------------------------------------------------------------------------------------------
local Metadone = 0
local MetadoneTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- HEROIN
-----------------------------------------------------------------------------------------------------------------------------------------
local Heroin = 0
local HeroinTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- CRACK
-----------------------------------------------------------------------------------------------------------------------------------------
local Crack = 0
local CrackTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- JOINT
-----------------------------------------------------------------------------------------------------------------------------------------
local Joint = 0
local JointTimer = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- OXYCONTIN
-----------------------------------------------------------------------------------------------------------------------------------------
local Oxycontin = 0
local OxycontinTimer = GetGameTimer()

-----------------------------------------------------------------------------------------------------------------------------------------
-- NPC MESSAGES
-----------------------------------------------------------------------------------------------------------------------------------------
local Messages = {
	'Salve cria, tem da boa hoje? 👀💨',
'Boa noite patrão, desenrola aí 👀💨',
'Coe mano, só duas pra agora 🌬️💨',
'Visão família, fecha comigo 👀💨',
'Cria, arruma aquela braba 🌬️💨',
'Boa chefe, manda a forte 👀💨',
'Tem da pura escondida? 🌬️💨',
'Coe cria, salva a noite 👀💨',
'Visão, separa duas no esquema 💨',
'Boa noite, tem parada aí? 👀💨',
'Cria, fecha no talento 🌬️💨',
'Coe patrão, hoje rende 👀💨',
'Visão mano, manda aquela boa 💨',
'Boa família, só uma pra agora 👀💨',
'Cria, desenrola no capricho 💨',
'Tem da fina hoje? 👀💨',
'Coe, manda duas rapidão 🌬️💨',
'Visão, fecha agora 👀💨',
'Boa noite cria, no sigilo 💨',
'Cria, arruma aquela diferenciada 👀💨',
'Salve patrão, tem algo quente? 👀💨',
'Coe mano, manda no talento 🌬️💨',
'Visão, só duas pra viagem 👀💨',
'Boa chefe, fecha comigo 💨',
'Cria, salva nós aí 👀💨',
'Tem da melhor guardada? 🌬️💨',
'Coe cria, fecha hoje 👀💨',
'Visão, manda aquela top 💨',
'Boa noite, desenrola 👀💨',
'Cria, só duas hoje 💨',
'Coe patrão, arruma aí 👀💨',
'Visão mano, manda a forte 💨',
'Boa família, fecha agora 👀💨',
'Cria, duas no esquema 🌬️💨',
'Tem da braba pra hoje? 👀💨',
'Coe cria, hoje é dia 💨',
'Visão, separa rápido 👀💨',
'Boa noite chefe, manda aí 💨',
'Cria, fecha comigo agora 👀💨',
'Tem da pura agora? 🌬️💨',
'Coe mano, salva hoje 👀💨',
'Visão patrão, só no corre 💨',
'Boa família, manda aquela 👀💨',
'Cria, arruma duas boas 💨',
'Tem mercadoria fina? 👀💨',
'Coe cria, fecha no sigilo 🌬️💨',
'Visão, hoje tá pesado 👀💨',
'Boa noite, separa aí 💨',
'Cria, manda aquela braba 👀💨',
'Coe patrão, fecha negócio 💨',
'Visão mano, só duas hoje 👀💨',
'Boa chefe, arruma rápido 💨',
'Cria, salva essa noite 👀💨',
'Tem algo diferenciado? 🌬️💨',
'Coe cria, manda agora 👀💨',
'Visão, fecha forte 💨',
'Boa noite patrão, só hoje 👀💨',
'Cria, arruma aquela fina 💨',
'Tem da topzera? 👀💨',
'Coe mano, separa duas 🌬️💨',
'Visão família, manda aí 👀💨',
'Boa chefe, fecha rápido 👀💨',
'Cria, duas pra viagem 💨',
'Tem da boa escondida? 👀💨',
'Coe cria, hoje rende 💨',
'Visão, manda aquela diferenciada 👀💨',
'Boa noite, fecha comigo 👀💨',
'Cria, arruma no capricho 💨',
'Tem da forte pra agora? 👀💨',
'Coe patrão, manda a boa 🌬️💨',
'Visão, fecha essa 👀💨',
'Boa família, só duas 💨',
'Cria, salva nós 👀💨',
'Tem da fina hoje aí? 🌬️💨',
'Coe mano, fecha agora 👀💨',
'Visão, manda duas boas 💨',
'Boa noite chefe, arruma aí 👀💨',
'Cria, hoje é dia 👀💨',
'Tem da pura hoje não? 🌬️💨',
'Coe cria, separa rápido 💨',
'Visão patrão, fecha hoje 👀💨',
'Boa família, manda aquela top 💨',
'Cria, duas no talento 👀💨',
'Tem algo quente hoje? 🌬️💨',
'Coe mano, fecha comigo 👀💨',
'Visão, arruma rápido 💨',
'Boa noite, manda a forte 👀💨',
'Cria, salva hoje 👀💨',
'Tem da boa pra agora? 🌬️💨',
'Coe cria, manda duas 👀💨',
'Visão família, fecha negócio 💨',
'Boa chefe, hoje rende 👀💨',
'Cria, arruma aí rapidão 💨',
'Tem da braba escondida? 👀💨',
'Coe patrão, fecha agora 🌬️💨',
'Visão, manda aquela fina 💨',
'Boa noite cria, só no sigilo 👀💨',
'Cria, salva nós aí 💨',
'Tem daquela top hoje? 👀💨',
'Coe mano, fecha essa 👀💨',
'Salve cria, hoje tem corre bom? 👀💨',
'Boa noite patrão, manda aquela no sigilo 🌬️💨',
'Coe mano, fecha duas pra agora 👀💨',
'Visão família, desenrola hoje 💨',
'Cria, arruma aquela da responsa 👀💨',
'Boa chefe, tem algo fino aí? 🌬️💨',
'Tem da pura pra hoje? 👀💨',
'Coe cria, salva nós rapidão 💨',
'Visão, separa duas boas 👀💨',
'Boa noite, fecha comigo agora 🌬️💨',
'Cria, manda aquela forte 👀💨',
'Coe patrão, hoje é dia 💨',
'Visão mano, só no talento 👀💨',
'Boa família, manda aquela top 💨',
'Cria, fecha no capricho 👀💨',
'Tem da fina guardada? 🌬️💨',
'Coe, manda duas pra viagem 👀💨',
'Visão, fecha hoje 👀💨',
'Boa noite cria, arruma aí 💨',
'Cria, salva a madruga 👀💨',
'Coe patrão, arruma rápido 👀💨',
'Visão mano, manda aquela diferenciada 💨',
'Boa família, fecha negócio 👀💨',
'Cria, duas no esquema 🌬️💨',
'Tem da braba pra agora? 👀💨',
'Coe cria, manda logo 💨',
'Visão, separa no talento 👀💨',
'Boa noite chefe, fecha aí 💨',
'Cria, hoje rende 👀💨',
'Tem da pura escondida? 🌬️💨',
'Coe mano, fecha comigo 👀💨',
'Visão patrão, só duas hoje 💨',
'Boa família, arruma aquela 👀💨',
'Cria, manda duas boas 💨',
'Tem mercadoria top? 👀💨',
'Coe cria, fecha no sigilo 🌬️💨',
'Visão, hoje tá quente 👀💨',
'Boa noite, manda aí 💨',
'Cria, arruma aquela fina 👀💨',
'Coe patrão, fecha agora 💨',
'Visão mano, manda aquela braba 👀💨',
'Boa chefe, separa duas 💨',
'Cria, salva essa noite 👀💨',
'Tem algo diferenciado hoje? 🌬️💨',
'Coe cria, fecha rápido 👀💨',
'Visão, manda duas boas 💨',
'Boa noite patrão, fecha comigo 👀💨',
'Cria, arruma no talento 💨',
'Tem da forte pra agora? 👀💨',
'Coe mano, manda a boa 🌬️💨',
'Visão, fecha essa 👀💨',
'Boa família, só duas hoje 💨',
'Cria, salva nós 👀💨',
'Tem da fina aí não? 🌬️💨',
'Coe mano, fecha agora 👀💨',
'Visão, separa duas 💨',
'Boa noite chefe, arruma rápido 👀💨',
'Cria, hoje é dia 👀💨',
'Tem da pura pra hoje não? 🌬️💨',
'Coe cria, manda logo 💨',
'Visão patrão, fecha hoje 👀💨',
'Boa família, manda aquela topzera 💨',
'Cria, duas no talento 👀💨',
'Tem algo quente hoje? 🌬️💨',
'Coe mano, fecha comigo agora 👀💨',
'Visão, arruma rápido 💨',
'Boa noite, manda a forte 👀💨',
'Cria, salva hoje 👀💨',
'Tem da boa pra agora? 🌬️💨',
'Coe cria, manda duas 👀💨',
'Visão família, fecha negócio 💨',
'Boa chefe, hoje rende 👀💨',
'Cria, arruma aí rapidão 💨',
'Tem da braba escondida? 👀💨',
'Coe patrão, fecha agora 🌬️💨',
'Visão, manda aquela fina 💨',
'Boa noite cria, só no sigilo 👀💨',
'Cria, salva nós aí 💨',
'Tem daquela top hoje? 👀💨',
'Coe mano, fecha essa 👀💨',
'Salve cria, manda aquela boa 👀💨',
'Boa noite patrão, fecha no corre 💨',
'Coe mano, separa duas agora 👀💨',
'Visão família, fecha comigo hoje 💨',
'Cria, arruma aquela topzera 👀💨',
'Boa chefe, tem algo pra agora? 🌬️💨',
'Tem da pura hoje aí? 👀💨',
'Coe cria, salva a noite 💨',
'Visão, manda duas boas 👀💨',
'Boa noite, fecha essa parada 👀💨',
'Cria, manda aquela da responsa 💨',
'Coe patrão, hoje tá rendendo 👀💨',
'Visão mano, só duas pra hoje 💨',
'Boa família, arruma rápido 👀💨',
'Cria, fecha no sigilo 👀💨',
'Tem da fina escondida? 🌬️💨',
'Coe mano, manda aquela forte 👀💨',
'Visão, fecha negócio agora 💨',
'Boa noite cria, manda aí 👀💨',
'Cria, salva nós hoje 💨',
'Eae, meu chapa! Tô em busca daquele conteúdo diferenciado, sabe? Tem a parada da boa pra vender? 👀💨',
'Oi, boa noite me vê 2 Ck de 20 cria? 🌬️💨',
'Oba oba, 4 po de 5 família? 🌬️💨',
'Coe cria bom, tem skank paizão? Me vê 2 ai paizão? 🌬️💨',
'Parada de 20 pai a forte? 🌬️💨',
'Matin de 10 mano, me da uma aí? 🌬️💨',
'cria tem? É quanto? Me da um ai paizão? 🌬️💨',
'Solta a braba de galo aí pra nois marola no baile mais tarde? 🌬️💨',
'Me vé uma Droga ai? 🌬️💨',
'Boa me vé um Chá? 🌬️💨',
'Tem de 10 padrinho? 🌬️💨',
'Tem 2 do bom Chefe? 🌬️💨',
'Tem a braba ai? 🌬️💨',
'Visão da boca tem droga? 🌬️💨',
'Fé, droga de 20 cria? 🌬️💨',
'Salve cria, manda aquela agora 👀💨',
'Boa noite patrão, fecha comigo hoje 🌬️💨',
'Coe mano, duas rapidão 👀💨',
'Visão família, desenrola no talento 💨',
'Cria, arruma aquela top 👀💨',
'Boa chefe, manda a boa 🌬️💨',
'Tem da pura pra hoje? 👀💨',
'Coe cria, salva nós aí 💨',
'Visão, separa duas finas 👀💨',
'Boa noite, fecha negócio agora 🌬️💨',
'Cria, manda aquela braba 👀💨',
'Coe patrão, hoje rende 💨',
'Visão mano, fecha duas comigo 👀💨',
'Boa família, só uma pra agora 💨',
'Cria, arruma no capricho 👀💨',
'Tem da fina escondida? 🌬️💨',
'Coe, manda duas hoje 👀💨',
'Visão, fecha agora 💨',
'Boa noite cria, no sigilo 👀💨',
'Cria, salva a madruga 💨',
'Coe patrão, arruma aí 👀💨',
'Visão mano, manda aquela diferenciada 💨',
'Boa família, fecha no corre 👀💨',
'Cria, duas no esquema 🌬️💨',
'Tem da braba hoje? 👀💨',
'Coe cria, manda rápido 💨',
'Visão, separa no talento 👀💨',
'Boa noite chefe, fecha comigo 💨',
'Cria, hoje tá pesado 👀💨',
'Tem da pura guardada? 🌬️💨',
'Coe mano, fecha essa 👀💨',
'Visão patrão, só duas 💨',
'Boa família, arruma aquela 👀💨',
'Cria, manda duas boas 💨',
'Tem mercadoria fina hoje? 👀💨',
'Coe cria, fecha no sigilo 🌬️💨',
'Visão, hoje rende 👀💨',
'Boa noite, manda aí 💨',
'Cria, arruma aquela forte 👀💨',
'Coe patrão, fecha agora 💨',
'Visão mano, manda aquela topzera 👀💨',
'Boa chefe, separa duas 💨',
'Cria, salva hoje 👀💨',
'Tem algo diferenciado aí? 🌬️💨',
'Coe cria, fecha rápido 👀💨',
'Visão, manda duas boas 💨',
'Boa noite patrão, fecha comigo 👀💨',
'Cria, arruma no talento 💨',
'Tem da forte pra agora? 👀💨',
'Coe mano, manda a boa 🌬️💨',
'Visão, fecha essa 👀💨',
'Boa família, só duas hoje 💨',
'Cria, salva nós 👀💨',
'Tem da fina aí não? 🌬️💨',
'Coe mano, fecha agora 👀💨',
'Visão, separa duas 💨',
'Boa noite chefe, arruma rápido 👀💨',
'Cria, hoje é dia 👀💨',
'Tem da pura hoje não? 🌬️💨',
'Coe cria, manda logo 💨',
'Visão patrão, fecha hoje 👀💨',
'Boa família, manda aquela top 💨',
'Cria, duas no talento 👀💨',
'Tem algo quente hoje? 🌬️💨',
'Coe mano, fecha comigo agora 👀💨',
'Visão, arruma rápido 💨',
'Boa noite, manda a forte 👀💨',
'Cria, salva hoje 👀💨',
'Tem da boa pra agora? 🌬️💨',
'Coe cria, manda duas 👀💨',
'Visão família, fecha negócio 💨',
'Boa chefe, hoje rende 👀💨',
'Cria, arruma aí rapidão 💨',
'Tem da braba escondida? 👀💨',
'Coe patrão, fecha agora 🌬️💨',
'Visão, manda aquela fina 💨',
'Boa noite cria, só no sigilo 👀💨',
'Cria, salva nós aí 💨',
'Tem daquela top hoje? 👀💨',
'Coe mano, fecha essa 👀💨',
'Salve cria, manda aquela boa 👀💨',
'Boa noite patrão, fecha no corre 💨',
'Coe mano, separa duas agora 👀💨',
'Visão família, fecha comigo hoje 💨',
'Cria, arruma aquela topzera 👀💨',
'Boa chefe, tem algo pra agora? 🌬️💨',
'Tem da pura hoje aí? 👀💨',
'Coe cria, salva a noite 💨',
'Visão, manda duas boas 👀💨',
'Boa noite, fecha essa parada 👀💨',
'Cria, manda aquela da responsa 💨',
'Coe patrão, hoje tá rendendo 👀💨',
'Visão mano, só duas pra hoje 💨',
'Boa família, arruma rápido 👀💨',
'Cria, fecha no sigilo 👀💨',
'Tem da fina escondida? 🌬️💨',
'Coe mano, manda aquela forte 👀💨',
'Visão, fecha negócio agora 💨',
'Boa noite cria, manda aí 👀💨',
'Cria, salva nós hoje 💨'
}

local function GetRandomMessage()
	return Messages[math.random(#Messages)]
end

local function DrawText3D(x,y,z,text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)

    if onScreen then
        local scale = 0.35
        local font = 4

        -- Config texto
        SetTextScale(scale,scale)
        SetTextFont(font)
        SetTextProportional(1)
        SetTextCentre(true)
        SetTextColour(255,255,255,255)
        SetTextEntry("STRING")
        AddTextComponentString(text)

        -- Calcula largura automática correta
        local factor = (string.len(text)) / 300

        -- Fundo preto centralizado
        DrawRect(_x, _y + 0.012, 0.015 + factor, 0.03, 0, 0, 0, 200)

        DrawText(_x,_y)
    end
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		local Ped = PlayerPedId()

		if not IsPedInAnyVehicle(Ped) then
			local Pid = PlayerId()
			local Entitys = ClosestPed(2)

			if Entitys
			and not SoldPeds[Entitys]
			and not Entity(Entitys)["state"]["Drugs"]
			and not LocalPlayer["state"]["Arena"] then

				TimeDistance = 1

				if IsControlJustPressed(1,38)
				and GetVehiclePedIsIn(Entitys,true) == 0
				and GetGameTimer() >= Timer
				and vSERVER.CheckDrugs() then

					Timer = GetGameTimer() + 5000
					local SELL_TIME = 5000

					ClearPedTasksImmediately(Entitys)

					TaskSetBlockingOfNonTemporaryEvents(Entitys,true)
					SetBlockingOfNonTemporaryEvents(Entitys,true)
					SetEntityAsMissionEntity(Entitys,true,true)
					SetPedDropsWeaponsWhenDead(Entitys,false)
					SetPedSuffersCriticalHits(Entitys,false)
					TaskTurnPedToFaceEntity(Entitys,Ped,0.0)

					LocalPlayer["state"]:set("Buttons",true,true)
					LocalPlayer["state"]:set("Commands",true,true)
					Entity(Entitys)["state"]:set("Drugs",true,true)

					local npcMessage = GetRandomMessage()

					SetTimeout(1000,function()
						if LoadAnim("jh_1_ig_3-2") then
							TaskPlayAnim(Entitys,"jh_1_ig_3-2","cs_jewelass_dual-2",4.0,4.0,-1,16,0,0,0,0)
						end
					end)

					TriggerEvent("Progress","Vendendo droga...",SELL_TIME)

					local startTime = GetGameTimer()
					local aborted = false

					while (GetGameTimer() - startTime) < SELL_TIME do
						Wait(1)

						if not DoesEntityExist(Entitys) then
							aborted = true
							break
						end

						local Coords = GetEntityCoords(Ped)
						local EntityCoords = GetEntityCoords(Entitys)

						DrawText3D(EntityCoords.x,EntityCoords.y,EntityCoords.z + 1.0,npcMessage)

						if #(Coords - EntityCoords) > 2.0 then
							aborted = true
							break
						end
					end

					TriggerEvent("Progress","",1)

					if not aborted then
						if LoadModel("prop_anim_cash_note") then
							local Coords = GetEntityCoords(Ped)
							local Object = CreateObject("prop_anim_cash_note",Coords.x,Coords.y,Coords.z,false,false,false)

							AttachEntityToEntity(Object,Entitys,GetPedBoneIndex(Entitys,28422),0.0,0.0,0.0,90.0,0.0,0.0,false,false,false,false,2,true)

							vRP._CreateObjects("mp_safehouselost@","package_dropoff","prop_paper_bag_small",16,28422,0.0,-0.05,0.05,180.0,0.0,0.0)

							if LoadAnim("mp_safehouselost@") then
								TaskPlayAnim(Ped,"mp_safehouselost@","package_dropoff",4.0,4.0,-1,16,0,0,0,0)
								TaskPlayAnim(Entitys,"mp_safehouselost@","package_dropoff",4.0,4.0,-1,16,0,0,0,0)
							end

							Wait(3000)

							if DoesEntityExist(Object) then
								DeleteEntity(Object)
							end
						end

						ClearPedSecondaryTask(Entitys)
						TaskWanderStandard(Entitys,10.0,10)
						SetEntityAsNoLongerNeeded(Entitys)

						paymentDrugs()

						-- MARCA NPC COMO VENDIDO
						SoldPeds[Entitys] = true

						vRP._Destroy()

						if math.random(100) >= 75 then
							SetTimeout(5000,function()
								SetPedRelationshipGroupHash(Entitys,GetHashKey("HATES_PLAYER"))
								TaskCombatPed(Entitys,Ped,0,16)
							end)
						end
					else
						ClearPedSecondaryTask(Entitys)
						TaskWanderStandard(Entitys,10.0,10)
						SetEntityAsNoLongerNeeded(Entitys)
					end

					LocalPlayer["state"]:set("Buttons",false,true)
					LocalPlayer["state"]:set("Commands",false,true)
				end
			end
		end

		Wait(TimeDistance)
	end
end)

paymentDrugsCooldown = false
paymentDrugs = function()
	CreateThread(function()
		if paymentDrugsCooldown then return end
		paymentDrugsCooldown = true
		vSERVER.PaymentDrugs()
		SetTimeout(1500,function() paymentDrugsCooldown = false end)
	end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSESTPED
-----------------------------------------------------------------------------------------------------------------------------------------
function ClosestPed(Radius)
	local Selected = false
	local Ped = PlayerPedId()
	local Radius = Radius + 0.0001
	local Coords = GetEntityCoords(Ped)
	local GamePool = GetGamePool("CPed")

	for _,Entity in pairs(GamePool) do
		if Entity ~= PlayerPedId() and not IsPedAPlayer(Entity) and not IsEntityDead(Entity) and not IsPedDeadOrDying(Entity,true) and NetworkGetEntityIsNetworked(Entity) and GetPedArmour(Entity) <= 0 and not IsPedInAnyVehicle(Entity) and GetPedType(Entity) ~= 28 then
			local EntityCoords = GetEntityCoords(Entity)
			local EntityDistance = #(Coords - EntityCoords)

			if EntityDistance < Radius then
				Radius = EntityDistance
				Selected = Entity
			end
		end
	end

	return Selected
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- LEAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Lean")
AddEventHandler("Lean",function()
	if AnimpostfxIsRunning("Dont_tazeme_bro") then
		AnimpostfxStop("Dont_tazeme_bro")
	end

	if AnimpostfxIsRunning("MinigameTransitionIn") then
		AnimpostfxStop("MinigameTransitionIn")
	end

	if AnimpostfxIsRunning("Dont_tazeme_bro") then
		AnimpostfxStop("Dont_tazeme_bro")
	end

	if AnimpostfxIsRunning("DrugsDrivingOut") then
		AnimpostfxStop("DrugsDrivingOut")
	end

	if AnimpostfxIsRunning("DeathFailMPDark") then
		AnimpostfxStop("DeathFailMPDark")
	end

	if AnimpostfxIsRunning("DrugsMichaelAliensFight") then
		AnimpostfxStop("DrugsMichaelAliensFight")
	end

	if AnimpostfxIsRunning("HeistCelebPassBW") then
		AnimpostfxStop("HeistCelebPassBW")
	end

	if AnimpostfxIsRunning("DeathFailMPIn") then
		AnimpostfxStop("DeathFailMPIn")
	end

	if AnimpostfxIsRunning("DrugsMichaelAliensFight") then
		AnimpostfxStop("DrugsMichaelAliensFight")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENERGETIC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Energetic")
AddEventHandler("Energetic",function(Timer,Number)
	Energetic = Energetic + Timer
	SetRunSprintMultiplierForPlayer(PlayerId(),Number)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- COCAINE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Cocaine")
AddEventHandler("Cocaine",function()
	if AnimpostfxIsRunning("MinigameTransitionIn") then
		AnimpostfxStop("MinigameTransitionIn")
	end

	AnimpostfxPlay("MinigameTransitionIn",0,true)
	Cocaine = Cocaine + 30
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- METHAMPHETAMINE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Methamphetamine")
AddEventHandler("Methamphetamine",function()
	if AnimpostfxIsRunning("Dont_tazeme_bro") then
		AnimpostfxStop("Dont_tazeme_bro")
	end

	AnimpostfxPlay("Dont_tazeme_bro",0,true)
	Methamphetamine = Methamphetamine + 30
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Drunk")
AddEventHandler("Drunk",function()
	if AnimpostfxIsRunning("DrugsDrivingOut") then
		AnimpostfxStop("DrugsDrivingOut")
	end

	AnimpostfxPlay("DrugsDrivingOut",0,true)
	Drunk = Drunk + 120

	if not LocalPlayer["state"]["Walk"] then
		LocalPlayer["state"]:set("Walk","move_m@drunk@verydrunk",false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- METADONE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Metadone")
AddEventHandler("Metadone",function()
	if AnimpostfxIsRunning("DeathFailMPDark") then
		AnimpostfxStop("DeathFailMPDark")
	end

	AnimpostfxPlay("DeathFailMPDark",90000,false)

	if not LocalPlayer["state"]["Megazord"] then
		LocalPlayer["state"]:set("Megazord",true,false)
	end

	SetPlayerMeleeWeaponDamageModifier(PlayerId(),1.1)
	SetPlayerWeaponDamageModifier(PlayerId(),1.1)
	SetAiMeleeWeaponDamageModifier(7.5)
	SetAiWeaponDamageModifier(0.75)
	Metadone = Metadone + 600
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HEROIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Heroin")
AddEventHandler("Heroin",function()
	if AnimpostfxIsRunning("DrugsMichaelAliensFight") then
		AnimpostfxStop("DrugsMichaelAliensFight")
	end

	AnimpostfxPlay("DrugsMichaelAliensFight",90000,false)
	SetEntityMaxHealth(PlayerPedId(),250)
	SetPedMaxHealth(PlayerPedId(),250)
	TriggerEvent("Health")

	Heroin = 900
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CRACK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Crack")
AddEventHandler("Crack",function()
	if AnimpostfxIsRunning("HeistCelebPassBW") then
		AnimpostfxStop("HeistCelebPassBW")
	end

	AnimpostfxPlay("HeistCelebPassBW",90000,false)
	TriggerEvent("Hunger",180000)
	TriggerEvent("Thirst",180000)
	Crack = 900
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- JOINT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Joint")
AddEventHandler("Joint",function()
	if AnimpostfxIsRunning("DeathFailMPIn") then
		AnimpostfxStop("DeathFailMPIn")
	end

	AnimpostfxPlay("DeathFailMPIn",0,true)
	Joint = Joint + 30
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- OXYCONTIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Oxycontin")
AddEventHandler("Oxycontin",function()
	if AnimpostfxIsRunning("DrugsMichaelAliensFight") then
		AnimpostfxStop("DrugsMichaelAliensFight")
	end

	AnimpostfxPlay("DrugsMichaelAliensFight",0,true)
	Oxycontin = 30
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADMETH
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Pid = PlayerId()
		local Ped = PlayerPedId()

		if Energetic > 0 and GetGameTimer() >= EnergeticTimer then
			Energetic = Energetic - 1
			RestorePlayerStamina(Pid,1.0)
			EnergeticTimer = GetGameTimer() + 1000

			if Energetic <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("HeistTripSkipFade") then
					AnimpostfxStop("HeistTripSkipFade")
				end

				if AnimpostfxIsRunning("MinigameTransitionIn") then
					AnimpostfxStop("MinigameTransitionIn")
				end

				SetRunSprintMultiplierForPlayer(Pid,1.0)
				EnergeticTimer = GetGameTimer()
				Energetic = 0
			end
		end

		if Drunk > 0 and GetGameTimer() >= DrunkTimer then
			Drunk = Drunk - 1
			DrunkTimer = GetGameTimer() + 1000

			if Drunk <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("DrugsDrivingOut") then
					AnimpostfxStop("DrugsDrivingOut")
				end

				if LocalPlayer["state"]["Walk"] then
					LocalPlayer["state"]:set("Walk",false,false)
				end

				DrunkTimer = GetGameTimer()
				Drunk = 0
			end
		end

		if Cocaine > 0 and GetGameTimer() >= CocaineTimer then
			Cocaine = Cocaine - 1
			CocaineTimer = GetGameTimer() + 1000

			if Cocaine <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("MinigameTransitionIn") then
					AnimpostfxStop("MinigameTransitionIn")
				end

				CocaineTimer = GetGameTimer()
				Cocaine = 0
			end
		end

		if Methamphetamine > 0 and GetGameTimer() >= MethamphetamineTimer then
			Methamphetamine = Methamphetamine - 1
			MethamphetamineTimer = GetGameTimer() + 1000

			if Methamphetamine <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("Dont_tazeme_bro") then
					AnimpostfxStop("Dont_tazeme_bro")
				end

				MethamphetamineTimer = GetGameTimer()
				Methamphetamine = 0
			end
		end

		if Metadone > 0 and GetGameTimer() >= MetadoneTimer then
			Metadone = Metadone - 1
			MetadoneTimer = GetGameTimer() + 1000

			if Metadone <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("DeathFailMPDark") then
					AnimpostfxStop("DeathFailMPDark")
				end

				Metadone = 0
				MetadoneTimer = GetGameTimer()
				SetAiWeaponDamageModifier(0.5)
				SetAiMeleeWeaponDamageModifier(5.0)
				SetPlayerWeaponDamageModifier(Pid,1.0)
				SetPlayerMeleeWeaponDamageModifier(Pid,1.0)
				LocalPlayer["state"]:set("Megazord",false,false)
			end
		end

		if Heroin > 0 and GetGameTimer() >= HeroinTimer then
			Heroin = Heroin - 1
			HeroinTimer = GetGameTimer() + 1000

			if Heroin <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("DrugsMichaelAliensFight") then
					AnimpostfxStop("DrugsMichaelAliensFight")
				end

				HeroinTimer = GetGameTimer()
				SetEntityMaxHealth(Ped,200)
				SetPedMaxHealth(Ped,200)
				TriggerEvent("Health")
				Heroin = 0
			end
		end

		if Crack > 0 and GetGameTimer() >= CrackTimer then
			Crack = Crack - 1
			CrackTimer = GetGameTimer() + 1000

			if Crack <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("HeistCelebPassBW") then
					AnimpostfxStop("HeistCelebPassBW")
				end

				TriggerEvent("Hunger",90000)
				TriggerEvent("Thirst",90000)
				CrackTimer = GetGameTimer()
				Crack = 0
			end
		end

		if Joint > 0 and GetGameTimer() >= JointTimer then
			Joint = Joint - 1
			JointTimer = GetGameTimer() + 1000

			if Joint <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("DeathFailMPIn") then
					AnimpostfxStop("DeathFailMPIn")
				end

				if LocalPlayer["state"]["Walk"] then
					LocalPlayer["state"]:set("Walk",false,false)
				end

				SetRunSprintMultiplierForPlayer(Pid,1.0)
				JointTimer = GetGameTimer()
				Joint = 0
			end
		end

		if Oxycontin > 0 and GetGameTimer() >= OxycontinTimer then
			Oxycontin = Oxycontin - 1
			OxycontinTimer = GetGameTimer() + 1000

			if Oxycontin <= 0 or GetEntityHealth(Ped) <= 100 then
				if AnimpostfxIsRunning("DrugsMichaelAliensFight") then
					AnimpostfxStop("DrugsMichaelAliensFight")
				end

				OxycontinTimer = GetGameTimer()
				Oxycontin = 0
			end
		end

		Wait(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEAPON
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Weapon",function(Value)
	Weapon = Value
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:DRUGSBLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:DrugsBlips")
AddEventHandler("inventory:DrugsBlips",function(Coords)
	local Blip = AddBlipForCoord(Coords["x"],Coords["y"],Coords["z"])
	SetBlipSprite(Blip,126)
	SetBlipDisplay(Blip,4)
	SetBlipHighDetail(Blip,true)
	SetBlipAsShortRange(Blip,true)
	SetBlipColour(Blip,5)
	SetBlipScale(Blip,1.0)
	SetBlipFlashes(Blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Traficante Procurado")
	EndTextCommandSetBlipName(Blip)

	SetTimeout(10000,function()
		if DoesBlipExist(Blip) then
			RemoveBlip(Blip)
		end
	end)
end)
