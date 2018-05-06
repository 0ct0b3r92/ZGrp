--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.



--local Founder = {"steam:110000110ba80e2","ip:192.0.0.3",}
local Admin = {"steam:110000108f588bc","ip:89.162.80.123",}
local HighwayPatrol = {"steam:","ip:",}
local Fire = {"steam:","ip:",}
local EMT = {"steam:","ip:",}
local Sheriff = {"steam:","ip:",}
local Moderator = {"steam:","ip:",}
local StateTroopers = {"steam:","ip:",}
local Test = {"steam:","ip:",}
local ScriptCreator = {"steam:110000108ce69e8","ip:",}


AddEventHandler('chatMessage', function(Source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
    else     
        local player = GetPlayerIdentifiers(Source)[1]
      --  if has_value(Founder, player) then
        --    TriggerClientEvent('chatMessage', -1, "OOC | Founder " .. Name, { 193, 29, 17 }, Msg)           
        if has_value(Admin, player) then
            TriggerClientEvent('chatMessage', -1, "Admin " .. Name, { 255, 0, 0 }, Msg)
        elseif has_value(HighwayPatrol, player) then
            TriggerClientEvent('chatMessage', -1, "Highway Patrol | " .. Name, { 0, 0, 255 }, Msg)
        elseif has_value(Fire, player) then
            TriggerClientEvent('chatMessage', -1, "Fire | " .. Name, { 0, 0, 255 }, Msg)
        elseif has_value(EMT, player) then
            TriggerClientEvent('chatMessage', -1, "EMT | " .. Name, { 0, 0, 255 }, Msg)
        elseif has_value(Sheriff, player) then
            TriggerClientEvent('chatMessage', -1, "Sheriff's Department | " .. Name, { 0, 0, 255 }, Msg)
	    elseif has_value(Moderator, player) then
            TriggerClientEvent('chatMessage', -1, "Moderator | " .. Name, { 0, 255, 247 }, Msg)
        elseif has_value(StateTroopers, player) then
            TriggerClientEvent('chatMessage', -1, "State Troopers | " .. Name, { 222, 0, 255 }, Msg)
		elseif has_value(Test, player) then
            TriggerClientEvent('chatMessage', -1, "State Troopers | Admin " .. Name, { 222, 0, 255 }, Msg)
		elseif has_value(ScriptCreator, player) then
            TriggerClientEvent('chatMessage', -1, "Chat Roles Creator | " .. Name, { 0, 255, 43 }, Msg)
        else
            TriggerClientEvent('chatMessage', -1, "OOC | " .. Name, { 116, 36, 181 }, Msg)
        end
            
    end
end)

function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

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