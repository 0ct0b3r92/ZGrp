local voice = {default = 9999999.0, Near = 20.0, whisper = 6.0, current = 0, level = nil}

function drawLevel(r, g, b, a)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString("| ~g~Voice Chat ~s~[F1]:~s~ " .. voice.level)
  DrawText(0.173, 0.895)
end

AddEventHandler('onClientMapStart', function()
  if voice.current == 0 then
    NetworkSetTalkerProximity(voice.default)
  elseif voice.current == 1 then
    NetworkSetTalkerProximity(voice.Near)
  elseif voice.current == 2 then
    NetworkSetTalkerProximity(voice.whisper)
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if IsControlJustPressed(1, 288) then
      voice.current = (voice.current + 1) % 3
      if voice.current == 0 then
        NetworkSetTalkerProximity(voice.default)
        voice.level = "~r~Server Wide"
      elseif voice.current == 1 then
        NetworkSetTalkerProximity(voice.Near)
        voice.level = "~y~Near"
      elseif voice.current == 2 then
        NetworkSetTalkerProximity(voice.whisper)
        voice.level = "~b~Whisper"
      end
    end
    if voice.current == 0 then
      voice.level = "~r~Server Wide"
    elseif voice.current == 1 then
      voice.level = "~y~Near"
    elseif voice.current == 2 then
      voice.level = "~b~Whisper"
    end
    if NetworkIsPlayerTalking(PlayerId()) then
      drawLevel(41, 128, 185, 255)
    elseif not NetworkIsPlayerTalking(PlayerId()) then
      drawLevel(255, 255, 255, 255)
    end
  end
end)

function setVoice()
      voice.current = (voice.current + 1) % 3
      if voice.current == 0 then
        NetworkSetTalkerProximity(voice.default)
        voice.level = "~r~Server Wide"
      elseif voice.current == 1 then
        NetworkSetTalkerProximity(voice.Near)
        voice.level = "~y~Near"
      elseif voice.current == 2 then
        NetworkSetTalkerProximity(voice.whisper)
        voice.level = "~b~Whisper"
      end
end