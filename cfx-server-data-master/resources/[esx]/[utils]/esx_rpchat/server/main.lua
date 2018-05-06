--[[

  ESX RP Chat

--]]

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
		}
	else
		return nil
	end
end

  TriggerEvent('es:addCommand', 'me', function(source, args, user)
      local name = getIdentity(source)
      TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, table.concat(args, " "))
  end, {help = 'Do something [RP}'})

  TriggerEvent('es:addCommand', 'do', function(source, args, user)
      local name = getIdentity(source)
      TriggerClientEvent("sendProximityMessageDo", -1, source, name.firstname, table.concat(args, " "))
  end, {help = 'Do something [RP}'})

  TriggerEvent('es:addCommand', 'tweet', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "^0|^5Twitter^0| (^0@" .. GetPlayerName(source) .. "^0)", {30, 144, 255}, table.concat(args, " "))
  end, {help = 'Send a tweet. [RP]'})

  TriggerEvent('es:addCommand', '911', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^1|^1Emergency Services^1| (^1@" .. GetPlayerName(source) .. "^1)", {30, 144, 255}, table.concat(args, " "))
end, {help = 'Send an Emergency Text. [RP]'})

  TriggerEvent('es:addCommand', 'ooc', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "OOC | " .. GetPlayerName(source), {130, 130, 130}, table.concat(args, " "))
  end, {help = 'Send an out of character message to the whole server.'})

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
