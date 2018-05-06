function getlicense(identifier)
    return MySQL.Sync.fetchScalar("SELECT gunlicense FROM users WHERE identifier =@name", {['@name'] = identifier})
end

RegisterServerEvent("license:checkMoney")
AddEventHandler("license:checkMoney", function(item)
	local sourcePlayer = tonumber(source)
    TriggerEvent('es:getPlayerFromId', source, function(user)
    	local identifier = user.getIdentifier()
	    local price = item.price
	    if (tonumber(user.getMoney()) >= tonumber(price)) then
	    	local license = getlicense(identifier)
	    	if license == 0 and item.level == 1 then
	    		user.removeMoney((price))
	    		MySQL.Sync.execute("UPDATE users SET gunlicense=@license WHERE identifier=@identifier", {['@identifier'] = identifier, ['@license'] = item.level})
	    		TriggerClientEvent("pNotify:SendNotification", sourcePlayer, {text = item.name.." license purchased!",type = "error",queue = "left",timeout = 2500,layout = "centerRight"})
	    	elseif license == 1 and item.level == 2 then
	    		user.removeMoney((price))
	    		MySQL.Sync.execute("UPDATE users SET gunlicense=@license WHERE identifier=@identifier", {['@identifier'] = identifier, ['@license'] = item.level})
	    		TriggerClientEvent("pNotify:SendNotification", sourcePlayer, {text = item.name.." license purchased!",type = "error",queue = "left",timeout = 2500,layout = "centerRight"})	 
	    	elseif license == 2 and item.level == 3 then
	    		user.removeMoney((price))
	    		MySQL.Sync.execute("UPDATE users SET gunlicense=@license WHERE identifier=@identifier", {['@identifier'] = identifier, ['@license'] = item.level})
	    		TriggerClientEvent("pNotify:SendNotification", sourcePlayer, {text = item.name.." license purchased!",type = "error",queue = "left",timeout = 2500,layout = "centerRight"})
	    	elseif license == 3 and item.level == 4 then
	    		user.removeMoney((price))
	    		MySQL.Sync.execute("UPDATE users SET gunlicense=@license WHERE identifier=@identifier", {['@identifier'] = identifier, ['@license'] = item.level})
	    		TriggerClientEvent("pNotify:SendNotification", sourcePlayer, {text = item.name.." license purchased!",type = "error",queue = "left",timeout = 2500,layout = "centerRight"})
	    	else
	    		TriggerClientEvent("pNotify:SendNotification", sourcePlayer, {text ="You must go from 1 to 4",type = "error",queue = "left",timeout = 2500,layout = "centerRight"})
	    	end	    	
	    else
	     	TriggerClientEvent("pNotify:SendNotification", sourcePlayer, {text = "Insufficient funds!",type = "error",queue = "left",timeout = 2500,layout = "bottomCenter"})
	    end
	end)
end)