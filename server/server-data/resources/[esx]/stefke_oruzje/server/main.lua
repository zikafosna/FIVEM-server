ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterServerCallback('ps_waffenladen:canAfford', function(source, cb, value)
	local s = source
	local x = ESX.GetPlayerFromId(s)

	if x.getMoney() >= value["price"] then
		x.removeMoney(value["price"])
		x.addWeapon(value["item"], value["ammo"])
		cb(true)
	else
		cb(false)
	end
end)