AddEventHandler('chatMessage', function(Source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
    if string.find(args[1], "/") then
             table.remove(args, 1)
        else       
            TriggerClientEvent('chatMessage', -1, "OOC | " .. Name, { 116, 36, 181 }, Msg)
        end         
end)

--EXT
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