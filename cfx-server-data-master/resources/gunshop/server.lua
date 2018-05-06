local max_weapons = 21
local LicenseZero = {"Machete","Golfclub","Knuckle dusters","Knife","Dagger","Crowbar","Bat","Bottle","Hammer"}
local LicenseOne = {"Machete","Golfclub","Knuckle dusters","Knife","Dagger","Crowbar","Bat","Bottle","Hammer","Pistol","Pistol 50","SNS Pistol","Heavy Pistol","Revolver"}
local LicenseTwo = {"Machete","Golfclub","Knuckle dusters","Knife","Dagger","Crowbar","Bat","Bottle","Hammer","Pistol","Pistol 50","SNS Pistol","Heavy Pistol","Revolver","Smoke Grenade","Pump Shotgun","Sawn-off Shotgun","Bullpup Shotgun","Double-Barrel","Auto Shotgun"}
local LicenseThree = {"Machete","Golfclub","Knuckle dusters","Knife","Dagger","Crowbar","Bat","Bottle","Hammer","Pistol","Pistol 50","SNS Pistol","Heavy Pistol","Revolver","Smoke Grenade","Pump Shotgun","Sawn-off Shotgun","Bullpup Shotgun","Double-Barrel","Auto Shotgun","MicroSMG","SMG","Assault SMG","MG","Gusenberg"}
local LicenseFour = {"Machete","Golfclub","Knuckle dusters","Knife","Dagger","Crowbar","Bat","Bottle","Hammer","Pistol","Pistol 50","SNS Pistol","Heavy Pistol","Revolver","Smoke Grenade","Pump Shotgun","Sawn-off Shotgun","Bullpup Shotgun","Double-Barrel","Auto Shotgun","MicroSMG","SMG","Assault SMG","MG","Gusenberg","Assault Rifle","Carbine Rifle","Advanced Rifle","Special Carbine"}

