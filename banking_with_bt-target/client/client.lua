--================================================================================================
--==                                VARIABLES - NÂO EDITEM( PODEM MEXER NOS BLIPS ESTE SCRIPT TRAS BLIPS DE ATMS ETC)                                  ==
--================================================================================================
ESX				= nil
inMenu			= true
local showblips	= true
local blips = true
local atbank	= true
local bankMenu	= true 
local bank = { 
	{name="Banco Principal", id=106, x=235.26, y=216.46, z=-106.29}
} 

local banks = {
	{name="Banco", id=431, x=150.266, y=-1040.203, z=-29.374},
	{name="Banco", id=431, x=-1212.980, y=-330.841, z=-37.787},
	{name="Banco", id=431, x=-2962.582, y=482.627, z=-15.703},
	{name="Banco", id=431, x=-112.202, y=6469.295, z=-31.626},
	{name="Banco", id=431, x=314.187, y=-278.621, z=-54.170},
	{name="Banco", id=431, x=-351.534, y=-49.529, z=-49.042},
	{name="Banco", id=431, x=1175.0643310547, y=2706.6435546875, z=-38.094036102295}
}	

local atms = {
--[[
    {name="ATM", id=277, x=-37.85,   y=-1115.21, z=26.44},
	{name="ATM", id=277, x=402.18,   y=-1625.52, z=29.29},
	{name="ATM", id=277, x=418.98,   y=-985.84, z=29.4},
	{name="ATM", id=277, x=296.15,   y=-591.26, z=43.28},
	{name="ATM", id=277, x=-201.34,   y=-1309.24, z=31.29},
	{name="ATM", id=277, x=-386.733, y=6045.953, z=31.501},
	{name="ATM", id=277, x=-284.037, y=6224.385, z=31.187},
	{name="ATM", id=277, x=-284.037, y=6224.385, z=31.187},
	{name="ATM", id=277, x=-135.165, y=6365.738, z=31.101},
	{name="ATM", id=277, x=-110.753, y=6467.703, z=31.784},
	{name="ATM", id=277, x=-94.9690, y=6455.301, z=31.784},
	{name="ATM", id=277, x=155.4300, y=6641.991, z=31.784},
	{name="ATM", id=277, x=174.6720, y=6637.218, z=31.784},
	{name="ATM", id=277, x=1703.138, y=6426.783, z=32.730},
	{name="ATM", id=277, x=1735.114, y=6411.035, z=35.164},
	{name="ATM", id=277, x=1702.842, y=4933.593, z=42.051},
	{name="ATM", id=277, x=1967.333, y=3744.293, z=32.272},
	{name="ATM", id=277, x=1821.917, y=3683.483, z=34.244},
	{name="ATM", id=277, x=1174.532, y=2705.278, z=38.027},
	{name="ATM", id=277, x=540.0420, y=2671.007, z=42.177},
	{name="ATM", id=277, x=2564.399, y=2585.100, z=38.016},
	{name="ATM", id=277, x=2558.683, y=349.6010, z=108.050},
	{name="ATM", id=277, x=2558.051, y=389.4817, z=108.660},
	{name="ATM", id=277, x=1077.692, y=-775.796, z=58.218},
	{name="ATM", id=277, x=1139.018, y=-469.886, z=66.789},
	{name="ATM", id=277, x=1168.975, y=-457.241, z=66.641},
	{name="ATM", id=277, x=1153.884, y=-326.540, z=69.245},
	{name="ATM", id=277, x=381.2827, y=323.2518, z=103.270},
	{name="ATM", id=277, x=236.4638, y=217.4718, z=106.840},
	{name="ATM", id=277, x=265.0043, y=212.1717, z=106.780},
	{name="ATM", id=277, x=285.2029, y=143.5690, z=104.970},
	{name="ATM", id=277, x=157.7698, y=233.5450, z=106.450},
	{name="ATM", id=277, x=-164.568, y=233.5066, z=94.919},
	{name="ATM", id=277, x=-1827.04, y=785.5159, z=138.020},
	{name="ATM", id=277, x=-1409.39, y=-99.2603, z=52.473},
	{name="ATM", id=277, x=-1205.35, y=-325.579, z=37.870},
	{name="ATM", id=277, x=-1215.64, y=-332.231, z=37.881},
	{name="ATM", id=277, x=-2072.41, y=-316.959, z=13.345},
	{name="ATM", id=277, x=-2975.72, y=379.7737, z=14.992},
	{name="ATM", id=277, x=-2962.60, y=482.1914, z=15.762},
	{name="ATM", id=277, x=-2955.70, y=488.7218, z=15.486},
	{name="ATM", id=277, x=-3044.22, y=595.2429, z=7.595},
	{name="ATM", id=277, x=-3144.13, y=1127.415, z=20.868},
	{name="ATM", id=277, x=-3241.10, y=996.6881, z=12.500},
	{name="ATM", id=277, x=-3241.11, y=1009.152, z=12.877},
	{name="ATM", id=277, x=-1305.40, y=-706.240, z=25.352},
	{name="ATM", id=277, x=-538.225, y=-854.423, z=29.234},
	{name="ATM", id=277, x=-711.156, y=-818.958, z=23.768},
	{name="ATM", id=277, x=-717.614, y=-915.880, z=19.268},
	{name="ATM", id=277, x=-537.34, y=-171.66, z=38.22},
	{name="ATM", id=277, x=-526.566, y=-1222.90, z=18.434},
	{name="ATM", id=277, x=-256.831, y=-719.646, z=33.444},
	{name="ATM", id=277, x=-203.548, y=-861.588, z=30.205},
	{name="ATM", id=277, x=112.4102, y=-776.162, z=31.427},
	{name="ATM", id=277, x=112.9290, y=-818.710, z=31.386},
	{name="ATM", id=277, x=119.9000, y=-883.826, z=31.191},
	{name="ATM", id=277, x=149.4551, y=-1038.95, z=29.366},
	{name="ATM", id=277, x=-846.304, y=-340.402, z=38.687},
	{name="ATM", id=277, x=-1204.35, y=-324.391, z=37.877},
	{name="ATM", id=277, x=-1216.27, y=-331.461, z=37.773},
	{name="ATM", id=277, x=-56.1935, y=-1752.53, z=29.452},
	{name="ATM", id=277, x=-261.692, y=-2012.64, z=30.121},
	{name="ATM", id=277, x=-273.001, y=-2025.60, z=30.197},
	{name="ATM", id=277, x=314.187, y=-278.621, z=54.170},
	{name="ATM", id=277, x=-351.534, y=-49.529, z=49.042},
	{name="ATM", id=277, x=24.589, y=-946.056, z=29.357},
	{name="ATM", id=277, x=-254.112, y=-692.483, z=33.616},
	{name="ATM", id=277, x=-1570.197, y=-546.651, z=34.955},
	{name="ATM", id=277, x=-1415.909, y=-211.825, z=46.500},
	{name="ATM", id=277, x=-1430.112, y=-211.014, z=46.500},
	{name="ATM", id=277, x=33.232, y=-1347.849, z=29.497},
	{name="ATM", id=277, x=129.216, y=-1292.347, z=29.269},
	{name="ATM", id=277, x=287.645, y=-1282.646, z=29.659},
	{name="ATM", id=277, x=289.012, y=-1256.545, z=29.440},
	{name="ATM", id = 277, x = 934.51, y = 31.47, z = 80.29},
    {name="ATM", id = 277, x = 942.71, y = 44.52, z = 80.29},
	{name="ATM", id=277, x=295.839, y=-895.640, z=29.217},
	{name="ATM", id=277, x=1686.753, y=4815.809, z=42.008},
	{name="ATM", id=277, x=-302.408, y=-829.945, z=32.417},
	{name="ATM", id=277, x=5.134, y=-919.949, z=29.557},
	{name="ATM", id=0, x=315.13, y=-593.89, z=43.28},
	{name="ATM", id=0, x=-549.57, y=-204.34, z=38.22},
--]]
	{name="ATM", id=0, x=-1390.93, y=-590.33, z=-30.32},

}
--================================================================================================
--==                                THREADING - DO NOT EDIT                                     ==
--================================================================================================

