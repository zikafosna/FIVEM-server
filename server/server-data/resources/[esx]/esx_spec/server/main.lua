ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)ESX = obj end)

TriggerEvent('es:addGroupCommand', 'spec', "mod", function(source, args, user)
    TriggerClientEvent('esx_spec:spectate', source, target)
end, function(source, args, user)
    TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end)

ESX.RegisterServerCallback('esx_spec:getPlayerData', function(source, cb, id)
    local xPlayer = ESX.GetPlayerFromId(id)
    if xPlayer ~= nil then
        cb(xPlayer)
    end
end)

RegisterServerEvent('esx_spec:kick')
AddEventHandler('esx_spec:kick', function(target, msg)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getGroup() ~= 'user' then
		DropPlayer(target, msg)
	else
		print(('esx_spec: %s attempted to kick a player!'):format(xPlayer.identifier))
		DropPlayer(source, "esx_spec: you're not authorized to kick people dummy.")
	end
end)

ESX.RegisterServerCallback('esx_spec:getOtherPlayerData', function(source, cb, target)
        
        local xPlayer = ESX.GetPlayerFromId(target)
        if xPlayer ~= nil then
            local identifier = GetPlayerIdentifiers(target)[1]
            
            local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {
                ['@identifier'] = identifier
            })
            
            local user = result[1]
            local firstname = user['firstname']
            local lastname = user['lastname']
            local sex = user['sex']
            local dob = user['dateofbirth']
            local height = user['height'] .. " Centimetri"
            local money = user['money']
            local bank = user['bank']
            
            local data = {
                name = GetPlayerName(target),
                job = xPlayer.job,
                inventory = xPlayer.inventory,
                accounts = xPlayer.accounts,
                weapons = xPlayer.loadout,
                firstname = firstname,
                lastname = lastname,
                sex = sex,
                dob = dob,
                height = height,
                money = money,
                bank = bank
            }
            
            TriggerEvent('esx_license:getLicenses', target, function(licenses)
                data.licenses = licenses
                cb(data)
            end)
        end
end)
