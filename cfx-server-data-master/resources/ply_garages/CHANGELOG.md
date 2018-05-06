**_Update of 14/06/17_**
* Fixed primary and seconday colour than were not correctly saved in the database
Thanks to Frazzle and ImDylan93 for noticed me.
If you do not want to re download the client.lua just : 

At lines 156 and 157 replace :

local primarycolor = GetVehicleColours(veh,colors[1]) -- 1rst colour<br/>
local secondarycolor = GetVehicleColours(veh,colors[2]) -- 2nd colour<br/>

by

local primarycolor = colors[1] -- 1rst colour<br/>
local secondarycolor = colors[2] -- 2nd colour<br/>


**_Update of 13/06/17_**
* Add  a better function to set all vehicle state with are set "Out" when the server start (after a crash or a reboot) to "In"
For those who don't whant to replace the server.lua file for reason :  

Replace : 

AddEventHandler('playerConnecting', function()<br/>
  MySQL.Async.fetchAll("SELECT * FROM users WHERE player_state=@player_state",{['@player_state'] = 1}, function(data)<br/>
    for i,v in ipairs(data) do<br/>
      sum = sum + v.player_state<br/>
    end<br/>
    sum = 0<br/>
    if (sum < 1) then<br/>
      MySQL.Sync.execute("UPDATE user_vehicle SET vehicle_state=@state WHERE vehicle_state=@old_state", {['@old_state'] = state_out, ['@state'] = state_in})<br/>
    end<br/>
  end)<br/>
end)<br/>

by

function resetOnStart()<br/>
    local state = "Rentré"<br/>
    MySQL.Async.execute("UPDATE user_vehicle SET vehicle_state=@state", {['@state'] = "Rentré"}, function(data)<br/>
    end)<br/>
end<br/>
resetOnStart()<br/>

And don't forget to replace "**Rentré**" by "**In**" if you are not a french baguette.

**_Update of 13/06/17_**
* Custom vehicles are now able to be save in the garage. For this you have to update your vehicle in the garage menu (you will see in game what i mean, very easy).
* Replace all files.
* For fresh servers, execute the sql.sql. For existing servers, exectute the sqlof13.06.17.sql.


**_Update of 06/06/17_**
* Rework of the server.lua to integrate Mysql Async Librarby
* Fix some bug that where you setout multiple vehicles, the code did not check the good one to setin the garage.
* Same thing with the "sell your vehicle function"
* Check in you table "user_vehicle" if the "id" is "ID", if yes, change it to "id", sorry about that, it was a big mistake to set in upper case at the beggining.


**_Update of 03/06/17_**
* Add English translation. by default the script is in FR (cause champagne)
* Rework the code server side.
To setup in English : 
* Open client.lua
* Change at line 238 (there is "local lang = "FR") change FR by EN and
* Change at line 211 (there is "AddTextComponentString(ventenamefr)") change ventenamefr by ventenameen.
Don't forget to change in you database the vehicle_state : "In" if there is "Rentré" and "Out" if there is "Sortit" if you setup your server in english.


**_Update of 26/05/17_**
* Multiple garages location are here.
* Add a config file for database acces, mush easier.
What you can do now ?
For player : more than one garage.
For server admin : add or change garage location.


**_Update of 25/05/17_**
Hum, how to start...
Because the author of essemtialmod does not allow me to distribute an old version of his mod, I had to adapt.
For everything to work, you have to take the original vehshop, I am not allowed to put a link here so you will have to search it by yourself.
I had to make another mod for "garages" to be operational, a mod that I planned to do for a long time so the opportunity presented itself.
https://github.com/plysken/ply_prefecture
There is no actual update of mod garages, just a redesign of its operation, so you do not have to re-download the files but you must add the ply_prefecture mod otherwise you will not be able to add new vehicles In the garages.

The installation is the same as any mod:
Update the database
Update login and password
Add mod to server startup

What ply_prefecture does? see in : 
https://forum.fivem.net/t/release-prefecture-v1/21638
And i forget : **New Gui Skin**


**_Update of 20/05/17_**
* Add function that when you restart your sever and you first login, all vehicle are set "into" the garages.
Exemple : 
* You have 0/24 players, you join the server, Event happen.
* You have 5/24 players, you join the server, nothing happen.
* You are the last player, you leave and rejoin, Event happen.
Some stuff you have to do :
Update your database with the sqlof20.05.sql
Replace the server.lua file


**_Update of 06/05/17_** 
**Major update so replace all the files.**
* Add GuiMenu (credit Ideo)
* Now you can have 5max vehicle, if you buy a 6th, a message will say you can't.
* Add Behind the Shop an area that you can sell your vehicule (50% of the price).
* Colors are saved but for now not custom vehicles, it will be in another update.


**_Update of 17/04/17_**
* sql.sql, server, client and vehsop_s lua file are to be replaced, oubviously, clear the server cache
* Added function when player spawn on server, it set vehicle available in the garage.
* Changed in vehsop.lua that when before the player selected an action, he was teleported into the marker, now not.


**_Update of 17/04/17_**   for this one, just replace the "client.lua" 
* Changed the location cause the old one got issues.
* Added a colour to the blip.
* Changed my vehsop_s cause new player car's did not set on database. <-- for this, just replace the vehshop_s.lua


**_Update of 16/04/17_**
* Changed veshop.lua and veshop_s.lua because the mod does not include the function of saving the license plate in the database.
* The purchased vehicle is no longer stored in the "personalvehicle" table but in a specific one.
* Added (obviously copyed/pasted and little changed) afunction to update or add vehicle if player had one or not (function from vehshop).
* Added new table in the database.
* Added function that check if the player'vehicule is out or in the garage and therefor do the stuff to spawn or not.
* Added function that checks if the vehicle the player wants to store is the owner, if not nothing happen.
* Added function that checks is the spawn-vehicle-area is clear or not.
