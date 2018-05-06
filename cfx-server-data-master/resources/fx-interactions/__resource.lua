 -- @Date:   2017-09-16
  -- @Project: FX Interactions
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-09-16
--------------------------------------------------------------
  
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
  "client.lua",
}
server_script 'server.lua'

exports {
    'GetHandStatus',
}