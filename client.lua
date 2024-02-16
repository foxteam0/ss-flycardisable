local isFlying = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if IsPedInAnyVehicle(playerPed, false) and IsEntityInAir(vehicle) then
            DisableControlAction(0, 71, true)
            DisableControlAction(0, 72, true) 
            DisableControlAction(0, 59, true) 
            DisableControlAction(0, 60, true) 
            DisableControlAction(0, 64, true) 
            DisableControlAction(0, 65, true) 
            DisableControlAction(0, 73, true) 
            DisableControlAction(0, 81, true) 
            DisableControlAction(0, 47, true)
           -- DisableControlAction(0, 1, true)  
          

            isFlying = true
        elseif isFlying then
            isFlying = false
        end
    end
end)