--===============================================
--==           Base ESX Threading              ==
--===============================================
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

-- Feito por WanderLine#1215 e Parte Gráfica Da Vinci #3631

--===============================================
--==             Core Threading                ==
--===============================================
if bankMenu then
	Citizen.CreateThread(function()
    local pP = GetPlayerPed(-1)
	while true do
		Wait(0)
	if nearBank() or nearATM() then
			DisplayHelpText("Clica ~INPUT_PICKUP~ para acederes ao banco ~b~")
	
		if IsControlJustPressed(1, 38) then
         local pP = GetPlayerPed(-1)			
         TaskPlayAnim(pP, "anim@amb@prop_human_atm@interior@male@enter", "enter", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
         Citizen.Wait(1000)
         --TaskPlayAnim(pP, "anim@amb@prop_human_atm@interior@male@exit", "exit", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
			inMenu = true
			SetNuiFocus(true, true)
			SendNUIMessage({type = 'openGeneral'})
			TriggerServerEvent('bank:balance')
			local ped = GetPlayerPed(-1)
		end
	end
				
		if IsControlJustPressed(1, 322) then
		inMenu = false
			SetNuiFocus(false, false)
			SendNUIMessage({type = 'close'})
		end
	end
	end)
end


--===============================================
--==             Map Blips	                   ==
--===============================================
Citizen.CreateThread(function()
	if showblips then
		for k,v in ipairs(banks)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.id)
		SetBlipScale(blip, 0.9)
		SetBlipAsShortRange(blip, true)
		SetBlipColour(blip, 69)
		--[[if v.principal ~= nil and v.principal then
			SetBlipColour(blip, 69)
		end]]
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(tostring(v.name))
		EndTextCommandSetBlipName(blip)
		end
	end
end)

Citizen.CreateThread(function()
	if blips then
		for k,v in ipairs(bank)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.id)
		SetBlipScale(blip, 1.0)
		SetBlipAsShortRange(blip, true)
		SetBlipColour(blip, 3)
		--[[if v.principal ~= nil and v.principal then
			SetBlipColour(blip, 69)
		end]]
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(tostring(v.name))
		EndTextCommandSetBlipName(blip)
		end
	end
end)