local required = false
RegisterServerEvent("ws:checkMoney")
AddEventHandler("ws:checkMoney", function(item)
	local sourcePlayer = tonumber(source)
    TriggerEvent('es:getPlayerFromId', source, function(user)
    	local identifier = user.getIdentifier()
	    local price = item.price
	    local hprice = item.price/2
	    if (tonumber(user.getMoney()) >= tonumber(price)) then
	    	local weapon_count = 0
	   		local result = MySQL.Sync.fetchAll("SELECT * FROM gunshop WHERE identifier=@username",{['@username'] = identifier})
				if result then
					for k,v in ipairs(result) do
						weapon_count = weapon_count + 1
					end
				end
			if tonumber(max_weapons) > tonumber(weapon_count) then
				local license = getlicense(identifier)
				required = false
				if license == 0 then
					for i = 1, #LicenseZero do
						if item.name == LicenseZero[i] then
							required = true
							MySQL.Async.execute("INSERT INTO gunshop (`identifier`,`weapon`,`sellprice`,`licenselvl`,`weapon_name`) VALUES (@identifier,@weapon,@sellprice,@licenselvl,@weapon_name)", { ['@identifier'] = identifier, ['@weapon'] = item.model, ['@sellprice'] = hprice, ['@licenselvl'] = item.license, ['@weapon_name'] = item.name})
		      				user.removeMoney((price))
		      				Messages(5,item.name,sourcePlayer)
		      				TriggerClientEvent("ws:giveweapon", sourcePlayer, item)
		      			end
		      		end
		      		if required == false then
		      			Messages(1,nil,sourcePlayer)
		      		end
	      		elseif license == 1 then
	      			for i = 1, #LicenseOne do
						if item.name == LicenseOne[i] then
							required = true
							MySQL.Async.execute("INSERT INTO gunshop (`identifier`,`weapon`,`sellprice`,`licenselvl`,`weapon_name`) VALUES (@identifier,@weapon,@sellprice,@licenselvl,@weapon_name)", { ['@identifier'] = identifier, ['@weapon'] = item.model, ['@sellprice'] = hprice, ['@licenselvl'] = item.license, ['@weapon_name'] = item.name})
		      				user.removeMoney((price))
		      				Messages(5,item.name,sourcePlayer)
		      				TriggerClientEvent("ws:giveweapon", sourcePlayer, item)
		      			end
		      		end
		      		if required == false then
		      			Messages(2,nil,sourcePlayer)
		      		end
	      		elseif license == 2 then
	      			for i = 1, #LicenseTwo do
						if item.name == LicenseTwo[i] then
							required = true
							MySQL.Async.execute("INSERT INTO gunshop (`identifier`,`weapon`,`sellprice`,`licenselvl`,`weapon_name`) VALUES (@identifier,@weapon,@sellprice,@licenselvl,@weapon_name)", { ['@identifier'] = identifier, ['@weapon'] = item.model, ['@sellprice'] = hprice, ['@licenselvl'] = item.license, ['@weapon_name'] = item.name})
		      				user.removeMoney((price))
		      				Messages(5,item.name,sourcePlayer)
		      				TriggerClientEvent("ws:giveweapon", sourcePlayer, item)
		      			end
		      		end
		      		if required == false then
		      			Messages(2,nil,sourcePlayer)
		      		end
	      		elseif license == 3 then
	      			for i = 1, #LicenseThree do
						if item.name == LicenseThree[i] then
							required = true
							MySQL.Async.execute("INSERT INTO gunshop (`identifier`,`weapon`,`sellprice`,`licenselvl`,`weapon_name`) VALUES (@identifier,@weapon,@sellprice,@licenselvl,@weapon_name)", { ['@identifier'] = identifier, ['@weapon'] = item.model, ['@sellprice'] = hprice, ['@licenselvl'] = item.license, ['@weapon_name'] = item.name})
		      				user.removeMoney((price))
		      				Messages(5,item.name,sourcePlayer)
		      				TriggerClientEvent("ws:giveweapon", sourcePlayer, item)
		      			end
		      		end
		      		if required == false then
		      			Messages(2,nil,sourcePlayer)
		      		end
	      		elseif license == 4 then
	      			for i = 1, #LicenseFour do
						if item.name == LicenseFour[i] then
							required = true
							MySQL.Async.execute("INSERT INTO gunshop (`identifier`,`weapon`,`sellprice`,`licenselvl`,`weapon_name`) VALUES (@identifier,@weapon,@sellprice,@licenselvl,@weapon_name)", { ['@identifier'] = identifier, ['@weapon'] = item.model, ['@sellprice'] = hprice, ['@licenselvl'] = item.license, ['@weapon_name'] = item.name})
		      				user.removeMoney((price))
		      				Messages(5,item.name,sourcePlayer)
		      				TriggerClientEvent("ws:giveweapon", sourcePlayer, item)
		      			end
		      		end
		      		if required == false then
		      			Messages(2,nil,sourcePlayer)
		      		end
	      		end      			
	      	else
	      		Messages(4,nil,sourcePlayer)
	      	end
	    else
			Messages(3,nil,sourcePlayer)
	    end
	end)
end)

RegisterServerEvent("ws:deleteweapons")
AddEventHandler("ws:deleteweapons", function()
    MySQL.Sync.execute("DELETE FROM gunshop WHERE identifier=@user",{['@user']= getPlayerID(source)})
    TriggerClientEvent("ws:removeWeapons", source)
end)

