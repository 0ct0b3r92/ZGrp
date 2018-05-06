------- CHANGE THESE SETTINGS TO FIT YOUR NEEDS -------

-- Recommended total number of lines is ~13
local helpMessage = {
    '/tweet - talk in character',
    '/me - Do something in RP',
    '/do - Same as /me',
    '/ooc - talk out of character',
    '/911 - Emergency Call',
}
-- Recommended total number of lines is ~13
local rulesMessage = {
    'No RDM/VDM',
    'No Metagaming',
    'No Powergaming',
    'Never break character',
    'Expoiting ^1ANY ^0bug will get you banned',
    'New Life Rule for when you respawn at the hospital',
    'More rules on our discord and website',

}

-- Prefixes will be displayed before each line,
local helpPrefix = '^1'
local helpSuffix = '^1.'
local rulesPrefix = '^3'
local rulesSuffix = '^3.'

-- Customize your /help and /rules command, if you wish.
local helpCommand = 'help' -- don't add a "/" here!
local rulesCommand = 'rules' -- don't add a "/" here!
-------------------------------------------------------


















------- CODE, DON'T TOUCH THIS!!! -------
RegisterCommand(helpCommand, function()
    for i in pairs(helpMessage) do
        TriggerEvent('chatMessage', '', {255, 255, 255}, helpPrefix .. helpMessage[i] .. helpSuffix)
    end
end, false)

RegisterCommand(rulesCommand, function()
    for i in pairs(rulesMessage) do
        TriggerEvent('chatMessage', '', {255, 255, 255}, rulesPrefix .. rulesMessage[i] .. rulesSuffix)
    end
end, false)
TriggerEvent('chat:addSuggestion', '/' .. helpCommand, 'Displays a help message.')
TriggerEvent('chat:addSuggestion', '/' .. rulesCommand, 'Displays the server rules.')