useES = true


local tbl = {
	[1] = {locked = false, player = -1},
	[2] = {locked = false, player = -1},
	[3] = {locked = false, player = -1},
	[4] = {locked = false, player = -1},
	[5] = {locked = false, player = -1},
	[6] = {locked = false, player = -1},
	[7] = {locked = false, player = -1},
	[8] = {locked = false, player = -1},
	[9] = {locked = false, player = -1},
	[10] = {locked = false, player = -1},
	[11] = {locked = false, player = -1},
}

local modPrices = {
	["repair"] = 100,
	["clean"] = 10,
	["extra"] = 0,
	["neons"] = 2000,
	["paint"] = 250,
	["Steering Wheel"] = 30,
	["Air Filter"] = 20,
	["Dashboard"] = 500,
	["Ornaments"] = 50,
	["Struts"] = 200,
	["Engine Block"] = 150,
	["Roof"] = 100,
	["Side Skirt"] = 50,
	["Trim"] = 50,
	["Windows"] = 10,
	["Vanity Plates"] = 10,
	["Frame"] = 100,
	["Grille"] = 10,
	["Dial"] = 50,
	["Door Speaker"] = 100,
	["Rear Bumper"] = 300,
	["Front Bumper"] = 300,
	["Spoilers"] = 1000,
	["Trim 2"] = 30,
	["Seats"] = 200,
	["Tank"] = 20,
	["Aerials"] = 10,
	["Arch Cover"] = 100,
	["Fender"] = 2000,
	["Right Fender"] = 2000,
	["Exhaust"] = 1000,
	["Hood"] = 2500,
	["Hydraulics"] = 25000,
	["Trunk"] = 500,
	["Speakers"] = 100,
	["Plaques"] = 50,
	["Shifter Leavers"] = 50,
	["Livery"] = 500,
	["Performance_1"] = 20000,
	["Performance_2"] = 30000,
	["Performance_3"] = 40000,
	["Performance_4"] = 50000,
	["Turbo"] = 50000,	
	["Wheels"] = 2000,
	["Wheel Types"] = 0,
}



Citizen.CreateThread(function()
	RegisterServerEvent('fx_customs:LockGarage')
	AddEventHandler('fx_customs:LockGarage', function(b,garage,player)
		tbl[tonumber(garage)].locked = b
		tbl[tonumber(garage)].player = player
		TriggerClientEvent('LockGarage',-1,tbl)
	end)
	
	function openGarage()
		for theId,theValues in pairs(tbl) do
			if tbl[theId].locked == true and tbl[theId].player ~= -1 and not GetPlayerName(tbl[theId].player) then
				local pl = GetPlayerName(tbl[theId].player)
				tbl[theId].locked = false
				TriggerClientEvent('LockGarage',-1,tbl)
				Citizen.Trace("garage closed but player not found, opening..")
			end
		end
		SetTimeout(20000, openGarage)
	end
	SetTimeout(20000, openGarage)
	
	RegisterServerEvent("fx_customs:RequestPriceList")
	AddEventHandler("fx_customs:RequestPriceList", function()
		TriggerClientEvent("fx_customs:RequestPriceList",source,modPrices)
	end)
	
	if useES == false then
		for theRow,theKey in pairs(modPrices) do 
			modPrices[theRow] = 0
		end
	end
	
	RegisterServerEvent("fx_customs:payPart")
	AddEventHandler('fx_customs:payPart', function(price)
		sorse = source
		if useES then
			couldafford = false 
			TriggerEvent('es:getPlayerFromId', sorse, function(ourUser) 
				if ourUser and ourUser.getMoney() >= price then
					ourUser.removeMoney(price)
					couldafford = true
				else
					couldafford = false 
				end
			end)
		else 
			couldafford = true
		end
		
		TriggerClientEvent("lscustoms:payedForPart", sorse, couldafford)
	end)	
end)
