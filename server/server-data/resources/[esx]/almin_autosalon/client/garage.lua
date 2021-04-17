ESX = nil

cachedData = {}

Citizen.CreateThread(function()
	while not ESX do

		TriggerEvent("esx:getSharedObject", function(library) 
			ESX = library 
		end)

		Citizen.Wait(0)
	end

	while true do
		Citizen.Wait(5)

		if IsControlJustPressed(0, Config.VehicleMenuButton) then
			OpenVehicleMenu()
		end
	end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(playerData)
	ESX.PlayerData = playerData
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(newJob)
	ESX.PlayerData["job"] = newJob
end)

Citizen.CreateThread(function()
	local CanDraw = function(action)
		if action == "izguraj" then
			return false
		end

		if action == "vehicle" then
			if IsPedInAnyVehicle(PlayerPedId()) then
				local vehicle = GetVehiclePedIsIn(PlayerPedId())

				if GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() then
					return true
				else
					return false
				end
			else
				return false
			end
		end

		return true
	end

	local GetDisplayText = function(action, garage)
		if not Config.Labels[action] then Config.Labels[action] = action end

		return string.format(Config.Labels[action], action == "vehicle" and GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId())))) or garage)
	end

	for garage, garageData in pairs(Config.Garages) do
		local garageBlip = AddBlipForCoord(garageData["positions"]["menu"]["position"])
        if garageData["positions"]["menu"]["position"] == vector3(-800.83, -1513.2, 1.6) or garageData["positions"]["menu"]["position"] == vector3(3857.52, 4459.67, 1.84) then
        	SetBlipSprite(garageBlip, 455)
			SetBlipDisplay(garageBlip, 4)
			SetBlipScale (garageBlip, 1.0)
			SetBlipColour(garageBlip, 67)
			SetBlipAsShortRange(garageBlip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Dok : " .. garage)
			EndTextCommandSetBlipName(garageBlip)
	 	elseif garageData["positions"]["menu"]["position"] == vector3(-14.04, -1658.1, 33.04) then
			SetBlipSprite(garageBlip, 523)
			SetBlipDisplay(garageBlip, 4)
			SetBlipScale (garageBlip, 0.8)
			SetBlipColour(garageBlip, 67)
			SetBlipAsShortRange(garageBlip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("" .. garage)
			EndTextCommandSetBlipName(garageBlip)
        else
			SetBlipSprite(garageBlip, 357)
			SetBlipDisplay(garageBlip, 4)
			SetBlipScale (garageBlip, 0.8)
			SetBlipColour(garageBlip, 67)
			SetBlipAsShortRange(garageBlip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Garaža : " .. garage)
			EndTextCommandSetBlipName(garageBlip)
		end
	end

	while true do
		local sleepThread = 500

		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)

		for garage, garageData in pairs(Config.Garages) do
			for action, actionData in pairs(garageData["positions"]) do
				local dstCheck = #(pedCoords - actionData["position"])

				if dstCheck <= 10.0 then
					sleepThread = 5

					local draw = CanDraw(action)

					if draw then
						local markerSize = action == "menu" and 1.5 or 5.0

						if dstCheck <= markerSize - 0.1 then
							local usable, displayText = not DoesCamExist(cachedData["cam"]), GetDisplayText(action, garage)

							ESX.ShowHelpNotification(usable and displayText or "Izaberite vozilo.")

							if usable then
								if IsControlJustPressed(0, 38) then
									cachedData["currentGarage"] = garage

									HandleAction(action)
								end
							end
						end

						DrawScriptMarker({
							["type"] = 6,
							["pos"] = actionData["position"] - vector3(0.0, 0.0, 0.985),
							["sizeX"] = markerSize,
							["sizeY"] = markerSize,
							["sizeZ"] = markerSize,
							["r"] = 49,
							["g"] = 105,
							["b"] = 235
						})
					end
				end
			end
		end

		Citizen.Wait(sleepThread)
	end
end)