RegisterServerEvent("ws:checkMoneyillegal")
AddEventHandler("ws:checkMoneyillegal", function(item)
	local sourcePlayer = tonumber(source)
    TriggerEvent('es:getPlayerFromId', source, function(user)
    	local identifier = user.getIdentifier()
	    local price = item.price
	    local hprice = 2
	    if (tonumber(user.getMoney()) >= tonumber(price)) then
	    	local weapon_count = 0
	   		local result = MySQL.Sync.fetchAll("SELECT * FROM gunshop WHERE identifier=@username",{['@username'] = identifier})
				if result then
					for k,v in ipairs(result) do
						weapon_count = weapon_count + 1
					end
				end
			if tonumber(max_weapons) > tonumber(weapon_count) then
				MySQL.Async.execute("INSERT INTO gunshop (`identifier`,`weapon`,`sellprice`,`licenselvl`,`weapon_name`) VALUES (@identifier,@weapon,@sellprice,@licenselvl,@weapon_name)", { ['@identifier'] = identifier, ['@weapon'] = item.model, ['@sellprice'] = hprice, ['@licenselvl'] = 5, ['@weapon_name'] = item.name})
	      		user.removeMoney((price))
	      		Messages(5,item.name,sourcePlayer)
	      		TriggerClientEvent("ws:giveweapon", sourcePlayer, item)				
			end
		else
			Messages(3,nil,sourcePlayer)
		end
	end)
end)

RegisterServerEvent("ws:giveweapons")
AddEventHandler("ws:giveweapons", function(source)
	local sourcePlayer = tonumber(source)
	local identifier = getPlayerID(sourcePlayer)
	local result = MySQL.Sync.fetchAll("SELECT weapon FROM gunshop WHERE identifier=@username",{['@username'] = identifier})
	if(result)then
		for i = 1, #result do
			TriggerClientEvent("ws:giveweapon2", sourcePlayer, result[i].weapon)
		end
	end
end)

RegisterServerEvent("ws:sellweapons")
AddEventHandler("ws:sellweapons", function()
	local sourcePlayer = tonumber(source)
    TriggerEvent('es:getPlayerFromId', source, function(user)
    	local identifier = user.getIdentifier()
        local result = MySQL.Sync.fetchAll("SELECT sellprice FROM gunshop WHERE identifier=@username",{['@username'] = identifier})
        local money = 0
        if(result)then
            for i = 1, #result do
                money = money + tonumber(result[i].sellprice)
            end
            if money > 0 then
            	user.addMoney(money)
            	MySQL.Sync.execute("DELETE FROM gunshop WHERE identifier=@user",{['@user']= identifier})
            	TriggerClientEvent("ws:removeWeapons", sourcePlayer)
            	Messages(6,nil,sourcePlayer)
            else
            	Messages(7,nil,sourcePlayer)
            end
        else
            print("No result here")
        end
    end)
end)

RegisterServerEvent("ws:deleteweapons")
AddEventHandler("ws:deleteweapons", function()
	MySQL.Sync.execute("DELETE FROM gunshop WHERE identifier=@user",{['@user']= getPlayerID(source)})
end)

function getlicense(identifier)
    return MySQL.Sync.fetchScalar("SELECT gunlicense FROM users WHERE identifier=@name", {['@name'] = identifier})
end

function Messages(value, item, sourcePlayer)
	if value == 1 then
		Notify("You must buy a license!",sourcePlayer)
	elseif value == 2 then
		Notify("You must upgrade your license!",sourcePlayer)
	elseif value == 3 then
		Notify("Insufficient funds!",sourcePlayer)
	elseif value == 4 then
		Notify("You have reached the weapon limit!",sourcePlayer)
	elseif value == 5 then
		Notify(item.." purchased!",sourcePlayer)
	elseif value == 6 then
		Notify("Weapons sold!",sourcePlayer)
	elseif value == 7 then
		Notify("You have no weapons to sell!",sourcePlayer)
	end
end

function Notify(msg,sourcePlayer)
	TriggerClientEvent("pNotify:SendNotification", tonumber(sourcePlayer), {text = msg,type = "error",queue = "left",timeout = 2500,layout = "centerRight"})
	CancelEvent()
end

-- get's the player id without having to use bugged essentials
function getPlayerID(source)
    local identifiers = GetPlayerIdentifiers(source)
    local player = getIdentifiant(identifiers)
    return player
end

-- gets the actual player id unique to the player,
-- independent of whether the player changes their screen name
function getIdentifiant(id)
    for _, v in ipairs(id) do
        return v
    end
end