--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNetEvent('currentbalance1')
AddEventHandler('currentbalance1', function(balance)
	local id = PlayerId()
	local playerName = GetPlayerName(id)
	
	SendNUIMessage({
		type = "balanceHUD",
		balance = balance,
		player = playerName
		})
end)
--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNUICallback('deposit', function(data)
	TriggerServerEvent('bank:deposit', tonumber(data.amount))
	TriggerServerEvent('bank:balance')
end)

--===============================================
--==          Withdraw Event                   ==
--===============================================
RegisterNUICallback('withdrawl', function(data)
	TriggerServerEvent('bank:withdraw', tonumber(data.amountw))
	TriggerServerEvent('bank:balance')
end)

--===============================================
--==         Balance Event                     ==
--===============================================
RegisterNUICallback('balance', function()
	TriggerServerEvent('bank:balance')
end)

RegisterNetEvent('balance:back')
AddEventHandler('balance:back', function(balance)
	SendNUIMessage({type = 'balanceReturn', bal = balance})
end)


--===============================================
--==         Transfer Event                    ==
--===============================================
RegisterNUICallback('transfer', function(data)
	TriggerServerEvent('bank:transfer', data.to, data.amountt)
	TriggerServerEvent('bank:balance')
end)

--===============================================
--==         Result   Event                    ==
--===============================================
RegisterNetEvent('bank:result')
AddEventHandler('bank:result', function(type, message)
	SendNUIMessage({type = 'result', m = message, t = type})
end)

--===============================================
--==               NUIFocusoff                 ==
--===============================================
RegisterNUICallback('NUIFocusOff', function()
	inMenu = false
	SetNuiFocus(false, false)
	SendNUIMessage({type = 'closeAll'})
end)


