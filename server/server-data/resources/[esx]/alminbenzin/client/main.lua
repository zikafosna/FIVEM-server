local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
end)

local blips = {
    vector3(49.4187, 2778.793, 58.043),
	vector3(263.894, 2606.463, 44.983),
	vector3(1039.958, 2671.134, 39.550),
	vector3(1207.260, 2660.175, 37.899),
	vector3(2539.685, 2594.192, 37.944),
	vector3(2679.858, 3263.946, 55.240),
	vector3(2005.055, 3773.887, 32.403),
	vector3(1687.156, 4929.392, 42.078),
	vector3(1701.314, 6416.028, 32.763),
	vector3(179.857, 6602.839, 31.868),
	vector3(-94.4619, 6419.594, 31.489),
	vector3(-2554.996, 2334.40, 33.078),
	vector3(-1800.375, 803.661, 138.651),
	vector3(-1437.622, -276.747, 46.207),
	vector3(-2096.243, -320.286, 13.168),
	vector3(-724.619, -935.1631, 19.213),
	vector3(-526.019, -1211.003, 18.184),
	vector3(-70.2148, -1761.792, 29.534),
	vector3(265.648, -1261.309, 29.292),
	vector3(819.653, -1028.846, 26.403),
	vector3(1208.951, -1402.567,35.224),
	vector3(1181.381, -330.847, 69.316),
	vector3(620.843, 269.100, 103.089),
	vector3(2581.321, 362.039, 108.468),
	vector3(176.631, -1562.025, 29.263),
	vector3(176.631, -1562.025, 29.263),
	vector3(-319.292, -1471.715, 30.549),
	vector3(1784.324, 3330.55, 41.253)
}

local enableField = false
local nearPump = false

function open(vehicle)
    SetNuiFocus(true, true)
	enableField = true

	SendNUIMessage({
	
		action = "open",
		fuel = GetVehicleFuelLevel(vehicle)

    })
end
  
function close()
	SetNuiFocus(false, false)
	enableField = false
	
	SendNUIMessage({
		action = "close"
	})
end

RegisterNUICallback('escape', function(data, cb)
	close()
end)

local allowedPumps = 
{
    [-2007231801] = true,
	[1339433404] = true,
	[1694452750] = true,
	[1933174915] = true,
	[-462817101] = true,
	[-469694731] = true,
	[-164877493] = true
}

function FindNearestFuelPump()
	local coords = GetEntityCoords(PlayerPedId())
	local fuelPumps = {}
	local handle, object = FindFirstObject()
	local success

	repeat
		if allowedPumps[GetEntityModel(object)] then
			table.insert(fuelPumps, object)
		end

		success, object = FindNextObject(handle, object)
	until not success

	EndFindObject(handle)

	local pumpObject = 0
	local pumpDistance = 1000

	for _, fuelPumpObject in pairs(fuelPumps) do
		local dstcheck = GetDistanceBetweenCoords(coords, GetEntityCoords(fuelPumpObject))

		if dstcheck < pumpDistance then
			pumpDistance = dstcheck
			pumpObject = fuelPumpObject
		end
	end

	return pumpObject, pumpDistance
end

CreateThread(function()
    while true do
        local pumpObject, pumpDistance = FindNearestFuelPump()

		if pumpDistance < 3.5 then
            nearPump = pumpObject
        else
            nearPump = false 
        end

        Wait(500)
    end
end)

CreateThread(function()
    while true do
        Wait(0)

		if nearPump then
			local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)

			if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), GetEntityCoords(veh)) <= 5000.0 then
				if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then
					ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to refuel")

					if IsControlJustReleased(0, 38) then
						open(vehicle)
					end
				end
			end
			
        end
    end
end)

Citizen.CreateThread(function()
    for _, coords in pairs(blips) do
        local blip = AddBlipForCoord(coords)

        SetBlipSprite(blip, 361)
        SetBlipScale(blip, 0.9)
        SetBlipColour(blip, 1)
        SetBlipDisplay(blip, 4)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Fuel Station")
        EndTextCommandSetBlipName(blip)
    end
end)

AddEventHandler('onResourceStart', function(name)
    if GetCurrentResourceName() ~= name then
        return
    end

    close()
end)

RegisterNUICallback('escape', function(data, cb)
    close()
    cb('ok')
end)

RegisterNUICallback('pay', function(data, cb)
	
	local new_perc = tonumber(data.new_perc)
	local change = new_perc - Round(GetVehicleFuelLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false)))

	ESX.TriggerServerCallback('alminbenzin:buy', function(bought)
		if bought then
			ESX.ShowNotification(('You paid $%s dollars!'):format(Round(change * 1.15)))

			local veh = GetVehiclePedIsIn(GetPlayerPed(-1), true)

			if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), GetEntityCoords(veh)) <= 5.0 then
				SetVehicleFuelLevel(veh, (GetVehicleFuelLevel(veh) + change))
			end
		else
			ESX.ShowNotification(('You cannot pay %s liters of fuel'):format(change))
		end
	end, change)

    cb('ok')
end)