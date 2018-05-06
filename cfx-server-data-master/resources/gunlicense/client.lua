local options = {
    x = 0.8,
    y = 0.2,
    width = 0.13,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "Gun licenses",
    menu_subtitle = "",
    color_r = 30,
    color_g = 144,
    color_b = 255,
}

function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
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

function drawTxtTitle(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
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

function DisplayHelpText(str)
    SetTextComponentFormat("STRING")
    AddTextComponentString(str)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
function license()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options.menu_title = "Gun licenses"
    options.menu_subtitle = ""
    ClearMenu()
    Menu.addButton("Level 1     ~g~$~r~2000", "buylicense", {name="Level 1", price=2000,level=1})
    Menu.addButton("Level 2     ~g~$~r~5000", "buylicense", {name="Level 2", price=5000,level=2})
    Menu.addButton("Level 3     ~g~$~r~10000", "buylicense", {name="Level 3", price=10000,level=3})
    Menu.addButton("Level 4     ~g~$~r~15000", "buylicense", {name="Level 4", price=15000,level=4})
end

function buylicense(item)
    TriggerServerEvent("license:checkMoney", item)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Press E to open/close menu in the red marker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
emplacement_license = {
    {name="Gun license", colour=5, id=434, x=12.699568748474, y=-1105.0811767578, z=29.797033309937},
    {name="Gun license", colour=5, id=434, x=819.67834472656, y=-2155.8120117188, z=29.619020462036},    
}
incircle = false
Citizen.CreateThread(function()
    for _, item in pairs(emplacement_license) do
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
        for k,v in ipairs(emplacement_license) do
            if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 15.0)then
                DrawMarker(1, v.x, v.y, v.z - 1, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.5001, 177, 202, 223,255, 0, 0, 0,0)
                if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 1.0)then
                    if (incircle == false) then
                        DisplayHelpText("Press ~INPUT_CONTEXT~ to buy a gun license!")
                    end
                    incircle = true
                    if IsControlJustReleased(1, 51) then -- INPUT_CELLPHONE_DOWN
                        license() -- Menu to draw
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
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Help messages
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DrawR(xMin,xMax,yMin,yMax,color1,color2,color3,color4)
    DrawRect(xMin, yMin,xMax, yMax, color1, color2, color3, color4);
end

Citizen.CreateThread(function()
    while true do
        if not Menu.hidden then
            drawTxt(1.345, 0.74, 1.0,1.0,0.4, Menu.selection.."/"..Menu.buttonCount, 255, 255, 255, 255, true)
            if Menu.selection == 1 then
                DrawRect(0.79,0.575,0.315,0.05,0,0,0,150)
                DrawRect(0.79,0.525,0.315,0.05,30,144,255,150)
                drawTxtTitle(1.175, 1.0, 1.0,1.0,0.8, "Allows you to purchase and use...", 255, 255, 255, 255, true)
                drawTxtTitle(1.133, 1.05, 1.0,1.0,0.4, "Pistol, Pistol .50, SNS Pistol, Heavy Pistol, Revolver and weapons that don't require a license!", 255, 255, 255, 255, true)
            end
            if Menu.selection == 2 then
                DrawRect(0.79,0.595,0.315,0.09,0,0,0,150)
                DrawRect(0.79,0.525,0.315,0.05,30,144,255,150)
                drawTxtTitle(1.175, 1.0, 1.0,1.0,0.8, "Allows you to purchase and use...", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.05, 1.0,1.0,0.4, "Smoke Grenade, Pump Shotgun, Sawn-Off Shotgun, Bullpup Shotgun, Double-Barrel,", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.07, 1.0,1.0,0.4, "Auto Shotgun,Pistol, Pistol .50, SNS Pistol, Heavy Pistol, Revolver and weapons that don't", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.09, 1.0,1.0,0.4, "require a license!", 255, 255, 255, 255, true)
            end
            if Menu.selection == 3 then
                DrawRect(0.79,0.595,0.315,0.09,0,0,0,150)
                DrawRect(0.79,0.525,0.315,0.05,30,144,255,150)
                drawTxtTitle(1.175, 1.0, 1.0,1.0,0.8, "Allows you to purchase and use...", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.05, 1.0,1.0,0.4, "Micro SMG, SMG, Assault SMG, MG, Guesenburg, Smoke Grenade, Pump Shotgun, Sawn-Off", 255, 255, 255, 255, true)                
                drawTxtTitle(1.135, 1.07, 1.0,1.0,0.4, "Shotgun, Bullpup Shotgun, Double-Barrel, Auto Shotgun,Pistol, Pistol .50, SNS Pistol, Heavy", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.09, 1.0,1.0,0.4, "Pistol, Revolver and weapons that don't require a license!", 255, 255, 255, 255, true)
            end
            if Menu.selection == 4 then
                DrawRect(0.79,0.595,0.315,0.09,0,0,0,150)
                DrawRect(0.79,0.525,0.315,0.05,30,144,255,150)
                drawTxtTitle(1.175, 1.0, 1.0,1.0,0.8, "Allows you to purchase and use...", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.05, 1.0,1.0,0.4, "Assault Rifle, Carbine Rifle, Advanced Rifle, Special Carbine, Micro SMG, SMG, Assault SMG,", 255, 255, 255, 255, true)                
                drawTxtTitle(1.135, 1.07, 1.0,1.0,0.4, "MG, Guesenburg, Smoke Grenade, Pump Shotgun, Sawn-Off Shotgun, Bullpup Shotgun,", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.09, 1.0,1.0,0.4, "Double-Barrel, Auto Shotgun,Pistol, Pistol .50, SNS Pistol, Heavy Pistol, Revolver and", 255, 255, 255, 255, true)
                drawTxtTitle(1.135, 1.11, 1.0,1.0,0.4, "weapons that don't require a license!", 255, 255, 255, 255, true)
            end
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