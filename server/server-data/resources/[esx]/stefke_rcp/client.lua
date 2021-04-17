Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(832061926502039562) --Discord app id
		SetDiscordRichPresenceAsset('logo') --Big picture asset name
        SetDiscordRichPresenceAssetText('Stefke Test Server') --Big picture hover text
		Citizen.Wait(600000) --How often should this script check for updated assets? (in MS)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1500)

		players = {}

		for i = 0, 255 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end
		
		SetRichPresence(#players .. " ljudi u Gradu | " .. GetPlayerName(PlayerId()))
	end
end)