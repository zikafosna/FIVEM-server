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

local laden = {
	vector3(810.2, -2157.3, 29.6),
	vector3(1693.4, 3759.5, 34.7),
	vector3(-330.2, 6083.8, 31.4),
	vector3(252.3, -50.0, 69.9),
	vector3(22.0, -1107.2, 29.8),
	vector3(2567.6, 294.3, 108.7),
	vector3(-1117.5, 2698.6, 18.5),
	vector3(842.4, -1033.4, 28.1)
}

local enableField = false

function toggleField(enable)
    SetNuiFocus(enable, enable)
    enableField = enable

    if enable then
        SendNUIMessage({
            action = 'open'
        }) 
    else
        SendNUIMessage({
            action = 'close'
        }) 
    end
end

AddEventHandler('onResourceStart', function(name)
    if GetCurrentResourceName() ~= name then
        return
    end

    toggleField(false)
end)

RegisterNUICallback('escape', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)

    cb('ok')
end)

local weapons = {
    {["name"] = "pistol", ["item"] = "WEAPON_PISTOL", ['ammo'] = 20, ["price"] = 790},
    {["name"] = "beacon", ["item"] = "WEAPON_FLAREGUN", ['ammo'] = 20, ["price"] = 250},
    {["name"] = "revolver", ["item"] = "WEAPON_REVOLVER", ['ammo'] = 20, ["price"] = 450},
    {["name"] = "appistol", ["item"] = "WEAPON_APPISTOL", ['ammo'] = 20, ["price"] = 890},

    {["name"] = "knife", ["item"] = "WEAPON_KNIFE", ['ammo'] = 1, ["price"] = 890},
    {["name"] = "wrench", ["item"] = "WEAPON_WRENCH", ['ammo'] = 1, ["price"] = 780},
    {["name"] = "baseball-bat", ["item"] = "WEAPON_BAT", ['ammo'] = 1, ["price"] = 230},
    {["name"] = "axe", ["item"] = "WEAPON_BATTLEAXE", ['ammo'] = 1, ["price"] = 560},   
}

RegisterNUICallback('buy', function(data, cb)
    
    for key, value in pairs(weapons) do
        if value["name"] == data.name then
            ESX.TriggerServerCallback('ps_waffenladen:canAfford', function(bool)
                if bool then
                    ESX.ShowNotification(("Kupio si oruzje za $%s "):format(value["price"]))
                else
                    ESX.ShowNotification("Nemas dovoljno novca!")
                end
	        end, value)
        end
    end    

    cb('ok')
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        for key, value in pairs(laden) do
            DrawMarker(20, value, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 100, false, true, 2, true, false, false, false)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)

        for key, value in pairs(laden) do
            local dist = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), value)

            if dist <= 2.0 then
                ESX.ShowHelpNotification("Pritisni ~INPUT_CONTEXT~ da pristupis oruzarnici")

                if IsControlJustReleased(0, 38) then
                    toggleField(true)
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    for _, coords in pairs(laden) do
        local blip = AddBlipForCoord(coords)

        SetBlipSprite(blip, 119)
        SetBlipScale(blip, 0.9)
        SetBlipColour(blip, 21)
        SetBlipDisplay(blip, 4)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Oruzarnica")
        EndTextCommandSetBlipName(blip)
    end
end)