--===============================================
--==            Capture Bank Distance          ==
--===============================================
function nearBank()
	local player = GetPlayerPed(-1)
	local playerloc = GetEntityCoords(player, 0)
	
	for _, search in pairs(banks) do
		local distance = GetDistanceBetweenCoords(search.x, search.y, search.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
		
		if distance <= 1 then
			return true
		end
	end
end

function nearATM()
	local player = GetPlayerPed(-1)
	local playerloc = GetEntityCoords(player, 0)
	
	for _, search in pairs(atms) do
		local distance = GetDistanceBetweenCoords(search.x, search.y, search.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
		
		if distance <= 1 then
			return true
		end
	end
end


function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end






--------------------- bt-target atms start ----------------------
Citizen.CreateThread(function()
    local atm = {
        -870868698,
		-1126237515,
		-1364697528,
		506770882,
    }
    exports["bt-target"]:AddTargetModel(atm, {
        options = {
            {
                event = "banking:atm",
                icon = "fas fa-piggy-bank",
                label = "Bankomat",
            },
        },
        job = {"all"},
        distance = 2.5
    })
end)


RegisterNetEvent("banking:atm")
AddEventHandler("banking:atm", function()
         local pP = GetPlayerPed(-1)			
         TaskPlayAnim(pP, "anim@amb@prop_human_atm@interior@male@enter", "enter", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
         Citizen.Wait(1000)
         --TaskPlayAnim(pP, "anim@amb@prop_human_atm@interior@male@exit", "exit", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
			inMenu = true
			SetNuiFocus(true, true)
			SendNUIMessage({type = 'openGeneral'})
			TriggerServerEvent('bank:balance')
			local ped = GetPlayerPed(-1)
end)
--------------------------------- bt-target atms end -----------------------------------


--------------------------- bt-target banks start ------------------------------
Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("Bank1", vector3(150.29138183594,-1040.9808349609,29.37), 3.4, 2.6, {
	name="Bank1",
	heading=70,
	debugPoly=false,
	minZ=29.07,
	maxZ=30.37
    }, {
        options = {
            {
                event = "banking:bank",
                icon = "fas fa-piggy-bank",
                label = "Bank",
            },
        },
        job = {"all"},
        distance = 1.5
    })
end)


Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("Bank2", vector3(-1212.8154296875,-330.91201782227,37.78), 3.4, 2.6, {
	name="Bank2",
	heading=400,
	debugPoly=false,
	minZ=37.18,
	maxZ=38.78
    }, {
        options = {
            {
                event = "banking:bank",
                icon = "fas fa-piggy-bank",
                label = "Bank",
            },
        },
        job = {"all"},
        distance = 1.5
    })
end)

Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("Bank3", vector3(-2962.5681152344,482.91705322266,15.70), 3.4, 2.6, {
	name="Bank3",
	heading=10,
	debugPoly=false,
	minZ=15.40,
	maxZ=16.70
    }, {
        options = {
            {
                event = "banking:bank",
                icon = "fas fa-piggy-bank",
                label = "Bank",
            },
        },
        job = {"all"},
        distance = 1.5
    })
end)

Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("Bank4", vector3(-112.20458984375,6469.3168945312,31.62), 3.4, 2.6, {
	name="Bank4",
	heading=10,
	debugPoly=false,
	minZ=31.42,
	maxZ=32.62
    }, {
        options = {
            {
                event = "banking:bank",
                icon = "fas fa-piggy-bank",
                label = "Bank",
            },
        },
        job = {"all"},
        distance = 1.5
    })
end)

Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("Bank5", vector3(314.13815307617,-278.85247802734,54.17), 3.4, 2.6, {
	name="Bank5",
	heading=70,
	debugPoly=false,
	minZ=54.07,
	maxZ=55.17
    }, {
        options = {
            {
                event = "banking:bank",
                icon = "fas fa-piggy-bank",
                label = "Bank",
            },
        },
        job = {"all"},
        distance = 1.5
    })
end)


Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("Bank6", vector3(-351.46203613281,-49.772338867188,49.04), 3.4, 2.6, {
	name="Bank6",
	heading=70,
	debugPoly=false,
	minZ=48.94,
	maxZ=50.04
    }, {
        options = {
            {
                event = "banking:bank",
                icon = "fas fa-piggy-bank",
                label = "Bank",
            },
        },
        job = {"all"},
        distance = 1.5
    })
end)

Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("Bank7", vector3(1175.0546875,2706.7497558594,38.09), 3.4, 2.6, {
	name="Bank7",
	heading=70,
	debugPoly=false,
	minZ=37.99,
	maxZ=39.09
    }, {
        options = {
            {
                event = "banking:bank",
                icon = "fas fa-piggy-bank",
                label = "Bank",
            },
        },
        job = {"all"},
        distance = 1.5
    })
end)

RegisterNetEvent("banking:bank")
AddEventHandler("banking:bank", function()
         local pP = GetPlayerPed(-1)			
         TaskPlayAnim(pP, "anim@amb@prop_human_atm@interior@male@enter", "enter", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
         Citizen.Wait(1000)
         --TaskPlayAnim(pP, "anim@amb@prop_human_atm@interior@male@exit", "exit", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
			inMenu = true
			SetNuiFocus(true, true)
			SendNUIMessage({type = 'openGeneral'})
			TriggerServerEvent('bank:balance')
			local ped = GetPlayerPed(-1)
end)
--------------------------- bt-target banks end ------------------------------