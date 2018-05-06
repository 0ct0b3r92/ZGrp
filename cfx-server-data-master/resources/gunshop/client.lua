local options = {
    x = 0.8,
    y = 0.2,
    width = 0.20,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "Weapon store",
    menu_subtitle = "",
    color_r = 30,
    color_g = 144,
    color_b = 255,
}

function DisplayHelpText(str)
    SetTextComponentFormat("STRING")
    AddTextComponentString(str)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
  SetTextFont(font)
  SetTextProportional(0)
  SetTextScale(scale, scale)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0,255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextCentre(centre)
  SetTextEntry("STRING")
  AddTextComponentString(text)
  DrawText(x , y)
end

function drawTxt2(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
        SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

function Main()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Weapon store"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.addButton("No license", "level0",nil)
    Menu.addButton("Level 1", "level1",nil)
    Menu.addButton("Level 2", "level2",nil)
    Menu.addButton("Level 3", "level3",nil)
    Menu.addButton("Level 4", "level4",nil)
end

function level0()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Weapon store"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.previous = "Main"
    Menu.addButton("Machete  ~g~$~r~2000", "buyweapon", {name="Machete", price=2000,license=0,model="WEAPON_MACHETE"})
    Menu.addButton("Golfclub  ~g~$~r~1000", "buyweapon", {name="Golfclub", price=1000,license=0,model="WEAPON_GOLFCLUB"})
    Menu.addButton("Knuckle dusters  ~g~$~r~10000", "buyweapon", {name="Knuckle dusters", price=10000,license=0,model="WEAPON_KNUCKLE"})
    Menu.addButton("Knife  ~g~$~r~50", "buyweapon", {name="Knife", price=50,license=0,model="WEAPON_KNIFE"})
    Menu.addButton("Dagger  ~g~$~r~45", "buyweapon", {name="Dagger", price=45,license=0,model="WEAPON_DAGGER"})
    Menu.addButton("Switchblade  ~g~$~r~30", "buyweapon", {name="Switchblade", price=30,license=0,model="WEAPON_SWITCHBLADE"})
    Menu.addButton("Crowbar  ~g~$~r~28", "buyweapon", {name="Crowbar", price=28,license=0,model="WEAPON_CROWBAR"})
    Menu.addButton("Bat  ~g~$~r~25", "buyweapon", {name="Bat", price=25,license=0,model="WEAPON_BAT"})
    Menu.addButton("Bottle  ~g~$~r~4", "buyweapon", {name="Bottle", price=4,license=0,model="WEAPON_BOTTLE"})
    Menu.addButton("Hammer  ~g~$~r~3", "buyweapon", {name="Hammer", price=3,license=0,model="WEAPON_HAMMER"})
end

function level1()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Weapon store"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.previous = "Main"
    Menu.addButton("Pistol ~g~$~r~300", "buyweapon", {name="Pistol",price=300,license=1,model="WEAPON_Pistol"})
    Menu.addButton("SNS Pistol ~g~$~r~350", "buyweapon", {name="SNS Pistol",price=250,license=1,model="WEAPON_SNSPistol"})
    Menu.addButton("Pistol 50 cal ~g~$~r~1500", "buyweapon", {name="Pistol 50",price=1500,license=1,model="WEAPON_PISTOL50"})
    Menu.addButton("Heavy Pistol ~g~$~r~3000", "buyweapon", {name="Heavy Pistol",price=3000,license=1,model="WEAPON_HeavyPistol"})
    Menu.addButton("Revolver ~g~$~r~9000", "buyweapon", {name="Revolver",price=9000,license=1,model="WEAPON_Revolver"})
end

function level2()                                                                                                                                
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Weapon store"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.previous = "Main"   
    Menu.addButton("Pump Shotgun ~g~$~r~10000", "buyweapon", {name="Pump Shotgun",price=10000,license=2,model="WEAPON_PumpShotgun"})
    Menu.addButton("Sawn-off Shotgun ~g~$~r~15000", "buyweapon", {name="Sawn-off Shotgun",price=15000,license=2,model="WEAPON_SAWNOFFSHOTGUN"})
    Menu.addButton("Bullpup Shotgun ~g~$~r~17000", "buyweapon", {name="Bullpup Shotgun",price=17000,license=2,model="WEAPON_BullpupShotgun"})
    Menu.addButton("Double-Barrel ~g~$~r~20000", "buyweapon", {name="Double-Barrel",price=20000,license=2,model="WEAPON_DoubleBarrelShotgun"})
    Menu.addButton("Auto Shotgun ~g~$~r~22000", "buyweapon", {name="Auto Shotgun",price=22000,license=2,model="WEAPON_Autoshotgun"})
    
end

function level3()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Weapon store"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.previous = "Main"
    Menu.addButton("MicroSMG ~g~$~r~5000", "buyweapon", {name="MicroSMG",price=5000,license=3,model="WEAPON_MicroSMG"})
    Menu.addButton("SMG ~g~$~r~18000", "buyweapon", {name="SMG",price=18000,license=3,model="WEAPON_SMG"})
    Menu.addButton("Assault SMG ~g~$~r~19000", "buyweapon", {name="Assault SMG",price=19000,license=3,model="WEAPON_AssaultSMG"})
    Menu.addButton("Gusenberg ~g~$~r~35000", "buyweapon", {name="Gusenberg",price=35000,license=3,model="WEAPON_Gusenberg"})
    Menu.addButton("MG ~g~$~r~50000", "buyweapon", {name="MG",price=50000,license=3,model="WEAPON_MG"})

end 

function level4()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Weapon store"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.previous = "Main"
    Menu.addButton("Assault Rifle ~g~$~r~24000", "buyweapon", {name="Assault Rifle",price=24000,license=4,model="WEAPON_AssaultRifle"})
    Menu.addButton("Carbine Rifle ~g~$~r~25000", "buyweapon", {name="Carbine Rifle",price=25000,license=4,model="WEAPON_CarbineRifle"})
    Menu.addButton("Advanced Rifle ~g~$~r~27000", "buyweapon", {name="Advanced Rifle",price=27000,license=4,model="WEAPON_AdvancedRifle"})
    Menu.addButton("Special Carbine ~g~$~r~29000", "buyweapon", {name="Special Carbine",price=29000,license=4,model="WEAPON_SpecialCarbine"})
end

function MainG()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Blackmarket"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.addButton("Pistol ~g~$~r~10000", "buyillegalweapon", {name="Pistol",price=10000,model="WEAPON_Pistol"})
    Menu.addButton("Gusenberg ~g~$~r~120000", "buyillegalweapon", {name="Gusenberg", price=120000,model="WEAPON_Gusenberg"})
    Menu.addButton("Special Carbine ~g~$~r~200000", "buyillegalweapon", {name="Special Carbine",price=200000,model="WEAPON_SpecialCarbine"})
    Menu.addButton("AP Pistol ~g~$~r~50000", "buyillegalweapon", {name="AP Pistol",price=50000,model="WEAPON_APPISTOL"})
    Menu.addButton("Sawn-Off Shotgun ~g~$~r~30000", "buyillegalweapon", {name="Sawn-Off Shotgun",price=30000,model="WEAPON_SAWNOFFSHOTGUN"})
end

function buyweapon(item)
    TriggerServerEvent("ws:checkMoney", item)
end

function buyillegalweapon(item)
    TriggerServerEvent("ws:checkMoneyillegal", item)
end

RegisterNetEvent("ws:giveweapon")
AddEventHandler("ws:giveweapon", function(item)
    Citizen.CreateThread(function()
        local weapon = GetHashKey(item.model)
        Wait(1000)
        local hash = GetHashKey(item.model)
        GiveWeaponToPed(GetPlayerPed(-1), weapon, 1000, 0, false)
    end)
end)

RegisterNetEvent("ws:giveweapon2")
AddEventHandler("ws:giveweapon2", function(weap)
    Citizen.CreateThread(function()
        local weapon = GetHashKey(weap)
        Wait(1000)
        local hash = GetHashKey(weap)
        GiveWeaponToPed(GetPlayerPed(-1), weapon, 1000, 0, false)
    end)
end)

RegisterNetEvent("ws:removeWeapons")
AddEventHandler("ws:removeWeapons", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Press E to open/close menu in the red marker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
emplacement = {
    {name="Ammunation", colour=1, id=110, x= -1117.81, y= 2698.16, z= 18.55},
    {name="Ammunation", colour=1, id=110, x= 1693.93, y= 3759.73, z= 34.7},
    {name="Ammunation", colour=1, id=110, x= 251.85, y= -49.87, z= 69.94},
    {name="Ammunation", colour=1, id=110, x= -1306.17, y= -394.16, z= 36.69},
    {name="Ammunation", colour=1, id=110, x= -662.22, y= -935.71, z= 21.82},
    {name="Ammunation", colour=1, id=110, x= -330.00, y= 6083.41, z= 31.45},
    {name="Ammunation", colour=1, id=110, x= 2567.91, y= 294.74, z= 108.73},
    {name="Ammunation", colour=1, id=110, x= -3171.67, y= 1087.66, z= 20.83},
    {name="Ammunation", colour=1, id=110, x= 842.40, y= -1033.12, z= 28.19},
    {name="Ammunation", colour=1, id=110, x= 21.70, y= -1107.41, z= 29.79},
    {name="Ammunation", colour=1, id=110, x= 810.15, y= -2156.88, z= 29.61},
}

emplacement_grove = {
    {name="Grove St. Gun Shop", colour=4, id=110, x=7.7238087654114, y=-1894.3465576172, z=23.162649154663},
    {name="Grove St. Gun Shop", colour=4, id=110, x=-1000.4946899414, y=4848.3916015625, z=274.89318847656},
}

sellweapons = {
    {name="Sell weapons", colour=2, id=434, x=19.142578125, y=-1104.2302246094, z=29.79700088501},
    {name="Sell weapons", colour=2, id=434, x=846.16723632813, y=-1034.9733886719, z=28.245889663696}, 
    {name="Sell weapons", colour=2, id=434, x=813.94311523438, y=-2158.876953125, z=29.619020462036},
    {name="Sell weapons", colour=2, id=434, x=-666.05834960938, y=-933.73907470703, z=21.829214096069},
    {name="Sell weapons", colour=2, id=434, x=-1303.5306396484, y=-390.9504699707, z=36.695751190186},
    {name="Sell weapons", colour=2, id=434, x=254.81108093262, y=-46.906475067139, z=69.941078186035},
    {name="Sell weapons", colour=2, id=434, x=-3174.9465332031, y=1084.7476806641, z=20.838752746582},
    {name="Sell weapons", colour=2, id=434, x=-1121.7216796875, y=2697.1447753906, z=18.55415725708},
    {name="Sell weapons", colour=2, id=434, x=1689.8410644531, y=3758.0588378906, z=34.705303192139},
    {name="Sell weapons", colour=2, id=434, x=-334.26705932617, y=6082.1689453125, z=31.45475769043},
    {name="Sell weapons", colour=2, id=434, x=2571.7854003906, y=292.71542358398, z=108.73484802246},
}
incircle = false
Citizen.CreateThread(function()
    for _, item in pairs(emplacement) do
      item.blip = AddBlipForCoord(item.x, item.y, item.z)
      SetBlipSprite(item.blip, item.id)
      SetBlipColour(item.blip, item.colour)
      SetBlipAsShortRange(item.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(item.name)
      EndTextCommandSetBlipName(item.blip)
    end
    while true do
        Citizen.Wait(0)
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        for k,v in ipairs(emplacement) do
            if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 15.0)then
                DrawMarker(1, v.x, v.y, v.z - 1, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.7555, 1555, 90, 10,150, 0, 0, 0,0)
                if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 1.0)then
                    if (incircle == false) then
                        DisplayHelpText("Press ~INPUT_CONTEXT~ to buy weapons!")
                    end
                    incircle = true
                    if IsControlJustReleased(1, 51) then -- INPUT_CELLPHONE_DOWN
                        Main() -- Menu to draw
                        Menu.selection = 1
                        Menu.hidden = not Menu.hidden -- Hide/Show the menu
                    end
                    Menu.renderGUI(options) -- Draw menu on each tick if Menu.hidden = false
                elseif(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) > 1.0)then
                    incircle = false
                    Menu.hidden = true
                end
            end
        end
        for k,v in ipairs(emplacement_grove) do
            if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 15.0)then
                DrawMarker(1, v.x, v.y, v.z - 1, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.7555, 1555, 10, 0,255, 0, 0, 0,0)
                if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 1.0)then
                    if (incircle == false) then
                        DisplayHelpText("Press ~INPUT_CONTEXT~ to buy weapons!")
                    end
                    incircle = true
                    if IsControlJustReleased(1, 51) then -- INPUT_CELLPHONE_DOWN
                        MainG() -- Menu to draw
                        Menu.selection = 1
                        Menu.hidden = not Menu.hidden -- Hide/Show the menu
                    end
                    Menu.renderGUI(options) -- Draw menu on each tick if Menu.hidden = false
                elseif(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) > 1.0)then
                    incircle = false
                    Menu.hidden = true
                end
            end
        end
        for _, replacement in pairs(sellweapons) do
            DrawMarker(1, replacement.x, replacement.y, replacement.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.0001, 1555, 10, 100,150, 0, 0, 0,0)
            if GetDistanceBetweenCoords(replacement.x, replacement.y, replacement.z, GetEntityCoords(GetPlayerPed(-1))) < 1 and IsPedInAnyVehicle(GetPlayerPed(-1), true) == false then
                drawTxt("Press ~g~E~w~ to sell your weapons at 50% of the purchase price!",0,1,0.5,0.8,0.6,255,255,255,255)
                if IsControlJustPressed(1, 51) then
                    TriggerServerEvent("ws:sellweapons")
                end
            end
        end
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Help messages
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if not Menu.hidden then
            drawTxt2(1.375, 0.74, 1.0,1.0,0.4, Menu.selection.."/"..Menu.buttonCount, 255, 255, 255, 255, true)
        end
        Citizen.Wait(0)
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsEntityDead(GetPlayerPed(-1)) then
            Menu.hidden = true
            Citizen.Wait(5000)
        end
    end
end)
